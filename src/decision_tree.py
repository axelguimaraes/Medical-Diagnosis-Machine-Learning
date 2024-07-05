import pandas as pd
from sklearn.tree import DecisionTreeClassifier, export_text
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder


def extract_decision_tree_rules(dataset_file):
    # Carregar o dataset
    df = pd.read_csv(dataset_file)

    # Preparar os dados
    le = LabelEncoder()
    df['Fever'] = df['Fever'].map({'Yes': 1, 'No': 0})
    df['Cough'] = df['Cough'].map({'Yes': 1, 'No': 0})
    df['Fatigue'] = df['Fatigue'].map({'Yes': 1, 'No': 0})
    df['Difficulty Breathing'] = df['Difficulty Breathing'].map(
        {'Yes': 1, 'No': 0})
    df['Gender'] = df['Gender'].map({'Male': 1, 'Female': 0})
    df['Blood Pressure'] = df['Blood Pressure'].map(
        {'Low': 0, 'Normal': 1, 'High': 2})
    df['Cholesterol Level'] = df['Cholesterol Level'].map(
        {'Low': 0, 'Normal': 1, 'High': 2})

    # Dividir em features (X) e target (y)
    X = df.drop(columns=['Disease', 'Outcome Variable'])  # Features
    y = df['Disease']  # Target

   # print(df)
    print(X)

    # Dividir o dataset em treino e teste
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42)

    # Treinar o modelo de Árvore de Decisão
    model = DecisionTreeClassifier(
        random_state=42, max_depth=30, min_samples_split=2, min_samples_leaf=1)
    model.fit(X_train, y_train)

    # Extrair e interpretar as regras do modelo
    tree_rules = export_text(model, feature_names=X.columns.tolist())
    print(tree_rules)

    return tree_rules, X


def parse_rule(line):
    """Parse a single rule line and return a tuple (condition, operator, value)."""
    line = line.strip().replace('|--- ', '')
    if '<=' in line:
        condition, value = line.split(' <= ')
        return condition.strip().replace(' ', ''), '=<', float(value.strip())
    elif '>' in line:
        condition, value = line.split(' > ')
        return condition.strip().replace(' ', ''), '>', float(value.strip())
    elif 'class:' in line:
        return 'class', '=', line.split('class: ')[1].strip()
    else:
        return None


def remove_conflicting_conditions(conditions):
    cleaned_conditions = []
    conditions_dict = {}

    for condition in conditions:
        feature, operator, value = condition
        if feature in conditions_dict:
            # Check for conflicting conditions
            if operator == '=<':
                if conditions_dict[feature][0] == '>':
                    conditions_dict[feature] = (operator, value)
            else:
                conditions_dict[feature] = (operator, value)
        else:
            conditions_dict[feature] = (operator, value)

    for feature, (operator, value) in conditions_dict.items():
        cleaned_conditions.append((feature, operator, value))

    return cleaned_conditions


def convert_to_prolog(input_file, output_file):
    with open(input_file, 'r') as file:
        lines = file.readlines()

    prolog_clauses = []
    conditions = []
    diagnosis = None

    for line in lines:
        depth = line.count('|')
        rule = parse_rule(line)

        if rule:
            # Remove conditions from the stack that have higher depth than current rule
            while len(conditions) > depth:
                conditions.pop()

            if rule[0] == 'class':
                diagnosis = rule[2]
                if diagnosis:
                    # Remove conflicting conditions
                    conditions = remove_conflicting_conditions(conditions)

                    # Build the Prolog clause
                    prolog_clause = f"disease(Age, Fever, Cough, CholesterolLevel, BloodPressure, DifficultyBreathing, \"{
                        diagnosis}\") :-\n"
                    condition_str = ',\n'.join([f"    {feature} {operator} {
                                               value}" for feature, operator, value in conditions])
                    # Ensure '|' is removed
                    prolog_clause += condition_str.replace('|', '') + '.\n'
                    prolog_clauses.append(prolog_clause)
                    diagnosis = None
            else:
                conditions.append(rule)

    with open(output_file, 'w') as file:
        for clause in prolog_clauses:
            file.write(clause + '\n')


# Use the function to convert the rules to Prolog format
dataset_file_path = './data/dataset.csv'
rules_text, X = extract_decision_tree_rules(dataset_file_path)

# Print into a file the rules_text
with open('./data/rules.txt', 'w') as f:
    f.write(rules_text)

convert_to_prolog('./data/rules.txt', './data/rules.pl')

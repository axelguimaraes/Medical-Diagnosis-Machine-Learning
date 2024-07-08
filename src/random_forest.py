import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import export_text
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder


def extract_random_forest_rules(dataset_file, n_trees=10):
    # Carregar o dataset
    df = pd.read_csv(dataset_file)

    # Preparar os dados
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

    df = df[df['Disease'] == 'Asthma']

    # Dividir em features (X) e target (y)
    X = df.drop(columns=['Disease', 'Outcome Variable'])  # Features
    y = df['Outcome Variable']  # Target

    # Dividir o dataset em treino e teste
    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42)

    # Treinar o modelo de RandomForest
    model = RandomForestClassifier(n_estimators=n_trees, random_state=42)
    model.fit(X_train, y_train)

    # Extrair regras de cada árvore na floresta
    rules_text = []
    for idx, tree in enumerate(model.estimators_):
        tree_rules = export_text(tree, feature_names=X.columns.tolist())
        rules_text.append(f"{tree_rules}")

    return "\n".join(rules_text), X


def parse_rule(line):
    """Parse a single rule line and return a tuple (condition, operator, value)."""
    line = line.strip().replace('|--- ', '').replace('|', '')
    if '<=' in line:
        condition, value = line.split(' <= ')
        return condition.strip(), '=<', float(value.strip())
    elif '>' in line:
        condition, value = line.split(' > ')
        return condition.strip(), '>', float(value.strip())
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
            # Remove condições da pilha que têm profundidade maior do que a regra atual
            while len(conditions) > depth:
                conditions.pop()

            if rule[0] == 'class':
                diagnosis = rule[2]
                if diagnosis:
                    # Remove condições conflitantes
                    conditions = remove_conflicting_conditions(conditions)

                    # Inicializa um dicionário para todas as condições com _
                    condition_dict = {
                        'Age': '_',
                        'Fever': '_',
                        'Cough': '_',
                        'Gender': '_',
                        'CholesterolLevel': '_',
                        'BloodPressure': '_',
                        'DifficultyBreathing': '_'
                    }

                    # Atualiza o dicionário com as condições presentes
                    for feature, operator, value in conditions:
                        print(feature, operator, value)
                        clean_feature = feature.replace(' ', '')

                        condition_dict[clean_feature] = f'{clean_feature}'

                    # Constrói a cláusula Prolog
                    prolog_clause = (
                        f"disease({condition_dict['Age']}, "
                        f"{condition_dict['Fever']}, "
                        f"{condition_dict['Cough']}, "
                        f"{condition_dict['Gender']}, "
                        f"{condition_dict['CholesterolLevel']}, "
                        f"{condition_dict['BloodPressure']}, "
                        f"{condition_dict['DifficultyBreathing']}, "
                        f"\"{diagnosis}\") :-\n"
                    )

                    # Constrói as condições
                    condition_str = ',\n'.join(
                        [f"    {feature.replace(' ', '')} {operator} {
                            value}" for feature, operator, value in conditions]
                    )
                    prolog_clause += condition_str + '.\n'
                    prolog_clauses.append(prolog_clause)
                    diagnosis = None
            else:
                conditions.append(rule)

    with open(output_file, 'w') as file:
        for clause in prolog_clauses:
            file.write(clause + '\n')


# Use the function to convert the rules to Prolog format
dataset_file_path = './data/dataset.csv'
rules_text, X = extract_random_forest_rules(dataset_file_path)

# Print into a file the rules_text
with open('./data/rules.txt', 'w') as f:
    f.write(rules_text)

convert_to_prolog('./data/rules.txt', './data/rules.pl')

import pandas as pd
from sklearn.tree import DecisionTreeClassifier, export_text
from sklearn.model_selection import train_test_split

# Load the dataset
data = pd.read_csv('../data/dataset.csv')

# Convert categorical variables to numeric
data['Fever'] = data['Fever'].map({'Yes': 1, 'No': 0})
data['Cough'] = data['Cough'].map({'Yes': 1, 'No': 0})
data['Fatigue'] = data['Fatigue'].map({'Yes': 1, 'No': 0})
data['Difficulty Breathing'] = data['Difficulty Breathing'].map({'Yes': 1, 'No': 0})
data['Gender'] = data['Gender'].map({'Male': 1, 'Female': 0})
data['Blood Pressure'] = data['Blood Pressure'].map({'Low': 0, 'Normal': 1, 'High': 2})
data['Cholesterol Level'] = data['Cholesterol Level'].map({'Low': 0, 'Normal': 1, 'High': 2})
data['Outcome Variable'] = data['Outcome Variable'].map({'Positive': 1, 'Negative': 0})

# Define features and target
features = ['Fever', 'Cough', 'Fatigue', 'Difficulty Breathing', 'Age', 'Gender', 'Blood Pressure', 'Cholesterol Level']
target = 'Outcome Variable'

# Split the data
X = data[features]
y = data[target]
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train a Decision Tree model
clf = DecisionTreeClassifier()
clf.fit(X_train, y_train)

# Export the decision tree to a text format
tree_text = export_text(clf, feature_names=features)
print(tree_text)

# Helper function to generate Prolog rules from the decision tree
def tree_to_prolog(tree, feature_names, node_index=0, rule_prefix=""):
    if tree.children_left[node_index] == tree.children_right[node_index]:  # Leaf node
        outcome = "positive" if tree.value[node_index][0][1] > tree.value[node_index][0][0] else "negative"
        prolog_rule = f"{rule_prefix.strip(', ')} :- outcome({outcome})."
        return [prolog_rule]
    
    rules = []
    feature = feature_names[tree.feature[node_index]]
    threshold = tree.threshold[node_index]

    left_rule_prefix = f"{rule_prefix}{feature} <= {threshold:.2f}, "
    right_rule_prefix = f"{rule_prefix}{feature} > {threshold:.2f}, "

    rules += tree_to_prolog(tree, feature_names, tree.children_left[node_index], left_rule_prefix)
    rules += tree_to_prolog(tree, feature_names, tree.children_right[node_index], right_rule_prefix)

    return rules

# Generate Prolog rules
rules = tree_to_prolog(clf.tree_, features)

# Write rules to a Prolog file
with open('../knowledge_base/disease_decision_tree.pl', 'w') as f:
    f.write(":- dynamic outcome/1.\n")
    for rule in rules:
        f.write(rule + "\n")

print("Prolog rules have been written to disease_decision_tree.pl")


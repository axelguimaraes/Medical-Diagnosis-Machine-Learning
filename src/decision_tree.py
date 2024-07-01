# src/decision_tree.py

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier, export_text
from sklearn.metrics import accuracy_score
import os

# Function to load dataset
def load_dataset(file_path):
    return pd.read_csv(file_path)

# Function to preprocess data
def preprocess_data(data):
    X = data.drop(columns=['Disease', 'Outcome Variable'])
    X = pd.get_dummies(X, drop_first=True)
    y = data['Outcome Variable']
    return X, y

# Function to train decision tree
def train_decision_tree(X_train, y_train, random_state=42):
    clf = DecisionTreeClassifier(random_state=random_state)
    clf.fit(X_train, y_train)
    return clf

# Function to evaluate model
def evaluate_model(clf, X_test, y_test):
    y_pred = clf.predict(X_test)
    accuracy = accuracy_score(y_test, y_pred)
    return accuracy

# Function to export tree rules
def export_tree_rules(clf, feature_names, output_file):
    tree_rules = export_text(clf, feature_names=feature_names)
    with open(output_file, 'w') as f:
        f.write(tree_rules)

# Main function to execute the script
def main():
    # Define paths and filenames
    data_file = '../data/dataset.csv'
    output_dir = '../knowledge_base'
    output_file = os.path.join(output_dir, 'tree_rules.txt')

    # Load dataset
    data = load_dataset(data_file)

    # Preprocess data
    X, y = preprocess_data(data)

    # Split the dataset
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Train decision tree
    clf = train_decision_tree(X_train, y_train)

    # Evaluate model
    accuracy = evaluate_model(clf, X_test, y_test)
    print(f"Accuracy: {accuracy}")

    # Export tree rules
    feature_names = list(X.columns)
    export_tree_rules(clf, feature_names, output_file)
    print(f"Tree rules exported to {output_file}")

if __name__ == "__main__":
    main()

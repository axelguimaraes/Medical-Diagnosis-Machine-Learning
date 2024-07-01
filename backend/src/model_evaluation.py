from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score, confusion_matrix
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

def evaluate_model(clf, X_test, y_test):
    y_pred = clf.predict(X_test)
    accuracy = accuracy_score(y_test, y_pred)
    precision = precision_score(y_test, y_pred)
    recall = recall_score(y_test, y_pred)
    f1 = f1_score(y_test, y_pred)
    return accuracy, precision, recall, f1, y_pred

def plot_confusion_matrix(cm, model_name):
    plt.figure(figsize=(6, 4))
    sns.heatmap(cm, annot=True, fmt='d', cmap='Blues', cbar=False)
    plt.title(f'Confusion Matrix for {model_name}')
    plt.xlabel('Predicted')
    plt.ylabel('Actual')
    plt.show()

def plot_metrics(metrics_dict):
    df_metrics = pd.DataFrame(metrics_dict)
    df_metrics_melted = df_metrics.melt(id_vars='Model', var_name='Metric', value_name='Value')
    plt.figure(figsize=(12, 8))
    sns.barplot(data=df_metrics_melted, x='Metric', y='Value', hue='Model')
    plt.title('Performance Metrics of Different Models')
    plt.xlabel('Metric')
    plt.ylabel('Score')
    plt.ylim(0, 1)
    plt.legend(loc='upper right')
    plt.show()

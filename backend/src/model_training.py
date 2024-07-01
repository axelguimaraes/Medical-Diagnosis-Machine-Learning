import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.linear_model import LogisticRegression
import joblib

def train_models():
    # Carrega os dados processados
    df = pd.read_csv('data/processed/processed_dataset.csv')

    # Separa as características (features) e a variável alvo (target)
    X = df.drop('Outcome Variable', axis=1)
    y = df['Outcome Variable']

    # Divide os dados em conjuntos de treinamento e teste
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Treina o modelo Random Forest
    rf_model = RandomForestClassifier(n_estimators=100, max_depth=10, random_state=42)
    rf_model.fit(X_train, y_train)
    joblib.dump(rf_model, 'models/random_forest_model.joblib')

    # Treina o modelo SVM
    svm_model = SVC(kernel='linear', C=0.1, random_state=42)
    svm_model.fit(X_train, y_train)
    joblib.dump(svm_model, 'models/svm_model.joblib')

    # Treina o modelo de Regressão Logística
    lr_model = LogisticRegression(max_iter=1000, random_state=42)
    lr_model.fit(X_train, y_train)
    joblib.dump(lr_model, 'models/logistic_regression_model.joblib')

    return rf_model, svm_model, lr_model

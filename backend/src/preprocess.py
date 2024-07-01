import pandas as pd
from sklearn.preprocessing import LabelEncoder

def preprocess_data(file_path):
    # Carrega o dataset
    df = pd.read_csv(file_path)

    # Inicializa o labelEncoder para transformar variáveis categóricas em numéricas
    label_encoder = LabelEncoder()

    # Define as colunas categóricas que precisam ser transformadas
    categorical_columns = ['Disease', 'Fever', 'Cough', 'Fatigue', 'Difficulty Breathing', 'Gender', 'Blood Pressure', 'Cholesterol Level', 'Outcome Variable']

    # Aplica o LabelEncoder em cada coluna categórica
    for col in categorical_columns:
        df[col] = label_encoder.fit_transform(df[col])

    # Salva o dataset processado
    df.to_csv('data/processed/processed_dataset.csv', index=False)
    
    return df

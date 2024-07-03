import csv

# Mapeamento dos valores categóricos para valores numéricos ou simbólicos


def map_value(value, mapping):
    return mapping.get(value, value)


# Mapeamento específico para cada coluna
fever_mapping = {'Yes': 1, 'No': 0}
cough_mapping = {'Yes': 1, 'No': 0}
fatigue_mapping = {'Yes': 1, 'No': 0}
difficulty_breathing_mapping = {'Yes': 1, 'No': 0}
gender_mapping = {'Male': 1, 'Female': 0}
blood_pressure_mapping = {'Low': 0, 'Normal': 1, 'High': 2}
cholesterol_level_mapping = {'Low': 0, 'Normal': 1, 'High': 2}
outcome_mapping = {'Positive': 'positive', 'Negative': 'negative'}

# Ler o CSV e converter para cláusulas Prolog


def csv_to_prolog(input_file, output_file):
    with open(input_file, mode='r') as csvfile:
        reader = csv.DictReader(csvfile)
        with open(output_file, mode='w') as prologfile:
            for row in reader:
                disease = row['Disease'].lower().replace(' ', '_')
                fever = map_value(row['Fever'], fever_mapping)
                cough = map_value(row['Cough'], cough_mapping)
                fatigue = map_value(row['Fatigue'], fatigue_mapping)
                difficulty_breathing = map_value(
                    row['Difficulty Breathing'], difficulty_breathing_mapping)
                age = row['Age']
                gender = map_value(row['Gender'], gender_mapping)
                blood_pressure = map_value(
                    row['Blood Pressure'], blood_pressure_mapping)
                cholesterol_level = map_value(
                    row['Cholesterol Level'], cholesterol_level_mapping)
                outcome = map_value(row['Outcome Variable'], outcome_mapping)

                # Formatar a cláusula Prolog
                prolog_clause = f"disease({disease}, {fever}, {cough}, {fatigue}, {difficulty_breathing}, {
                    age}, {gender}, {blood_pressure}, {cholesterol_level}, {outcome}).\n"

                # Escrever a cláusula no arquivo de saída
                prologfile.write(prolog_clause)


# Caminhos dos arquivos
input_csv_file = './data/dataset.csv'
output_prolog_file = './knowledge_base/disease_decision_tree.pl'

# Executar a conversão
csv_to_prolog(input_csv_file, output_prolog_file)

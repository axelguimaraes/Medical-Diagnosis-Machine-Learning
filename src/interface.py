import PySimpleGUI as sg
import subprocess

# Função para ler o conteúdo do arquivo Prolog e retornar como uma string


def read_prolog_file(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            file_content = file.read()
            return file_content
    except IOError as e:
        print(f"Erro ao ler o arquivo {file_path}: {e}")
        return None

# Função para executar a consulta Prolog com base nos sintomas e dados inseridos


def run_prolog_diagnosis(query, prolog_content):
    try:
        print(f"Prolog Query: {query}")  # Debug print
        print(f"Prolog Content: {prolog_content}")  # Debug print

        commands = prolog_content + query
        print(f"Prolog Commands: {commands}")  # Debug print
        # Inicializa o subprocesso SWI-Prolog

        # Inicializa o subprocesso SWI-Prolog
        p = subprocess.Popen('swipl', stdin=subprocess.PIPE,
                             stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                             text=True, universal_newlines=True)
        # Envia o conteúdo do arquivo Prolog para o subprocesso
        stdout, stderr = p.communicate(input=commands)
        if stderr:
            print(f"Erro ao carregar o arquivo Prolog: {stderr}")

        # Processa a saída para obter apenas a última linha com os resultados desejados
        output_lines = stdout.strip().split('\n')
        # Get the string that contain Disease and Outcome
        filtered_lines = [
            line for line in output_lines if 'Disease' in line or 'Outcome' in line]
        # Captura as últimas duas linhas que contêm "Disease" e "Outcome"
        p.kill()
        print(f"Saída padrão: {stdout}")
        print(f"Filtra as linhas: {filtered_lines}")
        if len(filtered_lines) >= 2:
            last_two_lines = filtered_lines[-2:]
            result = '\n'.join(last_two_lines).strip()
            print("Últimas duas respostas com 'Disease' e 'Outcome':")
            print(result)
            return result, None
        else:
            print("Não há dados suficientes na saída para capturar as últimas duas respostas com 'Disease' e 'Outcome'.")
            return None, "Não há dados suficientes na saída para capturar as últimas duas respostas com 'Disease' e 'Outcome'."
    except Exception as e:
        print(f"Erro ao executar consulta Prolog: {e}")
        return None, str(e)


# Layout da interface gráfica usando PySimpleGUI
layout = [
    [sg.Text("Expert System Interface")],
    [sg.Text("Enter Symptoms:")],
    [sg.Checkbox('Fever', key='fever'), sg.Checkbox('Cough', key='cough')],
    [sg.Checkbox('Fatigue', key='fatigue'), sg.Checkbox(
        'Difficulty Breathing', key='difficulty_breathing')],
    [sg.Text('Age'), sg.InputText(key='age')],
    [sg.Text('Gender'), sg.Combo(['Male', 'Female'], key='gender')],
    [sg.Text('Blood Pressure'), sg.Combo(
        ['Low', 'Normal', 'High'], key='blood_pressure')],
    [sg.Text('Cholesterol Level'), sg.Combo(
        ['Low', 'Normal', 'High'], key='cholesterol_level')],
    [sg.Button('Diagnose'), sg.Button('Exit')]
]

window = sg.Window('Expert System', layout)

while True:
    event, values = window.read()
    if event == sg.WIN_CLOSED or event == 'Exit':
        break
    if event == 'Diagnose':
        # Construir a consulta Prolog a partir dos valores de entrada
        disease_name = "Disease"  # Placeholder for disease name
        query = f"disease({disease_name}, "
        query += f"{1 if values['fever'] else 0}, "
        query += f"{1 if values['cough'] else 0}, "
        query += f"{1 if values['fatigue'] else 0}, "
        query += f"{1 if values['difficulty_breathing'] else 0}, "
        query += f"{values['age']}, "
        query += f"{1 if values['gender'] == 'Male' else 0}, "
        query += f"{0 if values['blood_pressure'] ==
                    'Low' else (1 if values['blood_pressure'] == 'Normal' else 2)}, "
        query += f"{0 if values['cholesterol_level'] == 'Low' else (
            1 if values['cholesterol_level'] == 'Normal' else 2)}, "
        query += "Outcome)."

        print(f"Prolog Query: {query}")  # Debug print

        # Ler o conteúdo do arquivo Prolog
        prolog_file_path = './knowledge_base/disease_decision_tree.pl'
        prolog_content = read_prolog_file(prolog_file_path)

        if prolog_content is None:
            sg.popup_error(f"Erro ao ler o arquivo Prolog: {prolog_file_path}")
            continue

        # Executa a consulta Prolog com base nos sintomas e dados inseridos
        result, error = run_prolog_diagnosis(query, prolog_content)

        if error:
            sg.popup_error(error)
        else:
            sg.popup("Resultado do diagnóstico", f"O diagnóstico é: {result}")

window.close()

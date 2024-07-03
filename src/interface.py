import PySimpleGUI as sg
import subprocess

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

        # Executar a consulta Prolog
        query_string = f"{query}"

        command = f'swipl -s C:/Users/MarcioRibeiro/Documents/IA_Recurso/knowledge_base/disease_decision_tree.pl'
        print(f"Comando: {command}")

        # Inicializar o subprocesso SWI-Prolog
        p = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                             shell=True, text=True, universal_newlines=True)

        # Enviar a consulta Prolog para o subprocesso
        stdout, stderr = p.communicate(input=query_string)

        # Verificar se houve erro
        if stderr:
            print(f"Erro encontrado: {stderr}")
            sg.popup_error(f"Erro encontrado: {stderr}")
        else:
            # Saída padrão contém o resultado da consulta
            result = stdout.strip()  # Remove espaços em branco extras
            print(f"Resultado da consulta: {result}")
            sg.popup("Resultado do diagnóstico", f"O diagnóstico é: {result}")

        # Terminar o processo subprocesso
        p.kill()

window.close()

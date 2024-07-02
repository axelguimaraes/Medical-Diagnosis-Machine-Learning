# src/interface.py
import PySimpleGUI as sg
import subprocess

layout = [
    [sg.Text("Expert System Interface")],
    [sg.Text("Enter Symptoms:")],
    [sg.Checkbox('Fever', key='fever'), sg.Checkbox('Cough', key='cough')],
    [sg.Checkbox('Fatigue', key='fatigue'), sg.Checkbox('Difficulty Breathing', key='difficulty_breathing')],
    [sg.Text('Age'), sg.InputText(key='age')],
    [sg.Text('Gender'), sg.Combo(['Male', 'Female'], key='gender')],
    [sg.Text('Blood Pressure'), sg.Combo(['Low', 'Normal', 'High'], key='blood_pressure')],
    [sg.Text('Cholesterol Level'), sg.Combo(['Low', 'Normal', 'High'], key='cholesterol_level')],
    [sg.Button('Diagnose'), sg.Button('Exit')]
]

window = sg.Window('Expert System', layout)

while True:
    event, values = window.read()
    if event == sg.WIN_CLOSED or event == 'Exit':
        break
    if event == 'Diagnose':
        # Construct the Prolog query from input values
        query = "diagnosis("
        query += f"fever={'true' if values['fever'] else 'false'},"
        query += f"cough={'true' if values['cough'] else 'false'},"
        query += f"fatigue={'true' if values['fatigue'] else 'false'},"
        query += f"difficulty_breathing={'true' if values['difficulty_breathing'] else 'false'},"
        query += f"age={values['age']},"
        query += f"gender={'male' if values['gender'] == 'Male' else 'female'},"
        query += f"blood_pressure={'low' if values['blood_pressure'] == 'Low' else 'normal' if values['blood_pressure'] == 'Normal' else 'high'},"
        query += f"cholesterol_level={'low' if values['cholesterol_level'] == 'Low' else 'normal' if values['cholesterol_level'] == 'Normal' else 'high'}"
        query += ")"

        print(f"Prolog Query: {query}")  # Debug print

        # Run the Prolog query
        process = subprocess.Popen(['swipl', '-s', '../knowledge_base/disease_decision_tree.pl', '-g', f"{query}, halt."], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()

        if stderr:
            print(f"Prolog Error: {stderr.decode()}")  # Debug print
            sg.popup_error(f"Error: {stderr.decode()}")
        else:
            diagnosis_result = stdout.decode().strip()
            print(f"Prolog Output: {diagnosis_result}")  # Debug print
            sg.popup("Diagnosis Result", f"The diagnosis is: {diagnosis_result}")

window.close()

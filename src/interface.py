# src/interface.py
import PySimpleGUI as sg
import subprocess

layout = [
    [sg.Text("Expert System Interface")],
    [sg.Text("Enter Symptoms:")],
    [sg.Checkbox('Fever'), sg.Checkbox('Cough')],
    [sg.Checkbox('Fatigue'), sg.Checkbox('Difficulty Breathing')],
    [sg.Text('Age'), sg.InputText()],
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
        query += f"fever={str(values[0]).lower()},"
        query += f"cough={str(values[1]).lower()},"
        query += f"fatigue={str(values[2]).lower()},"
        query += f"difficulty_breathing={str(values[3]).lower()},"
        query += f"age={values[4]},"
        query += f"gender={values['gender'].lower()},"
        query += f"blood_pressure={values['blood_pressure'].lower()},"
        query += f"cholesterol_level={values['cholesterol_level'].lower()}"
        query += ")"

        print(f"Prolog Query: {query}")  # Debug print

        # Run the Prolog query
        process = subprocess.Popen(['swipl', '-s', '../knowledge_base/knowledge_base.pl', '-g', f"{query}, halt."], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, stderr = process.communicate()

        if stderr:
            print(f"Prolog Error: {stderr.decode()}")  # Debug print
            sg.popup_error(f"Error: {stderr.decode()}")
        else:
            diagnosis_result = stdout.decode().strip()
            print(f"Prolog Output: {diagnosis_result}")  # Debug print
            sg.popup("Diagnosis Result", f"The diagnosis is: {diagnosis_result}")

window.close()

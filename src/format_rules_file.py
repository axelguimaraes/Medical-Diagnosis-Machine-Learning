import re

def fix_prolog_whitespace_and_underscores(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    fixed_lines = []
    for line in lines:
        # Replace spaces in variable names with underscores
        line = re.sub(r'([A-Za-z]+)\s+([A-Za-z]+)', r'\1_\2', line)

        fixed_lines.append(line.strip() + '\n')

    with open(file_path, 'w') as file:
        file.writelines(fixed_lines)

# Path to the Prolog file
file_path = '../knowledge_base/disease_decision_tree.pl'
fix_prolog_whitespace_and_underscores(file_path)
print(f"Whitespace replaced with underscores in variables in {file_path}")

import re


def fix_prolog_whitespace_and_underscores(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    fixed_lines = []
    for line in lines:
        # Remove parentheses from disease names only if there's an underscore before them
        line = re.sub(r'(_\w+)\(([^)]*)\)', r'\1\2', line)
        # Ensure underscores instead of spaces in variable names
        line = re.sub(r'([A-Za-z]+)\s+([A-Za-z]+)', r'\1_\2', line)
        # Remove apostrophes from disease names
        line = re.sub(r"\'", "", line)

        fixed_lines.append(line.strip() + '\n')

    with open(file_path, 'w') as file:
        file.writelines(fixed_lines)


# Path to the Prolog file
file_path = './knowledge_base/disease_decision_tree.pl'
fix_prolog_whitespace_and_underscores(file_path)
print(f"Whitespace replaced with underscores and selective parentheses and apostrophes removed in {
      file_path}")

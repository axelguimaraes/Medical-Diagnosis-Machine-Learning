# src/parse_rules_to_prolog.py

import re

# Function to parse tree rules into Prolog format
def parse_rules_to_prolog(input_file, output_file):
    with open(input_file, 'r') as f:
        tree_rules = f.read()

    # Extract rules from the text
    rules = re.findall(r'if\s+\((.*?)\)\s+then\s+([^\n]+)', tree_rules, re.DOTALL)

    # Write rules to Prolog format
    with open(output_file, 'w') as f:
        for condition, prediction in rules:
            # Clean up condition and prediction strings
            condition = condition.replace('(', '').replace(')', '').strip()
            prediction = prediction.strip()
            
            # Format into Prolog rule syntax
            prolog_rule = f"{prediction.lower().replace(' ', '_')}({condition}).\n"
            f.write(prolog_rule)

    print(f"Prolog rules written to {output_file}")

def main():
    # Define paths and filenames
    input_file = '../knowledge_base/tree_rules.txt'
    output_file = '../knowledge_base/tree_rules.pl'

    # Parse tree rules to Prolog
    parse_rules_to_prolog(input_file, output_file)

if __name__ == "__main__":
    main()

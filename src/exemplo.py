import subprocess

# Inicializa o subprocesso SWI-Prolog
p = subprocess.Popen('swipl', stdin=subprocess.PIPE,
                     stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                     text=True, universal_newlines=True)

# Lista de comandos a serem enviados
commands = [
    'assertz(disease(influenza, 1, 0, 1, 1, 19, 0, 0, 1, positive)).',
    'assertz(disease(common_cold, 0, 1, 1, 0, 25, 0, 1, 1, negative)).',
    'assertz(disease(eczema, 0, 1, 1, 0, 25, 0, 1, 1, negative)).',
    'assertz(disease(asthma, 1, 1, 0, 1, 25, 1, 1, 1, positive)).',
    'assertz(disease(asthma, 1, 1, 0, 1, 25, 1, 1, 1, positive)).'
]

# Envia cada comando para o SWI-Prolog
for command in commands:
    p.stdin.write(command + '\n')

# Consulta a ser enviada
query = 'disease(Disease, 1, 0, 1, 1, 19, 0, 0, 1, Outcome).'
p.stdin.write(query + '\n')

# Fecha a entrada para indicar o fim da entrada
p.stdin.close()

# Lê a saída e o erro (se houver)
stdout, stderr = p.communicate()

# Imprime a saída e o erro (se houver)
print("Saída padrão:")
print(stdout)

print("Erro padrão:")
print(stderr)

# Termina o processo subprocesso
p.kill()

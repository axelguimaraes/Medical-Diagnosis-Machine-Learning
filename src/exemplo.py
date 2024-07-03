import subprocess

# Comandos a serem enviados para o SWI-Prolog
commands = """
assertz(car(honda, 18000, red)).
assertz(car(toyota, 18000, white)).
assertz(car(ford, 25000, red)).
assertz(car(acura, 50000, white)).
assertz(car(bmw, 60000, red)).
assertz((recommendcar(Age, Car) :- Age =< 25, car(Car, Cost, red), Cost =< 30000)).
recommendcar(20, X).
"""

# Inicializa o subprocesso SWI-Prolog
p = subprocess.Popen('swipl', stdin=subprocess.PIPE,
                     stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                     text=True, universal_newlines=True)

# Envia os comandos para o SWI-Prolog
stdout, stderr = p.communicate(input=commands)

# Imprime a saída e o erro (se houver)
print("Saída padrão:")
print(stdout)

print("Erro padrão:")
print(stderr)

# Termina o processo subprocesso
p.kill()


# Lista 1 - Exercício 2
def palindromo(string):
# replace: Função que substitui determinado caracter desejado por outro
    string_comaparacao = string.replace(" ", "").upper()
# [::-1]: Intervalo que percorre do último ao primeiro elemento
    if string_comaparacao == string_comaparacao[::-1]:
        print("É um palíndromo!!!")
    else:
        print("Não é uma palíndromo, porra >:( ")

# Lista 1 - Exercício 3
def inverte_palavras(string):
    print(f"Sua palavra inicial é: {string}")
    string = string[::-1]
    print(f"Sua palavra invertida é: {string}")


# Lista 1 - Exercício 4
def substitui_vogais(string):
    palavras = []
    string_final = ""
    print(f"Sua palavra inicial é: {string}")
    for caracter in string:
# Função que converte a string que estiver dentro em letras MAIÚSCULAS
        vogal = caracter.upper()
        if (vogal == "A") or (vogal == "E") or (vogal == "I") or (vogal == "O") or (vogal == "U") or (vogal == "Ã") or (vogal == "Õ"): 
            palavras.append("*")
        else:
            palavras.append(caracter)

    for letra in palavras:
        string_final += letra

    print(f"Sua palavra final é: {string_final}")

# Lista 1 - Exercício 5
def conta_palavras(string):
    palavras = 1
    print(f"Sua frase é: {string}")
    for letra in string:
        if (" " == letra):
            palavras += 1

    print(f"E a sua quantidade de palavras é: {palavras}")

conta_palavras("Guarda-chuva")

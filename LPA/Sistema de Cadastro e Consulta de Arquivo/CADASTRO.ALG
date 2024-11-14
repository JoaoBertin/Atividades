Algoritmo "CADASTRO"
// Disciplina   : [Lógica de Programação e Algorítmo]
// Professor   : Marcelo Yamamoto

Arquivo "C:\Users\UNIP\Documents\LPA\Dados.txt"

Var
palavra_arquivo: caracter

Inicio
escreval(" * Escreva 000 para encerrar * ")
repita
      escreva("Digite uma palavra a ser armazenada no arquivo: ")
      leia(palavra_arquivo)
      escreval("")
      se palavra_arquivo = "000" entao
         interrompa
         fimse
ate Falso

Fimalgoritmo

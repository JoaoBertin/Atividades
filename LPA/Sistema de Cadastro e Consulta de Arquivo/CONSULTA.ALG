Algoritmo "CONSULTA"
// Disciplina   : [Lógica de Programação e Algorítmo]
// Professor   : Marcelo Yamamoto

Arquivo "D:\Documentos\Cursos\UNIP\Trabalhos e Atividades\LPA\Dados.txt"

Var
contador_um, contador_dois: inteiro
leia_arquivo, leia_usuario: caracter
vetor_arquivo: vetor [1..495] de caracter

Inicio
contador_um <- 1
contador_dois <- 1
repita
     leia(leia_arquivo)
     se leia_arquivo = "000" entao
        interrompa
     fimse
     vetor_arquivo[contador_um] <- leia_arquivo
     contador_um <- contador_um + 1
ate Falso
contador_um <- contador_um - 1
escreval("")
escreval(" --- Iniciando Consulta --- ")
escreval("")
enquanto contador_um > 0 faca
     escreva("Digite a palavra a ser consultada: ")
     leia(leia_usuario)
     se leia_usuario = vetor_arquivo[contador_dois] entao
        escreval(" * Palavra foi Encontrada * ")
        escreval("")
     senao
        escreval(" * Palavra não foi Encontrada")
        escreval("")
     fimse
     contador_um <- contador_um - 1
     contador_dois <- contador_dois + 1
fimenquanto
escreval(" --- Consulta Encerrada --- ")

Fimalgoritmo
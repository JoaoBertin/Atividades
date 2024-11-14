Algoritmo "Sistema de Funcionários"


Var nome, cpf, rg, endereco, filiacao, dependentes, cargo, setor, idade, observacao, consulta, senha: caractere
   qtdependentes, excluir, alterar: inteiro
   sair, sair_excluir, sair_alterar: logico


Inicio
   sair:=Verdadeiro
   sair_excluir:=Verdadeiro
   sair_alterar:=Verdadeiro

   escreval("--------------- Iniciando Sistema de Funcionários ----------------")
   escreval("")
   escreva("Informe o seu Nome: ")
   leia(nome)
   escreva("Informe o seu CPF: ")
   leia(cpf)
   escreva("Informe o seu RG: ")
   leia(rg)
   escreva("Informe o seu Endereço: ")
   leia(endereco)
   escreva("Informe a sua Filiação(Pai ou Mãe): ")
   leia(filiacao)
   escreva("Informe a sua quantidade de Dependentes: ")
   leia(qtdependentes)
   se (qtdependentes > 0) então
      escreval("Informe o(s) seu(s) Dependente(s)")
      escreva("(Todos devem ser informados na mesma linha):")
      leia(dependentes)
   fimse
   se (qtdependentes <= 0) então
      dependentes:="Sem Dependentes"
   fimse
   escreva("Informe o seu Cargo: ")
   leia(cargo)
   escreva("Informe o seu Setor: ")
   leia(setor)
   escreva("Informe a sua Idade: ")
   leia(idade)
   escreva("Informe uma Observação ")
   escreval("(Se possui alguma necessidade especial ou algo que deve ser mencionado): ")
   leia(observacao)
   enquanto (sair = Verdadeiro) faça
      escreva("Digite 1 para Consulta dos dados, 2 para Exclusão, 3 para Alteração ou 'Sair' para encerrar: ")
      leia(consulta)
      consulta:=maiusc(consulta)
      escolha consulta
      caso "1"
         escreval("Você está no modo Consulta")
         escreva("Digite o Nome, CPF, Cargo ou Setor para proceder: ")
         leia(senha)
         se (senha = nome) ou (senha = cpf) ou (senha = cargo) ou (senha = setor) então
            escreval("")
            escreval("Seu Perfil:")
            escreval("    Nome: ", nome)
            escreval("    CPF: ", cpf)
            escreval("    RG: ", rg)
            escreval("    Endereço: ", endereco)
            escreval("    Filiação: ", filiacao)
            escreval("    Dependente(s): ", dependentes)
            escreval("    Cargo: ", cargo)
            escreval("    Setor: ", setor)
            escreval("    Idade: ", idade)
            escreval("    OBS: ", observacao)
         senão
            escreval("! Senha Incorreta !")
         fimse
      caso "2"
         escreval("Você está no modo Exclusão")
         escreva("Digite o Nome ou CPF para proceder: ")
         leia(senha)
         se (senha = nome) ou (senha = cpf) então
            enquanto (sair_excluir = Verdadeiro) faça
               escreval("")
               escreval("O que deseja excluir?")
               escreval("    Nome: ", nome," - 1")
               escreval("    CPF: ", cpf," - 2")
               escreval("    RG: ", rg," - 3")
               escreval("    Endereço: ", endereco," - 4")
               escreval("    Filiação: ", filiacao," - 5")
               escreval("    Dependente(s): ", dependentes," - 6")
               escreval("    Cargo: ", cargo," - 7")
               escreval("    Setor: ", setor," - 8")
               escreval("    Idade: ", idade," - 9")
               escreval("    OBS: ", observacao, " - 10")
               escreval("    EXCLUIR TUDO - 11")
               escreval(" <- Voltar: - 0")
               escreva("Digite o número indicado para cada elemento: ")
               leia(excluir)
               se (excluir = 1) então
                  nome:="N/A"
               fimse
               se (excluir = 2) então
                  cpf:="N/A"
               fimse
               se (excluir = 3) então
                  rg:="N/A"
               fimse
               se (excluir = 4) então
                  endereco:="N/A"
               fimse
               se (excluir = 5) então
                  filiacao:="N/A"
               fimse
               se (excluir = 6) então
                  dependentes:="N/A"
               fimse
               se (excluir = 7) então
                  cargo:="N/A"
               fimse
               se (excluir = 8) então
                  setor:="N/A"
               fimse
               se (excluir = 9) então
                  idade:="N/A"
               fimse
               se (excluir = 10) então
                  observacao:="N/A"
               fimse
               se (excluir = 11) então
                  nome:="N/A"
                  cpf:="N/A"
                  rg:="N/A"
                  endereco:="N/A"
                  filiacao:="N/A"
                  dependentes:="N/A"
                  cargo:="N/A"
                  setor:="N/A"
                  idade:="N/A"
                  observacao:="N/A"
               fimse
               se (excluir = 0) então
                  sair_excluir:=Falso
               fimse
            fimenquanto
         senão
            escreval("! Senha Incorreta !")
         fimse
      caso "3"
         escreval("Você está no modo Alteração")
         escreva("Digite o Nome ou CPF para proceder: ")
         leia(senha)
         se (senha = nome) ou (senha = cpf) então
            enquanto (sair_alterar = Verdadeiro) faça
               escreval("")
               escreval("O que deseja alterar?")
               escreval("    Nome: ", nome," - 1")
               escreval("    CPF: ", cpf," - 2")
               escreval("    RG: ", rg," - 3")
               escreval("    Endereço: ", endereco," - 4")
               escreval("    Filiação: ", filiacao," - 5")
               escreval("    Dependente(s): ", dependentes," - 6")
               escreval("    Cargo: ", cargo," - 7")
               escreval("    Setor: ", setor," - 8")
               escreval("    Idade: ", idade," - 9")
               escreval("    OBS: ", observacao," - 10")
               escreval(" <- Voltar: - 0")
               escreva("Digite o número indicado para cada elemento: ")
               leia(alterar)
               se (alterar = 1) então
                  escreva("Digite o novo Nome: ")
                  leia(nome)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 2) então
                  escreva("Digite o novo CPF: ")
                  leia(cpf)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 3) então
                  escreva("Digite o novo RG: ")
                  leia(rg)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 4) então
                  escreva("Digite o novo Endereço: ")
                  leia(endereco)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 5) então
                  escreva("Digite a nova Filiação: ")
                  leia(filiacao)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 6) então
                  escreva("Digite a nova quatidade de Dependentes: ")
                  leia(qtdependentes)
                  se (qtdependentes > 0) então
                     escreval("Informe o(s) seu(s) Dependente(s)")
                     escreva("(Todos devem ser informados na mesma linha):")
                     leia(dependentes)
                  fimse
                  se (qtdependentes <= 0) então
                     dependentes:="Sem Dependentes"
                  fimse
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 7) então
                  escreva("Digite o novo Cargo: ")
                  leia(cargo)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 8) então
                  escreva("Digite o novo Setor: ")
                  leia(setor)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 9) então
                  escreva("Digite a nova Idade: ")
                  leia(idade)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 10) então
                  escreva("Digite a nova Observação: ")
                  leia(observacao)
                  escreval("Alteração feita com sucesso!")
               fimse
               se (alterar = 0) então
                  sair_alterar:=Falso
               fimse
            fimenquanto
         senão
            escreval("! Senha Incorreta !")
         fimse
      caso "SAIR"
         escreval("")
         escreval("Programa encerrado")
         sair:=Falso
      outrocaso
         escreval("! Digite um comando válido !")
         escreval("")
      fimescolha
   fimenquanto

Fimalgoritmo
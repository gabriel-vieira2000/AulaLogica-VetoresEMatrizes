Algoritmo "exercicio7"
// Descrição   : Reajuste de Salário Anual de Funcionário de 2010 a 2023
// Autor(a)    : Gabriel Vieira Cardoso
// Data atual  : 17/01/2023

Var
   valores : vetor [1..3,1..3] de real
   somaLinha3, somaColuna2, somaDiagonal, somaTodosValores : real
   i, j : inteiro


procedimento CalculaSomaLinha3
Inicio
   somaLinha3 <- valores[3,1] + valores[3,2] + valores[3,3];
fimprocedimento

funcao CalculaSomaColuna2 : real
Var
   somaColuna2 : real
Inicio
   somaColuna2 <- valores[1,2] + valores[2,2] + valores[3,2];
   retorne somaColuna2
fimfuncao

funcao CalculaSomaDiagonal() : real
Var
   somaDiagonal : real
Inicio
   somaDiagonal <- valores[1,1] + valores[2,2] + valores[3,3];
   retorne somaDiagonal
fimfuncao

Inicio
   para i de 1 ate 3 passo 1 faca
      para j de 1 ate 3 passo 1 faca
         escreva("Insira o valor da posição [",i,"][",j,"]:")
         leia(valores[i,j])
      fimpara
   fimpara

   escreval("Matriz:")
   para i de 1 ate 3 passo 1 faca
      para j de 1 ate 3 passo 1 faca
         escreva(valores[i,j]," ")
      fimpara
      escreval("")
   fimpara

   CalculaSomaLinha3
   escreval("Soma da Linha 3:",somaLinha3)

   somaColuna2 <- CalculaSomaColuna2;
   escreval("Soma da Coluna 2:",somaColuna2)

   somaDiagonal <- CalculaSomaDiagonal();
   escreval("Soma da Diagonal Principal: ", somaDiagonal)

   para i de 1 ate 3 passo 1 faca
      para j de 1 ate 3 passo 1 faca
         somaTodosValores <- somaTodosValores + valores[i,j]
      fimpara
   fimpara
   escreval("Soma de Todos os Valores da Matriz:",somaTodosValores)
Fimalgoritmo
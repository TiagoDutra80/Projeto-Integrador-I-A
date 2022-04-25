Algoritmo "Loja Tiago Dutra"
// Disciplina   : Projeto integrador I-A
// Professor   : Lorena piza
// Descrição   : Código de entrada,  venda e relatório de estoque.
// Autor(a)    : Tiago dos Santos Dutra
// Data atual  : 20/04/2022
Var
codigoProd:Vetor[1..3] de inteiro
descricaoProd:vetor[1..3] de caracter
quantidadeProd:vetor[1..3] de inteiro
valorUnitProd:vetor[1..3] de real

opcaoEscolhida:inteiro
cont:inteiro
codigoProdC:inteiro
codigo:inteiro
quantidade:inteiro
i:inteiro
existeCodigo: logico

nomeCliente:caracter
quantidadeVend: inteiro
valortotVenda: real
valortotalCompra: real
valorUnitVenda: real
forma: inteiro

Inicio
enquanto verdadeiro faca

escreval("----------Menu -------:") //Menu com as opções

escreval("1 - Dados do estoque:") //Cadastro de Dados do estoque

escreval("2 - Dados de venda:") //Cadastro de dados de venda

escreval("3 - Forma de pagamento:") //Forma de pagamento

escreval("4- Relatório:") //Dados do estoque, dados da venda e valor total da compra

leia(opcaoEscolhida)

escolha opcaoEscolhida

caso 1
limpatela
cont<-cont+1

se(cont <=3) entao
escreval("Cadastro de novo produto:")
escreval("Digite o código do produto:")
leia(codigoProd[cont])
escreval("Digite a descrição do produto:")
leia(descricaoProd[cont])
escreval("Digite a quantidade do produto:")
leia(quantidadeProd[cont])
escreval("Digite o valor do produto: R$")
leia(valorUnitProd[cont])

fimse
escreval("")

caso 2
limpatela
escreval("Nome do Cliente:")
leia(nomeCliente)
escreval("Digite o código do produto:")
leia(codigoProdC)
escreval("Quantidade Vendida:")
leia(quantidadeVend)
valorUnitVenda<- (valorUnitProd[codigoProdC]) * (70/100) + (valorUnitProd[codigoProdC])


valortotVenda<-(valorUnitVenda*quantidade)
escreval("Valor unitário da venda:")
escreval(valorUnitVenda)
valortotVenda<-(valorUnitVenda*quantidadeVend)
escreval("Valor total da venda:")
escreval(valortotVenda)
escreval("")

caso 3
limpatela
escreval("Forma de pagamento:")
escreval("A vista ficara com desconto de 5%, digite 1")
escreval("A prazo ficara com acrescimo de 3%, digite 2")
leia(forma)
se (forma = 1) entao
escreval ("O valor Total é de: R$", valortotVenda-(valortotVenda*5/100))
fimse
se (forma = 2) então
escreval ("O valor Total é de: R$", (valortotVenda*(3/100))+(valortotVenda))
fimse
escreval("")

caso 4
limpatela
escreval("------------Relatório-------------:")
escreval("O código do produto é: ", codigoProd[cont])
escreval("Descrição: ", descricaoProd[cont])
escreval("O valor unitário do produto: R$" ,valorUnitProd[cont])
escreval("Valor unitário de venda:", valorUnitVenda)
escreval("valor total da venda:", valortotVenda)
escreval("Nome do cliente: ", nomeCliente)
escreval("Quantidade vendida:", quantidadeVend)

interrompa
fimescolha
fimenquanto
fimalgoritmo
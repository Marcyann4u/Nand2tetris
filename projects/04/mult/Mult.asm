// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// multiplicando = R0
// multiplicador = R1
// produto = 0
// i = 1
//LOOP:
//  if i > multiplicador vapara a puta que te pariu
//      produto = multiplicando + produto
//       i = i + 1
// a puta que te pariu:
// R2 = produto
        // Olá, Marcely do futuro, boa sorte em entender essa porra

        // Declarando variavel multiplicando
        @R0
        D=M
        @multiplicando
        M=D

        // declarando multiplicador
        @R1
        D=M
        @multiplicador
        M=D

        @i
        M=1

        @produto
        M=0

        // perguntas frequentes:
        // o que diabos é o D?
        // o D guarda os dados na memória
        // o que é o M?
        // M é uma memória temporaria que registra o valor que está sendo utilizado, ele representa tudo, desde os endereços, às variáveis e tudo.
        // Mas como krls ele tá guardando o valor se vc coloca só M=0?
        // Só Deus sabe mas EU ACHO que é pq guarda numa variável

(LOOP) // Criando uma função, pode ser qualquer nome :)
        @i //aponta o local na memória que eu quero acessar
        D=M // acessa o local apontado
        @multiplicador
        D=D-M // 
        @STOP
        D;JGT // if i > multiplicador vai para STOP

        // perguntas frequentes?
        // oq diacho é JGT?
        // é JUMP IF GREATER THAN
        // ou em português, quica se for maior

        @produto
        D=M
        @multiplicando
        D=D+M
        @produto
        M=D // produto = multiplicando + produto

        @i
        M=M+1 // i = i + 1
        @LOOP // aponta pro endereço
        0;JMP // pula independente dos desejos dele pro inicio do endereço apontado anteriormente
(STOP)
        @produto // referencia o productum
        D=M 
        @R2 // onde q a gente vai guardar o resultado final do productum
        M=D // e bota no local desejado
(END)
        @END
        0;JMP

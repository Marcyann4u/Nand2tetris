// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// addr = SCREEN

// i = 0

// 256 x 512


(START)
    @SCREEN
    D=A
    @i
    M=D // i = tamanho da tela

(LOOP)
    // se passou do tamanho da tela volta pro inicio
    @i
    D=M
    @24575
    D=A-D
    @START
    D;JLT // i < screen - 1

    @KBD //teclado
    D=M
    @BLACKEN //se for diferente de 0 pinta de preto
    D;JNE 

    // clear the screen (write every pixel white) 

    @i //pega a posição de memoria atual
    D=M 
    A=D  // muda o conteudo da posicao de memoria
    M=0 //Draw white
    @CONTINUE
    0;JMP

(BLACKEN)
    @i //pega a posição de memoria atual
    D=M 
    A=D  // muda o conteudo da posicao de memoria
    M=-1 //Draw in black


(CONTINUE)
    @i
    M=M+1
    @LOOP
    0;JMP
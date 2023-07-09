// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

@I
M = 0
@R2
M = 0
(LOOP)
// IF R1 - I = 0 GOTO END
@R1
D = M
@I
D = D - M
@END
D;JEQ
// OQUE VAI SER RODADO VARIAS VEZES
@R0
D = M
@R2
M = M + D
@I
M = M + 1
// INCREMENDO DO I (NO CASO DECRESEMENTO) I = I - 1
@LOOP
0;JMP
//FORA DO LOOP (FIM DO PROGRAMA)
(END)
@END
0;JMP
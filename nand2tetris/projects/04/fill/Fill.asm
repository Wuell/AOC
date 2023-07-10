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

//while (1):
(LOOP)
//    if key.isPressed() goto black:
@I
M = 0
@KBD
D = M
@BLACK
D;JNE
//    else goto white:
@WHITE
0;JMP 

(BLACK)
// for i in range(len(screen))
@I
D = M
@1030
D = D - A
@END
D;JEQ
// OQUE VAI SER RODADO VARIAS VEZES
// screen[i] = -1;
//IDA
@I
D = M
@SCREEN
A = A + D
M = -1
@I
D = M
@17407
A = A + D
M = -1
@I
D = M
@18430
A = A + D
M = -1
@I
D = M
@19453
A = A + D
M = -1
// VOLTA
@I
D = M
@24575
A = A - D
M = -1
@I
D = M
@23552
A = A - D
M = -1
@I
D = M
@22529
A = A - D
M = -1
@I
D = M
@21506
A = A - D
M = -1

// INCREMENDO DO I
@I
M = M + 1
@BLACK
0;JMP

// for i in range(len(screen))
(WHITE)
@I
D = M
@1030
D = D - A
@END
D;JEQ
// screen[i] = 0;
@I
D = M
@SCREEN
A = A + D
M = 0
@I
D = M
@17407
A = A + D
M = 0
@I
D = M
@18430
A = A + D
M = 0
@I
D = M
@19453
A = A + D
M = 0
// VOLTA
@I
D = M
@24575
A = A - D
M = 0
@I
D = M
@23552
A = A - D
M = 0
@I
D = M
@22529
A = A - D
M = 0
@I
D = M
@21506
A = A - D
M = 0
//INCREMENTO DO I
@I
M = M + 1
@WHITE
0;JMP

(END)
@LOOP
0;JMP
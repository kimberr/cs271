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

(BLACKLOOP)
@24576
D=M
@WHITELOOP
D;JEQ
@24575
D=M
@WHITELOOP
D;JLT
@i
D=M
@163384
D=A+D
A=D
M=-1
@i
M=M+1
@BLACKLOOP
0;JMP

(WHITELOOP)
@24576
D=M 
@BLACKLOOP
D;JGT
@i
D=M 
@16384
D=D+A 
A=D
M=0
@i
M=M-1
@WHITELOOP
0;JMP
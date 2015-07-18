#Ishvaraus Davis
.data
Array_A:  .word 0xa1a2a3a4, 0xa5a6a7a8
input: .asciiz "Please enter element type('w'-word, 'h'-half, 'b'-byte):\n"
output: .asciiz "\nHere is the output (address, value in hexadecimal, value in decimal):\n"
space: .asciiz ", "
newline: .asciiz "\n"
w: .byte 'w' 
by: .byte 'b'
h: .byte 'h'
work: .asciiz "here"
address: .word 0x10010000
.text
#77 w, 62 b, 68 h
li $v0, 4
la $a0,input	
syscall
li $v0,12		
syscall
move $t0, $v0		#character location
li $v0, 4
la $a0,output		
syscall
la $t1, w		#load char addresses
lb $t2, 0($t1)
la $t3, Array_A 	#load the array
la $t5, address
lw $t6, 0($t5)		#load the address number
bne $t2,$t0,firstLoop #if user input is w
wLoop: 
lw $t4, 0($t3)		
slti $s4,$t4,0
bne $s4,1,Exit
li $v0, 34
move $a0, $t6
syscall			#print the address
li $v0, 4
la $a0,space
syscall			#space
li $v0,34
move $a0,$t4
syscall			#print value in hex
li $v0, 4
la $a0,space
syscall			#space
li $v0,1
move $a0,$t4
syscall			#print value in decimal
addi $t3, $t3, 4
li $v0, 4
la $a0, newline
syscall
addi $t6,$t6,4
j 		wLoop
#finish loop here

firstLoop: la $s2, by	#loop for b
lb $t4, 0($s2)
bne $t4,$t0,secondLoop  #if not equal to b
lbu $s1, 0($t3)		#byte of array
li $v0, 34
move $a0, $t6
syscall		
li $v0, 4
la $a0,space
syscall			#space
li $v0,34
move $a0,$s1
syscall			#print value in hex
li $v0, 4
la $a0,space
syscall			#space
li $v0,1
move $a0,$s1
syscall			#print value in decimal
beq $s1,165,Exit
addi $t3, $t3, 1
li $v0, 4
la $a0, newline
syscall
addi $t6,$t6,1
j 		firstLoop

secondLoop:la $t7, h
lb $t8, 0($t7)
bne $t8,$t0,Exit
lhu $s1, 0($t3)
li $v0, 34
move $a0, $t6
syscall		
li $v0, 4
la $a0,space
syscall			#space
li $v0,34
move $a0,$s1
syscall			#print value in hex
li $v0, 4
la $a0,space
syscall			#space
li $v0,1
move $a0,$s1
syscall			#print value in decimal
beq $s1,42406,Exit
addi $t3, $t3, 2
li $v0, 4
la $a0, newline
syscall
addi $t6,$t6,2
j 		secondLoop

Exit:
li $v0,10
syscall
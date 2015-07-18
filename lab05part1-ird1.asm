.data
input1:	.asciiz "Please enter a number n:\n"
input2: .asciiz "Please enter another number k:\n"
output: .asciiz "The value of choose is\n "
nLine: 	.asciiz "\n"
.text
la $a0, input1
li $v0, 4
syscall
li $v0, 5
syscall
move $a1, $v0	#Input 1

la $a0, input2
li $v0, 4
syscall

li $v0, 5
syscall
move $a2, $v0 	#Input 2
li $v0, 0
jal choose
la $a0, output
move $t2, $v0
li $v0, 4
syscall
move $a0, $t2
li $v0, 1
syscall
li $v0, 10 
syscall

choose: addi $sp,$sp,-16
sw $s0, 0($sp)
sw $s1, 4($sp)
sw $s2, 8 ($sp)
sw $ra,12($sp)

add $s0, $a1, $zero		#n input 1
add $s1, $a2, $zero		#k input 2

beq $s1, $zero, return1		
beq $s0, $s1, return1
slt $t2, $s1, $s0
beqz $t2, return0

addi $a1, $s0, -1
addi $a2, $s1, -1

jal choose

add $s2, $zero, $v0		#s2 = c(n-1,k-1)

addi $a1, $s0, -1
add $a2, $s1, $zero

jal choose

add $v0, $v0, $s2

exit:
lw $s0,0($sp)
lw $s1, 4($sp)
lw $s2, 8 ($sp)
lw $ra,12($sp)
addi $sp, $sp, 16
jr $ra

return1: li $v0, 1
j exit

return0: li $v0, 0
j exit


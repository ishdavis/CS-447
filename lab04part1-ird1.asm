.data
input: .asciiz "Please enter your string:\n"
replace: .asciiz "Please enter the character to replace:\n"
output: .asciiz "Here is the output: "
nline: .asciiz "\n"
myString: .space 64
.text

la $a0,input	#print out input
li $v0, 4
syscall

li $v0, 8	#save string to $t0
la $a0, myString
li $a1, 63
syscall

move $t0, $a0


li $v0, 4	#print out question
la $a0, replace
syscall

li $v0, 12	#get the character to replace
syscall
move $a1, $v0	#a1 has the char

la $a0, nline
li $v0, 4
syscall

move $a0,$t0	#a0 has the string

li $a2, '*'
li $t2, 0x20
li $t6, 0xA

jal ReplaceLetterWithAsterisk
jal invertCase
li $v0, 4
syscall

li $v0,10
syscall

invertCase:move $t0, $a0
loop:lbu $t1, 0($t0)
beq $t1,$zero,end1		#end of string
beq $t1,$t6,end1
addi $t0,$t0,1
beq $t1,$t2,loop
sub $t1,$t1,$a2
beq $t1,$zero,loop		#if its an *
add $t1,$t1,$a2			#back to original
slti $t3, $t1, 0x5b		#uppercase
beq $t3, $zero, lowercase	
addi $t1,$t1,0x20
sb $t1,-1($t0)
j loop
lowercase:sub $t1,$t1,$t2	#lowercase
sb $t1,-1($t0)
j loop
end1:
jr $ra


ReplaceLetterWithAsterisk:move $t0,$a0
ReplaceLetterWithAsterisk1:lbu $t1,0($t0)
beq $t1,$zero,end
addi $t0,$t0,1
sub $t1,$t1,$a1
bne $t1,$zero,ReplaceLetterWithAsterisk1
sb $a2,-1($t0)
j	ReplaceLetterWithAsterisk1
end:
jr	$ra











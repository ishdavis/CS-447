.data
names:	.asciiz "julia", "steven", "daniel", "kate", "adrian"
cities: .asciiz "boston", "new york", "chicago", "pittsburgh", "denver"
input:	.asciiz "Please enter a name\n"
output: .asciiz "City is: "
notFound: .asciiz "Not found!"
myString: .space 23
.text
la $a0, input	#question asked
li $v0, 4
syscall
la $a0, myString
li $v0, 8 
li $a1, 22
syscall
move $a1, $a0	#input string a1
li $v1, 0	#index
la $a2, names
la $a0, names	#name array
li $t4, 0xA
li $t6, 0
#loop starts here
beginning:

jal CheckName
beq $v0, $zero, other
jal LookUp
move $a2, $v1
la $a0, output
li $v0, 4
syscall
move $a0, $a2
syscall
li $v0, 10
syscall


other: addi $v1,$v1,1
li $s0, 5
beq $v1,$s0,done
jal StrSize
la $a0, names
la $a2, names
addi $t6, $t6, 1
add $a2, $a2, $t6
add $a0, $a0, $t6
j beginning

StrSize:lbu $t5, 0($a2)
beq $t5, $zero, stop
addi $a2, $a2, 1
addi $t6, $t6, 1
j StrSize

stop: jr $ra

done:la $a0,notFound
li $v0, 4
syscall
li $v0, 10 
syscall




CheckName:lbu $t2, 0($a1)	#byte from input string
lbu $t3, 0($a0)			#byte from array
beq $t2, $t4, conclusion	#end of input
time:
bne $t2, $t3, exit
addi $a1, $a1, 1
addi $a0, $a0, 1
j CheckName

conclusion:bne $t3, $zero, time
li $v0, 1
jr $ra

exit:li $v0, 0
jr $ra

LookUp:la $a0, cities		#v1 is the index
beq $v1, 0, boston
beq $v1, 1, newYork
beq $v1, 2, chicago
beq $v1, 3, pittsburgh
beq $v1, 4, denver
boston:
move $v1, $a0
jr $ra
newYork:
addi $a0, $a0, 7
move $v1, $a0
jr $ra
chicago:
addi $a0, $a0, 16
move $v1, $a0
jr $ra
pittsburgh:
addi $a0, $a0, 24
move $v1, $a0
jr $ra
denver:
addi $a0, $a0, 35
move $v1, $a0
jr $ra







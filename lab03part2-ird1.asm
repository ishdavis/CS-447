.data
a: .asciiz "Please enter your integer:\n"
z: .asciiz "Here is the input in binary: "
c: .asciiz "\nHere is the input in hexadecimal: "
d: .asciiz "\nHere is the output in binary: "
e: .asciiz "\nHere is the output in hexadecimal: "
.text
li $v0,4
la $a0,a
syscall
li $v0, 5
syscall
move $t0, $v0
li $v0,4
la $a0,z
syscall
li $v0,35
move $a0,$t0
syscall
li $v0,4
la $a0,c
syscall
li $v0,34
move $a0,$t0
syscall
srl $t1,$t0,4
li $v0,4
la $a0,d
syscall
li $t2, 15
and $t3,$t2,$t1
li $v0,35
move $a0,$t3
syscall
li $v0,4
la $a0,e
syscall
li $v0,34
move $a0,$t3
syscall
li $v0,10
syscall



 

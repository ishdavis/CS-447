.data
print1: .asciiz "What is the first value?\n"
print2: .asciiz "What is the second value?\n"
print3: .asciiz " and "
print4: .asciiz " is "
print5: .asciiz "The sum of "
.text
li $v0, 4	#print string
la $a0, print1  #load string to be printed
syscall
li $v0, 5	#allow user input
syscall
move $t0, $v0   #register of input 1
li $v0, 4			
la $a0, print2	#print string 2	
syscall		
li $v0, 5	#user input 2
syscall	
move $t1, $v0   #register of input 2
li $v0, 4
la $a0, print5
syscall
li $v0, 1	#print value 1
add $a0, $t0, $zero
syscall
li $v0, 4
la $a0, print3
syscall
li $v0, 1
add $a0, $t1, $zero
syscall 
li $v0, 4
la $a0, print4
syscall
li $v0, 1
add $a0, $t1, $t0
syscall
li $v0, 10
syscall


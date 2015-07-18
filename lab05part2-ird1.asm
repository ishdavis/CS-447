.data
x: .asciiz "Please enter the x coordinate of the position:\n"
y: .asciiz "Please enter the y coordinate of the position:\n"
size: .asciiz "Please enter the size:\n"
color: .asciiz "Please enter the color ('g' - green, 'y' -yellow and 'r' -red):\n"

.text

li $k0, 0
li $t8, 0		#x
li $t9, 9		#y
li $a3, 1
jal drawCard

poll: la $v0,0xffff0000
lw $t0,0($v0)
andi $t0, $t0,1
beq $t0,$zero,continue		#branch out of the poll loop
lw $t0,4($v0)

upkey:addi $v0,$t0,-224		#check for up key	
bne $v0, $zero, downkey		#check for wrap around
beq $k0, 0, continue
beq $k0, 1, continue
beq $k0, 2, continue
beq $k0, 3, continue
beq $k0, 4, continue
beq $k0, 5, continue
beq $k0, 6, continue
beq $k0, 7, continue

li $a3, 0
jal drawCard

addi $t9, $t9, -10

li $a3, 1
jal drawCard

addi $k0, $k0, -8		#sub eight from marked card

downkey:addi $v0,$t0,-225	#check for down
bne $v0, $zero, lkey
beq $k0, 32, continue
beq $k0, 33, continue
beq $k0, 34, continue
beq $k0, 35, continue
beq $k0, 36, continue
beq $k0, 37, continue
beq $k0, 38, continue
beq $k0, 39, continue

li $a3, 0
jal drawCard

addi $t9, $t9, 10

li $a3, 1
jal drawCard

addi $k0, $k0, 8		#add 8 to marked card

lkey: addi $v0,$t0,-226		#check for left
bne $v0, $zero, rkey		#check for wrap-around
beq $k0, 0, continue
beq $k0, 8, continue
beq $k0, 16, continue
beq $k0, 24, continue
beq $k0, 32, continue

li $a3, 0
jal drawCard

addi $t8, $t8, -8

li $a3, 1
jal drawCard

addi $k0, $k0, -1		#sub 1 from the marked card

rkey:addi $v0, $t0, -227	#check for right
bne $v0, $zero, bkey		#check for wrap-around
beq $k0, 7, continue
beq $k0, 15, continue
beq $k0, 23, continue
beq $k0, 31, continue
beq $k0, 39, continue

li $a3, 0
jal drawCard

addi $t8, $t8, 8

li $a3, 1
jal drawCard

addi $k0, $k0, 1		#add 1 to the marked card


bkey:addi $v0, $t0, -66		#check for b


j poll



continue:
j poll






li $v0, 10
syscall
drawCard:addi $sp, $sp, -12
sw $t8,4($sp)
sw $t9,8($sp)
sw $ra,0($sp)

move $a0, $t8
move $a1, $t9
#li $a0, 0		#add to a0 to move box left and right
#li $a1,9	#add to a1 to move box up and down
li $a2,8


jal drawSquare

lw $ra,0($sp)
lw $t8,4($sp)
lw $t9,8($sp)
addi $sp, $sp, 12
jr $ra

setLED:
	# byte offset into display = y * 16 bytes + (x / 4)
	sll	$t0,$a1,4      # y * 16 bytes
	srl	$t1,$a0,2      # x / 4
	add	$t0,$t0,$t1    # byte offset into display
	li	$t2,0xffff0008 # base address of LED display
	add	$t0,$t2,$t0    # address of byte with the LED
	# now, compute led position in the byte and the mask for it
	andi	$t1,$a0,0x3    # remainder is led position in byte
	neg	$t1,$t1        # negate position for subtraction
	addi	$t1,$t1,3      # bit positions in reverse order
	sll	$t1,$t1,1      # led is 2 bits
	# compute two masks: one to clear field, one to set new color
	li	$t2,3		
	sllv	$t2,$t2,$t1
	not	$t2,$t2        # bit mask for clearing current color
	sllv	$t1,$a2,$t1    # bit mask for setting color
	# get current LED value, set the new field, store it back to LED
	lbu	$t3,0($t0)     # read current LED value	
	and	$t3,$t3,$t2    # clear the field for the color
	or	$t3,$t3,$t1    # set color field
	sb	$t3,0($t0)     # update display
	jr	$ra


drawHorizontalLine:addi $sp,$sp,-20
sw $a0,4($sp)
sw $a2,8($sp)
sw $a1,12($sp)
sw $a3,16($sp)
sw $ra,0($sp)


add $t4, $a2, $zero
move $a2, $a3

jal setLED

move $a2, $t4

addi $a0, $a0, 1
addi $a2, $a2, -1
slt $t1,$zero, $a2

beqz $t1, end
bne $a2, $zero, drawHorizontalLine


end: lw $ra,0($sp)
lw $a0,4($sp)
lw $a1,12($sp)
lw $a3,16($sp)
lw $a2,8($sp)
addi $sp, $sp, 20
jr $ra


drawVerticalLine:
addi $sp,$sp,-20
sw $a1,4($sp)
sw $a2,8($sp)
sw $a3,12($sp)
sw $a0,16($sp)
sw $ra,0($sp)

addi $a2, $a2, 2

drawVert:
add $t4, $a2, $zero
move $a2, $a3

jal setLED

move $a2, $t4

addi $a1, $a1, 1
addi $a2, $a2, -1
slt $t1,$zero, $a2

beqz $t1, endit
bne $a2, $zero, drawVert


endit: lw $ra,0($sp)
lw $a1,4($sp)
lw $a0,16($sp)
lw $a2,8($sp)
lw $a3,12($sp)
addi $sp, $sp, 20
jr $ra

drawSquare:addi $sp, $sp, -12
sw $s0,4($sp)
sw $s1,8($sp)
sw $ra,0($sp)

add $s0, $a0, $zero
add $s1, $a1, $zero

jal drawVerticalLine

addi $t0, $a2, -1 
add $a0, $a0, $t0 

jal drawVerticalLine

add $a0, $s0, $zero

jal drawHorizontalLine

addi $t0, $a2, -1
add $a1, $a1, $t0

add $a1, $a1, 2
jal drawHorizontalLine

add $a1, $s1, $zero


lw $ra,0($sp)
lw $s0,4($sp)
lw $s1,8($sp)
addi $sp, $sp, 12
jr $ra


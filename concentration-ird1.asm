####Ishvaraus Davis
####ird1@pitt.edu
.data
minute: .word 0xFFFF000C
colon:	.word 0xFFFF000E
tenthSecond: .word 0xFFFF0010
board: .word 0xFFFF00A8
Second: .word 0xFFFF0012
gameOver1: .asciiz "Game Over.\n"
cardMatches: .asciiz "Number of card pairs matched:\n "
cardNotMatched: .asciiz "\nNumber of card pairs not matched:\n "
Matches: .byte 0
cardFlipped: .byte 0
smileyPosition: .byte 0, 0, 0
tempCard: .byte 0
Positions: .byte 0, 0
whichCard: .byte 0, 0, 0
values: .byte 0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9
matched: .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
font:		.half
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xC000, #----X---   0000 0000 1100 0000    
		0xC003, #---XX---   0000 0011 1100 0000   
		0xC00C, #--X-X---   0000 1100 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0xFC3f, #-XXXXXX-   0011 1111 1111 1100   
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x3000, #-----X--   0000 0000 0011 0000   
		0xC000, #----X---   0000 0000 1100 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0x000C, #--X-----   0000 1100 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		##########################
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		##########################
		0x0C00, #------X-   0000 0000 0000 1100    
		0xCC00, #----X-X-   0000 0000 1100 1100    
		0x0C03, #---X--X-   0000 0011 0000 1100    
		0x0C0C, #--X---X-   0000 1100 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		##########################
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0030, #-X------   0011 0000 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xF03F, #-XXXXX--   0011 1111 1111 0000    
		##########################
		0x0C00, #-----X--   0000 0000 0000 1100    
		0x3000, #----X---   0000 0000 0011 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0xF00F, #--XXXX--   0000 1111 1111 0000
		0x0C30, #-X----X-   0011 0000 0000 1100    	
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x3000, #-----X--   0000 0000 0011 0000    
		0xC000, #----X---   0000 0000 1100 0000    
		0x0003, #---X----   0000 0011 0000 0000    
		0x000C, #--X-----   0000 1100 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		0x0030, #-X------   0011 0000 0000 0000    
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100   
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		##########################
		0xF00F, #--XXXX--   0000 1111 1111 0000    
		0x0C30, #-X----X-   0011 0000 0000 1100    
		0x0C30, #-X----X-   0011 0000 0000 1100   
		0xFC0F, #--XXXXX-   0000 1111 1111 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0x0C00, #------X-   0000 0000 0000 1100    
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100
		########################## (CARD 10)
		0xFC3F, #-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		0xFC3F,	#-XXXXXX-   0011 1111 1111 1100
		########################## (CARD 11)
		0x0000, #--------   0000 0000 0000 0000
		0x3C3C, #-XX--XX-   0011 1100 0011 1100
		0x0000, #--------   0000 0000 0000 0000
	   	 0x0C30, #-X----X-   0011 0000 0000 1100
		0x300C, #--X--X--   0000 1100 0011 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 12)
		0x0000, #--------   0000 0000 0000 0000
		0x3C3C, #-XX--XX-   0011 1100 0011 1100
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x300C, #--x--X--   0000 1100 0011 0000
		0x0C30, #-X----X-   0011 0000 0000 1100
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 13)
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		########################## (CARD 14)
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000, #--------   0000 0000 0000 0000
		0xC003, #---XX---   0000 0011 1100 0000
		0x0000, #--------   0000 0000 0000 0000
		0x0000  #--------   0000 0000 0000 0000
.text
li $t6, 1
li $k0, 0		#marked card
li $t8, 0		#x for mark
li $t9, 9		#y for mark

j starter	#line 287

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
addi $sp, $sp, 4
jr $ra

setLED:sll	$t0,$a1,4      # y * 16 bytes
	srl	$t1,$a0,2      # x / 4
	add	$t0,$t0,$t1    # byte offset into display
	li	$t2,0xffff0008 # base address of LED display
	add	$t0,$t2,$t0    # address of byte with the LED
	andi	$t1,$a0,0x3    # remainder is led position in byte
	neg	$t1,$t1        # negate position for subtraction
	addi	$t1,$t1,3      # bit positions in reverse order
	sll	$t1,$t1,1      # led is 2 bits
	li	$t2,3		
	sllv	$t2,$t2,$t1
	not	$t2,$t2        # bit mask for clearing current color
	sllv	$t1,$a2,$t1    # bit mask for setting color
	lbu	$t3,0($t0)     # read current LED value	
	and	$t3,$t3,$t2    # clear the field for the color
	or	$t3,$t3,$t1    # set color field
	sb	$t3,0($t0)     # update display
	jr	$ra

drawHorizontalLine:addi $sp,$sp,-20	#Draw a horizontal line
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

beqz $t1, stopper
bne $a2, $zero, drawHorizontalLine

stopper: lw $ra,0($sp)
lw $a0,4($sp)
lw $a1,12($sp)
lw $a3,16($sp)
lw $a2,8($sp)
addi $sp, $sp, 20
jr $ra

drawVerticalLine:		#Draw a vertical line
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

drawSquare:addi $sp, $sp, -12		#Draw a square for highlighter
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

starter:
la $a0, font		#draw board
li $a1, 10		#Loop to draw board
la $a2, board

li $t3, 8
li $t4, 40
drawBoard:
addi $s0, $s0 1
beqz $t4, here
beqz $t3, next
jal drawNumber

lw $t2,0($a2)
addi $t2, $t2, 2
sw $t2,0($a2)
addi $t3, $t3, -1
addi $t4, $t4, -1
j drawBoard

next:lw $t2,0($a2)
addi $t2, $t2, 0x90
sw $t2,0($a2) 
li $t3, 8

j drawBoard

here:li $a3, 1
jal drawCard
la $t0, values

li $t1, 0

start:		#Shuffle
beq $t1, 40, begin
jal rand40
move $t2, $a0	#random number
add $t0, $t0, $t1
lbu $t3,0($t0)	#temp
sub $t0, $t0, $t1

add $t0, $t0, $t2
lbu $t4,0($t0)
sub $t0, $t0, $t2

add $t0, $t0, $t1
sb $t4,0($t0)
sub $t0, $t0, $t1

add $t0, $t0, $t2
sb $t3,0($t0)
sub $t0, $t0, $t2

addi $t1, $t1, 1 #loop control

j start

rand40:		#Get a random number
li $a0, 0xB3
li $a1, 0xFF
li $v0, 41
syscall 
li $a0, 0xC
li $a1, 40
li $v0, 42	
syscall
jr $ra

begin:		

ender:
la $a0, font		#draw minute
li $a1, 3
la $a2, minute
li $s2, 3		#s2 time reg
jal drawNumber

la $a2, colon		#draw colon
li $a1, 14
jal drawNumber

la $a2, tenthSecond	#draw 10th second
li $a1, 0
li $s3, 0		#s3 time reg
jal drawNumber

la $a2, Second		#draw second
li $a1, 0
li $s4, 0		#s4 time reg
jal drawNumber
	
jal getTime 		#Get time for clock
move $s5, $t0
jal getTime
move $k1, $t0		#Get time for smiley
jal drawSmiley
j poll

drawSmiley:addi $sp, $sp, -36 	#Draw the smiley card
sw $t8,4($sp)
sw $t9,8($sp)
sw $t0,12($sp)
sw $t2,16($sp)
sw $t1,20($sp)
sw $t3,24($sp)
sw $t4,32($sp)
sw $t5,28($sp)
sw $ra,0($sp)


checkNum:
jal rand40
la $a1, matched
move $t0, $a0		#random number
add $a1, $a1, $t0
lbu $a2,0($a1)		#see if card is matched
bnez $a2, checkNum	#If it isn't make it the card
bne $t7, $t0, gotCard
j checkNum

gotCard:
move $t7, $t0
la $a1, values
add $a1, $a1, $t0
lbu $s1,0($a1)		#value of smiley card

move $s1, $t0

slti $t2, $t0, 8  	#if # is less than 8
beq $t2, 1, rowOne

slti $t2, $t0, 16	#if it is less than 16
beq $t2, 1, rowTwo

slti $t2, $t0, 24
beq $t2, 1, rowThree

slti $t2, $t0, 32
beq $t2, 1, rowFour

j rowFive		#if its in the last row

rowOne:li $t9, 9	#algorithm for rows
mul $t8, $t0, 8
j checkByte

rowTwo:li $t9, 19
addi $t0, $t0, -8
mul $t8, $t0, 8
j checkByte

rowThree:li $t9, 29
addi $t0, $t0, -16
mul $t8, $t0, 8
j checkByte

rowFour:li $t9, 39
addi $t0, $t0, -24
mul $t8, $t0, 8
j checkByte

rowFive:li $t9, 49
addi $t0, $t0, -32
mul $t8, $t0, 8
j checkByte

checkByte:
la $t5, smileyPosition
lbu $t3,0($t5)
beqz $t3, drawFace
j drawFaceAfter

drawFace:
la $t5, smileyPosition
addi $t5, $t5, 1	
move $t3, $t8
sb $t3,0($t5)		#Store x of smiley
addi $t5, $t5, 1
move $t3, $t9	
sb $t3,0($t5)		#Store y of smiley
addi $t5, $t5, -2
li $t3, 1
sb $t3,0($t5)
j drawFacefirst

drawFacefirst:
li $t0, 11
jal switch
j loopDone

drawFaceAfter:la $t5, smileyPosition
addi $t5, $t5, 1
lbu $t4,0($t5)
move $t2, $t8
move $t8, $t4
addi $t5, $t5, 1
lbu $t3,0($t5)
move $t5, $t9
move $t9, $t3
li $t0, 10 
jal switch
move $t8, $t2
move $t9, $t5
jal drawFace


loopDone:
lw $t8,4($sp)
lw $t9,8($sp)
lw $t0,12($sp)
lw $t2,16,($sp)
lw $t1,20($sp)
lw $t3,24($sp)
lw $t4,32($sp)
lw $t5,28($sp)
lw $ra,0($sp)
addi $sp, $sp, -36
jr $ra

timer:	
poll:bne $t6, 1, continue
#Need to make a branch from here to continue
 la $v0,0xffff0000
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

bkey:
addi $v0, $t0, -66		#check for b
bne $v0, $zero, continue
jal cardMatched
beq $v0, 1, continue		#if card has already been matched
beq $k0, $v1, continue
move $v1, $k0

la $a0, values
add $a0, $a0, $k0		#get to index of array
lbu $t0,0($a0)			#get the number

la $t2, cardFlipped		#see if there are any cards flipped
lbu $t4,0($t2)
beq $t4, $zero, card1
beq $t4, 1, card2
beq $t4, 2, startOver

startOver:li $t4, 0		#if two cards have been chosen
li $s7, 0
la $t2, cardFlipped
sb $t4,0($t2) 
la $t2, Positions
sb $t4,0($t2)
addi $t2, $t2, 1
sb $t4,0($t2)
la $t2, whichCard
addi $t2, $t2, 1
sb $zero,0($t2)
addi $t2, $t2, 1
sb $zero,0($t2)
j card1

card2:move $s7, $t0		#for card 2
li $t4, 2
la $t2, cardFlipped
sb $t4,0($t2)
j check

card1:move $s6, $t0
li $t4, 1
la $t2, cardFlipped
sb $t4,0($t2)
la $t2, tempCard	#load temp card array
lbu $t1,0($t2)
move $t1, $k0
sb $t1,0($t2)
la $t3, Positions	#load positions array
move $t1, $t8
sb $t1,0($t3)
addi $t3, $t3, 1
move $t1, $t9
sb $t1,0($t3)
beq $k0, $s1, smiley1	
jal switch
j continue

smiley1:la $t3, whichCard		#for smiley 1
li $t2, 1
sb $t2,0($t3)
addi $t3, $t3, 1
sb $t8,0($t3)
addi $t3, $t3, 1
sb $t9,0($t3)
j continue

check:bne $s6, $s7, timeIt	#actually want to jump to time change here
la $t5, Matches
lbu $t1,0($t5)
addi $t1, $t1, 1
sb $t1,0($t5)
la $t5, Matches
lbu $t1,0($t5)
beq $t1, 20, gameOver
la $t5, tempCard		#change both values to 1 in matched
lbu $t1,0($t5)
move $t2, $t1
la $t5, matched
li $t3, 1

add $t5, $t5, $t2		#Store old k
sb $t3,0($t5)
sub $t5, $t5, $t2

add $t5, $t5, $k0		#store new k
sb $t3,0($t5)
sub $t5, $t5, $k0

la $t5, whichCard		#see if smiley was card 1 or 2
addi $t5, $t5, 1
lbu $t3,0($t5)
beqz $t3, theSecondCard
addi $t5, $t5, 1
lbu $t2,0($t5)
move $t4, $t8
move $t5, $t9
move $t8, $t3
move $t9, $t2
jal drawSmiley
jal switch
move $t8, $t4
move $t9, $t5
move $t0, $s6
jal switch
la $t2, whichCard
li $t4, 0
sb $t4,0($t2)

j addTime
#####add 30 seconds when the smiley is matched
theSecondCard:
bne $k0, $s1, didIt		#If smiley was the 2nd card chosen

jal drawSmiley			#If smiley matched
jal switch
j addTime
didIt:

move $t0, $s6
jal switch

j continue

addTime:addi $s3, $s3, 3	#add 30 seconds
li $t3, 1
j change10Sec

	
timeIt:li $t6, 0		#check timer
jal getTime
move $s0, $t0
move $t0, $s7
beq $k0, $s1, smiley2
jal switch
j continue

smiley2:la $t3, whichCard
li $t2, 2
sb $t2,0($t3)
j continue

switch:addi $sp, $sp, -12	#drawing a card algorithm
lw $t1,8($sp)
sw $t2,4($sp)
sw $ra,0($sp)
move $a1, $t0			#number
la $a0, font			#font
la $a2, board			#first location
li $t2, 0xFFFF00A8		
addi $t0, $t9, -3
div $t1, $t8, 4			#t8/4
beq $t9, 9, line1
beq $t9, 19, line2
beq $t9, 29, line3
beq $t9, 39, line4
beq $t9, 49, line5
				#look through lines
line1:add $t2, $t2, $t1
j cardPick

line2:mul $t3, $t0, 10
add $t3, $t3, $t1
add $t2, $t3, $t2

j cardPick

line3:mul $t3, $t0, 10
add $t3, $t3, 60
add $t3, $t3, $t1
add $t2, $t3, $t2
j cardPick

line4:mul $t3, $t0, 10
add $t3, $t3, 120
add $t3, $t3, $t1
add $t2, $t3, $t2
j cardPick

line5:mul $t3, $t0, 10
add $t3, $t3, 180
add $t3, $t3, $t1
add $t2, $t3, $t2

cardPick:
sw $t2,0($a2)			#back at the beginning

jal drawNumber

lw $ra,0($sp)
lw $t1,8($sp)
lw $t2,4($sp)
addi $sp, $sp, 12
jr $ra

continue:
jal getTime	#Main loop
addi $s5, $s5, 1000		#check for 1 sec on the clock
slt $t1, $t0, $s5
addi $s5, $s5, -1000
beqz $t1, changeTime


j out

changeTime:move $s5, $t0
j checkSec

checkSec:la $a0, font		#check seconds
la $a2, Second
beqz $s4, change
addi $s4, $s4, -1
move $a1, $s4
jal drawNumber
j out
change:addi $s4, $s4, 9
move $a1, $s4
jal drawNumber
j change10Sec

change10Sec:la $a2, tenthSecond		#check 10th seconds
beqz $s3, change1
slti $t5, $s3, 6
beqz $t5, moreTime
beq $t3, 1, overHere
addi $s3, $s3, -1
overHere:
move $a1, $s3
jal drawNumber
j out
change1:addi $s3, $s3, 5		#if it is 0
move $a1, $s3
jal drawNumber
j changeMinute

moreTime:addi $s3, $s3, -6		#if add 30 is greater than 5
addi $s2, $s2, 1
move $a1, $s3
jal drawNumber
j changeMinute


changeMinute: la $a2, minute		#change minute
beqz $s2, change2
beq $t3, 1, skipIt
addi $s2, $s2, -1
skipIt:li $t3, 0
move $a1, $s2
jal drawNumber
j out
change2:addi $s2, $s2, 2
move $a1, $s2
jal drawNumber
j out

out:jal getTime	
addi $s0, $s0, 3000
slt $t5, $t0, $s0
addi $s0, $s0, -3000
beqz $t5, flipCards	#If it's been 3 seconds
j noFlip

flipCards:bnez $t6, noFlip
move $s0, $t0
jal flipper
li $t6, 1
j noFlip
flipper:addi $sp, $sp -8
sw $ra,0($sp)
sw $t0,4($sp)

la $t0, whichCard
lbu $t1,0($t0)
beq $t1, 1, flipSecondCard
beq $t1, 2, flipFirstCard

flipSecondCard:
li $t0, 10		#Flip the second card
jal switch
la $t0, whichCard
lbu $t1,0($t0)
beq $t1, 1, endFlip

flipFirstCard:		#Flip the first card	
la $t2, Positions
lbu $t1,0($t2)
addi $t2, $t2, 1
lbu $t3,0($t2)
li $t2, 0
move $t2, $t8		#can't use t2, or t6
move $t5, $t9		#legal?
move $t8, $t1
move $t9, $t3
li $t0, 10
jal switch
move $t8, $t2
move $t9, $t5

endFlip:la $t0, whichCard
li $t1, 0
sb $t1,0($t0)

lw $ra,0($sp)
lw $t0,4($sp)
addi $sp, $sp, 8
jr $ra

noFlip:
beqz $s2, out1		#minute is 0
j looper

out1:beqz $s3, out2		#10th second is 0
j looper

out2:beqz $s4, gameOver		#all are zero
j looper

looper:				#Back into the loop
jal getTime			#smiley card loop
addi $k1, $k1, 10000		#change back to 1
slt $t1, $t0, $k1
addi $k1, $k1, -10000
beqz $t1, switchCards
j timer

switchCards:                    #switch the card
jal drawSmiley
move $k1, $t0
j timer

gameOver:la $a0, gameOver1	#Game over
li $v0, 4
syscall
la $a0, cardMatches
li $v0, 4
syscall
la $t0, Matches
lbu $t1,0($t0)
move $a0, $t1
li $v0, 1
syscall
la $a0, cardNotMatched
li $v0, 4
syscall
la $t0, Matches
lbu $t1,0($t0)
li $t2, 20
sub $a0, $t2, $t1
li $v0, 1
syscall
li $v0, 10
syscall

getTime:addi $sp, $sp, -12 #put time in t0, t1
sw $a0,0($sp)
sw $a1,4($sp)
sw $ra,8($sp)

li $v0, 30
syscall 
move $t0, $a0
move $t1, $a1
add $t0, $t0, $t1

lw $a0,0($sp)
lw $a1,4($sp)
lw $ra,8($sp)
addi $sp, $sp, 12
jr $ra


drawNumber:addi $sp, $sp, -28	#Function to draw a number
sw $a0,0($sp)			#a0 load font address, #a1 number, #a2 location
sw $a1,4($sp)
sw $a2,8($sp)
sw $t0,12($sp)
sw $t1,16($sp)
sw $t2,24($sp)
sw $ra,20($sp)

lw $t2,0($a2)
li $t0, 8

even:sll $a1, $a1, 4
add $a0, $a0, $a1
even1:
lhu $t1,0($a0)
sh $t1,0($t2)
addi $a0, $a0, 2
addi $t2, $t2, 16
addi $t0, $t0, -1
beqz $t0, end
j even1

end:
lw $a0,0($sp)			#a0 load font address, #a1 number, #a2 location
lw $a1,4($sp)
lw $a2,8($sp)
lw $t0,12($sp)
lw $t1,16($sp)
lw $ra,20($sp)
lw $t2,24($sp)
addi $sp, $sp, 28
jr $ra

cardMatched:addi $sp, $sp, -16	#check to see if the card has already been matched
sw $a0,0($sp)			#v0 == 0 if no match, 1 if match
sw $ra,4($sp)
sw $t0,8($sp)
sw $t1,12($sp)

la $a0, matched
li $t1, 0
li $v0, 0
matcher:
beq $t1, 40, noMatch
lbu $t0,0($a0)		
beq $t0, 1, match
addi $t1, $t1, 1
addi $a0, $a0, 1
j matcher

match:
beq $k0, $t1, realMatch
addi $t1, $t1, 1
addi $a0, $a0, 1
j matcher

realMatch:li $v0, 1		#return 1 if it has been flipped
noMatch:


lw $a0,0($sp)
lw $ra,4($sp)
lw $t0,8($sp)
lw $t1,12($sp)
addi $sp, $sp, 16
jr $ra


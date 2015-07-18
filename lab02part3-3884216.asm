.data
y: .byte 37
z: .byte 0
x: .byte 13
.text
la $t0, y
lb $t1,0($t0)
la $t2, x
lb $t3,0($t2)
sub $t4, $t1, $t3
la $t5, z
sb $t4,0($t5)
lb $t6,0($t5)
sb $t6, 0($t0)
sb $t6, 0($t2)
lb $t7,0($t2)
li $v0, 10
syscall
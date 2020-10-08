.data
msg1: .asciiz " Enter the first number y : "
msg2: .asciiz "\ nEnter the second number z : "
msg3: .asciiz "\ nEnter the third number f : "
msg4: .asciiz "\ nEnter the fourth number q : "
result : .asciiz "\ nThe result for x=(yxz²)/f-q is: "

#y
li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
move $t0, $v0

#z
li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $t1, $v0

#f
li $v0, 4
la $a0, msg3
syscall
li $v0, 5
syscall
move $t2, $v0

#q
li $v0, 4
la $a0, msg4
syscall
li $v0, 5
syscall
move $t3, $v0

#z squared
mul $t1, $t1, $t1

#multiplying y by z squared
mul $t0, $t0, $t1

#divide result of y and z by f
div $t2, $t0, $t2

#subtract the result by q
sub $t3, $t2, $t3

li $v0, 4
la $a0, result
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall


 



.data

.text
li $t1, 1
li $t2, 1
li $t4, 1

lp:
    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 4
    la $a0, space
    syscall
    
    add $t3, $t1, $t2
    move $t1, $t2
    move $t2, $t3
    add $t4, $t4, 1
    bgt $t4, 10, exit    
j lp
    
exit:
li $v0, 10
syscall

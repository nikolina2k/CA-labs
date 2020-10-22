.data
msg: .asciiz "Enter num "
.text

li $v0,4
la $a0,msg
syscall

# read
li $v0,5
syscall
move $t1,$v0


bltz $t1, L1 # so if $t1 < 0 then go to L1
beqz $t1, L2
bgtz $t1, L3

L1:
  addi $t2,$t2,-1
  j Exit

L2:
  addi $t2,$t2,0
  j Exit
  
L3:
  addi $t2,$t2,1
  j Exit

Exit:

li $v0,1
move $a0,$t2 #var for printing
syscall

li $v0 ,10
syscall



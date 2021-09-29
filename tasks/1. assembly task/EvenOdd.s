li t0,0 # Initial number of range
li t1,10 # Final number of range
add t2,x0,t1 # Counter till end of range

LOOP:
bgtz t2,COND # Loop start
beqz t2,END # Loop finishes when all iterations are complete

COND:
addi t2,t2,-1 # Decrementing counter
addi t0,t0,1 # Incrementing in range
jal REMAINDER

REMAINDER:
srli t3,t0,1 # Dividing dividend by 2
slli t4,t3,1 # Multiplying the quotient obtained by 2
sub t5,t0,t4 # Remainder, subtracting the dividend by the multiple
beqz t5,EVEN # Jump to EVEN if remainder is zero
bnez t5,ODD # Jump to ODD if remainder is not zero

EVEN:
add s10,x0,t0 # s10=Even Counter
jal LOOP

ODD:
add s11,x0,t0 # s11=Odd Counter
jal LOOP

END:
#START
addi t0, x0, 10 #counter variable of loop
addi t1, x0, 1 #variable for decrementing value of counter
LOOP: # loop start
sub t0,t0,t1 #decrementing value of counter variable
bne t0,t1,LOOP #ending loop
#END
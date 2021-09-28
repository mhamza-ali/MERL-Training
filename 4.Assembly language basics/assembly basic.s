#addi x3,x1,3 # x3=3
#addi x4,x3,1 # x4= x3+1

#addi x1,x0,5 #  assign value x=5
#addi x2,x0,13 # assign value y=13
#addi x3,x0,6  # assign z= 6
#add x3,x1,x2 # z = x+y
#add x1,x2,x3 # x = y+z

addi t0,x0,3 # assign x=3
addi t1,x0,7 # assign y=7
add t2,x0,t1 # storin value of y
add t1,x0,t0 # swap value of x into y
add t0,x0,t2 # swap value of y into x

extension for saving file is .as


# shifting 
# 0000001 shift to left 000010

#slli => shift left logical i

addi t0,x0,3 # t0=3 binary is 11
slli t0,t0,2 # t0=t0<<2 for shifting  <<

addi t0,x0,2  # x=2
addi t1,x0,8  # y=8
sub t2,t1,t0 # z=y-x
slli t3,t0,3 # shifting x 
add t3,t3,t1 # p=8x+y

#li t0,0
#li t1,10

#LOOP:
#addi t3,t3,1 #execute code 10 times
#addi t0,t0,1 # increment t0++
#bne t0,t1,LOOP

#END:

#a=3
#b=2
#c= 4
#for (i=0,i<10,i++) begin
# if (a>b)
#a = b+c
# else
#b=a=c
#end

addi t0,x0,3
addi t1,x0,2
addi t2,x0,4
li t3,0
li t4,0

LOOP:

IF:

bge t0,t1,IF



addi t3,t3,1
bne t3,t4,LOOP

END:

addi t0,x0,3
addi t1,x0,2
addi t2,x0,4
li t3,0
li t4,0

LOOP:

IF:

bge t0,t1,IF
add t0,t1,t2

JLOOP:

ELSE:

ble t0,t1,ELSE
add t1,t0,t2

addi t3,t3,1
bne t3,t4,LOOP

END:



addi t0,x0,3
addi t1,x0,2
addi t2,x0,4
li t3,0
li t4,10

LOOP:

addi t3,t3,1

bgt t0,t1,IF

JELSE:

IF:
add t0,t1,t2

ELSE:
blt t0,t1,ELSE
add t1,t0,t2

JCON:


bne t3,t4,LOOP

END:



#TASK:1

#START
addi t0, x0, 10 #counter variable of loop
addi t1, x0, 1 #variable for decrementing value of counter
LOOP: # loop start
sub t0,t0,t1 #decrementing value of counter variable
bne t0,t1,LOOP #ending loop
#END






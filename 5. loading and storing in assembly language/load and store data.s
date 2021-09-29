addi t0,x0,40 # Data to store and load

addi t1,x0,100 # Base address location of memory

sw t0,0x1(t1) # store data from register  t0 to memory or offset 0x1 and base address t1

#lw t2,0x0,(t1)
lw t2,0x1,(t1) # load data from memory to register t1 to t2
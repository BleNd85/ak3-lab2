.global lab1
.syntax unified
.thumb

lab1:
    push {r4, r5, r6, lr}   

    mov r0, #8 @ a    
    mov r1, #6 @ b   
    mov r2, #3 @ c   
    
    add r3, r0, r1   @ r3 = a + b
    lsr r3, r3, #1   @ r3 = (a + b) / 2
    
    mov r4, #1    @ r4 - factorial
    mov r5, r2    @ r5 - c
    
factorial_loop:
    cmp r5, #1   
    ble factorial_done
    mul r4, r4, r5  @ r4 = r4 * r5
    sub r5, r5, #1  @ r5 -= 1
    b factorial_loop
    
factorial_done:
    add r3, r3, r4  @ Add factorial
    
    mov r0, r3    @ Return result in r0
    pop {r4, r5, r6, pc}

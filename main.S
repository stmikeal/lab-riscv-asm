    .data

N:
    .word 4
M:
    .word 2
matrix:
    .word -1, 3, -3, 2
    .word -2, -4, 1, 4
result:
    .word 0

    .text

main:
    la    a2, N
    la    a3, M
    la    a4, matrix
    la    a5, result
    call  process
    la    a2, result
    call  print
    call  exit

process:
    lw    t1, 0(a2)          # N
    lw    t2, 0(a3)          # M
    addi  t5, x0, 0          # sum
    addi  t4, x0, 0          # row pointer

init:
    addi  t3, x0, 0          # row element number

cycle:
    lw    t6, 0(a4)          # load value from array
    addi  a4, a4, 4          # increment array pointer
    blt   t6, x0, next_state
    add   t5, t5, t6         # count sum
next_state:
    addi  t3, t3, 1
    blt   t3, t1, cycle
    addi  t4, t4, 1
    blt   t4, t2, init
    sw    t5, 0(a5)
    ret

print:
    addi  a0, x0, 1          # print_int ecall
    lw    a1, 0(a2)
    ecall
    ret

exit:
    addi  a0, x0, 10
    ecall
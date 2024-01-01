.global _main
.align 2

_main:
    bl _HelloWorld
    bl _end
    ret

_HelloWorld:
    mov x0, #0
    adr x1, hello 
    mov x2, #13
    mov x16, #4
    svc 0
    ret

_end:
    mov x0, #0
    mov x16, #1
    svc 0
    ret    

hello: .ascii "Hello World!\n"

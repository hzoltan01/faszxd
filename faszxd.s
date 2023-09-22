section .data
    message db "FaszXD", 0  ; Null-terminated string

section .text
global _start

_start:
    mov ecx, 1000000       ; Set the loop counter to 1,000,000

loop_start:
    mov eax, 4             ; Syscall number for sys_write (stdout)
    mov ebx, 1             ; File descriptor for stdout
    mov edx, 6             ; Length of the string
    lea ecx, [message]     ; Load the address of the string into ecx
    int 0x80               ; Call the kernel to print the string

    dec ecx                ; Decrement the loop counter
    jnz loop_start         ; Jump back to loop_start if not zero

    ; Exit the program
    mov eax, 1             ; Syscall number for sys_exit
    xor ebx, ebx           ; Exit status code (0)
    int 0x80               ; Call the kernel to exit

section .bss

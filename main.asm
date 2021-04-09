format PE

section '.text' executable             ; секция исполняемого кода
entry start
start:
        mov esi, array
        mov edi, array
        mov ecx, 9
        mov eax, 0
        cycle:
                lodsb
                cmp al, 0
                jl less_than_zero
                jg greater_than_zero

                less_than_zero:
                sar al, 2
                jmp write_to_array

                greater_than_zero:
                and al, 01110111b
                jmp write_to_array

                write_to_array:
                stosb
        loop cycle
ret  ; return
section '.data' readable writeable       ; секция данных

array db 5, -2, 7, 4, -5, -6, 7, -8, 10

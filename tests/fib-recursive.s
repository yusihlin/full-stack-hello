; initialize result
or $0 $0 #1

; call recursive function
call #4

; print result
print #1
halt

; recursion
xor #0 $1 #2 ;if input = 1, return
jnz #2 #8
add #1 $1 #1
ret

xor #0 $0 #2 ;if input = 0, return
jnz #2 #11
ret

; call f(n-1)
sub #0 $1 #0
call #4

; call f(n-2)
sub #0 $1 #0
call #4

add #0 $2 #0
ret

; if #0 = 0, print 0
jz #0, #13
sub #0 $1 #0

; initialize result, f(0) = 0, f(1) = 1
or $0 $0 #3
or $0 $0 #1
or $0 $1 #2

; iteration
sub #0 $1 #0
add #1 #2 #3
or #2 $0 #1
or #3 $0 #2
jz #0 #11
jgt #0 #5

; print result
print #3
halt

;print 0 if input = 0
print $0
halt

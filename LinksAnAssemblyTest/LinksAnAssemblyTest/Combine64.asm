; Sample x64 Assembly Program


.data
realVal dq 4 ; this stores a real number in 8 bytes

.code

@Add:
xor   rax , rax
add	  rax , rcx
add	  rax , rdx
add	  rax , 0
RET

CombineA PROC arg1,arg2
   mov	  rcx , rcx   ;arg1
   mov	  rdx , rdx	  ;arg2
   call @Add
   imul	  rax , realVal
   RET                             ; return
CombineA ENDP
End
; Sample x86 Assembly Program

.386
.model flat,stdcall
option casemap:none

.data
realVal dd 4 ; this stores a real number in 8 bytes

.code

@Add:
xor   eax , eax
add	  eax , ecx
add	  eax , ebx
add	  eax , 0
RET

CombineA PROC stdcall arg1:PTR DWORD,arg2:PTR DWORD
   mov	  ecx , arg1
   mov	  ebx , arg2
   call @Add
   imul	  eax , realVal
   RET                             ; return
CombineA ENDP
End
.386
.model flat,stdcall
.stack 4096


.data
array byte 10h,20h,30h,40h

.code 
main:
	mov esi,OFFSET array
	mov ecx,LENGTHOF array
	L1:
		mov al,[esi]
		xchg al,[esi+1]
		mov [esi],al
		dec ecx
		loop L1
end main
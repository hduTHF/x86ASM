.386
.model flat,stdcall
.stack 4096


.data
array byte 10h,20h,30h,40h,50h,60h

.code 
main:
	mov esi,OFFSET array
	mov ecx,LENGTHOF array
	L1:
		mov al,[esi]
		xchg al,[esi+1]
		mov [esi],al
		add esi,2
		dec ecx
		loop L1
end main
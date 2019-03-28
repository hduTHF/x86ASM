.386
.model flat,stdcall
.stack 4096


.data
bigEndian BYTE 12h,34h,56h,78h
littleEndian DWORD ?


.code 
main:
	mov al,bigEndian 
	mov ah,bigEndian+1
	mov dl,bigEndian+2
	mov dh,bigEndian+3
	xchg dh,dl
	xchg ah,al
	
	mov word ptr littleEndian,dx
	mov word ptr littleEndian+2,ax
end main
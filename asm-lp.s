.section __DATA, __const
.section __TEXT, __text
.globl _start
_start:
pushq %rbp
lea lpToggle_cfstring(%rip), %rdi
xor %esi, %esi
callq _CoreDockSendNotification
xor %rdi, %rdi
mov $0x2000001, %rax
syscall

.section __TEXT,__cstring
lpToggle: .asciz	"com.apple.launchpad.toggle"
.section __DATA,__cfstring
lpToggle_cfstring:
	.quad	___CFConstantStringClassReference
	.long	1992                    
	.space	4
	.quad	lpToggle
	.quad	26  

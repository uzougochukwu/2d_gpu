

	; https://github.com/torvalds/linux/blob/d7b8f8e20813f0179d8ef519541a3527e7661d3a/include/drm/drm_drv.h#L181 for drm_driver struct
section .data

msg db "hi there!"
msglen equ $-msg

section .bss

driver_features:		;struct

drm_ioctl_desc:			; struct

file_operations:		; struct

drm_printer:			; struct

drm_fb_helper:			; struct

drm_fb_helper_surface_size:	; struct

drm_file:			; struct

drm_mode_create_dumb:		; struct

drm_device:			; struct
	
drm_driver:			; struct

drm_gem_object:			; struct

open: resb 64
postclose: resb 64
master_set: resb 64
master_drop: resb 64
debugfs_init: resb 64
prime_handle_to_fd: resb 64
prime_fd_to_handle: resb 64
dumb_create: resb 64
dumb_map_offset: resb 64
fbdev_probe: resb 64
show_fdinfo: resb 64
major: resb 64
minor: resb 64
patchlevel: resb 64
name: resb 64
desc: resb 64
num_ioctls: resb 64
	
	
global _start
section .text




_start:

	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, msg
	mov rdx, msglen
	syscall

	mov rax, 0x3c
	mov rdi, 0x0
	syscall

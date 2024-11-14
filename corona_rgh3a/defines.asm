; CORONA - glitch D4/D5

; RAM vars
RAM_START   equ 0BFh

; SMC RAM vars
SMC_VM_ST     equ 079h ; start vector for the i2c processing
SMC_MSECS     equ 077h ; SMC memory cell containing milliseconds
SMC_I2C_STATE equ 0A4h ; SMC memory cell containing SMC i2c FSM state
SMC_ARG_E     equ 02Ch.4  ; SMC flag meaning argon (RF board) processing is enabled

; hardware pins
POSTBIT     equ 080h.4
CPU_PLL     equ 080h.5
CPU_RST     equ 080h.6

; SMC functions
startup_i2c         equ 02995h
prepare_reset       equ 013D9h
reset_watchdog      equ 02523h
smc_dbg_space       equ 014C0h
smc_free_space      equ 031E0h

; I2C VM pointers
VM_FAST_PTR         equ 0E3h
VM_SLOW_PTR         equ 0EBh

; glitch parameters

; ~22.66 ms
GLI_PULSE_0         equ 077h
GLI_PULSE_1         equ 0D0h

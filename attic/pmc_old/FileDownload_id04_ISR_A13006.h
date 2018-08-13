; ===========================================================
;	Download all files to pmac
; ===========================================================
#include	"M_var.pmc"				; define M variable

#include	"I_var_2.8.pmc"			; define I variable



; ----------------------------------------------------
; 2.8m-IVU : Default value
; ----------------------------------------------------
#define		GAP_DEF_SPD			0.1			; GAP default speed (mm/sec)
#define		JCK_DEF_SPD			0.1			; JACK default speed(mm/sec)
#define		GAP_DEF_EVA			0			; GAP Evacuation 0:Disable 1:Enable


; ------------
; (#2)[A13006]
; ------------
#define		GAP1_OFFSET		71579966	; GAP OFFSET
#define		GAP2_OFFSET		70515466	; GAP OFFSET
#define		GAP3_OFFSET		71168947	; GAP OFFSET(Downstream)
#define		GAP4_OFFSET		72110316	; GAP OFFSET(Downstream)
#define		GAP5_OFFSET		0			; not used at 2.8m-IVU




; Commented out in original
; #include	"comp_table_2.8.pmc"	; define compensation table

#include	"IVU_2.8_PLC.pmc"		; define PLC program

#include	"IVU_2.8_PRG.pmc"		; define Motion program



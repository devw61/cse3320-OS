; mm (Disassembled)
; Address: $8000-$FFFF

.org $8000

RESET:					; $8000
	CMP ($62,X)         ; $8001: $C1 $62 $1E - Compare Memory with Accumulator
	BEQ $57             ; $8004: $F0 $57 - Branch on Result Zero
	DEY                 ; $8007: $88 - Decrement Index Y by One
	LDX #$48            ; $8009: $A2 $48 - Load Index X with Memory
	BIT $7BD1           ; $800B: $2C $D1 $7B - Test Bits in Memory with Accumulator
	AND $BC             ; $800E: $25 $BC - AND Memory with Accumulator
	ROL $61,X           ; $8013: $36 $61 - Rotate One Bit Left
	ROL $EF             ; $8016: $26 $EF - Rotate One Bit Left
	AND $45,X           ; $8019: $35 $45 - AND Memory with Accumulator
	CLV                 ; $801B: $B8 - Clear Overflow Flag
	STA $16F7           ; $801D: $8D $F7 $16 - Store Accumulator in Memory
	ROR $A0,X           ; $8020: $76 $A0 - Rotate One Bit Right
	LDA $5CD9           ; $8022: $AD $D9 $5C - Load Accumulator with Memory
	ORA $DA3F,Y         ; $8026: $19 $3F $DA - OR Memory with Accumulator
	ROL A               ; $8029: $2A - Rotate One Bit Left
	LDX #$B7            ; $802D: $A2 $B7 - Load Index X with Memory
	LDX $644B,Y         ; $802F: $BE $4B $64 - Load Index X with Memory
	LDA ($0B),Y         ; $8032: $B1 $0B $6A - Load Accumulator with Memory
	DEC $EBB6           ; $8036: $CE $B6 $EB - Decrement Memory by One
	SBC ($92),Y         ; $803B: $F1 $92 $02 - Subtract Memory from Accumulator with Borrow
	SEC                 ; $8047: $38 - Set Carry Flag
	LSR $B1B0           ; $8049: $4E $B0 $B1 - Shift One Bit Right (Memory or Accumulator)
	BCS $83             ; $804E: $B0 $83 - Branch on Carry Set
	CMP ($FD),Y         ; $8052: $D1 $FD $28 - Compare Memory with Accumulator
	LDX #$82            ; $8057: $A2 $82 - Load Index X with Memory
	ROL $51B2           ; $805E: $2E $B2 $51 - Rotate One Bit Left
	ORA #$23            ; $8061: $09 $23 - OR Memory with Accumulator
	CLC #$C2            ; $8063: $29 $C2 - Clear Carry Flag
	STA ($E0),Y         ; $8068: $91 $E0 $50 - Store Accumulator in Memory
	STA ($E0),Y         ; $806C: $91 $E0 $70 - Store Accumulator in Memory
	SBC ($41,X)         ; $8071: $E1 $41 $73 - Subtract Memory from Accumulator with Borrow
	SBC $F5             ; $8075: $E5 $F5 - Subtract Memory from Accumulator with Borrow
	ASL $05             ; $8077: $06 $05 - Shift Left One Bit
	ORA ($5F,X)         ; $807A: $01 $5F $06 - OR Memory with Accumulator
	SED                 ; $807D: $F8 - Set Decimal Flag
	BVS $3F             ; $807E: $70 $3F - Branch on Overflow Set
	SEC                 ; $8080: $38 - Set Carry Flag
	BEQ $08             ; $8081: $F0 $08 - Branch on Result Zero
	LDY #$18            ; $8083: $A0 $18 - Load Index Y with Memory
	BEQ $18             ; $8085: $F0 $18 - Branch on Result Zero
	LDY #$08            ; $8087: $A0 $08 - Load Index Y with Memory
	BEQ $28             ; $8089: $F0 $28 - Branch on Result Zero
	LDY #$18            ; $808B: $A0 $18 - Load Index Y with Memory
	BEQ $18             ; $808D: $F0 $18 - Branch on Result Zero
	LDY #$26            ; $808F: $A0 $26 - Load Index Y with Memory
	SBC ($01),Y         ; $8091: $F1 $01 $D3 - Subtract Memory from Accumulator with Borrow
	BRK                 ; $8096: $00 - Force Break
	BIT $12AC           ; $809F: $2C $AC $12 - Test Bits in Memory with Accumulator
	BPL $DE             ; $80A2: $10 $DE - Branch on Result Plus
	ORA $0D1B,Y         ; $80A4: $19 $1B $0D - OR Memory with Accumulator
	BPL $3F             ; $80A7: $10 $3F - Branch on Result Plus
	ROR $19,X           ; $80AB: $76 $19 - Rotate One Bit Right
	STA ($70,X)         ; $80AD: $81 $70 $1C - Store Accumulator in Memory
	JSR $11A1           ; $80B0: $20 $A1 $11 - Jump to New Location Saving Return Address
	BPL $10             ; $80B7: $10 $10 - Branch on Result Plus
	ORA ($11,X)         ; $80BE: $01 $11 $2F - OR Memory with Accumulator
	TYA                 ; $80C1: $98 - Transfer Index Y to Accumulator
	AND $2020,X         ; $80C3: $3D $20 $20 - AND Memory with Accumulator
	BEQ $94             ; $80C6: $F0 $94 - Branch on Result Zero
	LDX $0283,Y         ; $80C8: $BE $83 $02 - Load Index X with Memory
	BMI $10             ; $80CD: $30 $10 - Branch on Result Minus
	SBC $B614,Y         ; $80D0: $F9 $14 $B6 - Subtract Memory from Accumulator with Borrow
	CPY $01             ; $80D3: $C4 $01 - Compare Memory and Index Y
	ORA ($0F),Y         ; $80D5: $11 $0F $90 - OR Memory with Accumulator
	SBC $4F50,Y         ; $80D9: $F9 $50 $4F - Subtract Memory from Accumulator with Borrow
	STX $26,Y           ; $80DE: $96 $26 - Store Index X in Memory
	AND ($3F,X)         ; $80E1: $21 $3F $21 - AND Memory with Accumulator
	ADC ($11,X)         ; $80E4: $61 $11 $46 - Add Memory to Accumulator with Carry
	RTS                 ; $80E7: $60 - Return from Subroutine
	ORA ($61),Y         ; $80E8: $11 $61 $11 - OR Memory with Accumulator
	LSR $F4             ; $80EB: $46 $F4 - Shift One Bit Right (Memory or Accumulator)
	CMP ($1F,X)         ; $80ED: $C1 $1F $3F - Compare Memory with Accumulator
	ASL $E6,X           ; $80F0: $16 $E6 - Shift Left One Bit
	ASL $70             ; $80F2: $06 $70 - Shift Left One Bit
	BVC $40             ; $80F4: $50 $40 - Branch on Overflow Clear
	LSR $76,X           ; $80F6: $56 $76 - Shift One Bit Right (Memory or Accumulator)
	ASL $A1             ; $80F8: $06 $A1 - Shift Left One Bit
	BCC $53             ; $80FA: $90 $53 - Branch on Carry Clear
	INC $D0             ; $80FD: $E6 $D0 - Increment Memory by One
	BVC $30             ; $80FF: $50 $30 - Branch on Overflow Clear
	LSR $76,X           ; $8101: $56 $76 - Shift One Bit Right (Memory or Accumulator)
	ASL $ED             ; $8103: $06 $ED - Shift Left One Bit
	ROR A               ; $8107: $6A - Rotate One Bit Right
	DEC $23             ; $8108: $C6 $23 - Decrement Memory by One
	ASL A               ; $810A: $0A - Shift Left One Bit
	LSR $2F6D           ; $810B: $4E $6D $2F - Shift One Bit Right (Memory or Accumulator)
	BCS $D3             ; $810E: $B0 $D3 - Branch on Carry Set
	ORA ($F3,X)         ; $8110: $01 $F3 $E2 - OR Memory with Accumulator
	BNE $D1             ; $8113: $D0 $D1 - Branch on Result not Zero
	BVS $73             ; $8115: $70 $73 - Branch on Overflow Set
	LDY #$E0            ; $8117: $A0 $E0 - Load Index Y with Memory
	BVS $51             ; $811A: $70 $51 - Branch on Overflow Set
	BRK                 ; $811D: $00 - Force Break
	RTS                 ; $811E: $60 - Return from Subroutine
	ROR $B1B0           ; $811F: $6E $B0 $B1 - Rotate One Bit Right
	BRK                 ; $8123: $00 - Force Break
	RTS                 ; $8124: $60 - Return from Subroutine
	ROR $0210           ; $8125: $6E $10 $02 - Rotate One Bit Right
	BRK                 ; $812A: $00 - Force Break
	DEC $A6,X           ; $812B: $D6 $A6 - Decrement Memory by One
	RTS                 ; $812E: $60 - Return from Subroutine
	BRK                 ; $812F: $00 - Force Break
	BNE $A0             ; $8130: $D0 $A0 - Branch on Result not Zero
	STX $71             ; $8132: $86 $71 - Store Index X in Memory
	BMI $71             ; $8134: $30 $71 - Branch on Result Minus
	BRK                 ; $8137: $00 - Force Break
	RTI                 ; $8138: $40 - Return from Interrupt
	ORA $5FDD,X         ; $8139: $1D $DD $5F - OR Memory with Accumulator
	ROR $B5             ; $813C: $66 $B5 - Rotate One Bit Right
	BEQ $C6             ; $813E: $F0 $C6 - Branch on Result Zero
	CMP ($3F),Y         ; $8141: $D1 $3F $38 - Compare Memory with Accumulator
	CPX #$08            ; $8144: $E0 $08 - Compare Memory and Index Y
	LDY #$28            ; $8146: $A0 $28 - Load Index Y with Memory
	CPX #$18            ; $8148: $E0 $18 - Compare Memory and Index Y
	LDY #$08            ; $814A: $A0 $08 - Load Index Y with Memory
	CPX #$28            ; $814C: $E0 $28 - Compare Memory and Index Y
	LDY #$16            ; $814E: $A0 $16 - Load Index Y with Memory
	BVC $76             ; $8154: $50 $76 - Branch on Overflow Clear
	EOR ($50),Y         ; $8156: $51 $50 $0A - Exclusive-OR Memory with Accumulator
	BCS $F7             ; $815A: $B0 $F7 - Branch on Carry Set
	ROL A               ; $815C: $2A - Rotate One Bit Left
	RTS                 ; $815D: $60 - Return from Subroutine
	BPL $07             ; $815E: $10 $07 - Branch on Result Plus
	LDX $0F2B           ; $8160: $AE $2B $0F - Load Index X with Memory
	BVC $79             ; $8163: $50 $79 - Branch on Overflow Clear
	AND ($61,X)         ; $8165: $21 $61 $C1 - AND Memory with Accumulator
	ORA $6008,X         ; $8168: $1D $08 $60 - OR Memory with Accumulator
	JMP ($1565)         ; $816B: $6C $65 $15 - Jump to New Location
	PLA                 ; $816F: $68 - Pull Accumulator from Stack
	ADC $AF             ; $8170: $65 $AF - Add Memory to Accumulator with Carry
	BVC $47             ; $8174: $50 $47 - Branch on Overflow Clear
	BCS $63             ; $8176: $B0 $63 - Branch on Carry Set
	BVC $7B             ; $8179: $50 $7B - Branch on Overflow Clear
	BRK                 ; $817B: $00 - Force Break
	BMI $F7             ; $817C: $30 $F7 - Branch on Result Minus
	ROL A               ; $817E: $2A - Rotate One Bit Left
	LDA $75,X           ; $817F: $B5 $75 $33 - Load Accumulator with Memory
	CLC                 ; $8184: $18 - Clear Carry Flag
	ROL A               ; $8185: $2A - Rotate One Bit Left
	ASL A               ; $8186: $0A - Shift Left One Bit
	ASL A               ; $8187: $0A - Shift Left One Bit
	ROR A               ; $8188: $6A - Rotate One Bit Right
	ROR A               ; $8189: $6A - Rotate One Bit Right
	SBC $07,X           ; $818A: $F5 $07 - Subtract Memory from Accumulator with Borrow
	LDX $50             ; $818C: $A6 $50 - Load Index X with Memory
	BVC $50             ; $818E: $50 $50 - Branch on Overflow Clear
	LSR $56,X           ; $8190: $56 $56 - Shift One Bit Right (Memory or Accumulator)
	JSR $0565           ; $8194: $20 $65 $05 - Jump to New Location Saving Return Address
	ORA $05             ; $8197: $05 $05 - OR Memory with Accumulator
	ASL $31             ; $819A: $06 $31 - Shift Left One Bit
	BMI $3F             ; $819C: $30 $3F - Branch on Result Minus
	ADC $06,X           ; $819E: $75 $06 - Add Memory to Accumulator with Carry
	BPL $10             ; $81A0: $10 $10 - Branch on Result Plus
	BPL $16             ; $81A2: $10 $16 - Branch on Result Plus
	ASL $0F             ; $81A4: $06 $0F - Shift Left One Bit
	EOR ($76),Y         ; $81A6: $51 $76 $60 - Exclusive-OR Memory with Accumulator
	RTS                 ; $81A9: $60 - Return from Subroutine
	RTS                 ; $81AA: $60 - Return from Subroutine
	ROR $60             ; $81AB: $66 $60 - Rotate One Bit Right
	SBC ($41),Y         ; $81AE: $F1 $41 $D4 - Subtract Memory from Accumulator with Borrow
	BEQ $0F             ; $81B1: $F0 $0F - Branch on Result Zero
	ORA $1061,Y         ; $81B4: $19 $61 $10 - OR Memory with Accumulator
	CMP ($00,X)         ; $81B8: $C1 $00 $7D - Compare Memory with Accumulator
	SBC ($E0,X)         ; $81BB: $E1 $E0 $10 - Subtract Memory from Accumulator with Borrow
	ROR $98             ; $81BF: $66 $98 - Rotate One Bit Right
	ASL $F7,X           ; $81C1: $16 $F7 - Shift Left One Bit
	LDX #$3F            ; $81C3: $A2 $3F - Load Index X with Memory
	AND ($10,X)         ; $81C5: $21 $10 $11 - AND Memory with Accumulator
	RTS                 ; $81C8: $60 - Return from Subroutine
	AND ($10,X)         ; $81C9: $21 $10 $10 - AND Memory with Accumulator
	RTS                 ; $81CC: $60 - Return from Subroutine
	JSR $E36A           ; $81CD: $20 $6A $E3 - Jump to New Location Saving Return Address
	ADC ($3F),Y         ; $81D0: $71 $3F $36 - Add Memory to Accumulator with Carry
	ADC ($60,X)         ; $81D3: $61 $60 $66 - Add Memory to Accumulator with Carry
	RTS                 ; $81D6: $60 - Return from Subroutine
	ORA $04             ; $81D9: $05 $04 - OR Memory with Accumulator
	BRK                 ; $81DC: $00 - Force Break
	ROL $B0,X           ; $81DD: $36 $B0 - Rotate One Bit Left
	SBC ($0B,X)         ; $81DF: $E1 $0B $0A - Subtract Memory from Accumulator with Borrow
	AND ($B0),Y         ; $81E2: $31 $B0 $F3 - AND Memory with Accumulator
	ROR $06             ; $81E7: $66 $06 - Rotate One Bit Right
	ASL $06             ; $81E9: $06 $06 - Shift Left One Bit
	ROR $06             ; $81EB: $66 $06 - Rotate One Bit Right
	JSR $4E50           ; $81EE: $20 $50 $4E - Jump to New Location Saving Return Address
	ASL $B052           ; $81F3: $0E $52 $B0 - Shift Left One Bit
	CPY $06             ; $81F6: $C4 $06 - Compare Memory and Index Y
	SED                 ; $81F8: $F8 - Set Decimal Flag
	CMP $F68F,X         ; $81FA: $DD $8F $F6 - Compare Memory with Accumulator
	BMI $2F             ; $81FD: $30 $2F - Branch on Result Minus
	CMP ($C1,X)         ; $8201: $C1 $C1 $C2 - Compare Memory with Accumulator
	LDA ($B1),Y         ; $8204: $B1 $B1 $BE - Load Accumulator with Memory
	BPL $12             ; $8207: $10 $12 - Branch on Result Plus
	CMP ($C1,X)         ; $8209: $C1 $C1 $C3 - Compare Memory with Accumulator
	SBC ($27),Y         ; $820C: $F1 $27 $3F - Subtract Memory from Accumulator with Borrow
	AND ($71),Y         ; $820F: $31 $71 $7A - AND Memory with Accumulator
	ORA $F4,X           ; $8213: $15 $F4 - OR Memory with Accumulator
	CPY $1637           ; $8215: $CC $37 $16 - Compare Memory and Index Y
	ROR $1637,X         ; $8218: $7E $37 $16 - Rotate One Bit Right
	ROR $1617,X         ; $821B: $7E $17 $16 - Rotate One Bit Right
	ORA $091A,Y         ; $821F: $19 $1A $09 - OR Memory with Accumulator
	ASL A               ; $8222: $0A - Shift Left One Bit
	ASL $37,X           ; $8224: $16 $37 - Shift Left One Bit
	ROL $F5A5,X         ; $8226: $3E $A5 $F5 - Rotate One Bit Left
	LDA $A2,X           ; $8229: $B5 $A2 $05 - Load Accumulator with Memory
	BEQ $F7             ; $822C: $F0 $F7 - Branch on Result Zero
	ROL $0F28,X         ; $8232: $3E $28 $0F - Rotate One Bit Left
	ADC $32,X           ; $8235: $75 $32 - Add Memory to Accumulator with Carry
	ADC $22,X           ; $8239: $75 $22 - Add Memory to Accumulator with Carry
	ADC $12,X           ; $823D: $75 $12 - Add Memory to Accumulator with Carry
	ADC $02,X           ; $8241: $75 $02 - Add Memory to Accumulator with Carry
	ROL $78,X           ; $8245: $36 $78 - Rotate One Bit Left
	SBC ($92),Y         ; $8248: $F1 $92 $15 - Subtract Memory from Accumulator with Borrow
	SBC $2C,X           ; $824B: $F5 $2C - Subtract Memory from Accumulator with Borrow
	ROL A               ; $824E: $2A - Rotate One Bit Left
	CLC #$E0            ; $824F: $29 $E0 - Clear Carry Flag
	CPY #$1C            ; $8251: $C0 $1C - Compare Memory and Index Y
	ORA $C0E0,Y         ; $8255: $19 $E0 $C0 - OR Memory with Accumulator
	PHP                 ; $825B: $08 - Push Processor Status on Stack
	ASL $03             ; $8260: $06 $03 - Shift Left One Bit
	AND $343F,X         ; $8265: $3D $3F $34 - AND Memory with Accumulator
	BEQ $0B             ; $8268: $F0 $0B - Branch on Result Zero
	ASL $D2             ; $826A: $06 $D2 - Shift Left One Bit
	PLP                 ; $826C: $28 - Pull Processor Status from Stack
	CLC                 ; $826D: $18 - Clear Carry Flag
	CLC                 ; $826E: $18 - Clear Carry Flag
	LDA #$40            ; $826F: $A9 $40 - Load Accumulator with Memory
	CPX #$BE            ; $8272: $E0 $BE - Compare Memory and Index Y
	AND ($0B,X)         ; $8274: $21 $0B $F7 - AND Memory with Accumulator
	BPL $29             ; $8277: $10 $29 - Branch on Result Plus
	SBC ($4C),Y         ; $827B: $F1 $4C $29 - Subtract Memory from Accumulator with Borrow
	BEQ $02             ; $827F: $F0 $02 - Branch on Result Zero
	ROR $010C,X         ; $8284: $7E $0C $01 - Rotate One Bit Right
	AND ($51),Y         ; $8287: $31 $51 $61 - AND Memory with Accumulator
	ROR $030C,X         ; $828A: $7E $0C $03 - Rotate One Bit Right
	SBC ($42),Y         ; $828F: $F1 $42 $C9 - Subtract Memory from Accumulator with Borrow
	RTS                 ; $8292: $60 - Return from Subroutine
	CPY $F243           ; $8294: $CC $43 $F2 - Compare Memory and Index Y
	ASL $14,X           ; $8298: $16 $14 - Shift Left One Bit
	ASL $6F,X           ; $829A: $16 $6F - Shift Left One Bit
	SBC ($4E),Y         ; $829E: $F1 $4E $1F - Subtract Memory from Accumulator with Borrow
	ROL $2729           ; $82A1: $2E $29 $27 - Rotate One Bit Left
	BIT $22             ; $82A4: $24 $22 - Test Bits in Memory with Accumulator
	BIT $67             ; $82A6: $24 $67 - Test Bits in Memory with Accumulator
	LDX $93             ; $82A8: $A6 $93 - Load Index X with Memory
	CMP ($DB),Y         ; $82AC: $D1 $DB $0D - Compare Memory with Accumulator
	BPL $64             ; $82AF: $10 $64 - Branch on Result Plus
	AND $3D4E,Y         ; $82B2: $39 $4E $3D - AND Memory with Accumulator
	AND $2729           ; $82B5: $2D $29 $27 - AND Memory with Accumulator
	BIT $2B             ; $82B8: $24 $2B - Test Bits in Memory with Accumulator
	BIT $67             ; $82BA: $24 $67 - Test Bits in Memory with Accumulator
	ADC #$17            ; $82BC: $69 $17 - Add Memory to Accumulator with Carry
	RTS                 ; $82BF: $60 - Return from Subroutine
	DEC $B7,X           ; $82C0: $D6 $B7 - Decrement Memory by One
	STA ($91),Y         ; $82C3: $91 $91 $BC - Store Accumulator in Memory
	BPL $12             ; $82C6: $10 $12 - Branch on Result Plus
	ADC $72             ; $82C9: $65 $72 - Add Memory to Accumulator with Carry
	JSR $2F2E           ; $82CB: $20 $2E $2F - Jump to New Location Saving Return Address
	STA $1F2B           ; $82D0: $8D $2B $1F - Store Accumulator in Memory
	BRK                 ; $82D4: $00 - Force Break
	SBC $5F74,Y         ; $82D6: $F9 $74 $5F - Subtract Memory from Accumulator with Borrow
	CMP $F0,X           ; $82DD: $D5 $F0 - Compare Memory with Accumulator
	CMP ($BC),Y         ; $82DF: $D1 $BC $70 - Compare Memory with Accumulator
	DEC $90,X           ; $82E3: $D6 $90 - Decrement Memory by One
	STA ($91,X)         ; $82E5: $81 $91 $BC - Store Accumulator in Memory
	BPL $12             ; $82E8: $10 $12 - Branch on Result Plus
	ADC $72             ; $82EB: $65 $72 - Add Memory to Accumulator with Carry
	JSR $B1D3           ; $82ED: $20 $D3 $B1 - Jump to New Location Saving Return Address
	CMP ($BC),Y         ; $82F0: $D1 $BC $10 - Compare Memory with Accumulator
	AND $1709           ; $82F7: $2D $09 $17 - AND Memory with Accumulator
	ADC #$24            ; $82FA: $69 $24 - Add Memory to Accumulator with Carry
	BPL $77             ; $82FD: $10 $77 - Branch on Result Plus
	BPL $22             ; $8303: $10 $22 - Branch on Result Plus
	STA $4F27           ; $8307: $8D $27 $4F - Store Accumulator in Memory
	BRK                 ; $830A: $00 - Force Break
	JSR $74F9           ; $830D: $20 $F9 $74 - Jump to New Location Saving Return Address
	STY $EC,X           ; $8311: $94 $EC - Sore Index Y in Memory
	EOR $10A0,Y         ; $8315: $59 $A0 $10 - Exclusive-OR Memory with Accumulator
	BRK                 ; $8318: $00 - Force Break
	BRK                 ; $8319: $00 - Force Break
	LDX $0F2B           ; $831A: $AE $2B $0F - Load Index X with Memory
	SBC $BC70,Y         ; $8321: $F9 $70 $BC - Subtract Memory from Accumulator with Borrow
	CMP ($7F,X)         ; $8324: $C1 $7F $B7 - Compare Memory with Accumulator
	EOR $27             ; $8328: $45 $27 - Exclusive-OR Memory with Accumulator
	SBC $BC70,Y         ; $832A: $F9 $70 $BC - Subtract Memory from Accumulator with Borrow
	ADC ($00,X)         ; $832E: $61 $00 $70 - Add Memory to Accumulator with Carry
	CMP #$59            ; $8332: $C9 $59 - Compare Memory with Accumulator
	LDY #$10            ; $8334: $A0 $10 - Load Index Y with Memory
	LDX $0F2B           ; $8338: $AE $2B $0F - Load Index X with Memory
	LDA $2B,X           ; $833B: $B5 $2B $53 - Load Accumulator with Memory
	SBC $B974,Y         ; $833F: $F9 $74 $B9 - Subtract Memory from Accumulator with Borrow
	CMP ($3B,X)         ; $8342: $C1 $3B $51 - Compare Memory with Accumulator
	LDA $66,X           ; $8348: $B5 $66 $3F - Load Accumulator with Memory
	SBC $3F61,Y         ; $834C: $F9 $61 $3F - Subtract Memory from Accumulator with Borrow
	ORA ($01),Y         ; $834F: $11 $01 $04 - OR Memory with Accumulator
	SBC ($61),Y         ; $8352: $F1 $61 $C4 - Subtract Memory from Accumulator with Borrow
	BEQ $01             ; $8355: $F0 $01 - Branch on Result Zero
	BEQ $10             ; $8358: $F0 $10 - Branch on Result Zero
	BRK                 ; $835A: $00 - Force Break
	BRK                 ; $835B: $00 - Force Break
	BRK                 ; $835D: $00 - Force Break
	EOR $97,X           ; $8360: $55 $97 - Exclusive-OR Memory with Accumulator
	EOR $26B9,Y         ; $8363: $59 $B9 $26 - Exclusive-OR Memory with Accumulator
	EOR #$B2            ; $836C: $49 $B2 - Exclusive-OR Memory with Accumulator
	SBC $F971,X         ; $8372: $FD $71 $F9 - Subtract Memory from Accumulator with Borrow
	PLA                 ; $8377: $68 - Pull Accumulator from Stack
	STA ($F7,X)         ; $837C: $81 $F7 $29 - Store Accumulator in Memory
	RTS                 ; $8385: $60 - Return from Subroutine
	LDA $2E,X           ; $8386: $B5 $2E $76 - Load Accumulator with Memory
	SBC $3F36,Y         ; $8389: $F9 $36 $3F - Subtract Memory from Accumulator with Borrow
	RTS                 ; $838F: $60 - Return from Subroutine
	ORA $04             ; $8392: $05 $04 - OR Memory with Accumulator
	ASL $06             ; $8396: $06 $06 - Shift Left One Bit
	ASL $06             ; $8399: $06 $06 - Shift Left One Bit
	LDX $1BF1           ; $839B: $AE $F1 $1B - Load Index X with Memory
	ORA $18             ; $839E: $05 $18 - OR Memory with Accumulator
	AND ($61),Y         ; $83A2: $31 $61 $73 - AND Memory with Accumulator
	ROL $61B0           ; $83A8: $2E $B0 $61 - Rotate One Bit Left
	ORA ($34,X)         ; $83AC: $01 $34 $6F - OR Memory with Accumulator
	LDX #$7D            ; $83AF: $A2 $7D - Load Index X with Memory
	ORA $F0,X           ; $83B3: $15 $F0 - OR Memory with Accumulator
	BMI $30             ; $83B6: $30 $30 - Branch on Result Minus
	AND $606E           ; $83B8: $2D $6E $60 - AND Memory with Accumulator
	JMP ($41FB)         ; $83BC: $6C $FB $41 - Jump to New Location
	ROL $070A           ; $83C0: $2E $0A $07 - Rotate One Bit Left
	DEC $E6,X           ; $83C9: $D6 $E6 - Decrement Memory by One
	ASL $76             ; $83CB: $06 $76 - Shift Left One Bit
	LDY $12,X           ; $83CE: $B4 $12 $BC - Load Index Y with Memory
	BRK                 ; $83D1: $00 - Force Break
	ORA ($32,X)         ; $83D2: $01 $32 $A3 - OR Memory with Accumulator
	SBC ($D5,X)         ; $83D5: $E1 $D5 $F9 - Subtract Memory from Accumulator with Borrow
	CPX #$A4            ; $83D8: $E0 $A4 - Compare Memory and Index Y
	STX $2B,Y           ; $83DA: $96 $2B - Store Index X in Memory
	ORA ($50,X)         ; $83DC: $01 $50 $B0 - OR Memory with Accumulator
	SBC $31D1           ; $83E1: $ED $D1 $31 - Subtract Memory from Accumulator with Borrow
	EOR ($55,X)         ; $83E4: $41 $55 $F3 - Exclusive-OR Memory with Accumulator
	ORA $18,X           ; $83E7: $15 $18 - OR Memory with Accumulator
	ASL A               ; $83EB: $0A - Shift Left One Bit
	CPX #$B4            ; $83ED: $E0 $B4 - Compare Memory and Index Y
	AND ($3B,X)         ; $83EF: $21 $3B $77 - AND Memory with Accumulator
	LDY $C1,X           ; $83F3: $B4 $C1 $21 - Load Index Y with Memory
	BVC $C0             ; $83F6: $50 $C0 - Branch on Overflow Clear
	CPY #$B0            ; $83F8: $C0 $B0 - Compare Memory and Index Y
	LDA $6F60,Y         ; $83FA: $B9 $60 $6F - Load Accumulator with Memory
	ROR $73,X           ; $83FD: $76 $73 - Rotate One Bit Right
	BNE $F8             ; $8400: $D0 $F8 - Branch on Result not Zero
	CPX #$08            ; $8402: $E0 $08 - Compare Memory and Index Y
	LDA ($28,X)         ; $8404: $A1 $28 $E0 - Load Accumulator with Memory
	CLC                 ; $8407: $18 - Clear Carry Flag
	LDA ($08,X)         ; $8408: $A1 $08 $E0 - Load Accumulator with Memory
	PLP                 ; $840B: $28 - Pull Processor Status from Stack
	LDA ($1A,X)         ; $840C: $A1 $1A $EF - Load Accumulator with Memory
	CMP ($B0),Y         ; $840F: $D1 $B0 $12 - Compare Memory with Accumulator
	ROL $2A             ; $8413: $26 $2A - Rotate One Bit Left
	LSR $4F4D,X         ; $8416: $5E $4D $4F - Shift One Bit Right (Memory or Accumulator)
	LSR $964D,X         ; $841A: $5E $4D $96 - Shift One Bit Right (Memory or Accumulator)
	BEQ $06             ; $841E: $F0 $06 - Branch on Result Zero
	SBC ($08),Y         ; $8420: $F1 $08 $D3 - Subtract Memory from Accumulator with Borrow
	BRK                 ; $8425: $00 - Force Break
	JSR $2C10           ; $8426: $20 $10 $2C - Jump to New Location Saving Return Address
	BPL $20             ; $8429: $10 $20 - Branch on Result Plus
	BPL $1C             ; $842B: $10 $1C - Branch on Result Plus
	LDA ($5B,X)         ; $842E: $A1 $5B $17 - Load Accumulator with Memory
	BPL $14             ; $8431: $10 $14 - Branch on Result Plus
	ASL $2921           ; $8434: $0E $21 $29 - Shift Left One Bit
	BCS $82             ; $8438: $B0 $82 - Branch on Carry Set
	ORA ($5B,X)         ; $843A: $01 $5B $1F - OR Memory with Accumulator
	JSR $9214           ; $843D: $20 $14 $92 - Jump to New Location Saving Return Address
	ASL $1C05           ; $8440: $0E $05 $1C - Shift Left One Bit
	ORA ($21,X)         ; $8444: $01 $21 $51 - OR Memory with Accumulator
	JSR $2EAE           ; $8448: $20 $AE $2E - Jump to New Location Saving Return Address
	ADC ($3B),Y         ; $844F: $71 $3B $4C - Add Memory to Accumulator with Carry
	ORA $6F60,Y         ; $8456: $19 $60 $6F - OR Memory with Accumulator
	ASL $14,X           ; $845E: $16 $14 - Shift Left One Bit
	ASL $16,X           ; $8460: $16 $16 - Shift Left One Bit
	ASL $AE             ; $8463: $06 $AE - Shift Left One Bit
	ASL $14,X           ; $8468: $16 $14 - Shift Left One Bit
	ASL $14,X           ; $846A: $16 $14 - Shift Left One Bit
	AND ($61),Y         ; $846D: $31 $61 $61 - AND Memory with Accumulator
	PLA                 ; $8470: $68 - Pull Accumulator from Stack
	SBC ($10,X)         ; $8471: $E1 $10 $60 - Subtract Memory from Accumulator with Borrow
	ADC ($11),Y         ; $8474: $71 $11 $61 - Add Memory to Accumulator with Carry
	ORA ($10),Y         ; $8477: $11 $10 $60 - OR Memory with Accumulator
	ADC ($11),Y         ; $847A: $71 $11 $21 - Add Memory to Accumulator with Carry
	BPL $11             ; $847E: $10 $11 - Branch on Result Plus
	CPX #$12            ; $8480: $E0 $12 - Compare Memory and Index Y
	BCS $72             ; $8483: $B0 $72 - Branch on Carry Set
	ORA ($1B,X)         ; $8485: $01 $1B $0E - OR Memory with Accumulator
	JSR $0405           ; $8488: $20 $05 $04 - Jump to New Location Saving Return Address
	ASL A               ; $8492: $0A - Shift Left One Bit
	ASL $01             ; $8493: $06 $01 - Shift Left One Bit
	BNE $BC             ; $8495: $D0 $BC - Branch on Result not Zero
	BRK                 ; $8499: $00 - Force Break
	ASL A               ; $849A: $0A - Shift Left One Bit
	ASL $01             ; $849B: $06 $01 - Shift Left One Bit
	BCS $A1             ; $849D: $B0 $A1 - Branch on Carry Set
	ASL $2221           ; $849F: $0E $21 $22 - Shift Left One Bit
	SBC ($5F),Y         ; $84A3: $F1 $5F $C6 - Subtract Memory from Accumulator with Borrow
	RTS                 ; $84A6: $60 - Return from Subroutine
	AND ($1E,X)         ; $84A8: $21 $1E $D1 - AND Memory with Accumulator
	LDY $1411,X         ; $84AB: $BC $11 $14 - Load Index Y with Memory
	CMP ($BC),Y         ; $84AF: $D1 $BC $21 - Compare Memory with Accumulator
	ASL $1311,X         ; $84B2: $1E $11 $13 - Shift Left One Bit
	ASL $A1,X           ; $84B5: $16 $A1 - Shift Left One Bit
	EOR ($3D,X)         ; $84B7: $41 $3D $1B - Exclusive-OR Memory with Accumulator
	CMP ($31,X)         ; $84BA: $C1 $31 $1D - Compare Memory with Accumulator
	ASL $14,X           ; $84BD: $16 $14 - Shift Left One Bit
	ORA ($AB),Y         ; $84BF: $11 $AB $58 - OR Memory with Accumulator
	BPL $5F             ; $84C2: $10 $5F - Branch on Result Plus
	ORA #$21            ; $84C4: $09 $21 - OR Memory with Accumulator
	CPX $313F           ; $84C8: $EC $3F $31 - Compare Memory and Index X
	ADC ($11,X)         ; $84CB: $61 $11 $6C - Add Memory to Accumulator with Carry
	AND ($8C,X)         ; $84CE: $21 $8C $21 - AND Memory with Accumulator
	ORA ($4E),Y         ; $84D2: $11 $4E $8E - OR Memory with Accumulator
	ASL $60,X           ; $84D7: $16 $60 - Shift Left One Bit
	JMP ($3E41)         ; $84D9: $6C $41 $3E - Jump to New Location
	AND $C2B0           ; $84DC: $2D $B0 $C2 - AND Memory with Accumulator
	ORA $296F           ; $84DF: $0D $6F $29 - OR Memory with Accumulator
	STA $1FC2,Y         ; $84E2: $99 $C2 $1F - Store Accumulator in Memory
	ORA $EE,X           ; $84E6: $15 $EE - OR Memory with Accumulator
	ROL $02             ; $84E8: $26 $02 - Rotate One Bit Left
	SEI                 ; $84ED: $78 - Set Interrupt Disable Status
	BIT $64             ; $84EE: $24 $64 - Test Bits in Memory with Accumulator
	ASL $B090           ; $84F3: $0E $90 $B0 - Shift Left One Bit
	CLC                 ; $84F6: $18 - Clear Carry Flag
	STX $80,Y           ; $84F8: $96 $80 - Store Index X in Memory
	CPY $13             ; $84FA: $C4 $13 - Compare Memory and Index Y
	ROL $74             ; $84FD: $26 $74 - Rotate One Bit Left
	INC $F9             ; $8502: $E6 $F9 - Increment Memory by One
	SBC $203F,Y         ; $8504: $F9 $3F $20 - Subtract Memory from Accumulator with Borrow
	BVC $70             ; $8507: $50 $70 - Branch on Overflow Clear
	ROR $000A,X         ; $8509: $7E $0A $00 - Rotate One Bit Right
	BVC $7A             ; $850C: $50 $7A - Branch on Overflow Clear
	BCS $31             ; $850E: $B0 $31 - Branch on Carry Set
	SBC ($8D),Y         ; $8511: $F1 $8D $3E - Subtract Memory from Accumulator with Borrow
	ROL $25             ; $8514: $26 $25 - Rotate One Bit Left
	STY $2324           ; $8516: $8C $24 $23 - Sore Index Y in Memory
	LSR $236F,X         ; $8519: $5E $6F $23 - Shift One Bit Right (Memory or Accumulator)
	LDA $E2             ; $851C: $A5 $E2 - Load Accumulator with Memory
	SBC ($F3,X)         ; $851E: $E1 $F3 $F1 - Subtract Memory from Accumulator with Borrow
	JSR $D10E           ; $8521: $20 $0E $D1 - Jump to New Location Saving Return Address
	ADC ($CC),Y         ; $8524: $71 $CC $37 - Add Memory to Accumulator with Carry
	AND $1694           ; $8527: $2D $94 $16 - AND Memory with Accumulator
	ASL $26             ; $852A: $06 $26 - Shift Left One Bit
	LSR $2A             ; $852C: $46 $2A - Shift One Bit Right (Memory or Accumulator)
	RTS                 ; $852E: $60 - Return from Subroutine
	CPX #$41            ; $8530: $E0 $41 - Compare Memory and Index Y
	BCS $81             ; $8532: $B0 $81 - Branch on Carry Set
	ASL $75             ; $8534: $06 $75 - Shift Left One Bit
	SED                 ; $8536: $F8 - Set Decimal Flag
	EOR $6F5E,Y         ; $8537: $59 $5E $6F - Exclusive-OR Memory with Accumulator
	LDA $E2             ; $853B: $A5 $E2 - Load Accumulator with Memory
	STX $8A10           ; $853F: $8E $10 $8A - Store Index X in Memory
	STX $8A11           ; $8543: $8E $11 $8A - Store Index X in Memory
	BRK                 ; $8546: $00 - Force Break
	STX $8A12           ; $8547: $8E $12 $8A - Store Index X in Memory
	ORA ($E6,X)         ; $854A: $01 $E6 $C1 - OR Memory with Accumulator
	ASL $F0,X           ; $854E: $16 $F0 - Shift Left One Bit
	LSR $F72E,X         ; $8551: $5E $2E $F7 - Shift One Bit Right (Memory or Accumulator)
	RTI                 ; $8554: $40 - Return from Interrupt
	JSR $100E           ; $8555: $20 $0E $10 - Jump to New Location Saving Return Address
	BPL $70             ; $8558: $10 $70 - Branch on Result Plus
	RTS                 ; $855A: $60 - Return from Subroutine
	EOR $10,X           ; $855E: $55 $10 - Exclusive-OR Memory with Accumulator
	SBC ($0F,X)         ; $8563: $E1 $0F $85 - Subtract Memory from Accumulator with Borrow
	BMI $E6             ; $8567: $30 $E6 - Branch on Result Minus
	ROL $36,X           ; $8569: $36 $36 - Rotate One Bit Left
	AND $6F55,X         ; $856B: $3D $55 $6F - AND Memory with Accumulator
	LDA $E2             ; $856F: $A5 $E2 - Load Accumulator with Memory
	ROL $0D             ; $8573: $26 $0D - Rotate One Bit Left
	ASL $06             ; $8575: $06 $06 - Shift Left One Bit
	ASL $66,X           ; $8577: $16 $66 - Shift Left One Bit
	ROR $66             ; $8579: $66 $66 - Rotate One Bit Right
	EOR ($26,X)         ; $857C: $41 $26 $6F - Exclusive-OR Memory with Accumulator
	LDA #$A1            ; $8580: $A9 $A1 - Load Accumulator with Memory
	AND ($F5),Y         ; $8583: $31 $F5 $F5 - AND Memory with Accumulator
	JMP ($6A6B)         ; $8586: $6C $6B $6A - Jump to New Location
	ROR A               ; $858A: $6A - Rotate One Bit Right
	ADC #$6A            ; $858B: $69 $6A - Add Memory to Accumulator with Carry
	DEC $26,X           ; $858E: $D6 $26 - Decrement Memory by One
	ROR $C6,X           ; $8590: $76 $C6 - Rotate One Bit Right
	ROR $CC,X           ; $8592: $76 $CC - Rotate One Bit Right
	ADC $60             ; $8594: $65 $60 - Add Memory to Accumulator with Carry
	ADC $AB             ; $8596: $65 $AB - Add Memory to Accumulator with Carry
	JSR $C2BB           ; $8599: $20 $BB $C2 - Jump to New Location Saving Return Address
	ORA ($30),Y         ; $859D: $11 $30 $98 - OR Memory with Accumulator
	ASL $FC             ; $85A0: $06 $FC - Shift Left One Bit
	ROL $F0,X           ; $85A4: $36 $F0 - Rotate One Bit Left
	ASL $C7             ; $85A9: $06 $C7 - Shift Left One Bit
	ASL $CD             ; $85AB: $06 $CD - Shift Left One Bit
	ROR A               ; $85AD: $6A - Rotate One Bit Right
	ROR $CA             ; $85AE: $66 $CA - Rotate One Bit Right
	CPX #$31            ; $85B0: $E0 $31 - Compare Memory and Index Y
	ADC ($1B),Y         ; $85B3: $71 $1B $BC - Add Memory to Accumulator with Carry
	ORA ($B1),Y         ; $85B6: $11 $B1 $12 - OR Memory with Accumulator
	ORA $6F80,Y         ; $85B9: $19 $80 $6F - OR Memory with Accumulator
	ORA $B3,X           ; $85BC: $15 $B3 - OR Memory with Accumulator
	ADC ($67,X)         ; $85BF: $61 $67 $67 - Add Memory to Accumulator with Carry
	ADC ($61,X)         ; $85C5: $61 $61 $67 - Add Memory to Accumulator with Carry
	ADC ($67,X)         ; $85C9: $61 $67 $62 - Add Memory to Accumulator with Carry
	ADC ($67,X)         ; $85CD: $61 $67 $6F - Add Memory to Accumulator with Carry
	LDA $3F1F,X         ; $85D1: $BD $1F $3F - Load Accumulator with Memory
	AND $F5,X           ; $85D4: $35 $F5 - AND Memory with Accumulator
	SBC $7251,Y         ; $85D6: $F9 $51 $72 - Subtract Memory from Accumulator with Borrow
	BPL $11             ; $85DB: $10 $11 - Branch on Result Plus
	ORA ($10,X)         ; $85DF: $01 $10 $95 - OR Memory with Accumulator
	ASL $1B59           ; $85E2: $0E $59 $1B - Shift Left One Bit
	ORA $7210           ; $85E5: $0D $10 $72 - OR Memory with Accumulator
	ORA $9B,X           ; $85E9: $15 $9B - OR Memory with Accumulator
	ORA ($61),Y         ; $85EB: $11 $61 $31 - OR Memory with Accumulator
	LDA ($51),Y         ; $85EE: $B1 $51 $26 - Load Accumulator with Memory
	SBC $D6AB,Y         ; $85F1: $F9 $AB $D6 - Subtract Memory from Accumulator with Borrow
	BIT $FD             ; $85F7: $24 $FD - Test Bits in Memory with Accumulator
	EOR ($4E,X)         ; $85FA: $41 $4E $18 - Exclusive-OR Memory with Accumulator
	ORA ($40,X)         ; $85FD: $01 $40 $40 - OR Memory with Accumulator
	RTI                 ; $8600: $40 - Return from Interrupt
	RTI                 ; $8601: $40 - Return from Interrupt
	LSR $F3             ; $8602: $46 $F3 - Shift One Bit Right (Memory or Accumulator)
	TXA                 ; $8605: $8A - Transfer Index X to Accumulator
	ROL $F3,X           ; $8607: $36 $F3 - Rotate One Bit Left
	BCC $91             ; $860C: $90 $91 - Branch on Carry Clear
	AND ($F6),Y         ; $860E: $31 $F6 $58 - AND Memory with Accumulator
	EOR ($D8),Y         ; $8611: $51 $D8 $31 - Exclusive-OR Memory with Accumulator
	DEC $B4,X           ; $8619: $D6 $B4 - Decrement Memory by One
	LDX $D4             ; $861C: $A6 $D4 - Load Index X with Memory
	SBC ($88),Y         ; $861E: $F1 $88 $A2 - Subtract Memory from Accumulator with Borrow
	DEY                 ; $8623: $88 - Decrement Index Y by One
	SBC ($68),Y         ; $8626: $F1 $68 $72 - Subtract Memory from Accumulator with Borrow
	BNE $D4             ; $8629: $D0 $D4 - Branch on Result not Zero
	PLA                 ; $862C: $68 - Pull Accumulator from Stack
	LSR $D4,X           ; $862D: $56 $D4 - Shift One Bit Right (Memory or Accumulator)
	SBC ($61),Y         ; $862F: $F1 $61 $DA - Subtract Memory from Accumulator with Borrow
	TXA                 ; $8635: $8A - Transfer Index X to Accumulator
	DEC $2A,X           ; $8636: $D6 $2A - Decrement Memory by One
	BPL $11             ; $8639: $10 $11 - Branch on Result Plus
	DEY                 ; $863C: $88 - Decrement Index Y by One
	ASL $84,X           ; $863D: $16 $84 - Shift Left One Bit
	ADC $F6A4           ; $863F: $6D $A4 $F6 - Add Memory to Accumulator with Carry
	PHA                 ; $8642: $48 - Push Accumulator on Stack
	STX $28             ; $8643: $86 $28 - Store Index X in Memory
	EOR ($DA),Y         ; $8645: $51 $DA $87 - Exclusive-OR Memory with Accumulator
	CPY #$AC            ; $8648: $C0 $AC - Compare Memory and Index Y
	ASL $A8             ; $864A: $06 $A8 - Shift Left One Bit
	LDY $64C0           ; $864D: $AC $C0 $64 - Load Index Y with Memory
	SBC $78,X           ; $8650: $F5 $78 - Subtract Memory from Accumulator with Borrow
	STA $16             ; $8654: $85 $16 - Store Accumulator in Memory
	ASL $A2             ; $8658: $06 $A2 - Shift Left One Bit
	SED                 ; $865A: $F8 - Set Decimal Flag
	STA $A812           ; $865B: $8D $12 $A8 - Store Accumulator in Memory
	RTS                 ; $865E: $60 - Return from Subroutine
	JSR $3678           ; $865F: $20 $78 $36 - Jump to New Location Saving Return Address
	TXA                 ; $8664: $8A - Transfer Index X to Accumulator
	BNE $78             ; $8665: $D0 $78 - Branch on Result not Zero
	RTI                 ; $8667: $40 - Return from Interrupt
	CLD                 ; $8668: $D8 - Clear Decimal Mode
	STY $A102           ; $8669: $8C $02 $A1 - Sore Index Y in Memory
	SED                 ; $866C: $F8 - Set Decimal Flag
	STA $8407           ; $866D: $8D $07 $84 - Store Accumulator in Memory
	ORA $1988           ; $8670: $0D $88 $19 - OR Memory with Accumulator
	ORA $4F             ; $8673: $05 $4F - OR Memory with Accumulator
	ADC $81A8           ; $8676: $6D $A8 $81 - Add Memory to Accumulator with Carry
	ORA ($28),Y         ; $8679: $11 $28 $C1 - OR Memory with Accumulator
	SEI                 ; $867C: $78 - Set Interrupt Disable Status
	ADC ($DA,X)         ; $867D: $61 $DA $8B - Add Memory to Accumulator with Carry
	ASL $144F           ; $8681: $0E $4F $14 - Shift Left One Bit
	STA $1E27           ; $8684: $8D $27 $1E - Store Accumulator in Memory
	ASL $6785,X         ; $8689: $1E $85 $67 - Shift Left One Bit
	LDY $FE             ; $868C: $A4 $FE - Load Index Y with Memory
	PHA                 ; $868E: $48 - Push Accumulator on Stack
	LDX $41             ; $868F: $A6 $41 - Load Index X with Memory
	INX                 ; $8691: $E8 - Increment Index X by One
	TXS                 ; $8693: $9A - Transfer Index X to Stack Register
	ASL $A44F           ; $8696: $0E $4F $A4 - Shift Left One Bit
	LDA ($F8,X)         ; $869A: $A1 $F8 $99 - Load Accumulator with Memory
	ORA #$13            ; $869D: $09 $13 - OR Memory with Accumulator
	ORA $63,X           ; $86A0: $15 $63 - OR Memory with Accumulator
	CPX #$7D            ; $86A3: $E0 $7D - Compare Memory and Index Y
	TAY                 ; $86A6: $A8 - Transfer Accumulator to Index Y
	RTS                 ; $86A7: $60 - Return from Subroutine
	SEC                 ; $86A8: $38 - Set Carry Flag
	SBC ($78),Y         ; $86A9: $F1 $78 $63 - Subtract Memory from Accumulator with Borrow
	CLD                 ; $86AC: $D8 - Clear Decimal Mode
	STY $6667           ; $86AF: $8C $67 $66 - Sore Index Y in Memory
	ADC $64             ; $86B2: $65 $64 - Add Memory to Accumulator with Carry
	ADC ($20,X)         ; $86B6: $61 $20 $A1 - Add Memory to Accumulator with Carry
	INC $48,X           ; $86BA: $F6 $48 - Increment Memory by One
	STY $04             ; $86BC: $84 $04 - Sore Index Y in Memory
	BEQ $08             ; $86BE: $F0 $08 - Branch on Result Zero
	EOR $D5,X           ; $86C0: $55 $D5 - Exclusive-OR Memory with Accumulator
	CMP $D4,X           ; $86C2: $D5 $D4 - Compare Memory with Accumulator
	STA $57             ; $86C5: $85 $57 - Store Accumulator in Memory
	EOR $5D5D,X         ; $86C7: $5D $5D $5D - Exclusive-OR Memory with Accumulator
	TAY                 ; $86CA: $A8 - Transfer Accumulator to Index Y
	LDX ($21),Y         ; $86CB: $B6 $21 $E1 - Load Index X with Memory
	LSR $E8             ; $86CE: $46 $E8 - Shift One Bit Right (Memory or Accumulator)
	EOR ($4A,X)         ; $86D0: $41 $4A $85 - Exclusive-OR Memory with Accumulator
	TXA                 ; $86D4: $8A - Transfer Index X to Accumulator
	ASL $1483           ; $86D6: $0E $83 $14 - Shift Left One Bit
	STA $67             ; $86D9: $85 $67 - Store Accumulator in Memory
	ASL $1784,X         ; $86DE: $1E $84 $17 - Shift Left One Bit
	LDX #$E2            ; $86E1: $A2 $E2 - Load Index X with Memory
	SED                 ; $86E3: $F8 - Set Decimal Flag
	LDY #$40            ; $86E4: $A0 $40 - Load Index Y with Memory
	TXA                 ; $86E6: $8A - Transfer Index X to Accumulator
	DEY                 ; $86E9: $88 - Decrement Index Y by One
	ORA $85,X           ; $86EA: $15 $85 - OR Memory with Accumulator
	LDX #$F9            ; $86ED: $A2 $F9 - Load Index X with Memory
	STY $10             ; $86F0: $84 $10 - Sore Index Y in Memory
	CLC                 ; $86F3: $18 - Clear Carry Flag
	STX $E0             ; $86F5: $86 $E0 - Store Index X in Memory
	CPX #$89            ; $86F7: $E0 $89 - Compare Memory and Index Y
	BPL $13             ; $86F9: $10 $13 - Branch on Result Plus
	CLC                 ; $86FB: $18 - Clear Carry Flag
	STX $E0             ; $86FD: $86 $E0 - Store Index X in Memory
	CPX #$84            ; $86FF: $E0 $84 - Compare Memory and Index Y
	BPL $13             ; $8701: $10 $13 - Branch on Result Plus
	CLC                 ; $8703: $18 - Clear Carry Flag
	CPX #$E0            ; $8706: $E0 $E0 - Compare Memory and Index Y
	TAY                 ; $8708: $A8 - Transfer Accumulator to Index Y
	LDY $40C0,X         ; $8709: $BC $C0 $40 - Load Index Y with Memory
	LDA $E240,Y         ; $870C: $B9 $40 $E2 - Load Accumulator with Memory
	BCS $05             ; $870F: $B0 $05 - Branch on Carry Set
	ASL $0E0C           ; $8711: $0E $0C $0E - Shift Left One Bit
	TYA                 ; $8714: $98 - Transfer Index Y to Accumulator
	ASL $0A5F           ; $8715: $0E $5F $0A - Shift Left One Bit
	STX $14             ; $8718: $86 $14 - Store Index X in Memory
	STY $0E,X           ; $871B: $94 $0E - Sore Index Y in Memory
	ASL A               ; $871E: $0A - Shift Left One Bit
	TXA                 ; $8720: $8A - Transfer Index X to Accumulator
	STY $11,X           ; $8721: $94 $11 - Sore Index Y in Memory
	ADC ($01),Y         ; $8723: $71 $01 $91 - Add Memory to Accumulator with Carry
	PLP                 ; $8726: $28 - Pull Processor Status from Stack
	EOR ($A1,X)         ; $8727: $41 $A1 $50 - Exclusive-OR Memory with Accumulator
	DEX                 ; $872A: $CA - Decrement Index X by One
	TXA                 ; $872C: $8A - Transfer Index X to Accumulator
	STY $11,X           ; $872D: $94 $11 - Sore Index Y in Memory
	CMP ($51,X)         ; $872F: $C1 $51 $A1 - Compare Memory with Accumulator
	PLP                 ; $8732: $28 - Pull Processor Status from Stack
	EOR ($91,X)         ; $8733: $41 $91 $01 - Exclusive-OR Memory with Accumulator
	BPL $15             ; $8739: $10 $15 - Branch on Result Plus
	CMP ($21,X)         ; $873D: $C1 $21 $41 - Compare Memory with Accumulator
	ADC ($B8),Y         ; $8740: $71 $B8 $53 - Add Memory to Accumulator with Carry
	DEX                 ; $8743: $CA - Decrement Index X by One
	STA $C6             ; $8745: $85 $C6 - Store Accumulator in Memory
	SBC $877E,X         ; $8747: $FD $7E $87 - Subtract Memory from Accumulator with Borrow
	BCC $91             ; $874A: $90 $91 - Branch on Carry Clear
	EOR ($31),Y         ; $874C: $51 $31 $51 - Exclusive-OR Memory with Accumulator
	EOR ($29,X)         ; $874F: $41 $29 $20 - Exclusive-OR Memory with Accumulator
	CPX #$11            ; $8752: $E0 $11 - Compare Memory and Index Y
	STA $11             ; $8754: $85 $11 - Store Accumulator in Memory
	TAY                 ; $8757: $A8 - Transfer Accumulator to Index Y
	CMP #$61            ; $8758: $C9 $61 - Compare Memory with Accumulator
	BRK                 ; $875A: $00 - Force Break
	BRK                 ; $875C: $00 - Force Break
	PHP                 ; $8760: $08 - Push Processor Status on Stack
	ORA ($1D),Y         ; $8763: $11 $1D $4F - OR Memory with Accumulator
	SBC ($1D,X)         ; $8766: $E1 $1D $E0 - Subtract Memory from Accumulator with Borrow
	ORA ($4F,X)         ; $8769: $01 $4F $13 - OR Memory with Accumulator
	ADC $A20D,X         ; $876C: $7D $0D $A2 - Add Memory to Accumulator with Carry
	SED                 ; $876F: $F8 - Set Decimal Flag
	BCS $50             ; $8770: $B0 $50 - Branch on Carry Set
	CPX #$B0            ; $8772: $E0 $B0 - Compare Memory and Index Y
	CPX #$C0            ; $8774: $E0 $C0 - Compare Memory and Index Y
	SBC #$40            ; $8776: $E9 $40 - Subtract Memory from Accumulator with Borrow
	CPX #$31            ; $8778: $E0 $31 - Compare Memory and Index Y
	BNE $01             ; $877B: $D0 $01 - Branch on Result not Zero
	SBC ($CA,X)         ; $877D: $E1 $CA $87 - Subtract Memory from Accumulator with Borrow
	CPY #$80            ; $8780: $C0 $80 - Compare Memory and Index Y
	CPX #$90            ; $8782: $E0 $90 - Compare Memory and Index Y
	INC $0A1C           ; $8784: $EE $1C $0A - Increment Memory by One
	BPL $1E             ; $8788: $10 $1E - Branch on Result Plus
	PLP                 ; $878C: $28 - Pull Processor Status from Stack
	ORA $144F           ; $878D: $0D $4F $14 - OR Memory with Accumulator
	ORA $01E4           ; $8790: $0D $E4 $01 - OR Memory with Accumulator
	ORA $244F,X         ; $8793: $1D $4F $24 - OR Memory with Accumulator
	ORA $184F,X         ; $8796: $1D $4F $18 - OR Memory with Accumulator
	ORA $01E0,X         ; $8799: $1D $E0 $01 - OR Memory with Accumulator
	LDA ($F4,X)         ; $879C: $A1 $F4 $F2 - Load Accumulator with Memory
	PLP                 ; $879F: $28 - Pull Processor Status from Stack
	LDA $2C29           ; $87A0: $AD $29 $2C - Load Accumulator with Memory
	STY $0E,X           ; $87A3: $94 $0E - Sore Index Y in Memory
	ASL A               ; $87A6: $0A - Shift Left One Bit
	STY $4F10           ; $87A8: $8C $10 $4F - Sore Index Y in Memory
	AND $284F           ; $87AC: $2D $4F $28 - AND Memory with Accumulator
	AND $01E2           ; $87AF: $2D $E2 $01 - AND Memory with Accumulator
	LDY #$87            ; $87B2: $A0 $87 - Load Index Y with Memory
	CPY #$87            ; $87B4: $C0 $87 - Compare Memory and Index Y
	CLV                 ; $87B6: $B8 - Clear Overflow Flag
	LDA #$2D            ; $87B9: $A9 $2D - Load Accumulator with Memory
	STA $0300,X         ; $87BB: $9D $00 $03 - Store Accumulator in Memory
	BRK                 ; $87BE: $00 - Force Break
	INC $9D,X           ; $87BF: $F6 $9D - Increment Memory by One
	LDA $02E0,X         ; $87C1: $BD $E0 $02 - Load Accumulator with Memory
	BNE $15             ; $87C4: $D0 $15 - Branch on Result not Zero
	DEC $0300,X         ; $87C6: $DE $00 $03 - Decrement Memory by One
	BNE $08             ; $87C9: $D0 $08 - Branch on Result not Zero
	INC $02E0,X         ; $87CB: $FE $E0 $02 - Increment Memory by One
	LDA #$FF            ; $87CE: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $87D0: $9D $A0 $02 - Store Accumulator in Memory
	JSR $87E9           ; $87D3: $20 $E9 $87 - Jump to New Location Saving Return Address
	BEQ $0E             ; $87D6: $F0 $0E - Branch on Result Zero
	JMP $FA26           ; $87D8: $4C $26 $FA - Jump to New Location
	LDA #$03            ; $87DB: $A9 $03 - Load Accumulator with Memory
	JSR $8BD1           ; $87DD: $20 $D1 $8B - Jump to New Location Saving Return Address
	JSR $A9C4           ; $87E0: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $8B60           ; $87E3: $20 $60 $8B - Jump to New Location Saving Return Address
	JMP $D8CC           ; $87E6: $4C $CC $D8 - Jump to New Location
	TXA                 ; $87E9: $8A - Transfer Index X to Accumulator
	CLC                 ; $87EA: $18 - Clear Carry Flag
	ADC $0C             ; $87EB: $65 $0C - Add Memory to Accumulator with Carry
	CLC #$01            ; $87ED: $29 $01 - Clear Carry Flag
	RTS                 ; $87EF: $60 - Return from Subroutine
	TXA                 ; $87F0: $8A - Transfer Index X to Accumulator
	CLC                 ; $87F1: $18 - Clear Carry Flag
	ADC $0C             ; $87F2: $65 $0C - Add Memory to Accumulator with Carry
	CLC #$03            ; $87F4: $29 $03 - Clear Carry Flag
	RTS                 ; $87F6: $60 - Return from Subroutine
	TXA                 ; $87F7: $8A - Transfer Index X to Accumulator
	CLC                 ; $87F8: $18 - Clear Carry Flag
	ADC $0C             ; $87F9: $65 $0C - Add Memory to Accumulator with Carry
	CLC #$07            ; $87FB: $29 $07 - Clear Carry Flag
	RTS                 ; $87FD: $60 - Return from Subroutine
	TXA                 ; $87FE: $8A - Transfer Index X to Accumulator
	ASL A               ; $87FF: $0A - Shift Left One Bit
	CLC                 ; $8800: $18 - Clear Carry Flag
	ADC $0C             ; $8801: $65 $0C - Add Memory to Accumulator with Carry
	CLC #$0F            ; $8803: $29 $0F - Clear Carry Flag
	RTS                 ; $8805: $60 - Return from Subroutine
	TXA                 ; $8806: $8A - Transfer Index X to Accumulator
	CLC #$03            ; $8807: $29 $03 - Clear Carry Flag
	CLC                 ; $8809: $18 - Clear Carry Flag
	ADC $0D             ; $880A: $65 $0D - Add Memory to Accumulator with Carry
	TAY                 ; $880C: $A8 - Transfer Accumulator to Index Y
	LDA $9A0B,Y         ; $880D: $B9 $0B $9A - Load Accumulator with Memory
	RTS                 ; $8810: $60 - Return from Subroutine
	BIT $6F             ; $8811: $24 $6F - Test Bits in Memory with Accumulator
	BVC $01             ; $8813: $50 $01 - Branch on Overflow Clear
	DEY                 ; $8815: $88 - Decrement Index Y by One
	TYA                 ; $8816: $98 - Transfer Index Y to Accumulator
	BEQ $D0             ; $8817: $F0 $D0 - Branch on Result Zero
	DEY                 ; $8819: $88 - Decrement Index Y by One
	BEQ $D4             ; $881A: $F0 $D4 - Branch on Result Zero
	DEY                 ; $881C: $88 - Decrement Index Y by One
	BEQ $D8             ; $881D: $F0 $D8 - Branch on Result Zero
	RTS                 ; $881F: $60 - Return from Subroutine
	JSR $CD43           ; $8820: $20 $43 $CD - Jump to New Location Saving Return Address
	LDA $4A,X           ; $8823: $B5 $4A $38 - Load Accumulator with Memory
	SBC #$07            ; $8826: $E9 $07 - Subtract Memory from Accumulator with Borrow
	CMP #$F2            ; $8828: $C9 $F2 - Compare Memory with Accumulator
	BCS $07             ; $882A: $B0 $07 - Branch on Carry Set
	JSR $8BE5           ; $882C: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$F0            ; $882F: $C9 $F0 - Compare Memory with Accumulator
	BCC $05             ; $8831: $90 $05 - Branch on Carry Clear
	LDA #$00            ; $8833: $A9 $00 - Load Accumulator with Memory
	STA $0200,X         ; $8835: $9D $00 $02 - Store Accumulator in Memory
	RTS                 ; $8838: $60 - Return from Subroutine
	STA $08             ; $8839: $85 $08 - Store Accumulator in Memory
	LDA $0360,X         ; $883B: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $883E: $38 - Set Carry Flag
	SBC $08             ; $883F: $E5 $08 - Subtract Memory from Accumulator with Borrow
	CMP #$00            ; $8841: $C9 $00 - Compare Memory with Accumulator
	BPL $05             ; $8843: $10 $05 - Branch on Result Plus
	EOR #$FF            ; $8845: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $8847: $38 - Set Carry Flag
	ADC #$00            ; $8848: $69 $00 - Add Memory to Accumulator with Carry
	STA $08             ; $884A: $85 $08 - Store Accumulator in Memory
	LDA $4A,X           ; $884C: $B5 $4A $38 - Load Accumulator with Memory
	SBC $09             ; $884F: $E5 $09 - Subtract Memory from Accumulator with Borrow
	CMP #$00            ; $8851: $C9 $00 - Compare Memory with Accumulator
	BPL $05             ; $8853: $10 $05 - Branch on Result Plus
	EOR #$FF            ; $8855: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $8857: $38 - Set Carry Flag
	ADC #$00            ; $8858: $69 $00 - Add Memory to Accumulator with Carry
	CLC                 ; $885A: $18 - Clear Carry Flag
	ADC $08             ; $885B: $65 $08 - Add Memory to Accumulator with Carry
	BCC $02             ; $885D: $90 $02 - Branch on Carry Clear
	LDA #$FF            ; $885F: $A9 $FF - Load Accumulator with Memory
	RTS                 ; $8861: $60 - Return from Subroutine
	LDA #$FF            ; $8862: $A9 $FF - Load Accumulator with Memory
	STA $0A             ; $8864: $85 $0A - Store Accumulator in Memory
	LDY #$03            ; $8866: $A0 $03 - Load Index Y with Memory
	STY $0B             ; $8868: $84 $0B - Sore Index Y in Memory
	JSR $CFA8           ; $886A: $20 $A8 $CF - Jump to New Location Saving Return Address
	BCS $13             ; $886D: $B0 $13 - Branch on Carry Set
	LDA $004A,Y         ; $886F: $B9 $4A $00 - Load Accumulator with Memory
	STA $09             ; $8872: $85 $09 - Store Accumulator in Memory
	LDA $0360,Y         ; $8874: $B9 $60 $03 - Load Accumulator with Memory
	JSR $8839           ; $8877: $20 $39 $88 - Jump to New Location Saving Return Address
	CMP $0A             ; $887A: $C5 $0A - Compare Memory with Accumulator
	BCS $04             ; $887C: $B0 $04 - Branch on Carry Set
	STA $0A             ; $887E: $85 $0A - Store Accumulator in Memory
	STY $0B             ; $8880: $84 $0B - Sore Index Y in Memory
	DEY                 ; $8882: $88 - Decrement Index Y by One
	BPL $E5             ; $8883: $10 $E5 - Branch on Result Plus
	LDY $0B             ; $8885: $A4 $0B - Load Index Y with Memory
	LDA $0A             ; $8887: $A5 $0A - Load Accumulator with Memory
	RTS                 ; $8889: $60 - Return from Subroutine
	LDA #$04            ; $888A: $A9 $04 - Load Accumulator with Memory
	STA $08             ; $888C: $85 $08 - Store Accumulator in Memory
	JSR $9FDE           ; $888E: $20 $DE $9F - Jump to New Location Saving Return Address
	LSR A               ; $8891: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $8894: $A8 - Transfer Accumulator to Index Y
	LDA $0200,Y         ; $8895: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $07             ; $8898: $F0 $07 - Branch on Result Zero
	LDA $0088,Y         ; $889A: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$03            ; $889D: $C9 $03 - Compare Memory with Accumulator
	BCC $0C             ; $889F: $90 $0C - Branch on Carry Clear
	INY                 ; $88A1: $C8 - Increment Index Y by One
	CPY #$04            ; $88A2: $C0 $04 - Compare Memory and Index Y
	BNE $02             ; $88A4: $D0 $02 - Branch on Result not Zero
	LDY #$00            ; $88A6: $A0 $00 - Load Index Y with Memory
	DEC $08             ; $88A8: $C6 $08 - Decrement Memory by One
	BNE $E9             ; $88AA: $D0 $E9 - Branch on Result not Zero
	SEC                 ; $88AC: $38 - Set Carry Flag
	RTS                 ; $88AD: $60 - Return from Subroutine
	JSR $88B4           ; $88AE: $20 $B4 $88 - Jump to New Location Saving Return Address
	JMP $88D6           ; $88B1: $4C $D6 $88 - Jump to New Location
	STA $08             ; $88B4: $85 $08 - Store Accumulator in Memory
	LDA $0260,X         ; $88B6: $BD $60 $02 - Load Accumulator with Memory
	BMI $0F             ; $88B9: $30 $0F - Branch on Result Minus
	BNE $05             ; $88BB: $D0 $05 - Branch on Result not Zero
	LDA $0280,X         ; $88BD: $BD $80 $02 - Load Accumulator with Memory
	BEQ $07             ; $88C0: $F0 $07 - Branch on Result Zero
	LDA $08             ; $88C2: $A5 $08 - Load Accumulator with Memory
	JSR $8BAD           ; $88C4: $20 $AD $8B - Jump to New Location Saving Return Address
	BCC $08             ; $88C7: $90 $08 - Branch on Carry Clear
	RTS                 ; $88C9: $60 - Return from Subroutine
	LDA $08             ; $88CA: $A5 $08 - Load Accumulator with Memory
	JSR $8B9D           ; $88CC: $20 $9D $8B - Jump to New Location Saving Return Address
	BCC $F8             ; $88CF: $90 $F8 - Branch on Carry Clear
	JMP $A860           ; $88D1: $4C $60 $A8 - Jump to New Location
	STA $08             ; $88D4: $85 $08 - Store Accumulator in Memory
	LDA $02A0,X         ; $88D6: $BD $A0 $02 - Load Accumulator with Memory
	BMI $10             ; $88D9: $30 $10 - Branch on Result Minus
	BNE $05             ; $88DB: $D0 $05 - Branch on Result not Zero
	LDA $02C0,X         ; $88DD: $BD $C0 $02 - Load Accumulator with Memory
	BEQ $13             ; $88E0: $F0 $13 - Branch on Result Zero
	LDA $08             ; $88E2: $A5 $08 - Load Accumulator with Memory
	JSR $8BD1           ; $88E4: $20 $D1 $8B - Jump to New Location Saving Return Address
	BCC $09             ; $88E7: $90 $09 - Branch on Carry Clear
	BCS $0A             ; $88E9: $B0 $0A - Branch on Carry Set
	LDA $08             ; $88EB: $A5 $08 - Load Accumulator with Memory
	JSR $8BC1           ; $88ED: $20 $C1 $8B - Jump to New Location Saving Return Address
	BCC $03             ; $88F0: $90 $03 - Branch on Carry Clear
	JMP $A869           ; $88F2: $4C $69 $A8 - Jump to New Location
	RTS                 ; $88F5: $60 - Return from Subroutine
	STA $08             ; $88F6: $85 $08 - Store Accumulator in Memory
	STY $09             ; $88F8: $84 $09 - Sore Index Y in Memory
	LDA $4A,X           ; $88FA: $B5 $4A $C5 - Load Accumulator with Memory
	ASL A               ; $88FD: $0A - Shift Left One Bit
	BCC $08             ; $88FE: $90 $08 - Branch on Carry Clear
	LDA $08             ; $8900: $A5 $08 - Load Accumulator with Memory
	JSR $8BAD           ; $8902: $20 $AD $8B - Jump to New Location Saving Return Address
	JMP $890D           ; $8905: $4C $0D $89 - Jump to New Location
	LDA $08             ; $8908: $A5 $08 - Load Accumulator with Memory
	JSR $8B9D           ; $890A: $20 $9D $8B - Jump to New Location Saving Return Address
	LDA $09             ; $890D: $A5 $09 - Load Accumulator with Memory
	SEC                 ; $890F: $38 - Set Carry Flag
	SBC $CC             ; $8910: $E5 $CC - Subtract Memory from Accumulator with Borrow
	STA $09             ; $8912: $85 $09 - Store Accumulator in Memory
	JSR $8BE5           ; $8914: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP $09             ; $8917: $C5 $09 - Compare Memory with Accumulator
	BCC $05             ; $8919: $90 $05 - Branch on Carry Clear
	LDA $08             ; $891B: $A5 $08 - Load Accumulator with Memory
	JMP $8BD1           ; $891D: $4C $D1 $8B - Jump to New Location
	LDA $08             ; $8920: $A5 $08 - Load Accumulator with Memory
	JMP $8BC1           ; $8922: $4C $C1 $8B - Jump to New Location
	SEC                 ; $8925: $38 - Set Carry Flag
	LDA #$00            ; $8926: $A9 $00 - Load Accumulator with Memory
	SBC $0280,X         ; $8928: $FD $80 $02 - Subtract Memory from Accumulator with Borrow
	STA $0280,X         ; $892B: $9D $80 $02 - Store Accumulator in Memory
	LDA #$00            ; $892E: $A9 $00 - Load Accumulator with Memory
	SBC $0260,X         ; $8930: $FD $60 $02 - Subtract Memory from Accumulator with Borrow
	STA $0260,X         ; $8933: $9D $60 $02 - Store Accumulator in Memory
	RTS                 ; $8936: $60 - Return from Subroutine
	JSR $A884           ; $8937: $20 $84 $A8 - Jump to New Location Saving Return Address
	BEQ $11             ; $893A: $F0 $11 - Branch on Result Zero
	SEC                 ; $893C: $38 - Set Carry Flag
	LDA #$00            ; $893D: $A9 $00 - Load Accumulator with Memory
	SBC $0280,Y         ; $893F: $F9 $80 $02 - Subtract Memory from Accumulator with Borrow
	STA $0280,Y         ; $8942: $99 $80 $02 - Store Accumulator in Memory
	LDA #$00            ; $8945: $A9 $00 - Load Accumulator with Memory
	SBC $0260,Y         ; $8947: $F9 $60 $02 - Subtract Memory from Accumulator with Borrow
	STA $0260,Y         ; $894A: $99 $60 $02 - Store Accumulator in Memory
	RTS                 ; $894D: $60 - Return from Subroutine
	SEC                 ; $894E: $38 - Set Carry Flag
	LDA #$00            ; $894F: $A9 $00 - Load Accumulator with Memory
	SBC $02C0,X         ; $8951: $FD $C0 $02 - Subtract Memory from Accumulator with Borrow
	STA $02C0,X         ; $8954: $9D $C0 $02 - Store Accumulator in Memory
	LDA #$00            ; $8957: $A9 $00 - Load Accumulator with Memory
	SBC $02A0,X         ; $8959: $FD $A0 $02 - Subtract Memory from Accumulator with Borrow
	STA $02A0,X         ; $895C: $9D $A0 $02 - Store Accumulator in Memory
	RTS                 ; $895F: $60 - Return from Subroutine
	STA $0280,X         ; $8960: $9D $80 $02 - Store Accumulator in Memory
	LDA #$00            ; $8963: $A9 $00 - Load Accumulator with Memory
	STA $0260,X         ; $8965: $9D $60 $02 - Store Accumulator in Memory
	JSR $A884           ; $8968: $20 $84 $A8 - Jump to New Location Saving Return Address
	BEQ $03             ; $896B: $F0 $03 - Branch on Result Zero
	JSR $8925           ; $896D: $20 $25 $89 - Jump to New Location Saving Return Address
	JSR $87E9           ; $8970: $20 $E9 $87 - Jump to New Location Saving Return Address
	BEQ $1F             ; $8973: $F0 $1F - Branch on Result Zero
	LDA $0260,X         ; $8975: $BD $60 $02 - Load Accumulator with Memory
	BMI $08             ; $8978: $30 $08 - Branch on Result Minus
	LDA $4A,X           ; $897A: $B5 $4A $C9 - Load Accumulator with Memory
	INC $B0,X           ; $897D: $F6 $B0 - Increment Memory by One
	BCC $06             ; $8980: $90 $06 - Branch on Carry Clear
	LDA $4A,X           ; $8982: $B5 $4A $C9 - Load Accumulator with Memory
	ORA ($90),Y         ; $8985: $11 $90 $07 - OR Memory with Accumulator
	LDA $0380,X         ; $8988: $BD $80 $03 - Load Accumulator with Memory
	CLC #$0C            ; $898B: $29 $0C - Clear Carry Flag
	BEQ $05             ; $898D: $F0 $05 - Branch on Result Zero
	JSR $A872           ; $898F: $20 $72 $A8 - Jump to New Location Saving Return Address
	LDA #$01            ; $8992: $A9 $01 - Load Accumulator with Memory
	RTS                 ; $8994: $60 - Return from Subroutine
	SEC                 ; $8995: $38 - Set Carry Flag
	ROR $0A             ; $8996: $66 $0A - Rotate One Bit Right
	PHA                 ; $8998: $48 - Push Accumulator on Stack
	JSR $8BE5           ; $8999: $20 $E5 $8B - Jump to New Location Saving Return Address
	STA $09             ; $899C: $85 $09 - Store Accumulator in Memory
	TYA                 ; $899E: $98 - Transfer Index Y to Accumulator
	SEC                 ; $899F: $38 - Set Carry Flag
	SBC $CC             ; $89A0: $E5 $CC - Subtract Memory from Accumulator with Borrow
	SEC                 ; $89A2: $38 - Set Carry Flag
	SBC $09             ; $89A3: $E5 $09 - Subtract Memory from Accumulator with Borrow
	JSR $89BE           ; $89A5: $20 $BE $89 - Jump to New Location Saving Return Address
	STA $02A0,X         ; $89A8: $9D $A0 $02 - Store Accumulator in Memory
	TYA                 ; $89AB: $98 - Transfer Index Y to Accumulator
	STA $02C0,X         ; $89AC: $9D $C0 $02 - Store Accumulator in Memory
	PLA                 ; $89AF: $68 - Pull Accumulator from Stack
	SEC                 ; $89B0: $38 - Set Carry Flag
	SBC $4A,X           ; $89B1: $F5 $4A - Subtract Memory from Accumulator with Borrow
	JSR $89BE           ; $89B3: $20 $BE $89 - Jump to New Location Saving Return Address
	STA $0260,X         ; $89B6: $9D $60 $02 - Store Accumulator in Memory
	TYA                 ; $89B9: $98 - Transfer Index Y to Accumulator
	STA $0280,X         ; $89BA: $9D $80 $02 - Store Accumulator in Memory
	RTS                 ; $89BD: $60 - Return from Subroutine
	BCS $0A             ; $89BE: $B0 $0A - Branch on Carry Set
	EOR #$FF            ; $89C0: $49 $FF - Exclusive-OR Memory with Accumulator
	ADC #$01            ; $89C2: $69 $01 - Add Memory to Accumulator with Carry
	JSR $89CA           ; $89C4: $20 $CA $89 - Jump to New Location Saving Return Address
	JMP $89E1           ; $89C7: $4C $E1 $89 - Jump to New Location
	STY $08             ; $89CA: $84 $08 - Sore Index Y in Memory
	LDY #$03            ; $89CC: $A0 $03 - Load Index Y with Memory
	BIT $0A             ; $89CE: $24 $0A - Test Bits in Memory with Accumulator
	BMI $01             ; $89D0: $30 $01 - Branch on Result Minus
	INY                 ; $89D2: $C8 - Increment Index Y by One
	CMP #$20            ; $89D3: $C9 $20 - Compare Memory with Accumulator
	BCC $01             ; $89D5: $90 $01 - Branch on Carry Clear
	INY                 ; $89D7: $C8 - Increment Index Y by One
	LSR A               ; $89D8: $4A $66 - Shift One Bit Right (Memory or Accumulator)
	PHP                 ; $89DA: $08 - Push Processor Status on Stack
	DEY                 ; $89DB: $88 - Decrement Index Y by One
	BNE $FA             ; $89DC: $D0 $FA - Branch on Result not Zero
	LDY $08             ; $89DE: $A4 $08 - Load Index Y with Memory
	RTS                 ; $89E0: $60 - Return from Subroutine
	STY $08             ; $89E1: $84 $08 - Sore Index Y in Memory
	STA $09             ; $89E3: $85 $09 - Store Accumulator in Memory
	SEC                 ; $89E5: $38 - Set Carry Flag
	LDA #$00            ; $89E6: $A9 $00 - Load Accumulator with Memory
	SBC $08             ; $89E8: $E5 $08 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $89EA: $A8 - Transfer Accumulator to Index Y
	LDA #$00            ; $89EB: $A9 $00 - Load Accumulator with Memory
	SBC $09             ; $89ED: $E5 $09 - Subtract Memory from Accumulator with Borrow
	RTS                 ; $89EF: $60 - Return from Subroutine
	LDY #$00            ; $89F0: $A0 $00 - Load Index Y with Memory
	LDA #$04            ; $89F2: $A9 $04 - Load Accumulator with Memory
	JSR $89E1           ; $89F4: $20 $E1 $89 - Jump to New Location Saving Return Address
	STY $0B             ; $89F7: $84 $0B - Sore Index Y in Memory
	STA $0A             ; $89F9: $85 $0A - Store Accumulator in Memory
	JSR $8A1A           ; $89FB: $20 $1A $8A - Jump to New Location Saving Return Address
	STA $0260,X         ; $89FE: $9D $60 $02 - Store Accumulator in Memory
	TYA                 ; $8A01: $98 - Transfer Index Y to Accumulator
	STA $0280,X         ; $8A02: $9D $80 $02 - Store Accumulator in Memory
	JSR $8A10           ; $8A05: $20 $10 $8A - Jump to New Location Saving Return Address
	STA $02A0,X         ; $8A08: $9D $A0 $02 - Store Accumulator in Memory
	TYA                 ; $8A0B: $98 - Transfer Index Y to Accumulator
	STA $02C0,X         ; $8A0C: $9D $C0 $02 - Store Accumulator in Memory
	RTS                 ; $8A0F: $60 - Return from Subroutine
	LDY $02C0,X         ; $8A10: $BC $C0 $02 - Load Index Y with Memory
	LDA $02A0,X         ; $8A13: $BD $A0 $02 - Load Accumulator with Memory
	BMI $19             ; $8A16: $30 $19 - Branch on Result Minus
	BPL $08             ; $8A18: $10 $08 - Branch on Result Plus
	LDY $0280,X         ; $8A1A: $BC $80 $02 - Load Index Y with Memory
	LDA $0260,X         ; $8A1D: $BD $60 $02 - Load Accumulator with Memory
	BMI $0F             ; $8A20: $30 $0F - Branch on Result Minus
	CMP $09             ; $8A22: $C5 $09 - Compare Memory with Accumulator
	BCC $0A             ; $8A24: $90 $0A - Branch on Carry Clear
	BNE $04             ; $8A26: $D0 $04 - Branch on Result not Zero
	CPY $08             ; $8A28: $C4 $08 - Compare Memory and Index Y
	BCC $04             ; $8A2A: $90 $04 - Branch on Carry Clear
	LDA $09             ; $8A2C: $A5 $09 - Load Accumulator with Memory
	LDY $08             ; $8A2E: $A4 $08 - Load Index Y with Memory
	RTS                 ; $8A30: $60 - Return from Subroutine
	CMP $0A             ; $8A31: $C5 $0A - Compare Memory with Accumulator
	BCC $06             ; $8A33: $90 $06 - Branch on Carry Clear
	BNE $08             ; $8A35: $D0 $08 - Branch on Result not Zero
	CPY $0B             ; $8A37: $C4 $0B - Compare Memory and Index Y
	BCS $04             ; $8A39: $B0 $04 - Branch on Carry Set
	LDA $0A             ; $8A3B: $A5 $0A - Load Accumulator with Memory
	LDY $0B             ; $8A3D: $A4 $0B - Load Index Y with Memory
	RTS                 ; $8A3F: $60 - Return from Subroutine
	STA $08             ; $8A40: $85 $08 - Store Accumulator in Memory
	LDA #$01            ; $8A42: $A9 $01 - Load Accumulator with Memory
	STA $0B             ; $8A44: $85 $0B - Store Accumulator in Memory
	BNE $04             ; $8A46: $D0 $04 - Branch on Result not Zero
	STA $08             ; $8A48: $85 $08 - Store Accumulator in Memory
	LDA #$00            ; $8A4A: $A9 $00 - Load Accumulator with Memory
	STA $0B             ; $8A4C: $85 $0B - Store Accumulator in Memory
	LDA $08             ; $8A4E: $A5 $08 - Load Accumulator with Memory
	STA $0461           ; $8A50: $8D $61 $04 - Store Accumulator in Memory
	LDA $0440,Y         ; $8A53: $B9 $40 $04 - Load Accumulator with Memory
	CMP $08             ; $8A56: $C5 $08 - Compare Memory with Accumulator
	BCS $06             ; $8A58: $B0 $06 - Branch on Carry Set
	LDA $0440,Y         ; $8A5A: $B9 $40 $04 - Load Accumulator with Memory
	STA $0461           ; $8A5D: $8D $61 $04 - Store Accumulator in Memory
	SEC                 ; $8A60: $38 - Set Carry Flag
	SBC $08             ; $8A61: $E5 $08 - Subtract Memory from Accumulator with Borrow
	BEQ $10             ; $8A63: $F0 $10 - Branch on Result Zero
	BCC $0E             ; $8A65: $90 $0E - Branch on Carry Clear
	STA $0440,Y         ; $8A67: $99 $40 $04 - Store Accumulator in Memory
	LDA #$0A            ; $8A6A: $A9 $0A - Load Accumulator with Memory
	STA $03B4,Y         ; $8A6C: $99 $B4 $03 - Store Accumulator in Memory
	LDA #$00            ; $8A6F: $A9 $00 - Load Accumulator with Memory
	STA $0340,Y         ; $8A71: $99 $40 $03 - Store Accumulator in Memory
	RTS                 ; $8A74: $60 - Return from Subroutine
	LDA #$00            ; $8A75: $A9 $00 - Load Accumulator with Memory
	STA $0440,Y         ; $8A77: $99 $40 $04 - Store Accumulator in Memory
	STY $0460           ; $8A7A: $8C $60 $04 - Sore Index Y in Memory
	LDA #$3E            ; $8A7D: $A9 $3E - Load Accumulator with Memory
	STA $08             ; $8A7F: $85 $08 - Store Accumulator in Memory
	LDA $0200,Y         ; $8A81: $B9 $00 $02 - Load Accumulator with Memory
	TAY                 ; $8A84: $A8 - Transfer Accumulator to Index Y
	LDA $BD67,Y         ; $8A85: $B9 $67 $BD - Load Accumulator with Memory
	BEQ $04             ; $8A88: $F0 $04 - Branch on Result Zero
	LDA #$23            ; $8A8A: $A9 $23 - Load Accumulator with Memory
	STA $08             ; $8A8C: $85 $08 - Store Accumulator in Memory
	TXA                 ; $8A8E: $8A - Transfer Index X to Accumulator
	PHA                 ; $8A8F: $48 - Push Accumulator on Stack
	LDX $0A             ; $8A90: $A6 $0A - Load Index X with Memory
	BMI $10             ; $8A92: $30 $10 - Branch on Result Minus
	LDA $BE55,Y         ; $8A94: $B9 $55 $BE - Load Accumulator with Memory
	BMI $0B             ; $8A97: $30 $0B - Branch on Result Minus
	PHA                 ; $8A99: $48 - Push Accumulator on Stack
	JSR $F213           ; $8A9A: $20 $13 $F2 - Jump to New Location Saving Return Address
	LDX $0460           ; $8A9D: $AE $60 $04 - Load Index X with Memory
	PLA                 ; $8AA0: $68 - Pull Accumulator from Stack
	JSR $F25B           ; $8AA1: $20 $5B $F2 - Jump to New Location Saving Return Address
	LDA $0B             ; $8AA4: $A5 $0B - Load Accumulator with Memory
	BEQ $0B             ; $8AA6: $F0 $0B - Branch on Result Zero
	LDA #$0D            ; $8AA8: $A9 $0D - Load Accumulator with Memory
	JSR $980F           ; $8AAA: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$32            ; $8AAD: $A9 $32 - Load Accumulator with Memory
	STA $08             ; $8AAF: $85 $08 - Store Accumulator in Memory
	BNE $05             ; $8AB1: $D0 $05 - Branch on Result not Zero
	LDA #$08            ; $8AB3: $A9 $08 - Load Accumulator with Memory
	JSR $980F           ; $8AB5: $20 $0F $98 - Jump to New Location Saving Return Address
	LDX $0460           ; $8AB8: $AE $60 $04 - Load Index X with Memory
	TXA                 ; $8ABB: $8A - Transfer Index X to Accumulator
	PHA                 ; $8ABC: $48 - Push Accumulator on Stack
	LDA $08             ; $8ABD: $A5 $08 - Load Accumulator with Memory
	JSR $8B2E           ; $8ABF: $20 $2E $8B - Jump to New Location Saving Return Address
	JSR $8833           ; $8AC2: $20 $33 $88 - Jump to New Location Saving Return Address
	PLA                 ; $8AC5: $68 - Pull Accumulator from Stack
	TAY                 ; $8AC6: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $8AC7: $68 - Pull Accumulator from Stack
	TAX                 ; $8AC8: $AA - Transfer Accumulator to Index X
	RTS                 ; $8AC9: $60 - Return from Subroutine
	BCS $27             ; $8ACA: $B0 $27 - Branch on Carry Set
	JSR $CF91           ; $8ACC: $20 $91 $CF - Jump to New Location Saving Return Address
	BCS $56             ; $8ACF: $B0 $56 - Branch on Carry Set
	JSR $9809           ; $8AD1: $20 $09 $98 - Jump to New Location Saving Return Address
	LDA $8C,X           ; $8AD4: $B5 $8C $F0 - Load Accumulator with Memory
	ORA ($A9),Y         ; $8AD7: $11 $A9 $00 - OR Memory with Accumulator
	STA $8C,X           ; $8ADA: $95 $8C - Store Accumulator in Memory
	STA $90,X           ; $8ADC: $95 $90 - Store Accumulator in Memory
	JSR $8B0E           ; $8ADE: $20 $0E $8B - Jump to New Location Saving Return Address
	BCC $44             ; $8AE1: $90 $44 - Branch on Carry Clear
	LDA #$01            ; $8AE3: $A9 $01 - Load Accumulator with Memory
	STA $02E0,Y         ; $8AE5: $99 $E0 $02 - Store Accumulator in Memory
	RTS                 ; $8AE8: $60 - Return from Subroutine
	DEC $0440,X         ; $8AE9: $DE $40 $04 - Decrement Memory by One
	BMI $02             ; $8AEC: $30 $02 - Branch on Result Minus
	BNE $1E             ; $8AEE: $D0 $1E - Branch on Result not Zero
	JMP $CFF4           ; $8AF0: $4C $F4 $CF - Jump to New Location
	JSR $9809           ; $8AF3: $20 $09 $98 - Jump to New Location Saving Return Address
	DEC $0440,X         ; $8AF6: $DE $40 $04 - Decrement Memory by One
	BEQ $F5             ; $8AF9: $F0 $F5 - Branch on Result Zero
	BMI $F3             ; $8AFB: $30 $F3 - Branch on Result Minus
	LDA $0360,X         ; $8AFD: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $8B00: $38 - Set Carry Flag
	SBC #$05            ; $8B01: $E9 $05 - Subtract Memory from Accumulator with Borrow
	STA $0360,X         ; $8B03: $9D $60 $03 - Store Accumulator in Memory
	LDA #$FB            ; $8B06: $A9 $FB - Load Accumulator with Memory
	STA $02A0,X         ; $8B08: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $8B0B: $9D $C0 $02 - Store Accumulator in Memory
	LDA #$6E            ; $8B0E: $A9 $6E - Load Accumulator with Memory
	STA $053E,X         ; $8B10: $9D $3E $05 - Store Accumulator in Memory
	JSR $8B4B           ; $8B13: $20 $4B $8B - Jump to New Location Saving Return Address
	BCC $0F             ; $8B16: $90 $0F - Branch on Carry Clear
	LDA #$FF            ; $8B18: $A9 $FF - Load Accumulator with Memory
	STA $02E0,Y         ; $8B1A: $99 $E0 $02 - Store Accumulator in Memory
	LDA #$FD            ; $8B1D: $A9 $FD - Load Accumulator with Memory
	STA $02A0,Y         ; $8B1F: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$60            ; $8B22: $A9 $60 - Load Accumulator with Memory
	STA $02C0,Y         ; $8B24: $99 $C0 $02 - Store Accumulator in Memory
	RTS                 ; $8B27: $60 - Return from Subroutine
	LDA #$34            ; $8B28: $A9 $34 - Load Accumulator with Memory
	BNE $02             ; $8B2A: $D0 $02 - Branch on Result not Zero
	LDA #$32            ; $8B2C: $A9 $32 - Load Accumulator with Memory
	LDY #$00            ; $8B2E: $A0 $00 - Load Index Y with Memory
	STY $09             ; $8B30: $84 $09 - Sore Index Y in Memory
	STA $08             ; $8B32: $85 $08 - Store Accumulator in Memory
	STX $0A             ; $8B34: $86 $0A - Store Index X in Memory
	TYA                 ; $8B36: $98 - Transfer Index Y to Accumulator
	CLC                 ; $8B37: $18 - Clear Carry Flag
	ADC $0360,X         ; $8B38: $7D $60 $03 - Add Memory to Accumulator with Carry
	TAY                 ; $8B3B: $A8 - Transfer Accumulator to Index Y
	LDA $09             ; $8B3C: $A5 $09 - Load Accumulator with Memory
	CLC                 ; $8B3E: $18 - Clear Carry Flag
	ADC $4A,X           ; $8B3F: $75 $4A - Add Memory to Accumulator with Carry
	LDX $08             ; $8B41: $A6 $08 - Load Index X with Memory
	JSR $A8ED           ; $8B43: $20 $ED $A8 - Jump to New Location Saving Return Address
	TXA                 ; $8B46: $8A - Transfer Index X to Accumulator
	TAY                 ; $8B47: $A8 - Transfer Accumulator to Index Y
	LDX $0A             ; $8B48: $A6 $0A - Load Index X with Memory
	RTS                 ; $8B4A: $60 - Return from Subroutine
	LDA #$2B            ; $8B4B: $A9 $2B - Load Accumulator with Memory
	STA $08             ; $8B4D: $85 $08 - Store Accumulator in Memory
	STX $09             ; $8B4F: $86 $09 - Store Index X in Memory
	LDA $4A,X           ; $8B51: $B5 $4A $BC - Load Accumulator with Memory
	RTS                 ; $8B54: $60 - Return from Subroutine
	LDX $08             ; $8B56: $A6 $08 - Load Index X with Memory
	JSR $A8E3           ; $8B58: $20 $E3 $A8 - Jump to New Location Saving Return Address
	TXA                 ; $8B5B: $8A - Transfer Index X to Accumulator
	TAY                 ; $8B5C: $A8 - Transfer Accumulator to Index Y
	LDX $09             ; $8B5D: $A6 $09 - Load Index X with Memory
	RTS                 ; $8B5F: $60 - Return from Subroutine
	JSR $87E9           ; $8B60: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $19             ; $8B63: $D0 $19 - Branch on Result not Zero
	LDA $0200,X         ; $8B65: $BD $00 $02 - Load Accumulator with Memory
	JSR $A2B8           ; $8B68: $20 $B8 $A2 - Jump to New Location Saving Return Address
	JSR $A28A           ; $8B6B: $20 $8A $A2 - Jump to New Location Saving Return Address
	BCS $0E             ; $8B6E: $B0 $0E - Branch on Carry Set
	JSR $CF9D           ; $8B70: $20 $9D $CF - Jump to New Location Saving Return Address
	BCS $F6             ; $8B73: $B0 $F6 - Branch on Carry Set
	TXA                 ; $8B75: $8A - Transfer Index X to Accumulator
	PHA                 ; $8B76: $48 - Push Accumulator on Stack
	TYA                 ; $8B77: $98 - Transfer Index Y to Accumulator
	TAX                 ; $8B78: $AA - Transfer Accumulator to Index X
	JSR $8ACA           ; $8B79: $20 $CA $8A - Jump to New Location Saving Return Address
	PLA                 ; $8B7C: $68 - Pull Accumulator from Stack
	TAX                 ; $8B7D: $AA - Transfer Accumulator to Index X
	RTS                 ; $8B7E: $60 - Return from Subroutine
	JSR $87FE           ; $8B7F: $20 $FE $87 - Jump to New Location Saving Return Address
	BNE $18             ; $8B82: $D0 $18 - Branch on Result not Zero
	BEQ $05             ; $8B84: $F0 $05 - Branch on Result Zero
	JSR $87F7           ; $8B86: $20 $F7 $87 - Jump to New Location Saving Return Address
	BNE $11             ; $8B89: $D0 $11 - Branch on Result not Zero
	LDA #$41            ; $8B8B: $A9 $41 - Load Accumulator with Memory
	JSR $8B2E           ; $8B8D: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $0A             ; $8B90: $90 $0A - Branch on Carry Clear
	LDA #$01            ; $8B92: $A9 $01 - Load Accumulator with Memory
	STA $02A0,Y         ; $8B94: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$14            ; $8B97: $A9 $14 - Load Accumulator with Memory
	STA $02E0,Y         ; $8B99: $99 $E0 $02 - Store Accumulator in Memory
	RTS                 ; $8B9C: $60 - Return from Subroutine
	CLC                 ; $8B9D: $18 - Clear Carry Flag
	ADC $0280,X         ; $8B9E: $7D $80 $02 - Add Memory to Accumulator with Carry
	STA $0280,X         ; $8BA1: $9D $80 $02 - Store Accumulator in Memory
	LDA $0260,X         ; $8BA4: $BD $60 $02 - Load Accumulator with Memory
	ADC #$00            ; $8BA7: $69 $00 - Add Memory to Accumulator with Carry
	STA $0260,X         ; $8BA9: $9D $60 $02 - Store Accumulator in Memory
	RTS                 ; $8BAC: $60 - Return from Subroutine
	STA $0B             ; $8BAD: $85 $0B - Store Accumulator in Memory
	LDA $0280,X         ; $8BAF: $BD $80 $02 - Load Accumulator with Memory
	SEC                 ; $8BB2: $38 - Set Carry Flag
	SBC $0B             ; $8BB3: $E5 $0B - Subtract Memory from Accumulator with Borrow
	STA $0280,X         ; $8BB5: $9D $80 $02 - Store Accumulator in Memory
	LDA $0260,X         ; $8BB8: $BD $60 $02 - Load Accumulator with Memory
	SBC #$00            ; $8BBB: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $0260,X         ; $8BBD: $9D $60 $02 - Store Accumulator in Memory
	RTS                 ; $8BC0: $60 - Return from Subroutine
	CLC                 ; $8BC1: $18 - Clear Carry Flag
	ADC $02C0,X         ; $8BC2: $7D $C0 $02 - Add Memory to Accumulator with Carry
	STA $02C0,X         ; $8BC5: $9D $C0 $02 - Store Accumulator in Memory
	LDA $02A0,X         ; $8BC8: $BD $A0 $02 - Load Accumulator with Memory
	ADC #$00            ; $8BCB: $69 $00 - Add Memory to Accumulator with Carry
	STA $02A0,X         ; $8BCD: $9D $A0 $02 - Store Accumulator in Memory
	RTS                 ; $8BD0: $60 - Return from Subroutine
	STA $0B             ; $8BD1: $85 $0B - Store Accumulator in Memory
	LDA $02C0,X         ; $8BD3: $BD $C0 $02 - Load Accumulator with Memory
	SEC                 ; $8BD6: $38 - Set Carry Flag
	SBC $0B             ; $8BD7: $E5 $0B - Subtract Memory from Accumulator with Borrow
	STA $02C0,X         ; $8BD9: $9D $C0 $02 - Store Accumulator in Memory
	LDA $02A0,X         ; $8BDC: $BD $A0 $02 - Load Accumulator with Memory
	SBC #$00            ; $8BDF: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $02A0,X         ; $8BE1: $9D $A0 $02 - Store Accumulator in Memory
	RTS                 ; $8BE4: $60 - Return from Subroutine
	LDA $0360,X         ; $8BE5: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $8BE8: $38 - Set Carry Flag
	SBC $CC             ; $8BE9: $E5 $CC - Subtract Memory from Accumulator with Borrow
	RTS                 ; $8BEB: $60 - Return from Subroutine
	LDA #$29            ; $8BEC: $A9 $29 - Load Accumulator with Memory
	LDY #$0D            ; $8BEE: $A0 $0D - Load Index Y with Memory
	BNE $04             ; $8BF0: $D0 $04 - Branch on Result not Zero
	LDA #$41            ; $8BF2: $A9 $41 - Load Accumulator with Memory
	LDY #$00            ; $8BF4: $A0 $00 - Load Index Y with Memory
	STA $08             ; $8BF6: $85 $08 - Store Accumulator in Memory
	STY $DA             ; $8BF8: $84 $DA - Sore Index Y in Memory
	LDA $08             ; $8BFA: $A5 $08 - Load Accumulator with Memory
	CMP #$29            ; $8BFC: $C9 $29 - Compare Memory with Accumulator
	BEQ $07             ; $8BFE: $F0 $07 - Branch on Result Zero
	JSR $8B2E           ; $8C00: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $2B             ; $8C03: $90 $2B - Branch on Carry Clear
	BCS $05             ; $8C05: $B0 $05 - Branch on Carry Set
	JSR $8B4D           ; $8C07: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $24             ; $8C0A: $90 $24 - Branch on Carry Clear
	TXA                 ; $8C0C: $8A - Transfer Index X to Accumulator
	PHA                 ; $8C0D: $48 - Push Accumulator on Stack
	JSR $8C33           ; $8C0E: $20 $33 $8C - Jump to New Location Saving Return Address
	STA $0280,Y         ; $8C11: $99 $80 $02 - Store Accumulator in Memory
	TXA                 ; $8C14: $8A - Transfer Index X to Accumulator
	STA $0260,Y         ; $8C15: $99 $60 $02 - Store Accumulator in Memory
	JSR $8C31           ; $8C18: $20 $31 $8C - Jump to New Location Saving Return Address
	STA $02C0,Y         ; $8C1B: $99 $C0 $02 - Store Accumulator in Memory
	TXA                 ; $8C1E: $8A - Transfer Index X to Accumulator
	STA $02A0,Y         ; $8C1F: $99 $A0 $02 - Store Accumulator in Memory
	JSR $8C31           ; $8C22: $20 $31 $8C - Jump to New Location Saving Return Address
	CPX #$FC            ; $8C25: $E0 $FC - Compare Memory and Index Y
	BEQ $05             ; $8C27: $F0 $05 - Branch on Result Zero
	PLA                 ; $8C29: $68 - Pull Accumulator from Stack
	TAX                 ; $8C2A: $AA - Transfer Accumulator to Index X
	JMP $8BFA           ; $8C2B: $4C $FA $8B - Jump to New Location
	PLA                 ; $8C2E: $68 - Pull Accumulator from Stack
	TAX                 ; $8C2F: $AA - Transfer Accumulator to Index X
	RTS                 ; $8C30: $60 - Return from Subroutine
	INC $DA             ; $8C31: $E6 $DA - Increment Memory by One
	LDX $DA             ; $8C33: $A6 $DA - Load Index X with Memory
	LDA $8C46,X         ; $8C35: $BD $46 $8C - Load Accumulator with Memory
	PHA                 ; $8C38: $48 - Push Accumulator on Stack
	CLC #$07            ; $8C39: $29 $07 - Clear Carry Flag
	CMP #$04            ; $8C3B: $C9 $04 - Compare Memory with Accumulator
	BCC $02             ; $8C3D: $90 $02 - Branch on Carry Clear
	ORA #$F8            ; $8C3F: $09 $F8 - OR Memory with Accumulator
	TAX                 ; $8C41: $AA - Transfer Accumulator to Index X
	PLA                 ; $8C42: $68 - Pull Accumulator from Stack
	CLC #$F8            ; $8C43: $29 $F8 - Clear Carry Flag
	RTS                 ; $8C45: $60 - Return from Subroutine
	ORA $FF             ; $8C46: $05 $FF - OR Memory with Accumulator
	ROR $799A,X         ; $8C48: $7E $9A $79 - Rotate One Bit Right
	TXS                 ; $8C4B: $9A - Transfer Index X to Stack Register
	BRK                 ; $8C4D: $00 - Force Break
	ADC $8665,Y         ; $8C4E: $79 $65 $86 - Add Memory to Accumulator with Carry
	ADC $04             ; $8C51: $65 $04 - Add Memory to Accumulator with Carry
	BCC $28             ; $8C56: $90 $28 - Branch on Carry Clear
	CLV                 ; $8C58: $B8 - Clear Overflow Flag
	TAY                 ; $8C59: $A8 - Transfer Accumulator to Index Y
	BVC $A8             ; $8C5A: $50 $A8 - Branch on Overflow Clear
	PLP                 ; $8C5D: $28 - Pull Processor Status from Stack
	JSR $8C68           ; $8C62: $20 $68 $8C - Jump to New Location Saving Return Address
	JMP $8823           ; $8C65: $4C $23 $88 - Jump to New Location
	DEC $02E0,X         ; $8C68: $DE $E0 $02 - Decrement Memory by One
	BNE $05             ; $8C6B: $D0 $05 - Branch on Result not Zero
	PLA                 ; $8C6D: $68 - Pull Accumulator from Stack
	PLA                 ; $8C6E: $68 - Pull Accumulator from Stack
	JMP $8833           ; $8C6F: $4C $33 $88 - Jump to New Location
	RTS                 ; $8C72: $60 - Return from Subroutine
	LDA $02A0,X         ; $8C73: $BD $A0 $02 - Load Accumulator with Memory
	BMI $05             ; $8C76: $30 $05 - Branch on Result Minus
	LDA #$80            ; $8C78: $A9 $80 - Load Accumulator with Memory
	JSR $AB1C           ; $8C7A: $20 $1C $AB - Jump to New Location Saving Return Address
	JMP $A9EC           ; $8C7D: $4C $EC $A9 - Jump to New Location
	LDA $0200,Y         ; $8C80: $B9 $00 $02 - Load Accumulator with Memory
	CMP #$3A            ; $8C83: $C9 $3A - Compare Memory with Accumulator
	BEQ $02             ; $8C85: $F0 $02 - Branch on Result Zero
	CMP #$35            ; $8C87: $C9 $35 - Compare Memory with Accumulator
	RTS                 ; $8C89: $60 - Return from Subroutine
	BIT $6F             ; $8C8A: $24 $6F - Test Bits in Memory with Accumulator
	BPL $03             ; $8C8C: $10 $03 - Branch on Result Plus
	INC $0440,X         ; $8C8E: $FE $40 $04 - Increment Memory by One
	RTS                 ; $8C91: $60 - Return from Subroutine
	STX $08             ; $8C92: $86 $08 - Store Index X in Memory
	STA $09             ; $8C94: $85 $09 - Store Accumulator in Memory
	LDA $04FF           ; $8C96: $AD $FF $04 - Load Accumulator with Memory
	AND $8F67,X         ; $8C99: $3D $67 $8F - AND Memory with Accumulator
	BNE $13             ; $8C9C: $D0 $13 - Branch on Result not Zero
	JSR $AA19           ; $8C9E: $20 $19 $AA - Jump to New Location Saving Return Address
	BEQ $0E             ; $8CA1: $F0 $0E - Branch on Result Zero
	LDA $09             ; $8CA3: $A5 $09 - Load Accumulator with Memory
	LDX #$36            ; $8CA5: $A2 $36 - Load Index X with Memory
	JSR $A8E3           ; $8CA7: $20 $E3 $A8 - Jump to New Location Saving Return Address
	BCC $05             ; $8CAA: $90 $05 - Branch on Carry Clear
	LDA $08             ; $8CAC: $A5 $08 - Load Accumulator with Memory
	STA $02E0,X         ; $8CAE: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $8CB1: $60 - Return from Subroutine
	STY $8CC8           ; $8CB2: $8C $C8 $8C - Sore Index Y in Memory
	JSR $8C8A           ; $8CB8: $20 $8A $8C - Jump to New Location Saving Return Address
	LDA #$00            ; $8CBB: $A9 $00 - Load Accumulator with Memory
	STA $02E0,X         ; $8CBD: $9D $E0 $02 - Store Accumulator in Memory
	LDA $0568           ; $8CC0: $AD $68 $05 - Load Accumulator with Memory
	STA $0300,X         ; $8CC3: $9D $00 $03 - Store Accumulator in Memory
	BRK                 ; $8CC6: $00 - Force Break
	LDA $02E0,X         ; $8CC9: $BD $E0 $02 - Load Accumulator with Memory
	BNE $20             ; $8CCC: $D0 $20 - Branch on Result not Zero
	DEC $0300,X         ; $8CCE: $DE $00 $03 - Decrement Memory by One
	BNE $18             ; $8CD1: $D0 $18 - Branch on Result not Zero
	LDA $056A           ; $8CD3: $AD $6A $05 - Load Accumulator with Memory
	STA $03A0,X         ; $8CD6: $9D $A0 $03 - Store Accumulator in Memory
	LDA #$01            ; $8CD9: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $8CDB: $9D $E0 $02 - Store Accumulator in Memory
	LDA #$09            ; $8CDE: $A9 $09 - Load Accumulator with Memory
	LDY #$9E            ; $8CE0: $A0 $9E - Load Index Y with Memory
	JSR $F9FE           ; $8CE2: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA $0569           ; $8CE5: $AD $69 $05 - Load Accumulator with Memory
	STA $0300,X         ; $8CE8: $9D $00 $03 - Store Accumulator in Memory
	JMP $8D11           ; $8CEB: $4C $11 $8D - Jump to New Location
	DEC $0300,X         ; $8CEE: $DE $00 $03 - Decrement Memory by One
	BNE $08             ; $8CF1: $D0 $08 - Branch on Result not Zero
	DEC $03A0,X         ; $8CF3: $DE $A0 $03 - Decrement Memory by One
	BNE $E1             ; $8CF6: $D0 $E1 - Branch on Result not Zero
	JSR $8CBB           ; $8CF8: $20 $BB $8C - Jump to New Location Saving Return Address
	LDA $0300,X         ; $8CFB: $BD $00 $03 - Load Accumulator with Memory
	CMP #$14            ; $8CFE: $C9 $14 - Compare Memory with Accumulator
	BNE $0F             ; $8D00: $D0 $0F - Branch on Result not Zero
	LDA #$3B            ; $8D02: $A9 $3B - Load Accumulator with Memory
	JSR $8B2E           ; $8D04: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $08             ; $8D07: $90 $08 - Branch on Carry Clear
	LDA #$12            ; $8D09: $A9 $12 - Load Accumulator with Memory
	JSR $980F           ; $8D0B: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $8937           ; $8D0E: $20 $37 $89 - Jump to New Location Saving Return Address
	JMP $D8C9           ; $8D11: $4C $C9 $D8 - Jump to New Location
	BIT $10             ; $8D14: $24 $10 - Test Bits in Memory with Accumulator
	RTI                 ; $8D16: $40 - Return from Interrupt
	LDY #$D8            ; $8D17: $A0 $D8 - Load Index Y with Memory
	LDA #$00            ; $8D19: $A9 $00 - Load Accumulator with Memory
	STA $04FE           ; $8D1B: $8D $FE $04 - Store Accumulator in Memory
	STA $DA             ; $8D1E: $85 $DA - Store Accumulator in Memory
	STA $DB             ; $8D20: $85 $DB - Store Accumulator in Memory
	LDY #$03            ; $8D22: $A0 $03 - Load Index Y with Memory
	LDA $0200,Y         ; $8D24: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $22             ; $8D27: $F0 $22 - Branch on Result Zero
	LDA $054A,Y         ; $8D29: $B9 $4A $05 - Load Accumulator with Memory
	BEQ $1D             ; $8D2C: $F0 $1D - Branch on Result Zero
	INC $04FE           ; $8D2E: $EE $FE $04 - Increment Memory by One
	LDA $0088,Y         ; $8D31: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $8D34: $C9 $09 - Compare Memory with Accumulator
	BEQ $13             ; $8D36: $F0 $13 - Branch on Result Zero
	INC $DA             ; $8D38: $E6 $DA - Increment Memory by One
	LDA $0360,Y         ; $8D3A: $B9 $60 $03 - Load Accumulator with Memory
	BMI $03             ; $8D3D: $30 $03 - Branch on Result Minus
	CLC                 ; $8D3F: $18 - Clear Carry Flag
	STA $0F             ; $8D40: $85 $0F - Store Accumulator in Memory
	SBC $CC             ; $8D42: $E5 $CC - Subtract Memory from Accumulator with Borrow
	LSR A               ; $8D44: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $8D46: $4A $65 - Shift One Bit Right (Memory or Accumulator)
	STA $DB             ; $8D49: $85 $DB - Store Accumulator in Memory
	DEY                 ; $8D4B: $88 - Decrement Index Y by One
	BPL $D6             ; $8D4C: $10 $D6 - Branch on Result Plus
	LDA $0E             ; $8D4E: $A5 $0E - Load Accumulator with Memory
	BEQ $08             ; $8D50: $F0 $08 - Branch on Result Zero
	LDA $E9             ; $8D52: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $8D54: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	DEC $0E             ; $8D57: $C6 $0E - Decrement Memory by One
	RTS                 ; $8D59: $60 - Return from Subroutine
	LDA $0F             ; $8D5A: $A5 $0F - Load Accumulator with Memory
	BMI $FB             ; $8D5C: $30 $FB - Branch on Result Minus
	LDX #$20            ; $8D5E: $A2 $20 - Load Index X with Memory
	LDA $DA             ; $8D60: $A5 $DA - Load Accumulator with Memory
	BEQ $0C             ; $8D62: $F0 $0C - Branch on Result Zero
	LDX #$00            ; $8D64: $A2 $00 - Load Index X with Memory
	LDA $DB             ; $8D66: $A5 $DB - Load Accumulator with Memory
	SEC                 ; $8D68: $38 - Set Carry Flag
	SBC $DA             ; $8D69: $E5 $DA - Subtract Memory from Accumulator with Borrow
	BCC $03             ; $8D6B: $90 $03 - Branch on Carry Clear
	INX                 ; $8D6D: $E8 - Increment Index X by One
	BNE $F9             ; $8D6E: $D0 $F9 - Branch on Result not Zero
	LDY #$01            ; $8D70: $A0 $01 - Load Index Y with Memory
	CPX #$0F            ; $8D72: $E0 $0F - Compare Memory and Index Y
	BCS $0B             ; $8D74: $B0 $0B - Branch on Carry Set
	INY                 ; $8D76: $C8 - Increment Index Y by One
	CPX #$07            ; $8D77: $E0 $07 - Compare Memory and Index Y
	BCS $06             ; $8D79: $B0 $06 - Branch on Carry Set
	INY                 ; $8D7B: $C8 - Increment Index Y by One
	CPX #$03            ; $8D7C: $E0 $03 - Compare Memory and Index Y
	BCS $01             ; $8D7E: $B0 $01 - Branch on Carry Set
	INY                 ; $8D80: $C8 - Increment Index Y by One
	BIT $6F             ; $8D81: $24 $6F - Test Bits in Memory with Accumulator
	BVC $05             ; $8D83: $50 $05 - Branch on Overflow Clear
	CPY #$01            ; $8D85: $C0 $01 - Compare Memory and Index Y
	BNE $01             ; $8D87: $D0 $01 - Branch on Result not Zero
	DEY                 ; $8D89: $88 - Decrement Index Y by One
	LDA $8D14,Y         ; $8D8A: $B9 $14 $8D - Load Accumulator with Memory
	CMP $D0             ; $8D8D: $C5 $D0 - Compare Memory with Accumulator
	BCS $09             ; $8D8F: $B0 $09 - Branch on Carry Set
	CPX #$0F            ; $8D91: $E0 $0F - Compare Memory and Index Y
	BCC $04             ; $8D93: $90 $04 - Branch on Carry Clear
	DEC $D0             ; $8D95: $C6 $D0 - Decrement Memory by One
	DEC $D0             ; $8D97: $C6 $D0 - Decrement Memory by One
	RTS                 ; $8D99: $60 - Return from Subroutine
	INC $D0             ; $8D9A: $E6 $D0 - Increment Memory by One
	RTS                 ; $8D9C: $60 - Return from Subroutine
	ORA ($02,X)         ; $8D9D: $01 $02 $04 - OR Memory with Accumulator
	PHP                 ; $8DA0: $08 - Push Processor Status on Stack
	BPL $20             ; $8DA1: $10 $20 - Branch on Result Plus
	ASL $8C             ; $8DA4: $06 $8C - Shift Left One Bit
	BRK                 ; $8DA6: $00 - Force Break
	STY $8C00           ; $8DA7: $8C $00 $8C - Sore Index Y in Memory
	STY $006C           ; $8DAA: $8C $6C $00 - Sore Index Y in Memory
	BRK                 ; $8DAE: $00 - Force Break
	STY $8C6C           ; $8DB0: $8C $6C $8C - Sore Index Y in Memory
	JMP ($8C00)         ; $8DB3: $6C $00 $8C - Jump to New Location
	STY $008C           ; $8DB6: $8C $8C $00 - Sore Index Y in Memory
	ADC $8D00,X         ; $8DB9: $7D $00 $8D - Add Memory to Accumulator with Carry
	BRK                 ; $8DBC: $00 - Force Break
	STA $0000,X         ; $8DBD: $9D $00 $00 - Store Accumulator in Memory
	STA $BD00           ; $8DC0: $8D $00 $BD - Store Accumulator in Memory
	LDA $008D,X         ; $8DC3: $BD $8D $00 - Load Accumulator with Memory
	STA $7D00           ; $8DC6: $8D $00 $7D - Store Accumulator in Memory
	ADC $0000,X         ; $8DC9: $7D $00 $00 - Add Memory to Accumulator with Carry
	ADC $009D,X         ; $8DCC: $7D $9D $00 - Add Memory to Accumulator with Carry
	LDX $8E00           ; $8DCF: $AE $00 $8E - Load Index X with Memory
	BRK                 ; $8DD2: $00 - Force Break
	INC $FE00,X         ; $8DD3: $FE $00 $FE - Increment Memory by One
	BRK                 ; $8DD6: $00 - Force Break
	LDX $9E00           ; $8DD7: $AE $00 $9E - Load Index X with Memory
	BRK                 ; $8DDA: $00 - Force Break
	BRK                 ; $8DDC: $00 - Force Break
	BRK                 ; $8DDE: $00 - Force Break
	STX $7E00           ; $8DDF: $8E $00 $7E - Store Index X in Memory
	BRK                 ; $8DE2: $00 - Force Break
	BRK                 ; $8DE4: $00 - Force Break
	BRK                 ; $8DE6: $00 - Force Break
	BRK                 ; $8DE8: $00 - Force Break
	BRK                 ; $8DEA: $00 - Force Break
	ROL A               ; $8DEB: $2A - Rotate One Bit Left
	BRK                 ; $8DEC: $00 - Force Break
	BVS $81             ; $8DEE: $70 $81 - Branch on Overflow Set
	BRK                 ; $8DF0: $00 - Force Break
	STX $9700           ; $8DF1: $8E $00 $97 - Store Index X in Memory
	TAY                 ; $8DF4: $A8 - Transfer Accumulator to Index Y
	DEC $00             ; $8DF7: $C6 $00 - Decrement Memory by One
	INC $1900,X         ; $8DFB: $FE $00 $19 - Increment Memory by One
	BRK                 ; $8DFE: $00 - Force Break
	PLP                 ; $8DFF: $28 - Pull Processor Status from Stack
	BRK                 ; $8E00: $00 - Force Break
	AND $00,X           ; $8E01: $35 $00 - AND Memory with Accumulator
	BRK                 ; $8E03: $00 - Force Break
	EOR $5E00           ; $8E04: $4D $00 $5E - Exclusive-OR Memory with Accumulator
	ADC ($8A),Y         ; $8E07: $71 $8A $00 - Add Memory to Accumulator with Carry
	STA $00,X           ; $8E0A: $95 $00 - Store Accumulator in Memory
	LDY $C3             ; $8E0C: $A4 $C3 - Load Index Y with Memory
	BRK                 ; $8E0E: $00 - Force Break
	BRK                 ; $8E0F: $00 - Force Break
	DEC $00DB           ; $8E10: $CE $DB $00 - Decrement Memory by One
	ORA ($00),Y         ; $8E13: $11 $00 $30 - OR Memory with Accumulator
	BRK                 ; $8E16: $00 - Force Break
	ROL $5600,X         ; $8E17: $3E $00 $56 - Rotate One Bit Left
	BRK                 ; $8E1A: $00 - Force Break
	ROR $8800           ; $8E1B: $6E $00 $88 - Rotate One Bit Right
	BRK                 ; $8E1E: $00 - Force Break
	BRK                 ; $8E20: $00 - Force Break
	BRK                 ; $8E22: $00 - Force Break
	CMP $FE00,X         ; $8E23: $DD $00 $FE - Compare Memory with Accumulator
	BRK                 ; $8E26: $00 - Force Break
	ASL $3900           ; $8E27: $0E $00 $39 - Shift Left One Bit
	BRK                 ; $8E2A: $00 - Force Break
	LSR $A000           ; $8E2B: $4E $00 $A0 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $8E2E: $00 - Force Break
	PHA                 ; $8E2F: $48 - Push Accumulator on Stack
	PHA                 ; $8E30: $48 - Push Accumulator on Stack
	TYA                 ; $8E31: $98 - Transfer Index Y to Accumulator
	CLC #$0F            ; $8E32: $29 $0F - Clear Carry Flag
	STA $10             ; $8E34: $85 $10 - Store Accumulator in Memory
	PLA                 ; $8E36: $68 - Pull Accumulator from Stack
	CLC #$0F            ; $8E37: $29 $0F - Clear Carry Flag
	ADC $10             ; $8E39: $65 $10 - Add Memory to Accumulator with Carry
	BCS $04             ; $8E3B: $B0 $04 - Branch on Carry Set
	CMP #$0A            ; $8E3D: $C9 $0A - Compare Memory with Accumulator
	BCC $03             ; $8E3F: $90 $03 - Branch on Carry Clear
	SBC #$0A            ; $8E41: $E9 $0A - Subtract Memory from Accumulator with Borrow
	SEC                 ; $8E43: $38 - Set Carry Flag
	STA $11             ; $8E44: $85 $11 - Store Accumulator in Memory
	TYA                 ; $8E46: $98 - Transfer Index Y to Accumulator
	CLC #$F0            ; $8E47: $29 $F0 - Clear Carry Flag
	STA $10             ; $8E49: $85 $10 - Store Accumulator in Memory
	PLA                 ; $8E4B: $68 - Pull Accumulator from Stack
	CLC #$F0            ; $8E4C: $29 $F0 - Clear Carry Flag
	BCC $03             ; $8E4E: $90 $03 - Branch on Carry Clear
	ADC #$0F            ; $8E50: $69 $0F - Add Memory to Accumulator with Carry
	CLC                 ; $8E52: $18 - Clear Carry Flag
	ADC $10             ; $8E53: $65 $10 - Add Memory to Accumulator with Carry
	BCS $04             ; $8E55: $B0 $04 - Branch on Carry Set
	CMP #$A0            ; $8E57: $C9 $A0 - Compare Memory with Accumulator
	BCC $03             ; $8E59: $90 $03 - Branch on Carry Clear
	SBC #$A0            ; $8E5B: $E9 $A0 - Subtract Memory from Accumulator with Borrow
	SEC                 ; $8E5D: $38 - Set Carry Flag
	ORA $11             ; $8E5E: $05 $11 - OR Memory with Accumulator
	RTS                 ; $8E60: $60 - Return from Subroutine
	LDX #$03            ; $8E61: $A2 $03 - Load Index X with Memory
	JSR $8BE5           ; $8E63: $20 $E5 $8B - Jump to New Location Saving Return Address
	STA $13,X           ; $8E66: $95 $13 - Store Accumulator in Memory
	LDA #$00            ; $8E68: $A9 $00 - Load Accumulator with Memory
	STA $0462,X         ; $8E6A: $9D $62 $04 - Store Accumulator in Memory
	DEX                 ; $8E6D: $CA - Decrement Index X by One
	BPL $F3             ; $8E6E: $10 $F3 - Branch on Result Plus
	LDX #$03            ; $8E70: $A2 $03 - Load Index X with Memory
	LDA $0200,X         ; $8E72: $BD $00 $02 - Load Accumulator with Memory
	BEQ $13             ; $8E75: $F0 $13 - Branch on Result Zero
	LDA $88,X           ; $8E77: $B5 $88 $C9 - Load Accumulator with Memory
	BCS $0D             ; $8E7B: $B0 $0D - Branch on Carry Set
	JSR $A2B8           ; $8E7D: $20 $B8 $A2 - Jump to New Location Saving Return Address
	TXA                 ; $8E80: $8A - Transfer Index X to Accumulator
	TAY                 ; $8E81: $A8 - Transfer Accumulator to Index Y
	JSR $A2D2           ; $8E82: $20 $D2 $A2 - Jump to New Location Saving Return Address
	BCS $03             ; $8E85: $B0 $03 - Branch on Carry Set
	JSR $8E8E           ; $8E87: $20 $8E $8E - Jump to New Location Saving Return Address
	DEX                 ; $8E8A: $CA - Decrement Index X by One
	BNE $E5             ; $8E8B: $D0 $E5 - Branch on Result not Zero
	RTS                 ; $8E8D: $60 - Return from Subroutine
	LDA $13,X           ; $8E8E: $B5 $13 $38 - Load Accumulator with Memory
	SBC $0013,Y         ; $8E91: $F9 $13 $00 - Subtract Memory from Accumulator with Borrow
	BMI $06             ; $8E94: $30 $06 - Branch on Result Minus
	CMP #$04            ; $8E96: $C9 $04 - Compare Memory with Accumulator
	BCS $11             ; $8E98: $B0 $11 - Branch on Carry Set
	BCC $7C             ; $8E9A: $90 $7C - Branch on Carry Clear
	CMP #$FD            ; $8E9C: $C9 $FD - Compare Memory with Accumulator
	BCC $02             ; $8E9E: $90 $02 - Branch on Carry Clear
	BCS $76             ; $8EA0: $B0 $76 - Branch on Carry Set
	JSR $F89E           ; $8EA2: $20 $9E $F8 - Jump to New Location Saving Return Address
	JSR $8EAB           ; $8EA5: $20 $AB $8E - Jump to New Location Saving Return Address
	JMP $F89E           ; $8EA8: $4C $9E $F8 - Jump to New Location
	TXA                 ; $8EAB: $8A - Transfer Index X to Accumulator
	PHA                 ; $8EAC: $48 - Push Accumulator on Stack
	TYA                 ; $8EAD: $98 - Transfer Index Y to Accumulator
	TAX                 ; $8EAE: $AA - Transfer Accumulator to Index X
	JSR $D4BC           ; $8EAF: $20 $BC $D4 - Jump to New Location Saving Return Address
	LDA $0462,Y         ; $8EB2: $B9 $62 $04 - Load Accumulator with Memory
	BNE $2F             ; $8EB5: $D0 $2F - Branch on Result not Zero
	LDX $02A0,Y         ; $8EB7: $BE $A0 $02 - Load Index X with Memory
	BPL $05             ; $8EBA: $10 $05 - Branch on Result Plus
	STA $02C0,Y         ; $8EBC: $99 $C0 $02 - Store Accumulator in Memory
	BMI $1C             ; $8EBF: $30 $1C - Branch on Result Minus
	LDA #$0A            ; $8EC1: $A9 $0A - Load Accumulator with Memory
	JSR $980F           ; $8EC3: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$FD            ; $8EC6: $A9 $FD - Load Accumulator with Memory
	STA $02C0,Y         ; $8EC8: $99 $C0 $02 - Store Accumulator in Memory
	STA $02A0,Y         ; $8ECB: $99 $A0 $02 - Store Accumulator in Memory
	LDX ($E5),Y         ; $8ECE: $B6 $E5 $10 - Load Index X with Memory
	ORA ($B6),Y         ; $8ED1: $11 $B6 $8C - OR Memory with Accumulator
	BEQ $07             ; $8ED4: $F0 $07 - Branch on Result Zero
	LDA #$30            ; $8ED6: $A9 $30 - Load Accumulator with Memory
	STA $0090,Y         ; $8ED8: $99 $90 $00 - Store Accumulator in Memory
	LDA #$FF            ; $8EDB: $A9 $FF - Load Accumulator with Memory
	SEC                 ; $8EDD: $38 - Set Carry Flag
	SBC #$01            ; $8EDE: $E9 $01 - Subtract Memory from Accumulator with Borrow
	STA $02A0,Y         ; $8EE0: $99 $A0 $02 - Store Accumulator in Memory
	STA $0462,Y         ; $8EE3: $99 $62 $04 - Store Accumulator in Memory
	PLA                 ; $8EE6: $68 - Pull Accumulator from Stack
	TAX                 ; $8EE7: $AA - Transfer Accumulator to Index X
	JSR $D4BC           ; $8EE8: $20 $BC $D4 - Jump to New Location Saving Return Address
	LDA #$08            ; $8EEB: $A9 $08 - Load Accumulator with Memory
	STA $0300,X         ; $8EED: $9D $00 $03 - Store Accumulator in Memory
	LDA $0380,X         ; $8EF0: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $8EF3: $29 $10 - Clear Carry Flag
	BNE $0B             ; $8EF5: $D0 $0B - Branch on Result not Zero
	LDA #$01            ; $8EF7: $A9 $01 - Load Accumulator with Memory
	STA $02A0,X         ; $8EF9: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$00            ; $8EFC: $A9 $00 - Load Accumulator with Memory
	STA $02C0,X         ; $8EFE: $9D $C0 $02 - Store Accumulator in Memory
	RTS                 ; $8F01: $60 - Return from Subroutine
	LDA #$03            ; $8F02: $A9 $03 - Load Accumulator with Memory
	STA $0300,X         ; $8F04: $9D $00 $03 - Store Accumulator in Memory
	TYA                 ; $8F07: $98 - Transfer Index Y to Accumulator
	PHA                 ; $8F08: $48 - Push Accumulator on Stack
	LDA #$45            ; $8F09: $A9 $45 - Load Accumulator with Memory
	LDY #$9D            ; $8F0B: $A0 $9D - Load Index Y with Memory
	JSR $F9FE           ; $8F0D: $20 $FE $F9 - Jump to New Location Saving Return Address
	PLA                 ; $8F10: $68 - Pull Accumulator from Stack
	TAY                 ; $8F11: $A8 - Transfer Accumulator to Index Y
	LDA #$06            ; $8F12: $A9 $06 - Load Accumulator with Memory
	STA $055E,X         ; $8F14: $9D $5E $05 - Store Accumulator in Memory
	RTS                 ; $8F17: $60 - Return from Subroutine
	LDA $4A,X           ; $8F18: $B5 $4A $D9 - Load Accumulator with Memory
	LSR A               ; $8F1B: $4A $00 - Shift One Bit Right (Memory or Accumulator)
	BCS $09             ; $8F1D: $B0 $09 - Branch on Carry Set
	JSR $F89E           ; $8F1F: $20 $9E $F8 - Jump to New Location Saving Return Address
	JSR $8F28           ; $8F22: $20 $28 $8F - Jump to New Location Saving Return Address
	JMP $F89E           ; $8F25: $4C $9E $F8 - Jump to New Location
	LDA $0280,Y         ; $8F28: $B9 $80 $02 - Load Accumulator with Memory
	PHA                 ; $8F2B: $48 - Push Accumulator on Stack
	LDA $0260,Y         ; $8F2C: $B9 $60 $02 - Load Accumulator with Memory
	PHA                 ; $8F2F: $48 - Push Accumulator on Stack
	LDA $0260,X         ; $8F30: $BD $60 $02 - Load Accumulator with Memory
	STA $0260,Y         ; $8F33: $99 $60 $02 - Store Accumulator in Memory
	LDA $0280,X         ; $8F36: $BD $80 $02 - Load Accumulator with Memory
	STA $0280,Y         ; $8F39: $99 $80 $02 - Store Accumulator in Memory
	PLA                 ; $8F3C: $68 - Pull Accumulator from Stack
	STA $0260,X         ; $8F3D: $9D $60 $02 - Store Accumulator in Memory
	PLA                 ; $8F40: $68 - Pull Accumulator from Stack
	STA $0280,X         ; $8F41: $9D $80 $02 - Store Accumulator in Memory
	JSR $8F07           ; $8F44: $20 $07 $8F - Jump to New Location Saving Return Address
	LDA #$70            ; $8F47: $A9 $70 - Load Accumulator with Memory
	JSR $8B9D           ; $8F49: $20 $9D $8B - Jump to New Location Saving Return Address
	JSR $F89E           ; $8F4C: $20 $9E $F8 - Jump to New Location Saving Return Address
	JSR $8F07           ; $8F4F: $20 $07 $8F - Jump to New Location Saving Return Address
	LDA #$70            ; $8F52: $A9 $70 - Load Accumulator with Memory
	JSR $8BAD           ; $8F54: $20 $AD $8B - Jump to New Location Saving Return Address
	JMP $F89E           ; $8F57: $4C $9E $F8 - Jump to New Location
	ROR A               ; $8F5B: $6A - Rotate One Bit Right
	LDA #$16            ; $8F60: $A9 $16 - Load Accumulator with Memory
	LDY #$2A            ; $8F62: $A0 $2A - Load Index Y with Memory
	JMP $980D           ; $8F64: $4C $0D $98 - Jump to New Location
	PHP                 ; $8F67: $08 - Push Processor Status on Stack
	ORA ($20,X)         ; $8F6A: $01 $20 $CF - OR Memory with Accumulator
	LDX #$B0            ; $8F6D: $A2 $B0 - Load Index X with Memory
	AND $8A             ; $8F6F: $25 $8A - AND Memory with Accumulator
	PHA                 ; $8F71: $48 - Push Accumulator on Stack
	TYA                 ; $8F72: $98 - Transfer Index Y to Accumulator
	TAX                 ; $8F73: $AA - Transfer Accumulator to Index X
	LDA #$04            ; $8F74: $A9 $04 - Load Accumulator with Memory
	JSR $F213           ; $8F76: $20 $13 $F2 - Jump to New Location Saving Return Address
	PLA                 ; $8F79: $68 - Pull Accumulator from Stack
	TAX                 ; $8F7A: $AA - Transfer Accumulator to Index X
	LDA #$04            ; $8F7B: $A9 $04 - Load Accumulator with Memory
	JSR $F25B           ; $8F7D: $20 $5B $F2 - Jump to New Location Saving Return Address
	LDA #$00            ; $8F80: $A9 $00 - Load Accumulator with Memory
	JSR $980F           ; $8F82: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $8833           ; $8F85: $20 $33 $88 - Jump to New Location Saving Return Address
	LDY $02E0,X         ; $8F88: $BC $E0 $02 - Load Index Y with Memory
	LDA $04FF           ; $8F8B: $AD $FF $04 - Load Accumulator with Memory
	ORA $8F67,Y         ; $8F8E: $19 $67 $8F - OR Memory with Accumulator
	STA $04FF           ; $8F91: $8D $FF $04 - Store Accumulator in Memory
	RTS                 ; $8F94: $60 - Return from Subroutine
	JSR $99C0           ; $8F95: $20 $C0 $99 - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $8F98: $BD $E0 $02 - Load Accumulator with Memory
	STA $0380,X         ; $8F9B: $9D $80 $03 - Store Accumulator in Memory
	CLC                 ; $8F9E: $18 - Clear Carry Flag
	ADC #$18            ; $8F9F: $69 $18 - Add Memory to Accumulator with Carry
	JMP $8820           ; $8FA1: $4C $20 $88 - Jump to New Location
	JSR $D1B3           ; $8FA4: $20 $B3 $D1 - Jump to New Location Saving Return Address
	JSR $D2E6           ; $8FA7: $20 $E6 $D2 - Jump to New Location Saving Return Address
	BIT $98             ; $8FAA: $24 $98 - Test Bits in Memory with Accumulator
	BVC $21             ; $8FAC: $50 $21 - Branch on Overflow Clear
	LDY $99             ; $8FAE: $A4 $99 - Load Index Y with Memory
	DEY                 ; $8FB0: $88 - Decrement Index Y by One
	BNE $0F             ; $8FB1: $D0 $0F - Branch on Result not Zero
	LDA #$01            ; $8FB3: $A9 $01 - Load Accumulator with Memory
	LDY #$80            ; $8FB5: $A0 $80 - Load Index Y with Memory
	JSR $A855           ; $8FB7: $20 $55 $A8 - Jump to New Location Saving Return Address
	JSR $A884           ; $8FBA: $20 $84 $A8 - Jump to New Location Saving Return Address
	BNE $03             ; $8FBD: $D0 $03 - Branch on Result not Zero
	JSR $8925           ; $8FBF: $20 $25 $89 - Jump to New Location Saving Return Address
	CLC                 ; $8FC2: $18 - Clear Carry Flag
	JSR $8ACA           ; $8FC3: $20 $CA $8A - Jump to New Location Saving Return Address
	LDA $88,X           ; $8FC6: $B5 $88 $C9 - Load Accumulator with Memory
	BRK                 ; $8FC9: $00 - Force Break
	BEQ $03             ; $8FCA: $F0 $03 - Branch on Result Zero
	PLA                 ; $8FCC: $68 - Pull Accumulator from Stack
	PLA                 ; $8FCD: $68 - Pull Accumulator from Stack
	RTS                 ; $8FCE: $60 - Return from Subroutine
	LDA #$1F            ; $8FCF: $A9 $1F - Load Accumulator with Memory
	BIT $0566           ; $8FD1: $2C $66 $05 - Test Bits in Memory with Accumulator
	BPL $02             ; $8FD4: $10 $02 - Branch on Result Plus
	LDA #$03            ; $8FD6: $A9 $03 - Load Accumulator with Memory
	JSR $88B4           ; $8FD8: $20 $B4 $88 - Jump to New Location Saving Return Address
	JSR $D457           ; $8FDB: $20 $57 $D4 - Jump to New Location Saving Return Address
	BIT $05D6           ; $8FDE: $2C $D6 $05 - Test Bits in Memory with Accumulator
	BVS $22             ; $8FE1: $70 $22 - Branch on Overflow Set
	LDA $98             ; $8FE3: $A5 $98 - Load Accumulator with Memory
	LSR A               ; $8FE5: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	ASL $DE             ; $8FE7: $06 $DE - Shift Left One Bit
	RTS                 ; $8FE9: $60 - Return from Subroutine
	DEC $0360,X         ; $8FEB: $DE $60 $03 - Decrement Memory by One
	JSR $AA08           ; $8FEE: $20 $08 $AA - Jump to New Location Saving Return Address
	LDA $0380,X         ; $8FF1: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $8FF4: $29 $10 - Clear Carry Flag
	BEQ $0A             ; $8FF6: $F0 $0A - Branch on Result Zero
	LDA $055A,X         ; $8FF8: $BD $5A $05 - Load Accumulator with Memory
	CMP #$08            ; $8FFB: $C9 $08 - Compare Memory with Accumulator
	BCC $03             ; $8FFD: $90 $03 - Branch on Carry Clear
	JSR $D5D1           ; $8FFF: $20 $D1 $D5 - Jump to New Location Saving Return Address
	JMP $91B4           ; $9002: $4C $B4 $91 - Jump to New Location
	JSR $D4B9           ; $9005: $20 $B9 $D4 - Jump to New Location Saving Return Address
	JMP $A9EC           ; $9008: $4C $EC $A9 - Jump to New Location
	JSR $A85D           ; $900B: $20 $5D $A8 - Jump to New Location Saving Return Address
	STA $90,X           ; $900E: $95 $90 - Store Accumulator in Memory
	JSR $D4CC           ; $9010: $20 $CC $D4 - Jump to New Location Saving Return Address
	JSR $D43E           ; $9013: $20 $3E $D4 - Jump to New Location Saving Return Address
	JSR $A9C7           ; $9016: $20 $C7 $A9 - Jump to New Location Saving Return Address
	LDA #$E3            ; $9019: $A9 $E3 - Load Accumulator with Memory
	JSR $A87D           ; $901B: $20 $7D $A8 - Jump to New Location Saving Return Address
	JSR $A150           ; $901E: $20 $50 $A1 - Jump to New Location Saving Return Address
	JSR $A9F4           ; $9021: $20 $F4 $A9 - Jump to New Location Saving Return Address
	JSR $A1A9           ; $9024: $20 $A9 $A1 - Jump to New Location Saving Return Address
	JSR $91B4           ; $9027: $20 $B4 $91 - Jump to New Location Saving Return Address
	LDA $98             ; $902A: $A5 $98 - Load Accumulator with Memory
	CLC #$02            ; $902C: $29 $02 - Clear Carry Flag
	BNE $03             ; $902E: $D0 $03 - Branch on Result not Zero
	JSR $D4BC           ; $9030: $20 $BC $D4 - Jump to New Location Saving Return Address
	RTS                 ; $9033: $60 - Return from Subroutine
	LDA #$75            ; $9034: $A9 $75 - Load Accumulator with Memory
	LDY #$9D            ; $9036: $A0 $9D - Load Index Y with Memory
	BNE $13             ; $9038: $D0 $13 - Branch on Result not Zero
	JSR $8BE5           ; $903A: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$E8            ; $903D: $C9 $E8 - Compare Memory with Accumulator
	BCC $08             ; $903F: $90 $08 - Branch on Carry Clear
	LDA #$FC            ; $9041: $A9 $FC - Load Accumulator with Memory
	STA $02A0,X         ; $9043: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $9046: $9D $C0 $02 - Store Accumulator in Memory
	LDA #$01            ; $9049: $A9 $01 - Load Accumulator with Memory
	LDY #$9D            ; $904B: $A0 $9D - Load Index Y with Memory
	STA $DA             ; $904D: $85 $DA - Store Accumulator in Memory
	LDA $055E,X         ; $904F: $BD $5E $05 - Load Accumulator with Memory
	BEQ $05             ; $9052: $F0 $05 - Branch on Result Zero
	DEC $055E,X         ; $9054: $DE $5E $05 - Decrement Memory by One
	BPL $05             ; $9057: $10 $05 - Branch on Result Plus
	LDA $DA             ; $9059: $A5 $DA - Load Accumulator with Memory
	JSR $F9FE           ; $905B: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$13            ; $905E: $A9 $13 - Load Accumulator with Memory
	JSR $88AE           ; $9060: $20 $AE $88 - Jump to New Location Saving Return Address
	BIT $D1             ; $9063: $24 $D1 - Test Bits in Memory with Accumulator
	BPL $06             ; $9065: $10 $06 - Branch on Result Plus
	JSR $D22F           ; $9067: $20 $2F $D2 - Jump to New Location Saving Return Address
	JMP $907F           ; $906A: $4C $7F $90 - Jump to New Location
	LDA $E5,X           ; $906D: $B5 $E5 $0A - Load Accumulator with Memory
	BPL $0D             ; $9070: $10 $0D - Branch on Result Plus
	LDA $05D7,X         ; $9072: $BD $D7 $05 - Load Accumulator with Memory
	ASL A               ; $9075: $0A - Shift Left One Bit
	BMI $07             ; $9076: $30 $07 - Branch on Result Minus
	LDY #$39            ; $9078: $A0 $39 - Load Index Y with Memory
	LDA #$00            ; $907A: $A9 $00 - Load Accumulator with Memory
	JSR $D531           ; $907C: $20 $31 $D5 - Jump to New Location Saving Return Address
	LDY #$26            ; $907F: $A0 $26 - Load Index Y with Memory
	JSR $D26D           ; $9081: $20 $6D $D2 - Jump to New Location Saving Return Address
	LDA $E5,X           ; $9084: $B5 $E5 $29 - Load Accumulator with Memory
	PHP                 ; $9087: $08 - Push Processor Status on Stack
	BEQ $24             ; $9088: $F0 $24 - Branch on Result Zero
	LDA #$26            ; $908A: $A9 $26 - Load Accumulator with Memory
	JSR $8BD1           ; $908C: $20 $D1 $8B - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $908F: $BD $A0 $02 - Load Accumulator with Memory
	BPL $17             ; $9092: $10 $17 - Branch on Result Plus
	CMP #$FE            ; $9094: $C9 $FE - Compare Memory with Accumulator
	BCC $09             ; $9096: $90 $09 - Branch on Carry Clear
	BNE $11             ; $9098: $D0 $11 - Branch on Result not Zero
	LDA $02C0,X         ; $909A: $BD $C0 $02 - Load Accumulator with Memory
	CMP #$C0            ; $909D: $C9 $C0 - Compare Memory with Accumulator
	BCS $0A             ; $909F: $B0 $0A - Branch on Carry Set
	LDA #$FE            ; $90A1: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $90A3: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$C0            ; $90A6: $A9 $C0 - Load Accumulator with Memory
	STA $02C0,X         ; $90A8: $9D $C0 $02 - Store Accumulator in Memory
	JMP $90D5           ; $90AB: $4C $D5 $90 - Jump to New Location
	LDA $E5,X           ; $90AE: $B5 $E5 $29 - Load Accumulator with Memory
	BEQ $21             ; $90B2: $F0 $21 - Branch on Result Zero
	LDA #$26            ; $90B4: $A9 $26 - Load Accumulator with Memory
	JSR $8BC1           ; $90B6: $20 $C1 $8B - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $90B9: $BD $A0 $02 - Load Accumulator with Memory
	BMI $17             ; $90BC: $30 $17 - Branch on Result Minus
	CMP #$01            ; $90BE: $C9 $01 - Compare Memory with Accumulator
	BCC $13             ; $90C0: $90 $13 - Branch on Carry Clear
	BNE $07             ; $90C2: $D0 $07 - Branch on Result not Zero
	LDA $02C0,X         ; $90C4: $BD $C0 $02 - Load Accumulator with Memory
	CMP #$40            ; $90C7: $C9 $40 - Compare Memory with Accumulator
	BCC $0A             ; $90C9: $90 $0A - Branch on Carry Clear
	LDA #$01            ; $90CB: $A9 $01 - Load Accumulator with Memory
	STA $02A0,X         ; $90CD: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$40            ; $90D0: $A9 $40 - Load Accumulator with Memory
	STA $02C0,X         ; $90D2: $9D $C0 $02 - Store Accumulator in Memory
	JMP $A9C4           ; $90D5: $4C $C4 $A9 - Jump to New Location
	LDA #$20            ; $90D8: $A9 $20 - Load Accumulator with Memory
	JSR $AB1C           ; $90DA: $20 $1C $AB - Jump to New Location Saving Return Address
	JSR $A9F4           ; $90DD: $20 $F4 $A9 - Jump to New Location Saving Return Address
	DEC $94,X           ; $90E0: $D6 $94 - Decrement Memory by One
	BNE $2A             ; $90E2: $D0 $2A - Branch on Result not Zero
	LDA #$CF            ; $90E4: $A9 $CF - Load Accumulator with Memory
	JSR $A87D           ; $90E6: $20 $7D $A8 - Jump to New Location Saving Return Address
	LDA $0562,X         ; $90E9: $BD $62 $05 - Load Accumulator with Memory
	STA $4A,X           ; $90EC: $95 $4A - Store Accumulator in Memory
	LDA $02E0,X         ; $90EE: $BD $E0 $02 - Load Accumulator with Memory
	STA $0360,X         ; $90F1: $9D $60 $03 - Store Accumulator in Memory
	LDA #$FD            ; $90F4: $A9 $FD - Load Accumulator with Memory
	STA $02A0,X         ; $90F6: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$00            ; $90F9: $A9 $00 - Load Accumulator with Memory
	STA $88,X           ; $90FB: $95 $88 - Store Accumulator in Memory
	STA $02C0,X         ; $90FD: $9D $C0 $02 - Store Accumulator in Memory
	STA $0562,X         ; $9100: $9D $62 $05 - Store Accumulator in Memory
	STA $02E0,X         ; $9103: $9D $E0 $02 - Store Accumulator in Memory
	JSR $D5DB           ; $9106: $20 $DB $D5 - Jump to New Location Saving Return Address
	LDA #$10            ; $9109: $A9 $10 - Load Accumulator with Memory
	STA $055E,X         ; $910B: $9D $5E $05 - Store Accumulator in Memory
	BRK                 ; $910E: $00 - Force Break
	LDY #$9D            ; $910F: $A0 $9D - Load Index Y with Memory
	LDA #$00            ; $9111: $A9 $00 - Load Accumulator with Memory
	STA $03A0,X         ; $9113: $9D $A0 $03 - Store Accumulator in Memory
	LDA $71             ; $9116: $A5 $71 - Load Accumulator with Memory
	BEQ $28             ; $9118: $F0 $28 - Branch on Result Zero
	DEC $94,X           ; $911A: $D6 $94 - Decrement Memory by One
	BNE $24             ; $911C: $D0 $24 - Branch on Result not Zero
	BIT $D1             ; $911E: $24 $D1 - Test Bits in Memory with Accumulator
	BMI $30             ; $9120: $30 $30 - Branch on Result Minus
	LDA $02             ; $9122: $A5 $02 - Load Accumulator with Memory
	BNE $05             ; $9124: $D0 $05 - Branch on Result not Zero
	LDA $057D           ; $9126: $AD $7D $05 - Load Accumulator with Memory
	BPL $06             ; $9129: $10 $06 - Branch on Result Plus
	JSR $9272           ; $912B: $20 $72 $92 - Jump to New Location Saving Return Address
	PLA                 ; $912E: $68 - Pull Accumulator from Stack
	PLA                 ; $912F: $68 - Pull Accumulator from Stack
	RTS                 ; $9130: $60 - Return from Subroutine
	LDA #$1B            ; $9131: $A9 $1B - Load Accumulator with Memory
	JSR $980F           ; $9133: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$09            ; $9136: $A9 $09 - Load Accumulator with Memory
	STA $88,X           ; $9138: $95 $88 - Store Accumulator in Memory
	LDA #$FF            ; $913A: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $913C: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $913F: $9D $C0 $02 - Store Accumulator in Memory
	JSR $AA08           ; $9142: $20 $08 $AA - Jump to New Location Saving Return Address
	LDA $0380,X         ; $9145: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $9148: $29 $10 - Clear Carry Flag
	BEQ $05             ; $914A: $F0 $05 - Branch on Result Zero
	LDA #$07            ; $914C: $A9 $07 - Load Accumulator with Memory
	JSR $88B4           ; $914E: $20 $B4 $88 - Jump to New Location Saving Return Address
	RTS                 ; $9151: $60 - Return from Subroutine
	JSR $8833           ; $9152: $20 $33 $88 - Jump to New Location Saving Return Address
	PLA                 ; $9155: $68 - Pull Accumulator from Stack
	PLA                 ; $9156: $68 - Pull Accumulator from Stack
	RTS                 ; $9157: $60 - Return from Subroutine
	LDA #$00            ; $9158: $A9 $00 - Load Accumulator with Memory
	STA $0260,X         ; $915A: $9D $60 $02 - Store Accumulator in Memory
	STA $03A0,X         ; $915D: $9D $A0 $03 - Store Accumulator in Memory
	LDA #$80            ; $9160: $A9 $80 - Load Accumulator with Memory
	STA $0280,X         ; $9162: $9D $80 $02 - Store Accumulator in Memory
	JSR $A87B           ; $9165: $20 $7B $A8 - Jump to New Location Saving Return Address
	JSR $AA08           ; $9168: $20 $08 $AA - Jump to New Location Saving Return Address
	LDA $0562,X         ; $916B: $BD $62 $05 - Load Accumulator with Memory
	SEC                 ; $916E: $38 - Set Carry Flag
	SBC $4A,X           ; $916F: $F5 $4A - Subtract Memory from Accumulator with Borrow
	BCC $DF             ; $9171: $90 $DF - Branch on Carry Clear
	CMP #$08            ; $9173: $C9 $08 - Compare Memory with Accumulator
	BCS $05             ; $9175: $B0 $05 - Branch on Carry Set
	LDA #$20            ; $9177: $A9 $20 - Load Accumulator with Memory
	JSR $AB1C           ; $9179: $20 $1C $AB - Jump to New Location Saving Return Address
	BRK                 ; $917C: $00 - Force Break
	STA $62BD,X         ; $917E: $9D $BD $62 - Store Accumulator in Memory
	ORA $BC             ; $9181: $05 $BC - OR Memory with Accumulator
	CPX #$02            ; $9183: $E0 $02 - Compare Memory and Index Y
	JSR $8995           ; $9185: $20 $95 $89 - Jump to New Location Saving Return Address
	JSR $A9C4           ; $9188: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $8B86           ; $918B: $20 $86 $8B - Jump to New Location Saving Return Address
	LDA $0562,X         ; $918E: $BD $62 $05 - Load Accumulator with Memory
	STA $09             ; $9191: $85 $09 - Store Accumulator in Memory
	LDY $02E0,X         ; $9193: $BC $E0 $02 - Load Index Y with Memory
	TYA                 ; $9196: $98 - Transfer Index Y to Accumulator
	JSR $8839           ; $9197: $20 $39 $88 - Jump to New Location Saving Return Address
	CMP #$02            ; $919A: $C9 $02 - Compare Memory with Accumulator
	BCS $16             ; $919C: $B0 $16 - Branch on Carry Set
	LDA $09             ; $919E: $A5 $09 - Load Accumulator with Memory
	STA $4A,X           ; $91A0: $95 $4A - Store Accumulator in Memory
	TYA                 ; $91A2: $98 - Transfer Index Y to Accumulator
	STA $0360,X         ; $91A3: $9D $60 $03 - Store Accumulator in Memory
	LDA $0556,X         ; $91A6: $BD $56 $05 - Load Accumulator with Memory
	STA $88,X           ; $91A9: $95 $88 - Store Accumulator in Memory
	JSR $A85D           ; $91AB: $20 $5D $A8 - Jump to New Location Saving Return Address
	STA $0562,X         ; $91AE: $9D $62 $05 - Store Accumulator in Memory
	STA $02E0,X         ; $91B1: $9D $E0 $02 - Store Accumulator in Memory
	JSR $8BE5           ; $91B4: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$F0            ; $91B7: $C9 $F0 - Compare Memory with Accumulator
	BCC $1B             ; $91B9: $90 $1B - Branch on Carry Clear
	JMP $8ACA           ; $91BB: $4C $CA $8A - Jump to New Location
	JSR $A9C4           ; $91BE: $20 $C4 $A9 - Jump to New Location Saving Return Address
	LDA #$08            ; $91C1: $A9 $08 - Load Accumulator with Memory
	JSR $88D4           ; $91C3: $20 $D4 $88 - Jump to New Location Saving Return Address
	JSR $8B7F           ; $91C6: $20 $7F $8B - Jump to New Location Saving Return Address
	DEC $94,X           ; $91C9: $D6 $94 - Decrement Memory by One
	BNE $09             ; $91CB: $D0 $09 - Branch on Result not Zero
	LDA #$0E            ; $91CD: $A9 $0E - Load Accumulator with Memory
	JSR $980F           ; $91CF: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$05            ; $91D2: $A9 $05 - Load Accumulator with Memory
	STA $88,X           ; $91D4: $95 $88 - Store Accumulator in Memory
	RTS                 ; $91D6: $60 - Return from Subroutine
	LDY $053A,X         ; $91D7: $BC $3A $05 - Load Index Y with Memory
	JSR $87E9           ; $91DA: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $07             ; $91DD: $D0 $07 - Branch on Result not Zero
	CPY #$00            ; $91DF: $C0 $00 - Compare Memory and Index Y
	BNE $36             ; $91E1: $D0 $36 - Branch on Result not Zero
	JMP $8B86           ; $91E3: $4C $86 $8B - Jump to New Location
	TYA                 ; $91E6: $98 - Transfer Index Y to Accumulator
	BEQ $0D             ; $91E7: $F0 $0D - Branch on Result Zero
	ASL A               ; $91E9: $0A - Shift Left One Bit
	LDA #$ED            ; $91EA: $A9 $ED - Load Accumulator with Memory
	BCS $02             ; $91EC: $B0 $02 - Branch on Carry Set
	LDA #$FF            ; $91EE: $A9 $FF - Load Accumulator with Memory
	JSR $CD43           ; $91F0: $20 $43 $CD - Jump to New Location Saving Return Address
	JMP $9206           ; $91F3: $4C $06 $92 - Jump to New Location
	LDA $4A,X           ; $91F6: $B5 $4A $85 - Load Accumulator with Memory
	LDY $BD,X           ; $91F9: $B4 $BD $60 - Load Index Y with Memory
	STA $B5             ; $91FD: $85 $B5 - Store Accumulator in Memory
	LDY #$23            ; $91FF: $A0 $23 - Load Index Y with Memory
	LDA #$04            ; $9201: $A9 $04 - Load Accumulator with Memory
	JSR $F08D           ; $9203: $20 $8D $F0 - Jump to New Location Saving Return Address
	LDA $0562,X         ; $9206: $BD $62 $05 - Load Accumulator with Memory
	STA $0A             ; $9209: $85 $0A - Store Accumulator in Memory
	LDA #$40            ; $920B: $A9 $40 - Load Accumulator with Memory
	LDY $02E0,X         ; $920D: $BC $E0 $02 - Load Index Y with Memory
	JSR $88F6           ; $9210: $20 $F6 $88 - Jump to New Location Saving Return Address
	JSR $89F0           ; $9213: $20 $F0 $89 - Jump to New Location Saving Return Address
	JSR $A9C4           ; $9216: $20 $C4 $A9 - Jump to New Location Saving Return Address
	PLA                 ; $9219: $68 - Pull Accumulator from Stack
	PLA                 ; $921A: $68 - Pull Accumulator from Stack
	RTS                 ; $921B: $60 - Return from Subroutine
	CLC #$92            ; $921D: $29 $92 - Clear Carry Flag
	LDA $0576           ; $9220: $AD $76 $05 - Load Accumulator with Memory
	STA $0280,X         ; $9223: $9D $80 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $9226: $9D $C0 $02 - Store Accumulator in Memory
	RTS                 ; $9229: $60 - Return from Subroutine
	LDA $0C             ; $922A: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $922C: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	CLC #$03            ; $922E: $29 $03 - Clear Carry Flag
	TAY                 ; $9230: $A8 - Transfer Accumulator to Index Y
	LDA $927E,Y         ; $9231: $B9 $7E $92 - Load Accumulator with Memory
	STA $0380,X         ; $9234: $9D $80 $03 - Store Accumulator in Memory
	LDA $9282,Y         ; $9237: $B9 $82 $92 - Load Accumulator with Memory
	JSR $CD43           ; $923A: $20 $43 $CD - Jump to New Location Saving Return Address
	JSR $A9C7           ; $923D: $20 $C7 $A9 - Jump to New Location Saving Return Address
	JSR $A114           ; $9240: $20 $14 $A1 - Jump to New Location Saving Return Address
	LSR A               ; $9243: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	ORA #$20            ; $9245: $09 $20 - OR Memory with Accumulator
	AND $89             ; $9247: $25 $89 - AND Memory with Accumulator
	JSR $A9C7           ; $9249: $20 $C7 $A9 - Jump to New Location Saving Return Address
	INC $02E0,X         ; $924C: $FE $E0 $02 - Increment Memory by One
	JSR $A9F4           ; $924F: $20 $F4 $A9 - Jump to New Location Saving Return Address
	JSR $A114           ; $9252: $20 $14 $A1 - Jump to New Location Saving Return Address
	CLC #$05            ; $9255: $29 $05 - Clear Carry Flag
	BEQ $12             ; $9257: $F0 $12 - Branch on Result Zero
	CLC #$04            ; $9259: $29 $04 - Clear Carry Flag
	BEQ $05             ; $925B: $F0 $05 - Branch on Result Zero
	LDA $02A0,X         ; $925D: $BD $A0 $02 - Load Accumulator with Memory
	BMI $09             ; $9260: $30 $09 - Branch on Result Minus
	JSR $894E           ; $9262: $20 $4E $89 - Jump to New Location Saving Return Address
	JSR $A9F4           ; $9265: $20 $F4 $A9 - Jump to New Location Saving Return Address
	INC $02E0,X         ; $9268: $FE $E0 $02 - Increment Memory by One
	LDA $02E0,X         ; $926B: $BD $E0 $02 - Load Accumulator with Memory
	CMP #$04            ; $926E: $C9 $04 - Compare Memory with Accumulator
	BCC $06             ; $9270: $90 $06 - Branch on Carry Clear
	JSR $8B2C           ; $9272: $20 $2C $8B - Jump to New Location Saving Return Address
	JMP $8833           ; $9275: $4C $33 $88 - Jump to New Location
	JSR $8B60           ; $9278: $20 $60 $8B - Jump to New Location Saving Return Address
	JMP $8823           ; $927B: $4C $23 $88 - Jump to New Location
	BRK                 ; $927E: $00 - Force Break
	BRK                 ; $927F: $00 - Force Break
	BRK                 ; $9280: $00 - Force Break
	TXS                 ; $9287: $9A - Transfer Index X to Stack Register
	LDA #$0D            ; $928A: $A9 $0D - Load Accumulator with Memory
	STA $02E0,X         ; $928C: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $928F: $60 - Return from Subroutine
	LDA #$05            ; $9290: $A9 $05 - Load Accumulator with Memory
	STA $02E0,Y         ; $9292: $99 $E0 $02 - Store Accumulator in Memory
	LDA #$01            ; $9295: $A9 $01 - Load Accumulator with Memory
	STA $0380,Y         ; $9297: $99 $80 $03 - Store Accumulator in Memory
	RTS                 ; $929A: $60 - Return from Subroutine
	LDA $02E0,X         ; $929B: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $929E: $4A $A8 - Shift One Bit Right (Memory or Accumulator)
	LDA $92AC,Y         ; $92A0: $B9 $AC $92 - Load Accumulator with Memory
	BEQ $03             ; $92A3: $F0 $03 - Branch on Result Zero
	JSR $CD43           ; $92A5: $20 $43 $CD - Jump to New Location Saving Return Address
	JSR $8C68           ; $92A8: $20 $68 $8C - Jump to New Location Saving Return Address
	RTS                 ; $92AB: $60 - Return from Subroutine
	BRK                 ; $92AD: $00 - Force Break
	INC $ED00           ; $92AE: $EE $00 $ED - Increment Memory by One
	BRK                 ; $92B1: $00 - Force Break
	CPX $0100           ; $92B2: $EC $00 $01 - Compare Memory and Index X
	ORA ($03,X)         ; $92B7: $01 $03 $1D - OR Memory with Accumulator
	STA $049C,X         ; $92BC: $9D $9C $04 - Store Accumulator in Memory
	RTS                 ; $92BF: $60 - Return from Subroutine
	AND $049C,X         ; $92C0: $3D $9C $04 - AND Memory with Accumulator
	STA $049C,X         ; $92C3: $9D $9C $04 - Store Accumulator in Memory
	RTS                 ; $92C6: $60 - Return from Subroutine
	STA $0466,X         ; $92C7: $9D $66 $04 - Store Accumulator in Memory
	TYA                 ; $92CA: $98 - Transfer Index Y to Accumulator
	STA $046C,X         ; $92CB: $9D $6C $04 - Store Accumulator in Memory
	LDA #$0F            ; $92CE: $A9 $0F - Load Accumulator with Memory
	STA $0490,X         ; $92D0: $9D $90 $04 - Store Accumulator in Memory
	LDA #$24            ; $92D3: $A9 $24 - Load Accumulator with Memory
	STA $0496,X         ; $92D5: $9D $96 $04 - Store Accumulator in Memory
	LDA #$01            ; $92D8: $A9 $01 - Load Accumulator with Memory
	STA $0472,X         ; $92DA: $9D $72 $04 - Store Accumulator in Memory
	LDA #$3F            ; $92DD: $A9 $3F - Load Accumulator with Memory
	STA $0478,X         ; $92DF: $9D $78 $04 - Store Accumulator in Memory
	LDA #$40            ; $92E2: $A9 $40 - Load Accumulator with Memory
	STA $049C,X         ; $92E4: $9D $9C $04 - Store Accumulator in Memory
	CPX #$04            ; $92E7: $E0 $04 - Compare Memory and Index Y
	BCS $05             ; $92E9: $B0 $05 - Branch on Carry Set
	LDA #$FF            ; $92EB: $A9 $FF - Load Accumulator with Memory
	STA $04B2,X         ; $92ED: $9D $B2 $04 - Store Accumulator in Memory
	LDA #$00            ; $92F0: $A9 $00 - Load Accumulator with Memory
	STA $047E,X         ; $92F2: $9D $7E $04 - Store Accumulator in Memory
	STA $04A8,X         ; $92F5: $9D $A8 $04 - Store Accumulator in Memory
	RTS                 ; $92F8: $60 - Return from Subroutine
	LDA $046C,X         ; $92F9: $BD $6C $04 - Load Accumulator with Memory
	BMI $41             ; $92FC: $30 $41 - Branch on Result Minus
	DEC $0472,X         ; $92FE: $DE $72 $04 - Decrement Memory by One
	BNE $3C             ; $9301: $D0 $3C - Branch on Result not Zero
	LDA $046C,X         ; $9303: $BD $6C $04 - Load Accumulator with Memory
	STA $A7             ; $9306: $85 $A7 - Store Accumulator in Memory
	LDA $0466,X         ; $9308: $BD $66 $04 - Load Accumulator with Memory
	STA $A6             ; $930B: $85 $A6 - Store Accumulator in Memory
	LDA #$00            ; $930D: $A9 $00 - Load Accumulator with Memory
	STA $EA             ; $930F: $85 $EA - Store Accumulator in Memory
	JSR $931F           ; $9311: $20 $1F $93 - Jump to New Location Saving Return Address
	LDA $A7             ; $9314: $A5 $A7 - Load Accumulator with Memory
	STA $046C,X         ; $9316: $9D $6C $04 - Store Accumulator in Memory
	LDA $A6             ; $9319: $A5 $A6 - Load Accumulator with Memory
	STA $0466,X         ; $931B: $9D $66 $04 - Store Accumulator in Memory
	RTS                 ; $931E: $60 - Return from Subroutine
	JSR $EAA3           ; $931F: $20 $A3 $EA - Jump to New Location Saving Return Address
	TAY                 ; $9322: $A8 - Transfer Accumulator to Index Y
	CLC #$08            ; $9323: $29 $08 - Clear Carry Flag
	BNE $11             ; $9325: $D0 $11 - Branch on Result not Zero
	STY $EB             ; $9327: $84 $EB - Sore Index Y in Memory
	LDA $8D9D,Y         ; $9329: $B9 $9D $8D - Load Accumulator with Memory
	STA $0472,X         ; $932C: $9D $72 $04 - Store Accumulator in Memory
	JSR $EAA3           ; $932F: $20 $A3 $EA - Jump to New Location Saving Return Address
	CMP #$0F            ; $9332: $C9 $0F - Compare Memory with Accumulator
	BNE $0A             ; $9334: $D0 $0A - Branch on Result not Zero
	LDY $EB             ; $9336: $A4 $EB - Load Index Y with Memory
	JSR $93AE           ; $9338: $20 $AE $93 - Jump to New Location Saving Return Address
	LDA $EA             ; $933B: $A5 $EA - Load Accumulator with Memory
	BEQ $E0             ; $933D: $F0 $E0 - Branch on Result Zero
	RTS                 ; $933F: $60 - Return from Subroutine
	CMP #$0E            ; $9340: $C9 $0E - Compare Memory with Accumulator
	BEQ $64             ; $9342: $F0 $64 - Branch on Result Zero
	CMP #$0D            ; $9344: $C9 $0D - Compare Memory with Accumulator
	BEQ $65             ; $9346: $F0 $65 - Branch on Result Zero
	PHA                 ; $9348: $48 - Push Accumulator on Stack
	JSR $93F6           ; $9349: $20 $F6 $93 - Jump to New Location Saving Return Address
	LDA #$BF            ; $934C: $A9 $BF - Load Accumulator with Memory
	JSR $92C0           ; $934E: $20 $C0 $92 - Jump to New Location Saving Return Address
	PLA                 ; $9351: $68 - Pull Accumulator from Stack
	LDY $92B3,X         ; $9352: $BC $B3 $92 - Load Index Y with Memory
	CPY #$03            ; $9355: $C0 $03 - Compare Memory and Index Y
	BEQ $47             ; $9357: $F0 $47 - Branch on Result Zero
	CPX #$01            ; $9359: $E0 $01 - Compare Memory and Index Y
	BNE $08             ; $935B: $D0 $08 - Branch on Result not Zero
	TAY                 ; $935D: $A8 - Transfer Accumulator to Index Y
	LDA $04C6,Y         ; $935E: $B9 $C6 $04 - Load Accumulator with Memory
	CMP #$0F            ; $9361: $C9 $0F - Compare Memory with Accumulator
	BCS $43             ; $9363: $B0 $43 - Branch on Carry Set
	CLC                 ; $9365: $18 - Clear Carry Flag
	ADC $0496,X         ; $9366: $7D $96 $04 - Add Memory to Accumulator with Carry
	CPX #$00            ; $9369: $E0 $00 - Compare Memory and Index Y
	BNE $25             ; $936B: $D0 $25 - Branch on Result not Zero
	BIT $04C9           ; $936D: $2C $C9 $04 - Test Bits in Memory with Accumulator
	BPL $03             ; $9370: $10 $03 - Branch on Result Plus
	STA $04C5           ; $9372: $8D $C5 $04 - Store Accumulator in Memory
	LDY $04CA           ; $9375: $AC $CA $04 - Load Index Y with Memory
	BEQ $18             ; $9378: $F0 $18 - Branch on Result Zero
	PHA                 ; $937A: $48 - Push Accumulator on Stack
	INX                 ; $937B: $E8 - Increment Index X by One
	SEC                 ; $937C: $38 - Set Carry Flag
	SBC $04CA           ; $937D: $ED $CA $04 - Subtract Memory from Accumulator with Borrow
	JSR $9392           ; $9380: $20 $92 $93 - Jump to New Location Saving Return Address
	JSR $93F6           ; $9383: $20 $F6 $93 - Jump to New Location Saving Return Address
	LDA #$BF            ; $9386: $A9 $BF - Load Accumulator with Memory
	JSR $92C0           ; $9388: $20 $C0 $92 - Jump to New Location Saving Return Address
	LDA #$0F            ; $938B: $A9 $0F - Load Accumulator with Memory
	STA $0490,X         ; $938D: $9D $90 $04 - Store Accumulator in Memory
	DEX                 ; $9390: $CA - Decrement Index X by One
	PLA                 ; $9391: $68 - Pull Accumulator from Stack
	TAY                 ; $9392: $A8 - Transfer Accumulator to Index Y
	LDA $963E,Y         ; $9393: $B9 $3E $96 - Load Accumulator with Memory
	STA $0484,X         ; $9396: $9D $84 $04 - Store Accumulator in Memory
	LDA $968C,Y         ; $9399: $B9 $8C $96 - Load Accumulator with Memory
	STA $048A,X         ; $939C: $9D $8A $04 - Store Accumulator in Memory
	RTS                 ; $939F: $60 - Return from Subroutine
	ASL A               ; $93A0: $0A - Shift Left One Bit
	CLC                 ; $93A1: $18 - Clear Carry Flag
	ADC #$01            ; $93A2: $69 $01 - Add Memory to Accumulator with Carry
	STA $0484,X         ; $93A4: $9D $84 $04 - Store Accumulator in Memory
	RTS                 ; $93A7: $60 - Return from Subroutine
	LDA #$40            ; $93A8: $A9 $40 - Load Accumulator with Memory
	JSR $92B9           ; $93AA: $20 $B9 $92 - Jump to New Location Saving Return Address
	RTS                 ; $93AD: $60 - Return from Subroutine
	LDA $93C7,Y         ; $93AE: $B9 $C7 $93 - Load Accumulator with Memory
	PHA                 ; $93B1: $48 - Push Accumulator on Stack
	LDA $93B7,Y         ; $93B2: $B9 $B7 $93 - Load Accumulator with Memory
	PHA                 ; $93B5: $48 - Push Accumulator on Stack
	RTS                 ; $93B6: $60 - Return from Subroutine
	DEC $D6,X           ; $93B7: $D6 $D6 - Decrement Memory by One
	DEC $EF,X           ; $93B9: $D6 $EF - Decrement Memory by One
	ORA #$2A            ; $93BB: $09 $2A - OR Memory with Accumulator
	ADC $3102,X         ; $93BE: $7D $02 $31 - Add Memory to Accumulator with Carry
	ROR $936E,X         ; $93C5: $7E $6E $93 - Rotate One Bit Right
	STY $94,X           ; $93CB: $94 $94 - Sore Index Y in Memory
	STY $94,X           ; $93CD: $94 $94 - Sore Index Y in Memory
	STY $94,X           ; $93CF: $94 $94 - Sore Index Y in Memory
	STY $94,X           ; $93D1: $94 $94 - Sore Index Y in Memory
	STY $94,X           ; $93D5: $94 $94 - Sore Index Y in Memory
	TYA                 ; $93D7: $98 - Transfer Index Y to Accumulator
	LSR A               ; $93D8: $4A $6A - Shift One Bit Right (Memory or Accumulator)
	ROR A               ; $93DA: $6A - Rotate One Bit Right
	STA $EB             ; $93DB: $85 $EB - Store Accumulator in Memory
	LDA $0478,X         ; $93DD: $BD $78 $04 - Load Accumulator with Memory
	CLC #$3F            ; $93E0: $29 $3F - Clear Carry Flag
	ORA $EB             ; $93E2: $05 $EB - OR Memory with Accumulator
	STA $0478,X         ; $93E4: $9D $78 $04 - Store Accumulator in Memory
	RTS                 ; $93E7: $60 - Return from Subroutine
	LDA #$0C            ; $93E8: $A9 $0C - Load Accumulator with Memory
	BNE $58             ; $93EA: $D0 $58 - Branch on Result not Zero
	LDA #$F4            ; $93EC: $A9 $F4 - Load Accumulator with Memory
	BNE $54             ; $93EE: $D0 $54 - Branch on Result not Zero
	JSR $EAA3           ; $93F0: $20 $A3 $EA - Jump to New Location Saving Return Address
	STA $047E,X         ; $93F3: $9D $7E $04 - Store Accumulator in Memory
	CPX #$04            ; $93F6: $E0 $04 - Compare Memory and Index Y
	BCS $08             ; $93F8: $B0 $08 - Branch on Carry Set
	LDA #$00            ; $93FA: $A9 $00 - Load Accumulator with Memory
	STA $04BA,X         ; $93FC: $9D $BA $04 - Store Accumulator in Memory
	STA $04BE,X         ; $93FF: $9D $BE $04 - Store Accumulator in Memory
	RTS                 ; $9402: $60 - Return from Subroutine
	JSR $EAA3           ; $9403: $20 $A3 $EA - Jump to New Location Saving Return Address
	STA $0490,X         ; $9406: $9D $90 $04 - Store Accumulator in Memory
	RTS                 ; $9409: $60 - Return from Subroutine
	LDA #$00            ; $940A: $A9 $00 - Load Accumulator with Memory
	STA $EB             ; $940C: $85 $EB - Store Accumulator in Memory
	JSR $EAC5           ; $940E: $20 $C5 $EA - Jump to New Location Saving Return Address
	BEQ $12             ; $9411: $F0 $12 - Branch on Result Zero
	LSR A               ; $9413: $4A $26 - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $9416: $4A $26 - Shift One Bit Right (Memory or Accumulator)
	STA $04A2,X         ; $9419: $9D $A2 $04 - Store Accumulator in Memory
	JSR $9425           ; $941C: $20 $25 $94 - Jump to New Location Saving Return Address
	ORA $EB             ; $941F: $05 $EB - OR Memory with Accumulator
	STA $049C,X         ; $9421: $9D $9C $04 - Store Accumulator in Memory
	RTS                 ; $9424: $60 - Return from Subroutine
	LDA #$FC            ; $9425: $A9 $FC - Load Accumulator with Memory
	JSR $92C0           ; $9427: $20 $C0 $92 - Jump to New Location Saving Return Address
	RTS                 ; $942A: $60 - Return from Subroutine
	JSR $EAA3           ; $942B: $20 $A3 $EA - Jump to New Location Saving Return Address
	STA $04CA           ; $942E: $8D $CA $04 - Store Accumulator in Memory
	RTS                 ; $9431: $60 - Return from Subroutine
	JSR $EAC5           ; $9432: $20 $C5 $EA - Jump to New Location Saving Return Address
	LSR A               ; $9435: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	JSR $943F           ; $9438: $20 $3F $94 - Jump to New Location Saving Return Address
	STA $0497           ; $943B: $8D $97 $04 - Store Accumulator in Memory
	RTS                 ; $943E: $60 - Return from Subroutine
	LSR A               ; $943F: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	EOR #$FF            ; $9442: $49 $FF - Exclusive-OR Memory with Accumulator
	CLC                 ; $9444: $18 - Clear Carry Flag
	ADC $0496,X         ; $9445: $7D $96 $04 - Add Memory to Accumulator with Carry
	STA $0496,X         ; $9448: $9D $96 $04 - Store Accumulator in Memory
	RTS                 ; $944B: $60 - Return from Subroutine
	LDA #$00            ; $944C: $A9 $00 - Load Accumulator with Memory
	STA $04B6,X         ; $944E: $9D $B6 $04 - Store Accumulator in Memory
	JSR $EAA3           ; $9451: $20 $A3 $EA - Jump to New Location Saving Return Address
	CMP #$08            ; $9454: $C9 $08 - Compare Memory with Accumulator
	BCC $02             ; $9456: $90 $02 - Branch on Carry Clear
	ADC #$EF            ; $9458: $69 $EF - Add Memory to Accumulator with Carry
	JSR $9444           ; $945A: $20 $44 $94 - Jump to New Location Saving Return Address
	JSR $EAC5           ; $945D: $20 $C5 $EA - Jump to New Location Saving Return Address
	TAY                 ; $9460: $A8 - Transfer Accumulator to Index Y
	LDA $A6             ; $9461: $A5 $A6 - Load Accumulator with Memory
	STA $04AE,X         ; $9463: $9D $AE $04 - Store Accumulator in Memory
	LDA $A7             ; $9466: $A5 $A7 - Load Accumulator with Memory
	STA $04B2,X         ; $9468: $9D $B2 $04 - Store Accumulator in Memory
	TYA                 ; $946B: $98 - Transfer Index Y to Accumulator
	JMP $EA89           ; $946C: $4C $89 $EA - Jump to New Location
	TXA                 ; $946F: $8A - Transfer Index X to Accumulator
	PHA                 ; $9470: $48 - Push Accumulator on Stack
	LDX #$02            ; $9471: $A2 $02 - Load Index X with Memory
	JSR $EAA3           ; $9473: $20 $A3 $EA - Jump to New Location Saving Return Address
	STA $04C6,X         ; $9476: $9D $C6 $04 - Store Accumulator in Memory
	DEX                 ; $9479: $CA - Decrement Index X by One
	BPL $F7             ; $947A: $10 $F7 - Branch on Result Plus
	PLA                 ; $947C: $68 - Pull Accumulator from Stack
	TAX                 ; $947D: $AA - Transfer Accumulator to Index X
	RTS                 ; $947E: $60 - Return from Subroutine
	JSR $EAA3           ; $947F: $20 $A3 $EA - Jump to New Location Saving Return Address
	CMP $04A8,X         ; $9482: $DD $A8 $04 - Compare Memory with Accumulator
	BCC $09             ; $9485: $90 $09 - Branch on Carry Clear
	INC $04A8,X         ; $9487: $FE $A8 $04 - Increment Memory by One
	JSR $EAC5           ; $948A: $20 $C5 $EA - Jump to New Location Saving Return Address
	JMP $EA89           ; $948D: $4C $89 $EA - Jump to New Location
	LDA #$00            ; $9490: $A9 $00 - Load Accumulator with Memory
	STA $04A8,X         ; $9492: $9D $A8 $04 - Store Accumulator in Memory
	JMP $EAC5           ; $9495: $4C $C5 $EA - Jump to New Location
	CPX #$04            ; $9498: $E0 $04 - Compare Memory and Index Y
	BCC $13             ; $949A: $90 $13 - Branch on Carry Clear
	LDA #$00            ; $949C: $A9 $00 - Load Accumulator with Memory
	STA $049C,X         ; $949E: $9D $9C $04 - Store Accumulator in Memory
	LDA #$FF            ; $94A1: $A9 $FF - Load Accumulator with Memory
	STA $A7             ; $94A3: $85 $A7 - Store Accumulator in Memory
	LDA $92B3,X         ; $94A5: $BD $B3 $92 - Load Accumulator with Memory
	TAY                 ; $94A8: $A8 - Transfer Accumulator to Index Y
	JSR $A0B1           ; $94A9: $20 $B1 $A0 - Jump to New Location Saving Return Address
	INC $EA             ; $94AC: $E6 $EA - Increment Memory by One
	RTS                 ; $94AE: $60 - Return from Subroutine
	LDY $04B2,X         ; $94AF: $BC $B2 $04 - Load Index Y with Memory
	BMI $CA             ; $94B2: $30 $CA - Branch on Result Minus
	LDA $04AE,X         ; $94B4: $BD $AE $04 - Load Accumulator with Memory
	JSR $EA77           ; $94B7: $20 $77 $EA - Jump to New Location Saving Return Address
	LDA #$FF            ; $94BA: $A9 $FF - Load Accumulator with Memory
	STA $04B2,X         ; $94BC: $9D $B2 $04 - Store Accumulator in Memory
	JSR $EAA3           ; $94BF: $20 $A3 $EA - Jump to New Location Saving Return Address
	CMP $04B6,X         ; $94C2: $DD $B6 $04 - Compare Memory with Accumulator
	BEQ $B7             ; $94C5: $F0 $B7 - Branch on Result Zero
	LDY $04B6,X         ; $94C7: $BC $B6 $04 - Load Index Y with Memory
	INC $04B6,X         ; $94CA: $FE $B6 $04 - Increment Memory by One
	LDA #$03            ; $94CD: $A9 $03 - Load Accumulator with Memory
	JSR $EA89           ; $94CF: $20 $89 $EA - Jump to New Location Saving Return Address
	JMP $945D           ; $94D2: $4C $5D $94 - Jump to New Location
	JSR $EAD6           ; $94D5: $20 $D6 $EA - Jump to New Location Saving Return Address
	JMP $EA77           ; $94D8: $4C $77 $EA - Jump to New Location
	LDA $049C,X         ; $94DB: $BD $9C $04 - Load Accumulator with Memory
	CLC #$03            ; $94DE: $29 $03 - Clear Carry Flag
	BEQ $13             ; $94E0: $F0 $13 - Branch on Result Zero
	CMP #$01            ; $94E2: $C9 $01 - Compare Memory with Accumulator
	BEQ $10             ; $94E4: $F0 $10 - Branch on Result Zero
	LDA $0484,X         ; $94E6: $BD $84 $04 - Load Accumulator with Memory
	CLC                 ; $94E9: $18 - Clear Carry Flag
	ADC $04A2,X         ; $94EA: $7D $A2 $04 - Add Memory to Accumulator with Carry
	STA $0484,X         ; $94ED: $9D $84 $04 - Store Accumulator in Memory
	BCC $03             ; $94F0: $90 $03 - Branch on Carry Clear
	INC $048A,X         ; $94F2: $FE $8A $04 - Increment Memory by One
	RTS                 ; $94F5: $60 - Return from Subroutine
	LDA $0484,X         ; $94F6: $BD $84 $04 - Load Accumulator with Memory
	SEC                 ; $94F9: $38 - Set Carry Flag
	SBC $04A2,X         ; $94FA: $FD $A2 $04 - Subtract Memory from Accumulator with Borrow
	STA $0484,X         ; $94FD: $9D $84 $04 - Store Accumulator in Memory
	BCS $03             ; $9500: $B0 $03 - Branch on Carry Set
	DEC $048A,X         ; $9502: $DE $8A $04 - Decrement Memory by One
	RTS                 ; $9505: $60 - Return from Subroutine
	STA $14,X           ; $9506: $95 $14 - Store Accumulator in Memory
	STA $09,X           ; $9508: $95 $09 - Store Accumulator in Memory
	LDA #$FD            ; $950A: $A9 $FD - Load Accumulator with Memory
	STA $02A0,X         ; $950C: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$01            ; $950F: $A9 $01 - Load Accumulator with Memory
	STA $0260,X         ; $9511: $9D $60 $02 - Store Accumulator in Memory
	RTS                 ; $9514: $60 - Return from Subroutine
	JSR $8C73           ; $9515: $20 $73 $8C - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $9518: $BD $A0 $02 - Load Accumulator with Memory
	CMP #$03            ; $951B: $C9 $03 - Compare Memory with Accumulator
	BNE $03             ; $951D: $D0 $03 - Branch on Result not Zero
	STA $02C0,X         ; $951F: $9D $C0 $02 - Store Accumulator in Memory
	JSR $8B65           ; $9522: $20 $65 $8B - Jump to New Location Saving Return Address
	LDA #$DD            ; $9525: $A9 $DD - Load Accumulator with Memory
	JMP $8820           ; $9527: $4C $20 $88 - Jump to New Location
	STA $2D,X           ; $952A: $95 $2D - Store Accumulator in Memory
	CMP $BD6F,Y         ; $952C: $D9 $6F $BD - Compare Memory with Accumulator
	CPX #$02            ; $952F: $E0 $02 - Compare Memory and Index Y
	LSR A               ; $9531: $4A $A8 - Shift One Bit Right (Memory or Accumulator)
	LDA $953C,Y         ; $9533: $B9 $3C $95 - Load Accumulator with Memory
	JSR $CD43           ; $9536: $20 $43 $CD - Jump to New Location Saving Return Address
	JMP $8C62           ; $9539: $4C $62 $8C - Jump to New Location
	BEQ $FF             ; $953C: $F0 $FF - Branch on Result Zero
	INC $F0             ; $953E: $E6 $F0 - Increment Memory by One
	JSR $FF6F           ; $9540: $20 $6F $FF - Jump to New Location Saving Return Address
	JSR $EEDA           ; $9543: $20 $DA $EE - Jump to New Location Saving Return Address
	LDA #$0F            ; $9546: $A9 $0F - Load Accumulator with Memory
	LDX #$1F            ; $9548: $A2 $1F - Load Index X with Memory
	STA $2007           ; $954A: $8D $07 $20 - Store Accumulator in Memory
	DEX                 ; $954D: $CA - Decrement Index X by One
	BPL $FA             ; $954E: $10 $FA - Branch on Result Plus
	RTS                 ; $9550: $60 - Return from Subroutine
	JSR $9540           ; $9551: $20 $40 $95 - Jump to New Location Saving Return Address
	TXS                 ; $9554: $9A - Transfer Index X to Stack Register
	BMI $10             ; $9555: $30 $10 - Branch on Result Minus
	CLD                 ; $9557: $D8 - Clear Decimal Mode
	LDX #$40            ; $9558: $A2 $40 - Load Index X with Memory
	STX $4017           ; $955A: $8E $17 $40 - Store Index X in Memory
	LDX #$FF            ; $955D: $A2 $FF - Load Index X with Memory
	TXS                 ; $955F: $9A - Transfer Index X to Stack Register
	STA $4015           ; $9560: $8D $15 $40 - Store Accumulator in Memory
	LDY #$02            ; $9563: $A0 $02 - Load Index Y with Memory
	BNE $02             ; $9565: $D0 $02 - Branch on Result not Zero
	LDY #$08            ; $9567: $A0 $08 - Load Index Y with Memory
	STY $00             ; $9569: $84 $00 - Sore Index Y in Memory
	LDY #$00            ; $956B: $A0 $00 - Load Index Y with Memory
	STY $01             ; $956D: $84 $01 - Sore Index Y in Memory
	TYA                 ; $956F: $98 - Transfer Index Y to Accumulator
	STA ($00),Y         ; $9570: $91 $00 $E6 - Store Accumulator in Memory
	BRK                 ; $9573: $00 - Force Break
	BNE $02             ; $9574: $D0 $02 - Branch on Result not Zero
	INC $01             ; $9576: $E6 $01 - Increment Memory by One
	LDX $01             ; $9578: $A6 $01 - Load Index X with Memory
	CPX #$08            ; $957A: $E0 $08 - Compare Memory and Index Y
	BNE $F2             ; $957C: $D0 $F2 - Branch on Result not Zero
	JSR $FF5C           ; $957E: $20 $5C $FF - Jump to New Location Saving Return Address
	LDA #$00            ; $9581: $A9 $00 - Load Accumulator with Memory
	STA $2000           ; $9583: $8D $00 $20 - Store Accumulator in Memory
	STA $2001           ; $9586: $8D $01 $20 - Store Accumulator in Memory
	JSR $FF5C           ; $9589: $20 $5C $FF - Jump to New Location Saving Return Address
	JSR $FF65           ; $958C: $20 $65 $FF - Jump to New Location Saving Return Address
	LDA $FE             ; $958F: $A5 $FE - Load Accumulator with Memory
	ORA #$88            ; $9591: $09 $88 - OR Memory with Accumulator
	STA $FE             ; $9593: $85 $FE - Store Accumulator in Memory
	STA $2000           ; $9595: $8D $00 $20 - Store Accumulator in Memory
	LDA $04             ; $9598: $A5 $04 - Load Accumulator with Memory
	BEQ $06             ; $959A: $F0 $06 - Branch on Result Zero
	JSR $E7B1           ; $959C: $20 $B1 $E7 - Jump to New Location Saving Return Address
	JMP $95A5           ; $959F: $4C $A5 $95 - Jump to New Location
	JSR $A66A           ; $95A2: $20 $6A $A6 - Jump to New Location Saving Return Address
	LDA $80             ; $95A5: $A5 $80 - Load Accumulator with Memory
	BEQ $FC             ; $95A7: $F0 $FC - Branch on Result Zero
	JSR $95B5           ; $95A9: $20 $B5 $95 - Jump to New Location Saving Return Address
	JSR $B92D           ; $95AC: $20 $2D $B9 - Jump to New Location Saving Return Address
	LDA #$00            ; $95AF: $A9 $00 - Load Accumulator with Memory
	STA $80             ; $95B1: $85 $80 - Store Accumulator in Memory
	BEQ $F0             ; $95B3: $F0 $F0 - Branch on Result Zero
	LDX #$03            ; $95B5: $A2 $03 - Load Index X with Memory
	LDA $E5,X           ; $95B7: $B5 $E5 $9D - Load Accumulator with Memory
	ORA $CA             ; $95BB: $05 $CA - OR Memory with Accumulator
	BPL $F8             ; $95BD: $10 $F8 - Branch on Result Plus
	LDY #$01            ; $95BF: $A0 $01 - Load Index Y with Memory
	STY $4016           ; $95C1: $8C $16 $40 - Sore Index Y in Memory
	DEY                 ; $95C4: $88 - Decrement Index Y by One
	STY $4016           ; $95C5: $8C $16 $40 - Sore Index Y in Memory
	LDX #$02            ; $95C8: $A2 $02 - Load Index X with Memory
	LDY #$08            ; $95CA: $A0 $08 - Load Index Y with Memory
	LDA $4016           ; $95CC: $AD $16 $40 - Load Accumulator with Memory
	LSR A               ; $95CF: $4A $36 - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $95D2: $4A $36 - Shift One Bit Right (Memory or Accumulator)
	CMP $17AD,X         ; $95D4: $DD $AD $17 - Compare Memory with Accumulator
	RTI                 ; $95D7: $40 - Return from Interrupt
	LSR A               ; $95D8: $4A $36 - Shift One Bit Right (Memory or Accumulator)
	CPX #$4A            ; $95DA: $E0 $4A - Compare Memory and Index Y
	ROL $E3,X           ; $95DC: $36 $E3 - Rotate One Bit Left
	DEY                 ; $95DE: $88 - Decrement Index Y by One
	BNE $EB             ; $95DF: $D0 $EB - Branch on Result not Zero
	DEX                 ; $95E1: $CA - Decrement Index X by One
	BPL $E6             ; $95E2: $10 $E6 - Branch on Result Plus
	LDA $DF             ; $95E4: $A5 $DF - Load Accumulator with Memory
	STA $E7             ; $95E6: $85 $E7 - Store Accumulator in Memory
	LDA $E5             ; $95E8: $A5 $E5 - Load Accumulator with Memory
	STA $E8             ; $95EA: $85 $E8 - Store Accumulator in Memory
	LDA $DC             ; $95EC: $A5 $DC - Load Accumulator with Memory
	LDY $75             ; $95EE: $A4 $75 - Load Index Y with Memory
	BNE $02             ; $95F0: $D0 $02 - Branch on Result not Zero
	ORA $E7             ; $95F2: $05 $E7 - OR Memory with Accumulator
	STA $E5             ; $95F4: $85 $E5 - Store Accumulator in Memory
	LDA $E2             ; $95F6: $A5 $E2 - Load Accumulator with Memory
	LDY $76             ; $95F8: $A4 $76 - Load Index Y with Memory
	BNE $02             ; $95FA: $D0 $02 - Branch on Result not Zero
	ORA $E8             ; $95FC: $05 $E8 - OR Memory with Accumulator
	STA $E6             ; $95FE: $85 $E6 - Store Accumulator in Memory
	LDA $DA             ; $9600: $A5 $DA - Load Accumulator with Memory
	CMP #$10            ; $9602: $C9 $10 - Compare Memory with Accumulator
	BNE $15             ; $9604: $D0 $15 - Branch on Result not Zero
	LDA $E0             ; $9606: $A5 $E0 - Load Accumulator with Memory
	CMP #$20            ; $9608: $C9 $20 - Compare Memory with Accumulator
	BNE $0F             ; $960A: $D0 $0F - Branch on Result not Zero
	LDA $DB             ; $960C: $A5 $DB - Load Accumulator with Memory
	ORA $E7             ; $960E: $05 $E7 - OR Memory with Accumulator
	STA $E7             ; $9610: $85 $E7 - Store Accumulator in Memory
	LDA $E1             ; $9612: $A5 $E1 - Load Accumulator with Memory
	ORA $E8             ; $9614: $05 $E8 - OR Memory with Accumulator
	STA $E8             ; $9616: $85 $E8 - Store Accumulator in Memory
	JMP $9633           ; $9618: $4C $33 $96 - Jump to New Location
	LDA $DD             ; $961B: $A5 $DD - Load Accumulator with Memory
	CMP #$20            ; $961D: $C9 $20 - Compare Memory with Accumulator
	BNE $12             ; $961F: $D0 $12 - Branch on Result not Zero
	LDA $E3             ; $9621: $A5 $E3 - Load Accumulator with Memory
	CMP #$10            ; $9623: $C9 $10 - Compare Memory with Accumulator
	BNE $0C             ; $9625: $D0 $0C - Branch on Result not Zero
	LDA $DE             ; $9627: $A5 $DE - Load Accumulator with Memory
	ORA $E5             ; $9629: $05 $E5 - OR Memory with Accumulator
	STA $E5             ; $962B: $85 $E5 - Store Accumulator in Memory
	LDA $E4             ; $962D: $A5 $E4 - Load Accumulator with Memory
	ORA $E6             ; $962F: $05 $E6 - OR Memory with Accumulator
	STA $E6             ; $9631: $85 $E6 - Store Accumulator in Memory
	LDA $E5             ; $9633: $A5 $E5 - Load Accumulator with Memory
	LDY $71             ; $9635: $A4 $71 - Load Index Y with Memory
	BNE $08             ; $9637: $D0 $08 - Branch on Result not Zero
	ORA $E6             ; $9639: $05 $E6 - OR Memory with Accumulator
	ORA $E7             ; $963B: $05 $E7 - OR Memory with Accumulator
	ORA $E8             ; $963D: $05 $E8 - OR Memory with Accumulator
	STA $E5             ; $963F: $85 $E5 - Store Accumulator in Memory
	EOR $05D7           ; $9641: $4D $D7 $05 - Exclusive-OR Memory with Accumulator
	AND $E5             ; $9644: $25 $E5 - AND Memory with Accumulator
	STA $E4             ; $9646: $85 $E4 - Store Accumulator in Memory
	RTS                 ; $9648: $60 - Return from Subroutine
	LDX $F34E           ; $964A: $AE $4E $F3 - Load Index X with Memory
	EOR $B901           ; $964E: $4D $01 $B9 - Exclusive-OR Memory with Accumulator
	ADC $35,X           ; $9651: $75 $35 - Add Memory to Accumulator with Carry
	SED                 ; $9653: $F8 - Set Decimal Flag
	SBC $A6CF,Y         ; $9658: $F9 $CF $A6 - Subtract Memory from Accumulator with Borrow
	CPY $AB             ; $9661: $C4 $AB - Compare Memory and Index Y
	RTI                 ; $9667: $40 - Return from Interrupt
	ROL $0D1D           ; $9668: $2E $1D $0D - Rotate One Bit Left
	INC $E2EF,X         ; $966B: $FE $EF $E2 - Increment Memory by One
	CMP $C9,X           ; $966E: $D5 $C9 - Compare Memory with Accumulator
	LDX $A9B3,Y         ; $9670: $BE $B3 $A9 - Load Index X with Memory
	LDY #$97            ; $9673: $A0 $97 - Load Index Y with Memory
	STX $7F86           ; $9675: $8E $86 $7F - Store Index X in Memory
	ADC ($6A),Y         ; $9679: $71 $6A $64 - Add Memory to Accumulator with Carry
	EOR $5054,Y         ; $967D: $59 $54 $50 - Exclusive-OR Memory with Accumulator
	SEC                 ; $9685: $38 - Set Carry Flag
	AND $32,X           ; $9686: $35 $32 - AND Memory with Accumulator
	BIT $282A           ; $9689: $2C $2A $28 - Test Bits in Memory with Accumulator
	AND $23             ; $968C: $25 $23 - AND Memory with Accumulator
	AND ($1F,X)         ; $968E: $21 $1F $1D - AND Memory with Accumulator
	ORA $1617,Y         ; $9693: $19 $17 $16 - OR Memory with Accumulator
	ORA $07,X           ; $9696: $15 $07 - OR Memory with Accumulator
	ASL $06             ; $9698: $06 $06 - Shift Left One Bit
	ORA $05             ; $969A: $05 $05 - OR Memory with Accumulator
	ORA $05             ; $969C: $05 $05 - OR Memory with Accumulator
	ORA ($01,X)         ; $96AD: $01 $01 $01 - OR Memory with Accumulator
	ORA ($01,X)         ; $96B0: $01 $01 $01 - OR Memory with Accumulator
	ORA ($01,X)         ; $96B3: $01 $01 $01 - OR Memory with Accumulator
	ORA ($01,X)         ; $96B6: $01 $01 $01 - OR Memory with Accumulator
	BRK                 ; $96B9: $00 - Force Break
	BRK                 ; $96BA: $00 - Force Break
	BRK                 ; $96BB: $00 - Force Break
	BRK                 ; $96BC: $00 - Force Break
	BRK                 ; $96BD: $00 - Force Break
	BRK                 ; $96BE: $00 - Force Break
	BRK                 ; $96BF: $00 - Force Break
	BRK                 ; $96C0: $00 - Force Break
	BRK                 ; $96C1: $00 - Force Break
	BRK                 ; $96C2: $00 - Force Break
	BRK                 ; $96C3: $00 - Force Break
	BRK                 ; $96C4: $00 - Force Break
	BRK                 ; $96C5: $00 - Force Break
	BRK                 ; $96C6: $00 - Force Break
	BRK                 ; $96C7: $00 - Force Break
	BRK                 ; $96C8: $00 - Force Break
	BRK                 ; $96C9: $00 - Force Break
	BRK                 ; $96CA: $00 - Force Break
	BRK                 ; $96CB: $00 - Force Break
	BRK                 ; $96CC: $00 - Force Break
	BRK                 ; $96CD: $00 - Force Break
	BRK                 ; $96CE: $00 - Force Break
	BRK                 ; $96CF: $00 - Force Break
	BRK                 ; $96D0: $00 - Force Break
	BRK                 ; $96D1: $00 - Force Break
	BRK                 ; $96D2: $00 - Force Break
	BRK                 ; $96D3: $00 - Force Break
	BRK                 ; $96D4: $00 - Force Break
	BRK                 ; $96D5: $00 - Force Break
	BRK                 ; $96D6: $00 - Force Break
	BRK                 ; $96D7: $00 - Force Break
	BRK                 ; $96D8: $00 - Force Break
	BRK                 ; $96D9: $00 - Force Break
	BRK                 ; $96DA: $00 - Force Break
	BRK                 ; $96DB: $00 - Force Break
	BRK                 ; $96DC: $00 - Force Break
	BRK                 ; $96DD: $00 - Force Break
	BRK                 ; $96DE: $00 - Force Break
	BRK                 ; $96DF: $00 - Force Break
	BRK                 ; $96E0: $00 - Force Break
	BRK                 ; $96E1: $00 - Force Break
	BRK                 ; $96E2: $00 - Force Break
	BRK                 ; $96E3: $00 - Force Break
	BRK                 ; $96E4: $00 - Force Break
	LDA #$30            ; $96E5: $A9 $30 - Load Accumulator with Memory
	STA $400C           ; $96E7: $8D $0C $40 - Store Accumulator in Memory
	LDA #$0F            ; $96EA: $A9 $0F - Load Accumulator with Memory
	STA $4015           ; $96EC: $8D $15 $40 - Store Accumulator in Memory
	LDA #$08            ; $96EF: $A9 $08 - Load Accumulator with Memory
	STA $4001           ; $96F1: $8D $01 $40 - Store Accumulator in Memory
	STA $4005           ; $96F4: $8D $05 $40 - Store Accumulator in Memory
	LDA #$C0            ; $96F7: $A9 $C0 - Load Accumulator with Memory
	STA $4017           ; $96F9: $8D $17 $40 - Store Accumulator in Memory
	LDA #$40            ; $96FC: $A9 $40 - Load Accumulator with Memory
	STA $4017           ; $96FE: $8D $17 $40 - Store Accumulator in Memory
	LDA #$00            ; $9701: $A9 $00 - Load Accumulator with Memory
	LDX #$0B            ; $9703: $A2 $0B - Load Index X with Memory
	STA $4000,X         ; $9705: $9D $00 $40 - Store Accumulator in Memory
	DEX                 ; $9708: $CA - Decrement Index X by One
	BNE $FA             ; $9709: $D0 $FA - Branch on Result not Zero
	LDX #$06            ; $970B: $A2 $06 - Load Index X with Memory
	STA $400D,X         ; $970D: $9D $0D $40 - Store Accumulator in Memory
	DEX                 ; $9710: $CA - Decrement Index X by One
	BNE $FA             ; $9711: $D0 $FA - Branch on Result not Zero
	LDX #$05            ; $9713: $A2 $05 - Load Index X with Memory
	LDY #$FF            ; $9715: $A0 $FF - Load Index Y with Memory
	JSR $92C7           ; $9717: $20 $C7 $92 - Jump to New Location Saving Return Address
	DEX                 ; $971A: $CA - Decrement Index X by One
	BPL $F8             ; $971B: $10 $F8 - Branch on Result Plus
	STA $19             ; $971D: $85 $19 - Store Accumulator in Memory
	LDX #$03            ; $971F: $A2 $03 - Load Index X with Memory
	LDA #$FF            ; $9721: $A9 $FF - Load Accumulator with Memory
	STA $04F5,X         ; $9723: $9D $F5 $04 - Store Accumulator in Memory
	TXA                 ; $9726: $8A - Transfer Index X to Accumulator
	STA $04F9,X         ; $9727: $9D $F9 $04 - Store Accumulator in Memory
	DEX                 ; $972A: $CA - Decrement Index X by One
	BPL $F4             ; $972B: $10 $F4 - Branch on Result Plus
	LDA #$03            ; $972D: $A9 $03 - Load Accumulator with Memory
	STA $17             ; $972F: $85 $17 - Store Accumulator in Memory
	STA $18             ; $9731: $85 $18 - Store Accumulator in Memory
	STA $1A             ; $9733: $85 $1A - Store Accumulator in Memory
	RTS                 ; $9735: $60 - Return from Subroutine
	LDA #$00            ; $9736: $A9 $00 - Load Accumulator with Memory
	STA $04C5           ; $9738: $8D $C5 $04 - Store Accumulator in Memory
	LDA $E9             ; $973B: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $973D: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	CLC                 ; $973F: $18 - Clear Carry Flag
	LDA $1B             ; $9740: $A5 $1B - Load Accumulator with Memory
	PHA                 ; $9742: $48 - Push Accumulator on Stack
	BEQ $0A             ; $9743: $F0 $0A - Branch on Result Zero
	BMI $08             ; $9745: $30 $08 - Branch on Result Minus
	LSR A               ; $9747: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $9749: $4A $8D - Shift One Bit Right (Memory or Accumulator)
	INC $1B             ; $974D: $E6 $1B - Increment Memory by One
	PLA                 ; $974F: $68 - Pull Accumulator from Stack
	CLC                 ; $9750: $18 - Clear Carry Flag
	ADC #$1A            ; $9751: $69 $1A - Add Memory to Accumulator with Carry
	BMI $03             ; $9753: $30 $03 - Branch on Result Minus
	STA $4011           ; $9755: $8D $11 $40 - Store Accumulator in Memory
	LDA $1A             ; $9758: $A5 $1A - Load Accumulator with Memory
	BNE $10             ; $975A: $D0 $10 - Branch on Result not Zero
	DEC $18             ; $975C: $C6 $18 - Decrement Memory by One
	BNE $0C             ; $975E: $D0 $0C - Branch on Result not Zero
	LDX #$03            ; $9760: $A2 $03 - Load Index X with Memory
	JSR $92F9           ; $9762: $20 $F9 $92 - Jump to New Location Saving Return Address
	DEX                 ; $9765: $CA - Decrement Index X by One
	BPL $FA             ; $9766: $10 $FA - Branch on Result Plus
	LDA $17             ; $9768: $A5 $17 - Load Accumulator with Memory
	STA $18             ; $976A: $85 $18 - Store Accumulator in Memory
	LDX #$04            ; $976C: $A2 $04 - Load Index X with Memory
	JSR $92F9           ; $976E: $20 $F9 $92 - Jump to New Location Saving Return Address
	INX                 ; $9771: $E8 - Increment Index X by One
	JSR $92F9           ; $9772: $20 $F9 $92 - Jump to New Location Saving Return Address
	LDX #$05            ; $9775: $A2 $05 - Load Index X with Memory
	JSR $94DB           ; $9777: $20 $DB $94 - Jump to New Location Saving Return Address
	CPX #$04            ; $977A: $E0 $04 - Compare Memory and Index Y
	BCC $0E             ; $977C: $90 $0E - Branch on Carry Clear
	LDA $0478,X         ; $977E: $BD $78 $04 - Load Accumulator with Memory
	CLC #$F0            ; $9781: $29 $F0 - Clear Carry Flag
	ORA $0490,X         ; $9783: $1D $90 $04 - OR Memory with Accumulator
	STA $0478,X         ; $9786: $9D $78 $04 - Store Accumulator in Memory
	JMP $9793           ; $9789: $4C $93 $97 - Jump to New Location
	LDA $1A             ; $978C: $A5 $1A - Load Accumulator with Memory
	BNE $03             ; $978E: $D0 $03 - Branch on Result not Zero
	JSR $C92C           ; $9790: $20 $2C $C9 - Jump to New Location Saving Return Address
	DEX                 ; $9793: $CA - Decrement Index X by One
	BPL $E1             ; $9794: $10 $E1 - Branch on Result Plus
	LDA $04C5           ; $9796: $AD $C5 $04 - Load Accumulator with Memory
	BEQ $09             ; $9799: $F0 $09 - Branch on Result Zero
	SEC                 ; $979B: $38 - Set Carry Flag
	SBC #$27            ; $979C: $E9 $27 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $979E: $A8 - Transfer Accumulator to Index Y
	LDA #$05            ; $979F: $A9 $05 - Load Accumulator with Memory
	JSR $980D           ; $97A1: $20 $0D $98 - Jump to New Location Saving Return Address
	JMP $A031           ; $97A4: $4C $31 $A0 - Jump to New Location
	INC $1B             ; $97A7: $E6 $1B - Increment Memory by One
	RTS                 ; $97A9: $60 - Return from Subroutine
	STA $04C4           ; $97AA: $8D $C4 $04 - Store Accumulator in Memory
	TYA                 ; $97AD: $98 - Transfer Index Y to Accumulator
	PHA                 ; $97AE: $48 - Push Accumulator on Stack
	TXA                 ; $97AF: $8A - Transfer Index X to Accumulator
	PHA                 ; $97B0: $48 - Push Accumulator on Stack
	JSR $9713           ; $97B1: $20 $13 $97 - Jump to New Location Saving Return Address
	LDA #$00            ; $97B4: $A9 $00 - Load Accumulator with Memory
	LDY #$00            ; $97B6: $A0 $00 - Load Index Y with Memory
	JSR $EA77           ; $97B8: $20 $77 $EA - Jump to New Location Saving Return Address
	LDA $04C4           ; $97BB: $AD $C4 $04 - Load Accumulator with Memory
	LDY #$0D            ; $97BE: $A0 $0D - Load Index Y with Memory
	JSR $EA97           ; $97C0: $20 $97 $EA - Jump to New Location Saving Return Address
	LDY #$00            ; $97C3: $A0 $00 - Load Index Y with Memory
	STY $04CA           ; $97C5: $8C $CA $04 - Sore Index Y in Memory
	STY $1A             ; $97C8: $84 $1A - Sore Index Y in Memory
	STY $04CB           ; $97CA: $8C $CB $04 - Sore Index Y in Memory
	STY $1B             ; $97CD: $84 $1B - Sore Index Y in Memory
	JSR $EAA3           ; $97CF: $20 $A3 $EA - Jump to New Location Saving Return Address
	STA $17             ; $97D2: $85 $17 - Store Accumulator in Memory
	LDX #$03            ; $97D4: $A2 $03 - Load Index X with Memory
	LDA #$0F            ; $97D6: $A9 $0F - Load Accumulator with Memory
	STA $04C6,X         ; $97D8: $9D $C6 $04 - Store Accumulator in Memory
	JSR $EAD6           ; $97DB: $20 $D6 $EA - Jump to New Location Saving Return Address
	JSR $92C7           ; $97DE: $20 $C7 $92 - Jump to New Location Saving Return Address
	DEX                 ; $97E1: $CA - Decrement Index X by One
	BPL $F2             ; $97E2: $10 $F2 - Branch on Result Plus
	PLA                 ; $97E4: $68 - Pull Accumulator from Stack
	TAX                 ; $97E5: $AA - Transfer Accumulator to Index X
	PLA                 ; $97E6: $68 - Pull Accumulator from Stack
	TAY                 ; $97E7: $A8 - Transfer Accumulator to Index Y
	RTS                 ; $97E8: $60 - Return from Subroutine
	LDX #$03            ; $97E9: $A2 $03 - Load Index X with Memory
	STX $1A             ; $97EB: $86 $1A - Store Index X in Memory
	LDA #$80            ; $97ED: $A9 $80 - Load Accumulator with Memory
	JSR $92B9           ; $97EF: $20 $B9 $92 - Jump to New Location Saving Return Address
	DEX                 ; $97F2: $CA - Decrement Index X by One
	BPL $F8             ; $97F3: $10 $F8 - Branch on Result Plus
	RTS                 ; $97F5: $60 - Return from Subroutine
	LDA #$00            ; $97F6: $A9 $00 - Load Accumulator with Memory
	STA $1A             ; $97F8: $85 $1A - Store Accumulator in Memory
	LDX #$03            ; $97FA: $A2 $03 - Load Index X with Memory
	LDA #$7F            ; $97FC: $A9 $7F - Load Accumulator with Memory
	JSR $92C0           ; $97FE: $20 $C0 $92 - Jump to New Location Saving Return Address
	DEX                 ; $9801: $CA - Decrement Index X by One
	BPL $F8             ; $9802: $10 $F8 - Branch on Result Plus
	RTS                 ; $9804: $60 - Return from Subroutine
	LDA #$0C            ; $9805: $A9 $0C - Load Accumulator with Memory
	BPL $06             ; $9807: $10 $06 - Branch on Result Plus
	LDA #$09            ; $9809: $A9 $09 - Load Accumulator with Memory
	BPL $02             ; $980B: $10 $02 - Branch on Result Plus
	STY $19             ; $980D: $84 $19 - Sore Index Y in Memory
	ASL A               ; $980F: $0A - Shift Left One Bit
	STA $1C             ; $9810: $85 $1C - Store Accumulator in Memory
	TYA                 ; $9812: $98 - Transfer Index Y to Accumulator
	PHA                 ; $9813: $48 - Push Accumulator on Stack
	TXA                 ; $9814: $8A - Transfer Index X to Accumulator
	PHA                 ; $9815: $48 - Push Accumulator on Stack
	JSR $9822           ; $9816: $20 $22 $98 - Jump to New Location Saving Return Address
	LDA #$00            ; $9819: $A9 $00 - Load Accumulator with Memory
	STA $19             ; $981B: $85 $19 - Store Accumulator in Memory
	PLA                 ; $981D: $68 - Pull Accumulator from Stack
	TAX                 ; $981E: $AA - Transfer Accumulator to Index X
	PLA                 ; $981F: $68 - Pull Accumulator from Stack
	TAY                 ; $9820: $A8 - Transfer Accumulator to Index Y
	RTS                 ; $9821: $60 - Return from Subroutine
	LDX #$04            ; $9822: $A2 $04 - Load Index X with Memory
	JSR $9828           ; $9824: $20 $28 $98 - Jump to New Location Saving Return Address
	INX                 ; $9827: $E8 - Increment Index X by One
	LDY $1C             ; $9828: $A4 $1C - Load Index Y with Memory
	LDA $8DA5,Y         ; $982A: $B9 $A5 $8D - Load Accumulator with Memory
	CLC #$F0            ; $982D: $29 $F0 - Clear Carry Flag
	BEQ $2C             ; $982F: $F0 $2C - Branch on Result Zero
	CMP $04BE,X         ; $9831: $DD $BE $04 - Compare Memory with Accumulator
	BCS $05             ; $9834: $B0 $05 - Branch on Carry Set
	LDY $046C,X         ; $9836: $BC $6C $04 - Load Index Y with Memory
	BPL $22             ; $9839: $10 $22 - Branch on Result Plus
	STA $04BE,X         ; $983B: $9D $BE $04 - Store Accumulator in Memory
	LDY $92B3,X         ; $983E: $BC $B3 $92 - Load Index Y with Memory
	TXA                 ; $9841: $8A - Transfer Index X to Accumulator
	JSR $A0B1           ; $9842: $20 $B1 $A0 - Jump to New Location Saving Return Address
	LDY $1C             ; $9845: $A4 $1C - Load Index Y with Memory
	LDA $8DA5,Y         ; $9847: $B9 $A5 $8D - Load Accumulator with Memory
	CLC #$0F            ; $984A: $29 $0F - Clear Carry Flag
	STA $04CC           ; $984C: $8D $CC $04 - Store Accumulator in Memory
	LDA $8DE9,Y         ; $984F: $B9 $E9 $8D - Load Accumulator with Memory
	LDY $04CC           ; $9852: $AC $CC $04 - Load Index Y with Memory
	JSR $92C7           ; $9855: $20 $C7 $92 - Jump to New Location Saving Return Address
	LDA $19             ; $9858: $A5 $19 - Load Accumulator with Memory
	JSR $9444           ; $985A: $20 $44 $94 - Jump to New Location Saving Return Address
	INC $1C             ; $985D: $E6 $1C - Increment Memory by One
	RTS                 ; $985F: $60 - Return from Subroutine
	STX $1F             ; $9860: $86 $1F - Store Index X in Memory
	STA $04CD           ; $9862: $8D $CD $04 - Store Accumulator in Memory
	STY $04CE           ; $9865: $8C $CE $04 - Sore Index Y in Memory
	LDY #$00            ; $9868: $A0 $00 - Load Index Y with Memory
	STY $04D0           ; $986A: $8C $D0 $04 - Sore Index Y in Memory
	INY                 ; $986D: $C8 - Increment Index Y by One
	STY $21             ; $986E: $84 $21 - Sore Index Y in Memory
	RTS                 ; $9870: $60 - Return from Subroutine
	DEC $21             ; $9871: $C6 $21 - Decrement Memory by One
	BNE $16             ; $9873: $D0 $16 - Branch on Result not Zero
	LDX $1F             ; $9875: $A6 $1F - Load Index X with Memory
	LDY $20             ; $9877: $A4 $20 - Load Index Y with Memory
	LDA $04D0           ; $9879: $AD $D0 $04 - Load Accumulator with Memory
	BEQ $05             ; $987C: $F0 $05 - Branch on Result Zero
	PHA                 ; $987E: $48 - Push Accumulator on Stack
	LDA $04CF           ; $987F: $AD $CF $04 - Load Accumulator with Memory
	PHA                 ; $9882: $48 - Push Accumulator on Stack
	LDA $04CE           ; $9883: $AD $CE $04 - Load Accumulator with Memory
	PHA                 ; $9886: $48 - Push Accumulator on Stack
	LDA $04CD           ; $9887: $AD $CD $04 - Load Accumulator with Memory
	PHA                 ; $988A: $48 - Push Accumulator on Stack
	RTS                 ; $988B: $60 - Return from Subroutine
	LDA #$D2            ; $988C: $A9 $D2 - Load Accumulator with Memory
	BNE $16             ; $988E: $D0 $16 - Branch on Result not Zero
	LDA #$78            ; $9890: $A9 $78 - Load Accumulator with Memory
	BNE $12             ; $9892: $D0 $12 - Branch on Result not Zero
	LDA #$1E            ; $9894: $A9 $1E - Load Accumulator with Memory
	BNE $0E             ; $9896: $D0 $0E - Branch on Result not Zero
	LDA #$3C            ; $9898: $A9 $3C - Load Accumulator with Memory
	BNE $0A             ; $989A: $D0 $0A - Branch on Result not Zero
	LDA #$50            ; $989C: $A9 $50 - Load Accumulator with Memory
	BNE $06             ; $989E: $D0 $06 - Branch on Result not Zero
	LDA #$FF            ; $98A0: $A9 $FF - Load Accumulator with Memory
	BNE $02             ; $98A2: $D0 $02 - Branch on Result not Zero
	LDA #$01            ; $98A4: $A9 $01 - Load Accumulator with Memory
	STA $21             ; $98A6: $85 $21 - Store Accumulator in Memory
	STY $20             ; $98A8: $84 $20 - Sore Index Y in Memory
	STX $1F             ; $98AA: $86 $1F - Store Index X in Memory
	LDA #$00            ; $98AC: $A9 $00 - Load Accumulator with Memory
	STA $04D0           ; $98AE: $8D $D0 $04 - Store Accumulator in Memory
	PLA                 ; $98B1: $68 - Pull Accumulator from Stack
	STA $04CD           ; $98B2: $8D $CD $04 - Store Accumulator in Memory
	PLA                 ; $98B5: $68 - Pull Accumulator from Stack
	STA $04CE           ; $98B6: $8D $CE $04 - Store Accumulator in Memory
	RTS                 ; $98B9: $60 - Return from Subroutine
	LDA #$1E            ; $98BA: $A9 $1E - Load Accumulator with Memory
	BNE $06             ; $98BC: $D0 $06 - Branch on Result not Zero
	LDA #$28            ; $98BE: $A9 $28 - Load Accumulator with Memory
	BNE $02             ; $98C0: $D0 $02 - Branch on Result not Zero
	LDA #$01            ; $98C2: $A9 $01 - Load Accumulator with Memory
	STA $21             ; $98C4: $85 $21 - Store Accumulator in Memory
	STY $20             ; $98C6: $84 $20 - Sore Index Y in Memory
	STX $1F             ; $98C8: $86 $1F - Store Index X in Memory
	PLA                 ; $98CA: $68 - Pull Accumulator from Stack
	STA $04CD           ; $98CB: $8D $CD $04 - Store Accumulator in Memory
	PLA                 ; $98CE: $68 - Pull Accumulator from Stack
	STA $04CE           ; $98CF: $8D $CE $04 - Store Accumulator in Memory
	PLA                 ; $98D2: $68 - Pull Accumulator from Stack
	STA $04CF           ; $98D3: $8D $CF $04 - Store Accumulator in Memory
	PLA                 ; $98D6: $68 - Pull Accumulator from Stack
	STA $04D0           ; $98D7: $8D $D0 $04 - Store Accumulator in Memory
	RTS                 ; $98DA: $60 - Return from Subroutine
	TYA                 ; $98DB: $98 - Transfer Index Y to Accumulator
	SBC $E098,X         ; $98DC: $FD $98 $E0 - Subtract Memory from Accumulator with Borrow
	LDA #$9B            ; $98E1: $A9 $9B - Load Accumulator with Memory
	STA $02E0,X         ; $98E3: $9D $E0 $02 - Store Accumulator in Memory
	LDA $0440,X         ; $98E6: $BD $40 $04 - Load Accumulator with Memory
	LSR A               ; $98E9: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $98EC: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	ORA #$4A            ; $98EE: $09 $4A - OR Memory with Accumulator
	BEQ $03             ; $98F0: $F0 $03 - Branch on Result Zero
	BRK                 ; $98F2: $00 - Force Break
	BRK                 ; $98F5: $00 - Force Break
	EOR $009C,X         ; $98F6: $5D $9C $00 - Exclusive-OR Memory with Accumulator
	TYA                 ; $98F9: $98 - Transfer Index Y to Accumulator
	BRK                 ; $98FB: $00 - Force Break
	BRK                 ; $98FC: $00 - Force Break
	LDA $0440,X         ; $98FE: $BD $40 $04 - Load Accumulator with Memory
	CLC #$07            ; $9901: $29 $07 - Clear Carry Flag
	BEQ $03             ; $9903: $F0 $03 - Branch on Result Zero
	JSR $99C0           ; $9905: $20 $C0 $99 - Jump to New Location Saving Return Address
	JSR $87F0           ; $9908: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $5A             ; $990B: $D0 $5A - Branch on Result not Zero
	JSR $8C68           ; $990D: $20 $68 $8C - Jump to New Location Saving Return Address
	JSR $A2B8           ; $9910: $20 $B8 $A2 - Jump to New Location Saving Return Address
	JSR $A28A           ; $9913: $20 $8A $A2 - Jump to New Location Saving Return Address
	BCS $4F             ; $9916: $B0 $4F - Branch on Carry Set
	STY $DC             ; $9918: $84 $DC - Sore Index Y in Memory
	LDA $0200,X         ; $991A: $BD $00 $02 - Load Accumulator with Memory
	CMP #$20            ; $991D: $C9 $20 - Compare Memory with Accumulator
	BEQ $29             ; $991F: $F0 $29 - Branch on Result Zero
	CMP #$11            ; $9921: $C9 $11 - Compare Memory with Accumulator
	BEQ $54             ; $9923: $F0 $54 - Branch on Result Zero
	LDY $0200,X         ; $9925: $BC $00 $02 - Load Index Y with Memory
	LDA $BE55,Y         ; $9928: $B9 $55 $BE - Load Accumulator with Memory
	PHA                 ; $992B: $48 - Push Accumulator on Stack
	STX $DA             ; $992C: $86 $DA - Store Index X in Memory
	LDX $DC             ; $992E: $A6 $DC - Load Index X with Memory
	JSR $F213           ; $9930: $20 $13 $F2 - Jump to New Location Saving Return Address
	LDA #$00            ; $9933: $A9 $00 - Load Accumulator with Memory
	JSR $980F           ; $9935: $20 $0F $98 - Jump to New Location Saving Return Address
	LDX $DA             ; $9938: $A6 $DA - Load Index X with Memory
	LDA $0360,X         ; $993A: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $993D: $38 - Set Carry Flag
	SBC #$04            ; $993E: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $0360,X         ; $9940: $9D $60 $03 - Store Accumulator in Memory
	PLA                 ; $9943: $68 - Pull Accumulator from Stack
	JSR $F25B           ; $9944: $20 $5B $F2 - Jump to New Location Saving Return Address
	JMP $8833           ; $9947: $4C $33 $88 - Jump to New Location
	JSR $C40E           ; $994A: $20 $0E $C4 - Jump to New Location Saving Return Address
	BCC $08             ; $994D: $90 $08 - Branch on Carry Clear
	BNE $6E             ; $994F: $D0 $6E - Branch on Result not Zero
	JSR $995F           ; $9951: $20 $5F $99 - Jump to New Location Saving Return Address
	JMP $C428           ; $9954: $4C $28 $C4 - Jump to New Location
	LDA $008C,Y         ; $9957: $B9 $8C $00 - Load Accumulator with Memory
	BNE $0B             ; $995A: $D0 $0B - Branch on Result not Zero
	JSR $9805           ; $995C: $20 $05 $98 - Jump to New Location Saving Return Address
	LDA #$01            ; $995F: $A9 $01 - Load Accumulator with Memory
	STA $008C,Y         ; $9961: $99 $8C $00 - Store Accumulator in Memory
	JMP $8833           ; $9964: $4C $33 $88 - Jump to New Location
	LDA $02E0,X         ; $9967: $BD $E0 $02 - Load Accumulator with Memory
	CMP #$1E            ; $996A: $C9 $1E - Compare Memory with Accumulator
	BCS $05             ; $996C: $B0 $05 - Branch on Carry Set
	JSR $8806           ; $996E: $20 $06 $88 - Jump to New Location Saving Return Address
	BEQ $03             ; $9971: $F0 $03 - Branch on Result Zero
	JSR $A992           ; $9973: $20 $92 $A9 - Jump to New Location Saving Return Address
	JMP $882C           ; $9976: $4C $2C $88 - Jump to New Location
	JSR $8833           ; $9979: $20 $33 $88 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $997C: $B5 $4A $85 - Load Accumulator with Memory
	CMP $60BD,X         ; $997F: $DD $BD $60 - Compare Memory with Accumulator
	STA $DE             ; $9983: $85 $DE - Store Accumulator in Memory
	LDA #$FF            ; $9985: $A9 $FF - Load Accumulator with Memory
	STA $DB             ; $9987: $85 $DB - Store Accumulator in Memory
	STA $DA             ; $9989: $85 $DA - Store Accumulator in Memory
	LDX #$03            ; $998B: $A2 $03 - Load Index X with Memory
	CPX $DC             ; $998D: $E4 $DC - Compare Memory and Index Y
	BEQ $16             ; $998F: $F0 $16 - Branch on Result Zero
	LDA $0200,X         ; $9991: $BD $00 $02 - Load Accumulator with Memory
	BEQ $11             ; $9994: $F0 $11 - Branch on Result Zero
	LDA $88,X           ; $9996: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$B0            ; $9999: $09 $B0 - OR Memory with Accumulator
	JSR $8BE5           ; $999C: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP $DA             ; $999F: $C5 $DA - Compare Memory with Accumulator
	BCS $04             ; $99A1: $B0 $04 - Branch on Carry Set
	STA $DA             ; $99A3: $85 $DA - Store Accumulator in Memory
	STX $DB             ; $99A5: $86 $DB - Store Index X in Memory
	DEX                 ; $99A7: $CA - Decrement Index X by One
	BPL $E3             ; $99A8: $10 $E3 - Branch on Result Plus
	LDX $DB             ; $99AA: $A6 $DB - Load Index X with Memory
	BMI $11             ; $99AC: $30 $11 - Branch on Result Minus
	LDA $DD             ; $99AE: $A5 $DD - Load Accumulator with Memory
	LDY $DE             ; $99B0: $A4 $DE - Load Index Y with Memory
	JSR $CFD6           ; $99B2: $20 $D6 $CF - Jump to New Location Saving Return Address
	LDA $4A,X           ; $99B5: $B5 $4A $BC - Load Accumulator with Memory
	RTS                 ; $99B8: $60 - Return from Subroutine
	LDX $DC             ; $99BA: $A6 $DC - Load Index X with Memory
	JMP $CFD6           ; $99BC: $4C $D6 $CF - Jump to New Location
	RTS                 ; $99BF: $60 - Return from Subroutine
	JSR $87F7           ; $99C0: $20 $F7 $87 - Jump to New Location Saving Return Address
	BNE $FA             ; $99C3: $D0 $FA - Branch on Result not Zero
	JSR $9FC9           ; $99C5: $20 $C9 $9F - Jump to New Location Saving Return Address
	STA $09             ; $99C8: $85 $09 - Store Accumulator in Memory
	JSR $9FC9           ; $99CA: $20 $C9 $9F - Jump to New Location Saving Return Address
	TAY                 ; $99CD: $A8 - Transfer Accumulator to Index Y
	LDA #$45            ; $99CE: $A9 $45 - Load Accumulator with Memory
	JMP $8B32           ; $99D0: $4C $32 $8B - Jump to New Location
	STA $99DC,Y         ; $99D3: $99 $DC $99 - Store Accumulator in Memory
	DEC $A9,X           ; $99D6: $D6 $A9 - Decrement Memory by One
	AND $9D             ; $99D8: $25 $9D - AND Memory with Accumulator
	CPX #$02            ; $99DA: $E0 $02 - Compare Memory and Index Y
	RTS                 ; $99DC: $60 - Return from Subroutine
	LDY $02E0,X         ; $99DD: $BC $E0 $02 - Load Index Y with Memory
	CPY #$0B            ; $99E0: $C0 $0B - Compare Memory and Index Y
	BCS $05             ; $99E2: $B0 $05 - Branch on Carry Set
	LDA $9A04,Y         ; $99E4: $B9 $04 $9A - Load Accumulator with Memory
	BEQ $03             ; $99E7: $F0 $03 - Branch on Result Zero
	JSR $A9D9           ; $99E9: $20 $D9 $A9 - Jump to New Location Saving Return Address
	JSR $87E9           ; $99EC: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $10             ; $99EF: $D0 $10 - Branch on Result not Zero
	LDA #$F0            ; $99F1: $A9 $F0 - Load Accumulator with Memory
	BIT $05D5           ; $99F3: $2C $D5 $05 - Test Bits in Memory with Accumulator
	BPL $06             ; $99F6: $10 $06 - Branch on Result Plus
	CPY #$18            ; $99F8: $C0 $18 - Compare Memory and Index Y
	BCC $02             ; $99FA: $90 $02 - Branch on Carry Clear
	LDA #$EC            ; $99FC: $A9 $EC - Load Accumulator with Memory
	JSR $CD43           ; $99FE: $20 $43 $CD - Jump to New Location Saving Return Address
	JMP $8C62           ; $9A01: $4C $62 $8C - Jump to New Location
	BRK                 ; $9A04: $00 - Force Break
	ORA ($00,X)         ; $9A05: $01 $00 $00 - OR Memory with Accumulator
	ORA ($00,X)         ; $9A08: $01 $00 $01 - OR Memory with Accumulator
	BRK                 ; $9A0B: $00 - Force Break
	ORA ($01,X)         ; $9A0C: $01 $01 $00 - OR Memory with Accumulator
	ORA ($01,X)         ; $9A0F: $01 $01 $9A - OR Memory with Accumulator
	AND ($9A,X)         ; $9A12: $21 $9A $16 - AND Memory with Accumulator
	JSR $F8E2           ; $9A17: $20 $E2 $F8 - Jump to New Location Saving Return Address
	LDA #$66            ; $9A1A: $A9 $66 - Load Accumulator with Memory
	STA $03A0,X         ; $9A1C: $9D $A0 $03 - Store Accumulator in Memory
	BRK                 ; $9A1F: $00 - Force Break
	LDA $209B           ; $9A20: $AD $9B $20 - Load Accumulator with Memory
	CPY $A9             ; $9A23: $C4 $A9 - Compare Memory and Index Y
	JSR $D8C9           ; $9A25: $20 $C9 $D8 - Jump to New Location Saving Return Address
	LDY $0578           ; $9A28: $AC $78 $05 - Load Index Y with Memory
	LDA $056C           ; $9A2B: $AD $6C $05 - Load Accumulator with Memory
	ADC #$05            ; $9A2E: $69 $05 - Add Memory to Accumulator with Carry
	ASL A               ; $9A30: $0A - Shift Left One Bit
	ASL A               ; $9A31: $0A - Shift Left One Bit
	JMP $F913           ; $9A32: $4C $13 $F9 - Jump to New Location
	LDX #$07            ; $9A35: $A2 $07 - Load Index X with Memory
	LDA $04E9,X         ; $9A37: $BD $E9 $04 - Load Accumulator with Memory
	BEQ $16             ; $9A3A: $F0 $16 - Branch on Result Zero
	LDA $04E1,X         ; $9A3C: $BD $E1 $04 - Load Accumulator with Memory
	CMP $27             ; $9A3F: $C5 $27 - Compare Memory with Accumulator
	BNE $0F             ; $9A41: $D0 $0F - Branch on Result not Zero
	LDA $04E9,X         ; $9A43: $BD $E9 $04 - Load Accumulator with Memory
	SEC                 ; $9A46: $38 - Set Carry Flag
	SBC $04F3           ; $9A47: $ED $F3 $04 - Subtract Memory from Accumulator with Borrow
	BPL $02             ; $9A4A: $10 $02 - Branch on Result Plus
	LDA #$00            ; $9A4C: $A9 $00 - Load Accumulator with Memory
	STA $04E9,X         ; $9A4E: $9D $E9 $04 - Store Accumulator in Memory
	RTS                 ; $9A51: $60 - Return from Subroutine
	DEX                 ; $9A52: $CA - Decrement Index X by One
	BPL $E2             ; $9A53: $10 $E2 - Branch on Result Plus
	LDX $04F1           ; $9A55: $AE $F1 $04 - Load Index X with Memory
	LDA $27             ; $9A58: $A5 $27 - Load Accumulator with Memory
	STA $04E1,X         ; $9A5A: $9D $E1 $04 - Store Accumulator in Memory
	LDA #$06            ; $9A5D: $A9 $06 - Load Accumulator with Memory
	JSR $9A46           ; $9A5F: $20 $46 $9A - Jump to New Location Saving Return Address
	BEQ $09             ; $9A62: $F0 $09 - Branch on Result Zero
	INX                 ; $9A64: $E8 - Increment Index X by One
	TXA                 ; $9A65: $8A - Transfer Index X to Accumulator
	CLC #$07            ; $9A66: $29 $07 - Clear Carry Flag
	STA $04F1           ; $9A68: $8D $F1 $04 - Store Accumulator in Memory
	LDA #$01            ; $9A6B: $A9 $01 - Load Accumulator with Memory
	RTS                 ; $9A6D: $60 - Return from Subroutine
	STY $04F3           ; $9A6E: $8C $F3 $04 - Sore Index Y in Memory
	LSR A               ; $9A71: $4A $85 - Shift One Bit Right (Memory or Accumulator)
	ROL $A0             ; $9A73: $26 $A0 - Rotate One Bit Left
	LDA $04D5,Y         ; $9A76: $B9 $D5 $04 - Load Accumulator with Memory
	BEQ $0A             ; $9A79: $F0 $0A - Branch on Result Zero
	LDA $04DD,Y         ; $9A7B: $B9 $DD $04 - Load Accumulator with Memory
	CMP $27             ; $9A7E: $C5 $27 - Compare Memory with Accumulator
	BNE $03             ; $9A80: $D0 $03 - Branch on Result not Zero
	LDA #$00            ; $9A82: $A9 $00 - Load Accumulator with Memory
	RTS                 ; $9A84: $60 - Return from Subroutine
	DEY                 ; $9A85: $88 - Decrement Index Y by One
	BPL $EE             ; $9A86: $10 $EE - Branch on Result Plus
	STX $04F2           ; $9A88: $8E $F2 $04 - Store Index X in Memory
	LDY $27             ; $9A8B: $A4 $27 - Load Index Y with Memory
	LDA $0600,Y         ; $9A8D: $B9 $00 $06 - Load Accumulator with Memory
	BEQ $F0             ; $9A90: $F0 $F0 - Branch on Result Zero
	CMP #$12            ; $9A92: $C9 $12 - Compare Memory with Accumulator
	BCS $EC             ; $9A94: $B0 $EC - Branch on Carry Set
	CMP #$10            ; $9A96: $C9 $10 - Compare Memory with Accumulator
	BEQ $0C             ; $9A98: $F0 $0C - Branch on Result Zero
	CMP #$11            ; $9A9A: $C9 $11 - Compare Memory with Accumulator
	BNE $1B             ; $9A9C: $D0 $1B - Branch on Result not Zero
	LDA #$04            ; $9A9E: $A9 $04 - Load Accumulator with Memory
	STA $28             ; $9AA0: $85 $28 - Store Accumulator in Memory
	LDA #$12            ; $9AA2: $A9 $12 - Load Accumulator with Memory
	BNE $1F             ; $9AA4: $D0 $1F - Branch on Result not Zero
	LDA #$03            ; $9AA6: $A9 $03 - Load Accumulator with Memory
	STA $28             ; $9AA8: $85 $28 - Store Accumulator in Memory
	JSR $9A35           ; $9AAA: $20 $35 $9A - Jump to New Location Saving Return Address
	BEQ $06             ; $9AAD: $F0 $06 - Branch on Result Zero
	LDX $04F2           ; $9AAF: $AE $F2 $04 - Load Index X with Memory
	LDA #$02            ; $9AB2: $A9 $02 - Load Accumulator with Memory
	RTS                 ; $9AB4: $60 - Return from Subroutine
	LDA #$00            ; $9AB5: $A9 $00 - Load Accumulator with Memory
	BEQ $0C             ; $9AB7: $F0 $0C - Branch on Result Zero
	LDA #$01            ; $9AB9: $A9 $01 - Load Accumulator with Memory
	STA $28             ; $9ABB: $85 $28 - Store Accumulator in Memory
	LDX $26             ; $9ABD: $A6 $26 - Load Index X with Memory
	LDA $0600,Y         ; $9ABF: $B9 $00 $06 - Load Accumulator with Memory
	AND $9B4B,X         ; $9AC2: $3D $4B $9B - AND Memory with Accumulator
	STA $0600,Y         ; $9AC5: $99 $00 $06 - Store Accumulator in Memory
	LDX $23             ; $9AC8: $A6 $23 - Load Index X with Memory
	STA $04D9,X         ; $9ACA: $9D $D9 $04 - Store Accumulator in Memory
	TYA                 ; $9ACD: $98 - Transfer Index Y to Accumulator
	STA $04DD,X         ; $9ACE: $9D $DD $04 - Store Accumulator in Memory
	LDX $04F2           ; $9AD1: $AE $F2 $04 - Load Index X with Memory
	TYA                 ; $9AD4: $98 - Transfer Index Y to Accumulator
	SEC                 ; $9AD5: $38 - Set Carry Flag
	SBC $D4             ; $9AD6: $E5 $D4 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $9AD8: $A8 - Transfer Accumulator to Index Y
	LDA #$00            ; $9AD9: $A9 $00 - Load Accumulator with Memory
	STA $25             ; $9ADB: $85 $25 - Store Accumulator in Memory
	TYA                 ; $9ADD: $98 - Transfer Index Y to Accumulator
	CLC #$0F            ; $9ADE: $29 $0F - Clear Carry Flag
	LSR A               ; $9AE0: $4A $85 - Shift One Bit Right (Memory or Accumulator)
	BIT $98             ; $9AE2: $24 $98 - Test Bits in Memory with Accumulator
	CLC #$F0            ; $9AE4: $29 $F0 - Clear Carry Flag
	ORA $24             ; $9AE6: $05 $24 - OR Memory with Accumulator
	ROL A               ; $9AE8: $2A - Rotate One Bit Left
	ROL $25             ; $9AE9: $26 $25 - Rotate One Bit Left
	ROL A               ; $9AEB: $2A - Rotate One Bit Left
	ROL $25             ; $9AEC: $26 $25 - Rotate One Bit Left
	ADC $C2             ; $9AEE: $65 $C2 - Add Memory to Accumulator with Carry
	CLC #$DF            ; $9AF0: $29 $DF - Clear Carry Flag
	STA $24             ; $9AF2: $85 $24 - Store Accumulator in Memory
	LDA $25             ; $9AF4: $A5 $25 - Load Accumulator with Memory
	ADC $C3             ; $9AF6: $65 $C3 - Add Memory to Accumulator with Carry
	STA $25             ; $9AF8: $85 $25 - Store Accumulator in Memory
	LDA $25             ; $9AFA: $A5 $25 - Load Accumulator with Memory
	CMP #$2B            ; $9AFC: $C9 $2B - Compare Memory with Accumulator
	BCC $06             ; $9AFE: $90 $06 - Branch on Carry Clear
	BNE $04             ; $9B00: $D0 $04 - Branch on Result not Zero
	LDA $24             ; $9B02: $A5 $24 - Load Accumulator with Memory
	CMP #$C0            ; $9B04: $C9 $C0 - Compare Memory with Accumulator
	BCC $0D             ; $9B06: $90 $0D - Branch on Carry Clear
	LDA $24             ; $9B08: $A5 $24 - Load Accumulator with Memory
	SEC                 ; $9B0A: $38 - Set Carry Flag
	SBC #$C0            ; $9B0B: $E9 $C0 - Subtract Memory from Accumulator with Borrow
	STA $24             ; $9B0D: $85 $24 - Store Accumulator in Memory
	LDA $25             ; $9B0F: $A5 $25 - Load Accumulator with Memory
	SBC #$0B            ; $9B11: $E9 $0B - Subtract Memory from Accumulator with Borrow
	BNE $1F             ; $9B13: $D0 $1F - Branch on Result not Zero
	LDA $25             ; $9B15: $A5 $25 - Load Accumulator with Memory
	CMP #$28            ; $9B17: $C9 $28 - Compare Memory with Accumulator
	BCS $1B             ; $9B19: $B0 $1B - Branch on Carry Set
	LDA $25             ; $9B1B: $A5 $25 - Load Accumulator with Memory
	CMP #$23            ; $9B1D: $C9 $23 - Compare Memory with Accumulator
	BCC $06             ; $9B1F: $90 $06 - Branch on Carry Clear
	BNE $04             ; $9B21: $D0 $04 - Branch on Result not Zero
	LDA $24             ; $9B23: $A5 $24 - Load Accumulator with Memory
	CMP #$C0            ; $9B25: $C9 $C0 - Compare Memory with Accumulator
	BCC $0D             ; $9B27: $90 $0D - Branch on Carry Clear
	LDA $24             ; $9B29: $A5 $24 - Load Accumulator with Memory
	SEC                 ; $9B2B: $38 - Set Carry Flag
	SBC #$C0            ; $9B2C: $E9 $C0 - Subtract Memory from Accumulator with Borrow
	STA $24             ; $9B2E: $85 $24 - Store Accumulator in Memory
	LDA $25             ; $9B30: $A5 $25 - Load Accumulator with Memory
	SBC #$FB            ; $9B32: $E9 $FB - Subtract Memory from Accumulator with Borrow
	STA $25             ; $9B34: $85 $25 - Store Accumulator in Memory
	LDY $23             ; $9B36: $A4 $23 - Load Index Y with Memory
	LDA $24             ; $9B38: $A5 $24 - Load Accumulator with Memory
	STA $04D1,Y         ; $9B3A: $99 $D1 $04 - Store Accumulator in Memory
	LDA $25             ; $9B3D: $A5 $25 - Load Accumulator with Memory
	STA $04D5,Y         ; $9B3F: $99 $D5 $04 - Store Accumulator in Memory
	INY                 ; $9B42: $C8 - Increment Index Y by One
	TYA                 ; $9B43: $98 - Transfer Index Y to Accumulator
	CLC #$03            ; $9B44: $29 $03 - Clear Carry Flag
	STA $23             ; $9B46: $85 $23 - Store Accumulator in Memory
	LDA $28             ; $9B48: $A5 $28 - Load Accumulator with Memory
	RTS                 ; $9B4A: $60 - Return from Subroutine
	ASL $0B0D           ; $9B4B: $0E $0D $0B - Shift Left One Bit
	LDX $22             ; $9B4F: $A6 $22 - Load Index X with Memory
	BIT $2002           ; $9B51: $2C $02 $20 - Test Bits in Memory with Accumulator
	LDA $04D5,X         ; $9B54: $BD $D5 $04 - Load Accumulator with Memory
	STA $2006           ; $9B57: $8D $06 $20 - Store Accumulator in Memory
	LDA $04D1,X         ; $9B5A: $BD $D1 $04 - Load Accumulator with Memory
	STA $2006           ; $9B5D: $8D $06 $20 - Store Accumulator in Memory
	LDY $04D9,X         ; $9B60: $BC $D9 $04 - Load Index Y with Memory
	LDA $AF30,Y         ; $9B63: $B9 $30 $AF - Load Accumulator with Memory
	STA $2007           ; $9B66: $8D $07 $20 - Store Accumulator in Memory
	LDA $AF7C,Y         ; $9B69: $B9 $7C $AF - Load Accumulator with Memory
	STA $2007           ; $9B6C: $8D $07 $20 - Store Accumulator in Memory
	LDA $04D1,X         ; $9B6F: $BD $D1 $04 - Load Accumulator with Memory
	CLC                 ; $9B72: $18 - Clear Carry Flag
	ADC #$20            ; $9B73: $69 $20 - Add Memory to Accumulator with Carry
	PHA                 ; $9B75: $48 - Push Accumulator on Stack
	LDA $04D5,X         ; $9B76: $BD $D5 $04 - Load Accumulator with Memory
	ADC #$00            ; $9B79: $69 $00 - Add Memory to Accumulator with Carry
	STA $2006           ; $9B7B: $8D $06 $20 - Store Accumulator in Memory
	PLA                 ; $9B7E: $68 - Pull Accumulator from Stack
	STA $2006           ; $9B7F: $8D $06 $20 - Store Accumulator in Memory
	LDA $AFC8,Y         ; $9B82: $B9 $C8 $AF - Load Accumulator with Memory
	STA $2007           ; $9B85: $8D $07 $20 - Store Accumulator in Memory
	LDA $B014,Y         ; $9B88: $B9 $14 $B0 - Load Accumulator with Memory
	STA $2007           ; $9B8B: $8D $07 $20 - Store Accumulator in Memory
	LDA #$00            ; $9B8E: $A9 $00 - Load Accumulator with Memory
	STA $04D5,X         ; $9B90: $9D $D5 $04 - Store Accumulator in Memory
	INX                 ; $9B93: $E8 - Increment Index X by One
	TXA                 ; $9B94: $8A - Transfer Index X to Accumulator
	CLC #$03            ; $9B95: $29 $03 - Clear Carry Flag
	STA $22             ; $9B97: $85 $22 - Store Accumulator in Memory
	JMP $C541           ; $9B99: $4C $41 $C5 - Jump to New Location
	RTI                 ; $9B9C: $40 - Return from Interrupt
	ORA $10             ; $9B9E: $05 $10 - OR Memory with Accumulator
	ADC $8A10,X         ; $9BA1: $7D $10 $8A - Add Memory to Accumulator with Carry
	JSR $2000           ; $9BA4: $20 $00 $20 - Jump to New Location Saving Return Address
	JSR $2008           ; $9BA8: $20 $08 $20 - Jump to New Location Saving Return Address
	SED                 ; $9BAC: $F8 - Set Decimal Flag
	BPL $02             ; $9BAD: $10 $02 - Branch on Result Plus
	ORA #$02            ; $9BAF: $09 $02 - OR Memory with Accumulator
	TYA                 ; $9BB1: $98 - Transfer Index Y to Accumulator
	ORA #$02            ; $9BB2: $09 $02 - OR Memory with Accumulator
	TAY                 ; $9BB4: $A8 - Transfer Accumulator to Index Y
	ORA ($04),Y         ; $9BB5: $11 $04 $B8 - OR Memory with Accumulator
	ORA $A803,Y         ; $9BB8: $19 $03 $A8 - OR Memory with Accumulator
	ORA ($03),Y         ; $9BBB: $11 $03 $98 - OR Memory with Accumulator
	ORA ($04),Y         ; $9BBE: $11 $04 $98 - OR Memory with Accumulator
	CPX $0120           ; $9BC1: $EC $20 $01 - Compare Memory and Index X
	ORA ($01),Y         ; $9BC4: $11 $01 $89 - OR Memory with Accumulator
	ORA ($09,X)         ; $9BC8: $01 $09 $01 - OR Memory with Accumulator
	PHP                 ; $9BCC: $08 - Push Processor Status on Stack
	ORA ($09,X)         ; $9BCD: $01 $09 $01 - OR Memory with Accumulator
	ORA #$01            ; $9BD1: $09 $01 - OR Memory with Accumulator
	ORA #$01            ; $9BD4: $09 $01 - OR Memory with Accumulator
	BPL $02             ; $9BD7: $10 $02 - Branch on Result Plus
	INC $010C,X         ; $9BD9: $FE $0C $01 - Increment Memory by One
	ORA $7802           ; $9BDC: $0D $02 $78 - OR Memory with Accumulator
	ORA $9804           ; $9BE1: $0D $04 $98 - OR Memory with Accumulator
	INC $08,X           ; $9BE4: $F6 $08 - Increment Memory by One
	ORA ($10,X)         ; $9BE6: $01 $10 $04 - OR Memory with Accumulator
	PHP                 ; $9BE9: $08 - Push Processor Status on Stack
	ORA ($08,X)         ; $9BEA: $01 $08 $02 - OR Memory with Accumulator
	SED                 ; $9BED: $F8 - Set Decimal Flag
	ORA ($FE,X)         ; $9BEF: $01 $FE $10 - OR Memory with Accumulator
	ORA ($11,X)         ; $9BF2: $01 $11 $02 - OR Memory with Accumulator
	TYA                 ; $9BF5: $98 - Transfer Index Y to Accumulator
	BPL $03             ; $9BF6: $10 $03 - Branch on Result Plus
	ORA ($02),Y         ; $9BF8: $11 $02 $98 - OR Memory with Accumulator
	BPL $01             ; $9BFB: $10 $01 - Branch on Result Plus
	INC $0260,X         ; $9BFF: $FE $60 $02 - Increment Memory by One
	BPL $01             ; $9C02: $10 $01 - Branch on Result Plus
	JSR $1002           ; $9C04: $20 $02 $10 - Jump to New Location Saving Return Address
	ORA ($F8,X)         ; $9C07: $01 $F8 $30 - OR Memory with Accumulator
	ORA ($30,X)         ; $9C0A: $01 $30 $02 - OR Memory with Accumulator
	CLC                 ; $9C0E: $18 - Clear Carry Flag
	ORA ($18,X)         ; $9C0F: $01 $18 $02 - OR Memory with Accumulator
	ORA #$03            ; $9C12: $09 $03 - OR Memory with Accumulator
	PHP                 ; $9C15: $08 - Push Processor Status on Stack
	ORA #$03            ; $9C17: $09 $03 - OR Memory with Accumulator
	PHP                 ; $9C1A: $08 - Push Processor Status on Stack
	ORA #$03            ; $9C1C: $09 $03 - OR Memory with Accumulator
	PHP                 ; $9C1F: $08 - Push Processor Status on Stack
	ORA #$03            ; $9C21: $09 $03 - OR Memory with Accumulator
	PHP                 ; $9C24: $08 - Push Processor Status on Stack
	ORA #$03            ; $9C26: $09 $03 - OR Memory with Accumulator
	JSR $2004           ; $9C29: $20 $04 $20 - Jump to New Location Saving Return Address
	ORA $20             ; $9C2C: $05 $20 - OR Memory with Accumulator
	JSR $F805           ; $9C2F: $20 $05 $F8 - Jump to New Location Saving Return Address
	ORA $00             ; $9C32: $05 $00 - OR Memory with Accumulator
	TYA                 ; $9C34: $98 - Transfer Index Y to Accumulator
	ORA $00,X           ; $9C35: $15 $00 - OR Memory with Accumulator
	TYA                 ; $9C37: $98 - Transfer Index Y to Accumulator
	CLC                 ; $9C38: $18 - Clear Carry Flag
	ASL $11             ; $9C39: $06 $11 - Shift Left One Bit
	TYA                 ; $9C3C: $98 - Transfer Index Y to Accumulator
	ORA ($06),Y         ; $9C3D: $11 $06 $98 - OR Memory with Accumulator
	ORA ($0C),Y         ; $9C40: $11 $0C $98 - OR Memory with Accumulator
	CLC                 ; $9C43: $18 - Clear Carry Flag
	ASL $ED             ; $9C44: $06 $ED - Shift Left One Bit
	JSR $2100           ; $9C46: $20 $00 $21 - Jump to New Location Saving Return Address
	BRK                 ; $9C49: $00 - Force Break
	TYA                 ; $9C4A: $98 - Transfer Index Y to Accumulator
	PHP                 ; $9C4C: $08 - Push Processor Status on Stack
	ORA #$02            ; $9C4E: $09 $02 - OR Memory with Accumulator
	BVC $00             ; $9C52: $50 $00 - Branch on Overflow Clear
	CLC #$02            ; $9C54: $29 $02 - Clear Carry Flag
	SEI                 ; $9C56: $78 - Set Interrupt Disable Status
	BVC $04             ; $9C57: $50 $04 - Branch on Overflow Clear
	CLC #$02            ; $9C59: $29 $02 - Clear Carry Flag
	SEI                 ; $9C5B: $78 - Set Interrupt Disable Status
	INC $60,X           ; $9C5C: $F6 $60 - Increment Memory by One
	ORA ($10,X)         ; $9C5E: $01 $10 $28 - OR Memory with Accumulator
	JSR $1001           ; $9C61: $20 $01 $10 - Jump to New Location Saving Return Address
	PLP                 ; $9C64: $28 - Pull Processor Status from Stack
	SED                 ; $9C65: $F8 - Set Decimal Flag
	RTS                 ; $9C66: $60 - Return from Subroutine
	BRK                 ; $9C67: $00 - Force Break
	AND $00             ; $9C68: $25 $00 - AND Memory with Accumulator
	AND $00             ; $9C6B: $25 $00 - AND Memory with Accumulator
	AND $00             ; $9C6E: $25 $00 - AND Memory with Accumulator
	AND $8900           ; $9C71: $2D $00 $89 - AND Memory with Accumulator
	ORA $08             ; $9C74: $05 $08 - OR Memory with Accumulator
	PHP                 ; $9C76: $08 - Push Processor Status on Stack
	ORA $04             ; $9C77: $05 $04 - OR Memory with Accumulator
	ORA $04             ; $9C7A: $05 $04 - OR Memory with Accumulator
	TAY                 ; $9C7C: $A8 - Transfer Accumulator to Index Y
	ORA $04             ; $9C7D: $05 $04 - OR Memory with Accumulator
	TYA                 ; $9C7F: $98 - Transfer Index Y to Accumulator
	SBC $0018,X         ; $9C80: $FD $18 $00 - Subtract Memory from Accumulator with Borrow
	INC $0110,X         ; $9C83: $FE $10 $01 - Increment Memory by One
	BPL $02             ; $9C86: $10 $02 - Branch on Result Plus
	BPL $03             ; $9C88: $10 $03 - Branch on Result Plus
	BPL $04             ; $9C8A: $10 $04 - Branch on Result Plus
	SED                 ; $9C8C: $F8 - Set Decimal Flag
	ORA #$00            ; $9C8D: $09 $00 - OR Memory with Accumulator
	PHP                 ; $9C90: $08 - Push Processor Status on Stack
	BRK                 ; $9C91: $00 - Force Break
	ORA #$00            ; $9C92: $09 $00 - OR Memory with Accumulator
	PHP                 ; $9C95: $08 - Push Processor Status on Stack
	BRK                 ; $9C96: $00 - Force Break
	INC $0110,X         ; $9C97: $FE $10 $01 - Increment Memory by One
	BPL $02             ; $9C9A: $10 $02 - Branch on Result Plus
	BPL $81             ; $9C9C: $10 $81 - Branch on Result Plus
	BPL $42             ; $9C9E: $10 $42 - Branch on Result Plus
	SED                 ; $9CA0: $F8 - Set Decimal Flag
	JSR $2003           ; $9CA1: $20 $03 $20 - Jump to New Location Saving Return Address
	JSR $2001           ; $9CA5: $20 $01 $20 - Jump to New Location Saving Return Address
	SED                 ; $9CA9: $F8 - Set Decimal Flag
	BPL $04             ; $9CAA: $10 $04 - Branch on Result Plus
	BPL $0C             ; $9CAC: $10 $0C - Branch on Result Plus
	BPL $08             ; $9CAE: $10 $08 - Branch on Result Plus
	BRK                 ; $9CB2: $00 - Force Break
	INC $0005,X         ; $9CB3: $FE $05 $00 - Increment Memory by One
	TYA                 ; $9CB6: $98 - Transfer Index Y to Accumulator
	SBC $0805,X         ; $9CB7: $FD $05 $08 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $9CBA: $A8 - Transfer Accumulator to Index Y
	SBC $0421,X         ; $9CBB: $FD $21 $04 - Subtract Memory from Accumulator with Borrow
	TYA                 ; $9CBE: $98 - Transfer Index Y to Accumulator
	SBC $0C05,X         ; $9CBF: $FD $05 $0C - Subtract Memory from Accumulator with Borrow
	TAY                 ; $9CC2: $A8 - Transfer Accumulator to Index Y
	SBC $0810,X         ; $9CC3: $FD $10 $08 - Subtract Memory from Accumulator with Borrow
	BPL $04             ; $9CC6: $10 $04 - Branch on Result Plus
	BPL $08             ; $9CC8: $10 $08 - Branch on Result Plus
	BPL $00             ; $9CCA: $10 $00 - Branch on Result Plus
	SED                 ; $9CCC: $F8 - Set Decimal Flag
	PHP                 ; $9CCD: $08 - Push Processor Status on Stack
	CLC                 ; $9CCE: $18 - Clear Carry Flag
	PHP                 ; $9CCF: $08 - Push Processor Status on Stack
	PHP                 ; $9CD1: $08 - Push Processor Status on Stack
	CLC                 ; $9CD2: $18 - Clear Carry Flag
	PHP                 ; $9CD3: $08 - Push Processor Status on Stack
	PHP                 ; $9CD5: $08 - Push Processor Status on Stack
	JSR $1C08           ; $9CD6: $20 $08 $1C - Jump to New Location Saving Return Address
	PHP                 ; $9CD9: $08 - Push Processor Status on Stack
	JSR $1C08           ; $9CDA: $20 $08 $1C - Jump to New Location Saving Return Address
	BPL $14             ; $9CDE: $10 $14 - Branch on Result Plus
	BPL $10             ; $9CE0: $10 $10 - Branch on Result Plus
	BPL $14             ; $9CE2: $10 $14 - Branch on Result Plus
	BPL $0C             ; $9CE4: $10 $0C - Branch on Result Plus
	SED                 ; $9CE6: $F8 - Set Decimal Flag
	PHP                 ; $9CE7: $08 - Push Processor Status on Stack
	BRK                 ; $9CE8: $00 - Force Break
	PHP                 ; $9CE9: $08 - Push Processor Status on Stack
	PHP                 ; $9CEB: $08 - Push Processor Status on Stack
	PHP                 ; $9CED: $08 - Push Processor Status on Stack
	ASL $F8             ; $9CEE: $06 $F8 - Shift Left One Bit
	ASL $08             ; $9CF0: $06 $08 - Shift Left One Bit
	CLD                 ; $9CF2: $D8 - Clear Decimal Mode
	LDX $FC             ; $9CF3: $A6 $FC - Load Index X with Memory
	ASL $12             ; $9CF5: $06 $12 - Shift Left One Bit
	DEC $17,X           ; $9CF7: $D6 $17 - Decrement Memory by One
	CLC                 ; $9CFA: $18 - Clear Carry Flag
	ASL $18             ; $9CFB: $06 $18 - Shift Left One Bit
	CLC                 ; $9CFE: $18 - Clear Carry Flag
	INC $0F08,X         ; $9D00: $FE $08 $0F - Increment Memory by One
	BRK                 ; $9D04: $00 - Force Break
	PHP                 ; $9D05: $08 - Push Processor Status on Stack
	BRK                 ; $9D08: $00 - Force Break
	ORA #$0C            ; $9D09: $09 $0C - OR Memory with Accumulator
	SEI                 ; $9D0B: $78 - Set Interrupt Disable Status
	BRK                 ; $9D0D: $00 - Force Break
	ORA #$0D            ; $9D0E: $09 $0D - OR Memory with Accumulator
	SEI                 ; $9D10: $78 - Set Interrupt Disable Status
	BRK                 ; $9D12: $00 - Force Break
	ORA #$0E            ; $9D13: $09 $0E - OR Memory with Accumulator
	SEI                 ; $9D15: $78 - Set Interrupt Disable Status
	BRK                 ; $9D17: $00 - Force Break
	PHP                 ; $9D18: $08 - Push Processor Status on Stack
	ASL $0004           ; $9D19: $0E $04 $00 - Shift Left One Bit
	SBC $06             ; $9D1C: $E5 $06 - Subtract Memory from Accumulator with Borrow
	BPL $D7             ; $9D1E: $10 $D7 - Branch on Result Plus
	ROL $FC             ; $9D20: $26 $FC - Rotate One Bit Left
	ASL $D5,X           ; $9D23: $16 $D5 - Shift Left One Bit
	LSR $D6,X           ; $9D27: $56 $D6 - Shift One Bit Right (Memory or Accumulator)
	CLC                 ; $9D29: $18 - Clear Carry Flag
	EOR ($D6,X)         ; $9D2B: $41 $D6 $2A - Exclusive-OR Memory with Accumulator
	LSR $D6,X           ; $9D2F: $56 $D6 - Shift One Bit Right (Memory or Accumulator)
	ORA $161A,Y         ; $9D31: $19 $1A $16 - OR Memory with Accumulator
	DEC $18,X           ; $9D34: $D6 $18 - Decrement Memory by One
	ORA ($D5,X)         ; $9D37: $01 $D5 $36 - OR Memory with Accumulator
	INX                 ; $9D3A: $E8 - Increment Index X by One
	ASL A               ; $9D3C: $0A - Shift Left One Bit
	DEC $57,X           ; $9D3D: $D6 $57 - Decrement Memory by One
	ORA #$FC            ; $9D43: $09 $FC - OR Memory with Accumulator
	ASL $0B             ; $9D45: $06 $0B - Shift Left One Bit
	CMP $36,X           ; $9D47: $D5 $36 - Compare Memory with Accumulator
	CMP $36,X           ; $9D4B: $D5 $36 - Compare Memory with Accumulator
	SED                 ; $9D4D: $F8 - Set Decimal Flag
	ASL $D2             ; $9D4F: $06 $D2 - Shift Left One Bit
	ORA #$12            ; $9D51: $09 $12 - OR Memory with Accumulator
	ASL $D3             ; $9D53: $06 $D3 - Shift Left One Bit
	ORA $0612,Y         ; $9D55: $19 $12 $06 - OR Memory with Accumulator
	ORA $0612,Y         ; $9D59: $19 $12 $06 - OR Memory with Accumulator
	ORA $12F0,Y         ; $9D5D: $19 $F0 $12 - OR Memory with Accumulator
	DEC $16,X           ; $9D61: $D6 $16 - Decrement Memory by One
	DEC $27,X           ; $9D65: $D6 $27 - Decrement Memory by One
	DEC $17,X           ; $9D69: $D6 $17 - Decrement Memory by One
	ORA $D6             ; $9D6C: $05 $D6 - OR Memory with Accumulator
	BEQ $06             ; $9D6F: $F0 $06 - Branch on Result Zero
	ASL $D5             ; $9D71: $06 $D5 - Shift Left One Bit
	ORA $0D,X           ; $9D77: $15 $0D - OR Memory with Accumulator
	SEI                 ; $9D79: $78 - Set Interrupt Disable Status
	ASL $0F15           ; $9D7B: $0E $15 $0F - Shift Left One Bit
	TYA                 ; $9D7E: $98 - Transfer Index Y to Accumulator
	INC $06,X           ; $9D7F: $F6 $06 - Increment Memory by One
	ORA ($D5,X)         ; $9D81: $01 $D5 $36 - OR Memory with Accumulator
	ASL $07             ; $9D85: $06 $07 - Shift Left One Bit
	DEC $17,X           ; $9D87: $D6 $17 - Decrement Memory by One
	ASL $11             ; $9D8A: $06 $11 - Shift Left One Bit
	AND $FC             ; $9D8D: $25 $FC - AND Memory with Accumulator
	PHP                 ; $9D90: $08 - Push Processor Status on Stack
	CLD                 ; $9D91: $D8 - Clear Decimal Mode
	LDX $12             ; $9D92: $A6 $12 - Load Index X with Memory
	ORA #$D8            ; $9D94: $09 $D8 - OR Memory with Accumulator
	CLV                 ; $9D96: $B8 - Clear Overflow Flag
	PHA                 ; $9D98: $48 - Push Accumulator on Stack
	CLD                 ; $9D99: $D8 - Clear Decimal Mode
	TAX                 ; $9D9A: $AA - Transfer Accumulator to Index X
	EOR #$D8            ; $9D9C: $49 $D8 - Exclusive-OR Memory with Accumulator
	CLV                 ; $9D9E: $B8 - Clear Overflow Flag
	BEQ $06             ; $9D9F: $F0 $06 - Branch on Result Zero
	ASL $D5             ; $9DA1: $06 $D5 - Shift Left One Bit
	ROL $06,X           ; $9DA3: $36 $06 - Rotate One Bit Left
	ASL $D5,X           ; $9DA5: $16 $D5 - Shift Left One Bit
	ASL $56             ; $9DA8: $06 $56 - Shift Left One Bit
	CMP $38,X           ; $9DAA: $D5 $38 - Compare Memory with Accumulator
	ASL $46             ; $9DAC: $06 $46 - Shift Left One Bit
	CMP $39,X           ; $9DAE: $D5 $39 - Compare Memory with Accumulator
	ASL $15             ; $9DB0: $06 $15 - Shift Left One Bit
	CMP $3A,X           ; $9DB2: $D5 $3A - Compare Memory with Accumulator
	ASL $17             ; $9DB4: $06 $17 - Shift Left One Bit
	CLD                 ; $9DB6: $D8 - Clear Decimal Mode
	ADC $5706,Y         ; $9DB7: $79 $06 $57 - Add Memory to Accumulator with Carry
	CLD                 ; $9DBA: $D8 - Clear Decimal Mode
	SEI                 ; $9DBB: $78 - Set Interrupt Disable Status
	ASL $55             ; $9DBC: $06 $55 - Shift Left One Bit
	CLD                 ; $9DBE: $D8 - Clear Decimal Mode
	CPX #$64            ; $9DC0: $E0 $64 - Compare Memory and Index Y
	ORA ($15,X)         ; $9DC2: $01 $15 $02 - OR Memory with Accumulator
	ORA $03,X           ; $9DC6: $15 $03 - OR Memory with Accumulator
	RTI                 ; $9DCB: $40 - Return from Interrupt
	ORA ($04,X)         ; $9DCC: $01 $04 $01 - OR Memory with Accumulator
	INC $0128,X         ; $9DCF: $FE $28 $01 - Increment Memory by One
	CLC #$02            ; $9DD2: $29 $02 - Clear Carry Flag
	SEI                 ; $9DD4: $78 - Set Interrupt Disable Status
	PLP                 ; $9DD5: $28 - Pull Processor Status from Stack
	CLC #$02            ; $9DD7: $29 $02 - Clear Carry Flag
	SEI                 ; $9DD9: $78 - Set Interrupt Disable Status
	INC $10,X           ; $9DDA: $F6 $10 - Increment Memory by One
	BPL $10             ; $9DDC: $10 $10 - Branch on Result Plus
	JSR $1010           ; $9DDE: $20 $10 $10 - Jump to New Location Saving Return Address
	BPL $20             ; $9DE1: $10 $20 - Branch on Result Plus
	BPL $00             ; $9DE3: $10 $00 - Branch on Result Plus
	INC $0020,X         ; $9DE5: $FE $20 $00 - Increment Memory by One
	AND ($00,X)         ; $9DE8: $21 $00 $98 - AND Memory with Accumulator
	AND ($00,X)         ; $9DEB: $21 $00 $A8 - AND Memory with Accumulator
	AND ($00,X)         ; $9DEE: $21 $00 $98 - AND Memory with Accumulator
	SBC $05,X           ; $9DF1: $F5 $05 - Subtract Memory from Accumulator with Borrow
	TYA                 ; $9DF4: $98 - Transfer Index Y to Accumulator
	SBC $0020,X         ; $9DF5: $FD $20 $00 - Subtract Memory from Accumulator with Borrow
	JSR $2102           ; $9DF8: $20 $02 $21 - Jump to New Location Saving Return Address
	AND ($06,X)         ; $9DFD: $21 $06 $87 - AND Memory with Accumulator
	INC $04,X           ; $9E00: $F6 $04 - Increment Memory by One
	PHP                 ; $9E02: $08 - Push Processor Status on Stack
	INC $0030,X         ; $9E03: $FE $30 $00 - Increment Memory by One
	BMI $10             ; $9E06: $30 $10 - Branch on Result Minus
	INC $0020,X         ; $9E0B: $FE $20 $00 - Increment Memory by One
	JSR $2004           ; $9E0E: $20 $04 $20 - Jump to New Location Saving Return Address
	PHP                 ; $9E11: $08 - Push Processor Status on Stack
	JSR $200C           ; $9E12: $20 $0C $20 - Jump to New Location Saving Return Address
	BPL $F6             ; $9E15: $10 $F6 - Branch on Result Plus
	JSR $2002           ; $9E17: $20 $02 $20 - Jump to New Location Saving Return Address
	JSR $FA06           ; $9E1B: $20 $06 $FA - Jump to New Location Saving Return Address
	AND ($06,X)         ; $9E1E: $21 $06 $89 - AND Memory with Accumulator
	SBC $0160,X         ; $9E21: $FD $60 $01 - Subtract Memory from Accumulator with Borrow
	BPL $02             ; $9E24: $10 $02 - Branch on Result Plus
	JSR $1001           ; $9E26: $20 $01 $10 - Jump to New Location Saving Return Address
	SED                 ; $9E2A: $F8 - Set Decimal Flag
	BPL $1F             ; $9E2B: $10 $1F - Branch on Result Plus
	PHP                 ; $9E2D: $08 - Push Processor Status on Stack
	BPL $1F             ; $9E2F: $10 $1F - Branch on Result Plus
	PHP                 ; $9E31: $08 - Push Processor Status on Stack
	SED                 ; $9E33: $F8 - Set Decimal Flag
	INC $0204,X         ; $9E36: $FE $04 $02 - Increment Memory by One
	INC $0120,X         ; $9E39: $FE $20 $01 - Increment Memory by One
	JSR $2002           ; $9E3C: $20 $02 $20 - Jump to New Location Saving Return Address
	JSR $F802           ; $9E40: $20 $02 $F8 - Jump to New Location Saving Return Address
	BPL $00             ; $9E43: $10 $00 - Branch on Result Plus
	BPL $04             ; $9E45: $10 $04 - Branch on Result Plus
	BPL $08             ; $9E47: $10 $08 - Branch on Result Plus
	BPL $0C             ; $9E49: $10 $0C - Branch on Result Plus
	SED                 ; $9E4B: $F8 - Set Decimal Flag
	JSR $2001           ; $9E4C: $20 $01 $20 - Jump to New Location Saving Return Address
	INC $0120,X         ; $9E50: $FE $20 $01 - Increment Memory by One
	JSR $FC02           ; $9E53: $20 $02 $FC - Jump to New Location Saving Return Address
	PHP                 ; $9E56: $08 - Push Processor Status on Stack
	BRK                 ; $9E57: $00 - Force Break
	PHP                 ; $9E58: $08 - Push Processor Status on Stack
	ORA $7804           ; $9E5A: $0D $04 $78 - OR Memory with Accumulator
	ORA $6806           ; $9E5D: $0D $06 $68 - OR Memory with Accumulator
	ORA $7804           ; $9E60: $0D $04 $78 - OR Memory with Accumulator
	BPL $00             ; $9E63: $10 $00 - Branch on Result Plus
	ORA ($04),Y         ; $9E65: $11 $04 $78 - OR Memory with Accumulator
	BPL $00             ; $9E68: $10 $00 - Branch on Result Plus
	INC $869E,X         ; $9E6A: $FE $9E $86 - Increment Memory by One
	BVS $9E             ; $9E6E: $70 $9E - Branch on Overflow Set
	ADC $8D20,X         ; $9E70: $7D $20 $8D - Add Memory to Accumulator with Carry
	CMP $A6A9,Y         ; $9E73: $D9 $A9 $A6 - Compare Memory with Accumulator
	LDY #$9E            ; $9E76: $A0 $9E - Load Index Y with Memory
	JSR $9860           ; $9E78: $20 $60 $98 - Jump to New Location Saving Return Address
	BRK                 ; $9E7B: $00 - Force Break
	INC $9D             ; $9E7C: $E6 $9D - Increment Memory by One
	JSR $D9E8           ; $9E7E: $20 $E8 $D9 - Jump to New Location Saving Return Address
	BCC $03             ; $9E81: $90 $03 - Branch on Carry Clear
	BRK                 ; $9E83: $00 - Force Break
	STA $2060,X         ; $9E85: $9D $60 $20 - Store Accumulator in Memory
	ADC ($98),Y         ; $9E88: $71 $98 $A5 - Add Memory to Accumulator with Carry
	LDA ($D0,X)         ; $9E8B: $A1 $D0 $06 - Load Accumulator with Memory
	JSR $D9A3           ; $9E8E: $20 $A3 $D9 - Jump to New Location Saving Return Address
	BCS $01             ; $9E91: $B0 $01 - Branch on Carry Set
	RTS                 ; $9E93: $60 - Return from Subroutine
	LDA $0440,X         ; $9E94: $BD $40 $04 - Load Accumulator with Memory
	CLC                 ; $9E97: $18 - Clear Carry Flag
	ADC $0572           ; $9E98: $6D $72 $05 - Add Memory to Accumulator with Carry
	STA $9A             ; $9E9B: $85 $9A - Store Accumulator in Memory
	LDA #$E6            ; $9E9D: $A9 $E6 - Load Accumulator with Memory
	LDY #$9D            ; $9E9F: $A0 $9D - Load Index Y with Memory
	JSR $D9CF           ; $9EA1: $20 $CF $D9 - Jump to New Location Saving Return Address
	JMP $D8C9           ; $9EA4: $4C $C9 $D8 - Jump to New Location
	JSR $98A4           ; $9EA7: $20 $A4 $98 - Jump to New Location Saving Return Address
	LDA $A1             ; $9EAA: $A5 $A1 - Load Accumulator with Memory
	BEQ $F9             ; $9EAC: $F0 $F9 - Branch on Result Zero
	JSR $9898           ; $9EAE: $20 $98 $98 - Jump to New Location Saving Return Address
	JSR $888A           ; $9EB1: $20 $8A $88 - Jump to New Location Saving Return Address
	BCS $2E             ; $9EB4: $B0 $2E - Branch on Carry Set
	LDA $004A,Y         ; $9EB6: $B9 $4A $00 - Load Accumulator with Memory
	CMP #$4C            ; $9EB9: $C9 $4C - Compare Memory with Accumulator
	BCS $02             ; $9EBB: $B0 $02 - Branch on Carry Set
	LDA #$4C            ; $9EBD: $A9 $4C - Load Accumulator with Memory
	CMP #$B4            ; $9EBF: $C9 $B4 - Compare Memory with Accumulator
	BCC $02             ; $9EC1: $90 $02 - Branch on Carry Clear
	LDA #$B4            ; $9EC3: $A9 $B4 - Load Accumulator with Memory
	STA $DA             ; $9EC5: $85 $DA - Store Accumulator in Memory
	LDA #$1B            ; $9EC7: $A9 $1B - Load Accumulator with Memory
	JSR $8B4D           ; $9EC9: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $16             ; $9ECC: $90 $16 - Branch on Carry Clear
	LDA $DA             ; $9ECE: $A5 $DA - Load Accumulator with Memory
	STA $004A,Y         ; $9ED0: $99 $4A $00 - Store Accumulator in Memory
	LDA #$70            ; $9ED3: $A9 $70 - Load Accumulator with Memory
	STA $0360,Y         ; $9ED5: $99 $60 $03 - Store Accumulator in Memory
	TXA                 ; $9ED8: $8A - Transfer Index X to Accumulator
	PHA                 ; $9ED9: $48 - Push Accumulator on Stack
	TYA                 ; $9EDA: $98 - Transfer Index Y to Accumulator
	TAX                 ; $9EDB: $AA - Transfer Accumulator to Index X
	JSR $C9DB           ; $9EDC: $20 $DB $C9 - Jump to New Location Saving Return Address
	ASL $0300,X         ; $9EDF: $1E $00 $03 - Shift Left One Bit
	PLA                 ; $9EE2: $68 - Pull Accumulator from Stack
	TAX                 ; $9EE3: $AA - Transfer Accumulator to Index X
	LDA $0571           ; $9EE4: $AD $71 $05 - Load Accumulator with Memory
	JSR $98A6           ; $9EE7: $20 $A6 $98 - Jump to New Location Saving Return Address
	JMP $9EB1           ; $9EEA: $4C $B1 $9E - Jump to New Location
	BEQ $AD             ; $9EF0: $F0 $AD - Branch on Result Zero
	ORA $9D             ; $9EF3: $05 $9D - OR Memory with Accumulator
	CPY #$02            ; $9EF5: $C0 $02 - Compare Memory and Index Y
	STA $0280,X         ; $9EF7: $9D $80 $02 - Store Accumulator in Memory
	RTS                 ; $9EFA: $60 - Return from Subroutine
	LDA $056C           ; $9EFB: $AD $6C $05 - Load Accumulator with Memory
	JSR $8BD1           ; $9EFE: $20 $D1 $8B - Jump to New Location Saving Return Address
	CMP #$FB            ; $9F01: $C9 $FB - Compare Memory with Accumulator
	BNE $05             ; $9F03: $D0 $05 - Branch on Result not Zero
	LDA #$FF            ; $9F05: $A9 $FF - Load Accumulator with Memory
	STA $02C0,X         ; $9F07: $9D $C0 $02 - Store Accumulator in Memory
	JSR $A9C4           ; $9F0A: $20 $C4 $A9 - Jump to New Location Saving Return Address
	LDA $0C             ; $9F0D: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $9F0F: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	CLC #$03            ; $9F11: $29 $03 - Clear Carry Flag
	TAY                 ; $9F13: $A8 - Transfer Accumulator to Index Y
	LDA $9F1D,Y         ; $9F14: $B9 $1D $9F - Load Accumulator with Memory
	JSR $CD43           ; $9F17: $20 $43 $CD - Jump to New Location Saving Return Address
	JMP $9278           ; $9F1A: $4C $78 $92 - Jump to New Location
	SED                 ; $9F1D: $F8 - Set Decimal Flag
	SED                 ; $9F1F: $F8 - Set Decimal Flag
	SBC $269F,Y         ; $9F20: $F9 $9F $26 - Subtract Memory from Accumulator with Borrow
	JSR $A2CF           ; $9F27: $20 $CF $A2 - Jump to New Location Saving Return Address
	BCS $3F             ; $9F2A: $B0 $3F - Branch on Carry Set
	LDA $BC             ; $9F2C: $A5 $BC - Load Accumulator with Memory
	CMP #$08            ; $9F2E: $C9 $08 - Compare Memory with Accumulator
	BNE $0B             ; $9F30: $D0 $0B - Branch on Result not Zero
	BIT $6F             ; $9F32: $24 $6F - Test Bits in Memory with Accumulator
	BMI $07             ; $9F34: $30 $07 - Branch on Result Minus
	LDA #$15            ; $9F36: $A9 $15 - Load Accumulator with Memory
	STA $0589           ; $9F38: $8D $89 $05 - Store Accumulator in Memory
	INC $AA             ; $9F3B: $E6 $AA - Increment Memory by One
	JSR $DA68           ; $9F3D: $20 $68 $DA - Jump to New Location Saving Return Address
	LDA #$04            ; $9F40: $A9 $04 - Load Accumulator with Memory
	STA $71             ; $9F42: $85 $71 - Store Accumulator in Memory
	LDA #$05            ; $9F44: $A9 $05 - Load Accumulator with Memory
	STA $77             ; $9F46: $85 $77 - Store Accumulator in Memory
	DEC $057E           ; $9F48: $CE $7E $05 - Decrement Memory by One
	DEC $C7             ; $9F4B: $C6 $C7 - Decrement Memory by One
	JSR $C51E           ; $9F4D: $20 $1E $C5 - Jump to New Location Saving Return Address
	LDA #$2B            ; $9F50: $A9 $2B - Load Accumulator with Memory
	STA $2A             ; $9F52: $85 $2A - Store Accumulator in Memory
	LDA #$8E            ; $9F54: $A9 $8E - Load Accumulator with Memory
	STA $29             ; $9F56: $85 $29 - Store Accumulator in Memory
	LDA #$00            ; $9F58: $A9 $00 - Load Accumulator with Memory
	STA $04F4           ; $9F5A: $8D $F4 $04 - Store Accumulator in Memory
	LDA #$6D            ; $9F5D: $A9 $6D - Load Accumulator with Memory
	LDY #$9F            ; $9F5F: $A0 $9F - Load Index Y with Memory
	JSR $C527           ; $9F61: $20 $27 $C5 - Jump to New Location Saving Return Address
	JSR $C51E           ; $9F64: $20 $1E $C5 - Jump to New Location Saving Return Address
	JMP $8833           ; $9F67: $4C $33 $88 - Jump to New Location
	RTS                 ; $9F6A: $60 - Return from Subroutine
	JMP $882C           ; $9F6B: $4C $2C $88 - Jump to New Location
	LDA $04F4           ; $9F6E: $AD $F4 $04 - Load Accumulator with Memory
	INC $04F4           ; $9F71: $EE $F4 $04 - Increment Memory by One
	CMP #$20            ; $9F74: $C9 $20 - Compare Memory with Accumulator
	BEQ $13             ; $9F76: $F0 $13 - Branch on Result Zero
	CLC #$07            ; $9F78: $29 $07 - Clear Carry Flag
	BNE $0E             ; $9F7A: $D0 $0E - Branch on Result not Zero
	JSR $9FBB           ; $9F7C: $20 $BB $9F - Jump to New Location Saving Return Address
	LDA #$00            ; $9F7F: $A9 $00 - Load Accumulator with Memory
	STA $2007           ; $9F81: $8D $07 $20 - Store Accumulator in Memory
	INC $29             ; $9F84: $E6 $29 - Increment Memory by One
	BNE $02             ; $9F86: $D0 $02 - Branch on Result not Zero
	INC $2A             ; $9F88: $E6 $2A - Increment Memory by One
	RTS                 ; $9F8A: $60 - Return from Subroutine
	JSR $97A7           ; $9F8B: $20 $A7 $97 - Jump to New Location Saving Return Address
	JMP $C541           ; $9F8E: $4C $41 $C5 - Jump to New Location
	LDA $04F4           ; $9F91: $AD $F4 $04 - Load Accumulator with Memory
	INC $04F4           ; $9F94: $EE $F4 $04 - Increment Memory by One
	CMP #$20            ; $9F97: $C9 $20 - Compare Memory with Accumulator
	BEQ $15             ; $9F99: $F0 $15 - Branch on Result Zero
	CLC #$07            ; $9F9B: $29 $07 - Clear Carry Flag
	BNE $10             ; $9F9D: $D0 $10 - Branch on Result not Zero
	JSR $9FBB           ; $9F9F: $20 $BB $9F - Jump to New Location Saving Return Address
	LDA #$11            ; $9FA2: $A9 $11 - Load Accumulator with Memory
	STA $2007           ; $9FA4: $8D $07 $20 - Store Accumulator in Memory
	LDA $29             ; $9FA7: $A5 $29 - Load Accumulator with Memory
	BNE $02             ; $9FA9: $D0 $02 - Branch on Result not Zero
	DEC $2A             ; $9FAB: $C6 $2A - Decrement Memory by One
	DEC $29             ; $9FAD: $C6 $29 - Decrement Memory by One
	RTS                 ; $9FAF: $60 - Return from Subroutine
	DEC $057D           ; $9FB0: $CE $7D $05 - Decrement Memory by One
	LDA #$07            ; $9FB3: $A9 $07 - Load Accumulator with Memory
	JSR $97AA           ; $9FB5: $20 $AA $97 - Jump to New Location Saving Return Address
	JMP $C541           ; $9FB8: $4C $41 $C5 - Jump to New Location
	LDY $2A             ; $9FBB: $A4 $2A - Load Index Y with Memory
	LDA $29             ; $9FBD: $A5 $29 - Load Accumulator with Memory
	JSR $EEDE           ; $9FBF: $20 $DE $EE - Jump to New Location Saving Return Address
	LDA #$04            ; $9FC2: $A9 $04 - Load Accumulator with Memory
	LDY #$F8            ; $9FC4: $A0 $F8 - Load Index Y with Memory
	JMP $980D           ; $9FC6: $4C $0D $98 - Jump to New Location
	JSR $9FDE           ; $9FC9: $20 $DE $9F - Jump to New Location Saving Return Address
	LSR A               ; $9FCC: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	SEC                 ; $9FCF: $38 - Set Carry Flag
	SBC #$04            ; $9FD0: $E9 $04 - Subtract Memory from Accumulator with Borrow
	RTS                 ; $9FD2: $60 - Return from Subroutine
	STA $2C             ; $9FD3: $85 $2C - Store Accumulator in Memory
	LDA #$AF            ; $9FD5: $A9 $AF - Load Accumulator with Memory
	STA $2D             ; $9FD7: $85 $2D - Store Accumulator in Memory
	LDA #$00            ; $9FD9: $A9 $00 - Load Accumulator with Memory
	STA $2B             ; $9FDB: $85 $2B - Store Accumulator in Memory
	RTS                 ; $9FDD: $60 - Return from Subroutine
	LDA $2B             ; $9FDE: $A5 $2B - Load Accumulator with Memory
	BEQ $07             ; $9FE0: $F0 $07 - Branch on Result Zero
	LDA #$00            ; $9FE2: $A9 $00 - Load Accumulator with Memory
	STA $2B             ; $9FE4: $85 $2B - Store Accumulator in Memory
	LDA $2C             ; $9FE6: $A5 $2C - Load Accumulator with Memory
	RTS                 ; $9FE8: $60 - Return from Subroutine
	LDA $2D             ; $9FE9: $A5 $2D - Load Accumulator with Memory
	LSR A               ; $9FEB: $4A $66 - Shift One Bit Right (Memory or Accumulator)
	BIT $0290           ; $9FED: $2C $90 $02 - Test Bits in Memory with Accumulator
	EOR #$B4            ; $9FF0: $49 $B4 - Exclusive-OR Memory with Accumulator
	STA $2D             ; $9FF2: $85 $2D - Store Accumulator in Memory
	INC $2B             ; $9FF4: $E6 $2B - Increment Memory by One
	RTS                 ; $9FF6: $60 - Return from Subroutine
	LDA $049C,X         ; $9FF7: $BD $9C $04 - Load Accumulator with Memory
	CLC #$C0            ; $9FFA: $29 $C0 - Clear Carry Flag
	BNE $21             ; $9FFC: $D0 $21 - Branch on Result not Zero
	LDA $048A,X         ; $9FFE: $BD $8A $04 - Load Accumulator with Memory
	PHA                 ; $A001: $48 - Push Accumulator on Stack
	LDA $0478,X         ; $A002: $BD $78 $04 - Load Accumulator with Memory
	STA $4000,Y         ; $A005: $99 $00 $40 - Store Accumulator in Memory
	LDA $0484,X         ; $A008: $BD $84 $04 - Load Accumulator with Memory
	STA $4002,Y         ; $A00B: $99 $02 $40 - Store Accumulator in Memory
	TYA                 ; $A00E: $98 - Transfer Index Y to Accumulator
	LSR A               ; $A00F: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	TAX                 ; $A011: $AA - Transfer Accumulator to Index X
	PLA                 ; $A012: $68 - Pull Accumulator from Stack
	CMP $04F5,X         ; $A013: $DD $F5 $04 - Compare Memory with Accumulator
	BEQ $06             ; $A016: $F0 $06 - Branch on Result Zero
	STA $04F5,X         ; $A018: $9D $F5 $04 - Store Accumulator in Memory
	STA $4003,Y         ; $A01B: $99 $03 $40 - Store Accumulator in Memory
	RTS                 ; $A01E: $60 - Return from Subroutine
	LDA #$30            ; $A01F: $A9 $30 - Load Accumulator with Memory
	STA $4000,Y         ; $A021: $99 $00 $40 - Store Accumulator in Memory
	RTS                 ; $A024: $60 - Return from Subroutine
	LDA #$30            ; $A025: $A9 $30 - Load Accumulator with Memory
	STA $400C           ; $A027: $8D $0C $40 - Store Accumulator in Memory
	RTS                 ; $A02A: $60 - Return from Subroutine
	LDA #$00            ; $A02B: $A9 $00 - Load Accumulator with Memory
	STA $4008           ; $A02D: $8D $08 $40 - Store Accumulator in Memory
	RTS                 ; $A030: $60 - Return from Subroutine
	LDX $04FA           ; $A031: $AE $FA $04 - Load Index X with Memory
	DEX                 ; $A034: $CA - Decrement Index X by One
	BEQ $10             ; $A035: $F0 $10 - Branch on Result Zero
	LDX #$00            ; $A037: $A2 $00 - Load Index X with Memory
	LDA $049C,X         ; $A039: $BD $9C $04 - Load Accumulator with Memory
	CLC #$C0            ; $A03C: $29 $C0 - Clear Carry Flag
	BNE $11             ; $A03E: $D0 $11 - Branch on Result not Zero
	LDA $0478,X         ; $A040: $BD $78 $04 - Load Accumulator with Memory
	CLC #$0F            ; $A043: $29 $0F - Clear Carry Flag
	BEQ $0A             ; $A045: $F0 $0A - Branch on Result Zero
	LDY #$00            ; $A047: $A0 $00 - Load Index Y with Memory
	JSR $9FF7           ; $A049: $20 $F7 $9F - Jump to New Location Saving Return Address
	LDX $04FA           ; $A04C: $AE $FA $04 - Load Index X with Memory
	BNE $09             ; $A04F: $D0 $09 - Branch on Result not Zero
	LDX #$01            ; $A051: $A2 $01 - Load Index X with Memory
	LDY #$00            ; $A053: $A0 $00 - Load Index Y with Memory
	JSR $9FF7           ; $A055: $20 $F7 $9F - Jump to New Location Saving Return Address
	LDX #$04            ; $A058: $A2 $04 - Load Index X with Memory
	LDY #$04            ; $A05A: $A0 $04 - Load Index Y with Memory
	JSR $9FF7           ; $A05C: $20 $F7 $9F - Jump to New Location Saving Return Address
	LDX $04FB           ; $A05F: $AE $FB $04 - Load Index X with Memory
	JSR $A091           ; $A062: $20 $91 $A0 - Jump to New Location Saving Return Address
	LDX $04FC           ; $A065: $AE $FC $04 - Load Index X with Memory
	LDA $049C,X         ; $A068: $BD $9C $04 - Load Accumulator with Memory
	CLC #$C0            ; $A06B: $29 $C0 - Clear Carry Flag
	BNE $B6             ; $A06D: $D0 $B6 - Branch on Result not Zero
	LDA $0478,X         ; $A06F: $BD $78 $04 - Load Accumulator with Memory
	CLC #$0F            ; $A072: $29 $0F - Clear Carry Flag
	BEQ $AF             ; $A074: $F0 $AF - Branch on Result Zero
	LDA $0478,X         ; $A076: $BD $78 $04 - Load Accumulator with Memory
	CLC #$0F            ; $A079: $29 $0F - Clear Carry Flag
	ORA #$10            ; $A07B: $09 $10 - OR Memory with Accumulator
	STA $400C           ; $A07D: $8D $0C $40 - Store Accumulator in Memory
	LDA #$00            ; $A080: $A9 $00 - Load Accumulator with Memory
	SEC                 ; $A082: $38 - Set Carry Flag
	SBC $0484,X         ; $A083: $FD $84 $04 - Subtract Memory from Accumulator with Borrow
	CLC #$0F            ; $A086: $29 $0F - Clear Carry Flag
	STA $400E           ; $A088: $8D $0E $40 - Store Accumulator in Memory
	LDA #$FF            ; $A08B: $A9 $FF - Load Accumulator with Memory
	STA $400F           ; $A08D: $8D $0F $40 - Store Accumulator in Memory
	RTS                 ; $A090: $60 - Return from Subroutine
	LDA $049C,X         ; $A091: $BD $9C $04 - Load Accumulator with Memory
	CLC #$C0            ; $A094: $29 $C0 - Clear Carry Flag
	BNE $93             ; $A096: $D0 $93 - Branch on Result not Zero
	LDA $0478,X         ; $A098: $BD $78 $04 - Load Accumulator with Memory
	CLC #$0F            ; $A09B: $29 $0F - Clear Carry Flag
	BEQ $8C             ; $A09D: $F0 $8C - Branch on Result Zero
	LDA #$FF            ; $A09F: $A9 $FF - Load Accumulator with Memory
	STA $4008           ; $A0A1: $8D $08 $40 - Store Accumulator in Memory
	LDA $0484,X         ; $A0A4: $BD $84 $04 - Load Accumulator with Memory
	STA $400A           ; $A0A7: $8D $0A $40 - Store Accumulator in Memory
	LDA $048A,X         ; $A0AA: $BD $8A $04 - Load Accumulator with Memory
	STA $400B           ; $A0AD: $8D $0B $40 - Store Accumulator in Memory
	RTS                 ; $A0B0: $60 - Return from Subroutine
	STA $04F9,Y         ; $A0B1: $99 $F9 $04 - Store Accumulator in Memory
	LDA #$FF            ; $A0B4: $A9 $FF - Load Accumulator with Memory
	STA $04F5,Y         ; $A0B6: $99 $F5 $04 - Store Accumulator in Memory
	RTS                 ; $A0B9: $60 - Return from Subroutine
	CLC                 ; $A0BA: $18 - Clear Carry Flag
	ADC $4A,X           ; $A0BB: $75 $4A - Add Memory to Accumulator with Carry
	STA $30             ; $A0BD: $85 $30 - Store Accumulator in Memory
	TYA                 ; $A0BF: $98 - Transfer Index Y to Accumulator
	CLC                 ; $A0C0: $18 - Clear Carry Flag
	ADC $0360,X         ; $A0C1: $7D $60 $03 - Add Memory to Accumulator with Carry
	STA $31             ; $A0C4: $85 $31 - Store Accumulator in Memory
	LDY #$00            ; $A0C6: $A0 $00 - Load Index Y with Memory
	CLC #$08            ; $A0C8: $29 $08 - Clear Carry Flag
	BEQ $02             ; $A0CA: $F0 $02 - Branch on Result Zero
	LSR A               ; $A0CC: $4A $A8 - Shift One Bit Right (Memory or Accumulator)
	LDA $30             ; $A0CE: $A5 $30 - Load Accumulator with Memory
	CLC #$08            ; $A0D0: $29 $08 - Clear Carry Flag
	BEQ $02             ; $A0D2: $F0 $02 - Branch on Result Zero
	INY                 ; $A0D4: $C8 - Increment Index Y by One
	INY                 ; $A0D5: $C8 - Increment Index Y by One
	STY $2F             ; $A0D6: $84 $2F - Sore Index Y in Memory
	LDA $31             ; $A0D8: $A5 $31 - Load Accumulator with Memory
	CLC #$F0            ; $A0DA: $29 $F0 - Clear Carry Flag
	STA $34             ; $A0DC: $85 $34 - Store Accumulator in Memory
	LDA $30             ; $A0DE: $A5 $30 - Load Accumulator with Memory
	LSR A               ; $A0E0: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $A0E2: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	CLC                 ; $A0E4: $18 - Clear Carry Flag
	ADC $34             ; $A0E5: $65 $34 - Add Memory to Accumulator with Carry
	TAY                 ; $A0E7: $A8 - Transfer Accumulator to Index Y
	STY $2E             ; $A0E8: $84 $2E - Sore Index Y in Memory
	LDA $0600,Y         ; $A0EA: $B9 $00 $06 - Load Accumulator with Memory
	PHA                 ; $A0ED: $48 - Push Accumulator on Stack
	LDY $2F             ; $A0EE: $A4 $2F - Load Index Y with Memory
	CMP #$4C            ; $A0F0: $C9 $4C - Compare Memory with Accumulator
	BCC $11             ; $A0F2: $90 $11 - Branch on Carry Clear
	LDA $003A,Y         ; $A0F4: $B9 $3A $00 - Load Accumulator with Memory
	STA $32             ; $A0F7: $85 $32 - Store Accumulator in Memory
	LDA $003B,Y         ; $A0F9: $B9 $3B $00 - Load Accumulator with Memory
	STA $33             ; $A0FC: $85 $33 - Store Accumulator in Memory
	PLA                 ; $A0FE: $68 - Pull Accumulator from Stack
	SBC #$4C            ; $A0FF: $E9 $4C - Subtract Memory from Accumulator with Borrow
	TAY                 ; $A101: $A8 - Transfer Accumulator to Index Y
	LDA ($32),Y         ; $A102: $B1 $32 $60 - Load Accumulator with Memory
	LDA $F883,Y         ; $A105: $B9 $83 $F8 - Load Accumulator with Memory
	STA $32             ; $A108: $85 $32 - Store Accumulator in Memory
	LDA $F884,Y         ; $A10A: $B9 $84 $F8 - Load Accumulator with Memory
	STA $33             ; $A10D: $85 $33 - Store Accumulator in Memory
	PLA                 ; $A10F: $68 - Pull Accumulator from Stack
	TAY                 ; $A110: $A8 - Transfer Accumulator to Index Y
	LDA ($32),Y         ; $A111: $B1 $32 $60 - Load Accumulator with Memory
	LDA #$00            ; $A114: $A9 $00 - Load Accumulator with Memory
	LDY #$00            ; $A116: $A0 $00 - Load Index Y with Memory
	JSR $A0BA           ; $A118: $20 $BA $A0 - Jump to New Location Saving Return Address
	CMP #$56            ; $A11B: $C9 $56 - Compare Memory with Accumulator
	BCS $09             ; $A11D: $B0 $09 - Branch on Carry Set
	CMP #$18            ; $A11F: $C9 $18 - Compare Memory with Accumulator
	BCS $08             ; $A121: $B0 $08 - Branch on Carry Set
	TAY                 ; $A123: $A8 - Transfer Accumulator to Index Y
	LDA $AF18,Y         ; $A124: $B9 $18 $AF - Load Accumulator with Memory
	RTS                 ; $A127: $60 - Return from Subroutine
	LDA #$00            ; $A128: $A9 $00 - Load Accumulator with Memory
	RTS                 ; $A12A: $60 - Return from Subroutine
	LDA #$01            ; $A12B: $A9 $01 - Load Accumulator with Memory
	RTS                 ; $A12D: $60 - Return from Subroutine
	LDY #$FC            ; $A12E: $A0 $FC - Load Index Y with Memory
	LDA #$00            ; $A130: $A9 $00 - Load Accumulator with Memory
	JSR $A118           ; $A132: $20 $18 $A1 - Jump to New Location Saving Return Address
	CLC #$01            ; $A135: $29 $01 - Clear Carry Flag
	RTS                 ; $A137: $60 - Return from Subroutine
	JSR $A118           ; $A138: $20 $18 $A1 - Jump to New Location Saving Return Address
	CLC #$05            ; $A13B: $29 $05 - Clear Carry Flag
	TAY                 ; $A13D: $A8 - Transfer Accumulator to Index Y
	CMP #$04            ; $A13E: $C9 $04 - Compare Memory with Accumulator
	BNE $0C             ; $A140: $D0 $0C - Branch on Result not Zero
	LDA $0360,X         ; $A142: $BD $60 $03 - Load Accumulator with Memory
	CLC #$07            ; $A145: $29 $07 - Clear Carry Flag
	CMP #$03            ; $A147: $C9 $03 - Compare Memory with Accumulator
	BCS $02             ; $A149: $B0 $02 - Branch on Carry Set
	LDA #$00            ; $A14B: $A9 $00 - Load Accumulator with Memory
	RTS                 ; $A14D: $60 - Return from Subroutine
	TYA                 ; $A14E: $98 - Transfer Index Y to Accumulator
	RTS                 ; $A14F: $60 - Return from Subroutine
	LDA $0260,X         ; $A150: $BD $60 $02 - Load Accumulator with Memory
	BMI $1A             ; $A153: $30 $1A - Branch on Result Minus
	BNE $05             ; $A155: $D0 $05 - Branch on Result not Zero
	LDA $0280,X         ; $A157: $BD $80 $02 - Load Accumulator with Memory
	BEQ $12             ; $A15A: $F0 $12 - Branch on Result Zero
	LDA #$04            ; $A15C: $A9 $04 - Load Accumulator with Memory
	LDY #$FE            ; $A15E: $A0 $FE - Load Index Y with Memory
	JSR $A132           ; $A160: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $1D             ; $A163: $D0 $1D - Branch on Result not Zero
	LDA #$04            ; $A165: $A9 $04 - Load Accumulator with Memory
	LDY #$03            ; $A167: $A0 $03 - Load Index Y with Memory
	JSR $A132           ; $A169: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $14             ; $A16C: $D0 $14 - Branch on Result not Zero
	RTS                 ; $A16E: $60 - Return from Subroutine
	LDA #$FC            ; $A16F: $A9 $FC - Load Accumulator with Memory
	LDY #$FE            ; $A171: $A0 $FE - Load Index Y with Memory
	JSR $A132           ; $A173: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $1C             ; $A176: $D0 $1C - Branch on Result not Zero
	LDA #$FC            ; $A178: $A9 $FC - Load Accumulator with Memory
	LDY #$03            ; $A17A: $A0 $03 - Load Index Y with Memory
	JSR $A132           ; $A17C: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $13             ; $A17F: $D0 $13 - Branch on Result not Zero
	RTS                 ; $A181: $60 - Return from Subroutine
	LDA #$08            ; $A182: $A9 $08 - Load Accumulator with Memory
	JSR $AB1C           ; $A184: $20 $1C $AB - Jump to New Location Saving Return Address
	JSR $A860           ; $A187: $20 $60 $A8 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $A18A: $B5 $4A $29 - Load Accumulator with Memory
	SED                 ; $A18D: $F8 - Set Decimal Flag
	CLC                 ; $A18E: $18 - Clear Carry Flag
	ADC #$04            ; $A18F: $69 $04 - Add Memory to Accumulator with Carry
	STA $4A,X           ; $A191: $95 $4A - Store Accumulator in Memory
	RTS                 ; $A193: $60 - Return from Subroutine
	LDA #$04            ; $A194: $A9 $04 - Load Accumulator with Memory
	JSR $AB1C           ; $A196: $20 $1C $AB - Jump to New Location Saving Return Address
	JSR $A860           ; $A199: $20 $60 $A8 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $A19C: $B5 $4A $18 - Load Accumulator with Memory
	ADC #$08            ; $A19F: $69 $08 - Add Memory to Accumulator with Carry
	CLC #$F8            ; $A1A1: $29 $F8 - Clear Carry Flag
	SEC                 ; $A1A3: $38 - Set Carry Flag
	SBC #$05            ; $A1A4: $E9 $05 - Subtract Memory from Accumulator with Borrow
	STA $4A,X           ; $A1A6: $95 $4A - Store Accumulator in Memory
	RTS                 ; $A1A8: $60 - Return from Subroutine
	LDA $02A0,X         ; $A1A9: $BD $A0 $02 - Load Accumulator with Memory
	BMI $1A             ; $A1AC: $30 $1A - Branch on Result Minus
	BNE $05             ; $A1AE: $D0 $05 - Branch on Result not Zero
	LDA $02C0,X         ; $A1B0: $BD $C0 $02 - Load Accumulator with Memory
	BEQ $12             ; $A1B3: $F0 $12 - Branch on Result Zero
	LDA #$FD            ; $A1B5: $A9 $FD - Load Accumulator with Memory
	LDY #$04            ; $A1B7: $A0 $04 - Load Index Y with Memory
	JSR $A138           ; $A1B9: $20 $38 $A1 - Jump to New Location Saving Return Address
	BNE $1D             ; $A1BC: $D0 $1D - Branch on Result not Zero
	LDA #$03            ; $A1BE: $A9 $03 - Load Accumulator with Memory
	LDY #$04            ; $A1C0: $A0 $04 - Load Index Y with Memory
	JSR $A138           ; $A1C2: $20 $38 $A1 - Jump to New Location Saving Return Address
	BNE $14             ; $A1C5: $D0 $14 - Branch on Result not Zero
	RTS                 ; $A1C7: $60 - Return from Subroutine
	LDA #$FD            ; $A1C8: $A9 $FD - Load Accumulator with Memory
	LDY #$FD            ; $A1CA: $A0 $FD - Load Index Y with Memory
	JSR $A132           ; $A1CC: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $21             ; $A1CF: $D0 $21 - Branch on Result not Zero
	LDA #$03            ; $A1D1: $A9 $03 - Load Accumulator with Memory
	LDY #$FD            ; $A1D3: $A0 $FD - Load Index Y with Memory
	JSR $A132           ; $A1D5: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $18             ; $A1D8: $D0 $18 - Branch on Result not Zero
	RTS                 ; $A1DA: $60 - Return from Subroutine
	LDA #$10            ; $A1DB: $A9 $10 - Load Accumulator with Memory
	JSR $AB1C           ; $A1DD: $20 $1C $AB - Jump to New Location Saving Return Address
	JSR $A869           ; $A1E0: $20 $69 $A8 - Jump to New Location Saving Return Address
	LDA $0360,X         ; $A1E3: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $A1E6: $38 - Set Carry Flag
	SBC #$04            ; $A1E7: $E9 $04 - Subtract Memory from Accumulator with Borrow
	CLC #$F8            ; $A1E9: $29 $F8 - Clear Carry Flag
	CLC                 ; $A1EB: $18 - Clear Carry Flag
	ADC #$04            ; $A1EC: $69 $04 - Add Memory to Accumulator with Carry
	STA $0360,X         ; $A1EE: $9D $60 $03 - Store Accumulator in Memory
	RTS                 ; $A1F1: $60 - Return from Subroutine
	LDA #$FF            ; $A1F2: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $A1F4: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$80            ; $A1F7: $A9 $80 - Load Accumulator with Memory
	STA $02C0,X         ; $A1F9: $9D $C0 $02 - Store Accumulator in Memory
	LDA $90,X           ; $A1FC: $B5 $90 $F0 - Load Accumulator with Memory
	ORA $A9             ; $A1FF: $05 $A9 - OR Memory with Accumulator
	INC $C09D           ; $A201: $EE $9D $C0 - Increment Memory by One
	LDA $0360,X         ; $A205: $BD $60 $03 - Load Accumulator with Memory
	CLC #$F8            ; $A208: $29 $F8 - Clear Carry Flag
	CLC                 ; $A20A: $18 - Clear Carry Flag
	ADC #$03            ; $A20B: $69 $03 - Add Memory to Accumulator with Carry
	STA $0360,X         ; $A20D: $9D $60 $03 - Store Accumulator in Memory
	RTS                 ; $A210: $60 - Return from Subroutine
	LDA $4A,X           ; $A211: $B5 $4A $85 - Load Accumulator with Memory
	JSR $8BE5           ; $A215: $20 $E5 $8B - Jump to New Location Saving Return Address
	STA $38             ; $A218: $85 $38 - Store Accumulator in Memory
	LDY $0200,X         ; $A21A: $BC $00 $02 - Load Index Y with Memory
	LDA $BEF9,Y         ; $A21D: $B9 $F9 $BE - Load Accumulator with Memory
	STA $36             ; $A220: $85 $36 - Store Accumulator in Memory
	RTS                 ; $A222: $60 - Return from Subroutine
	CLC                 ; $A223: $18 - Clear Carry Flag
	ADC $36             ; $A224: $65 $36 - Add Memory to Accumulator with Carry
	STA $39             ; $A226: $85 $39 - Store Accumulator in Memory
	LDA $37             ; $A228: $A5 $37 - Load Accumulator with Memory
	SEC                 ; $A22A: $38 - Set Carry Flag
	SBC $004A,Y         ; $A22B: $F9 $4A $00 - Subtract Memory from Accumulator with Borrow
	BPL $05             ; $A22E: $10 $05 - Branch on Result Plus
	EOR #$FF            ; $A230: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $A232: $38 - Set Carry Flag
	ADC #$00            ; $A233: $69 $00 - Add Memory to Accumulator with Carry
	CMP $39             ; $A235: $C5 $39 - Compare Memory with Accumulator
	BCS $12             ; $A237: $B0 $12 - Branch on Carry Set
	LDA $38             ; $A239: $A5 $38 - Load Accumulator with Memory
	SEC                 ; $A23B: $38 - Set Carry Flag
	SBC $0360,Y         ; $A23C: $F9 $60 $03 - Subtract Memory from Accumulator with Borrow
	CLC                 ; $A23F: $18 - Clear Carry Flag
	ADC $CC             ; $A240: $65 $CC - Add Memory to Accumulator with Carry
	BPL $05             ; $A242: $10 $05 - Branch on Result Plus
	EOR #$FF            ; $A244: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $A246: $38 - Set Carry Flag
	ADC #$00            ; $A247: $69 $00 - Add Memory to Accumulator with Carry
	CMP $39             ; $A249: $C5 $39 - Compare Memory with Accumulator
	RTS                 ; $A24B: $60 - Return from Subroutine
	STX $35             ; $A24C: $86 $35 - Store Index X in Memory
	JSR $A211           ; $A24E: $20 $11 $A2 - Jump to New Location Saving Return Address
	LDY #$04            ; $A251: $A0 $04 - Load Index Y with Memory
	LDX $0200,Y         ; $A253: $BE $00 $02 - Load Index X with Memory
	BEQ $24             ; $A256: $F0 $24 - Branch on Result Zero
	LDA $37             ; $A258: $A5 $37 - Load Accumulator with Memory
	SBC $004A,Y         ; $A25A: $F9 $4A $00 - Subtract Memory from Accumulator with Borrow
	BPL $02             ; $A25D: $10 $02 - Branch on Result Plus
	EOR #$FF            ; $A25F: $49 $FF - Exclusive-OR Memory with Accumulator
	CMP #$17            ; $A261: $C9 $17 - Compare Memory with Accumulator
	BCS $17             ; $A263: $B0 $17 - Branch on Carry Set
	LDA $38             ; $A265: $A5 $38 - Load Accumulator with Memory
	SBC $0360,Y         ; $A267: $F9 $60 $03 - Subtract Memory from Accumulator with Borrow
	ADC $CC             ; $A26A: $65 $CC - Add Memory to Accumulator with Carry
	BPL $02             ; $A26C: $10 $02 - Branch on Result Plus
	EOR #$FF            ; $A26E: $49 $FF - Exclusive-OR Memory with Accumulator
	CMP #$17            ; $A270: $C9 $17 - Compare Memory with Accumulator
	BCS $08             ; $A272: $B0 $08 - Branch on Carry Set
	LDA $BEF9,X         ; $A274: $BD $F9 $BE - Load Accumulator with Memory
	JSR $A223           ; $A277: $20 $23 $A2 - Jump to New Location Saving Return Address
	BCC $06             ; $A27A: $90 $06 - Branch on Carry Clear
	INY                 ; $A27C: $C8 - Increment Index Y by One
	CPY #$14            ; $A27D: $C0 $14 - Compare Memory and Index Y
	BNE $D2             ; $A27F: $D0 $D2 - Branch on Result not Zero
	SEC                 ; $A281: $38 - Set Carry Flag
	LDX $35             ; $A282: $A6 $35 - Load Index X with Memory
	RTS                 ; $A284: $60 - Return from Subroutine
	JSR $A211           ; $A285: $20 $11 $A2 - Jump to New Location Saving Return Address
	LDY #$04            ; $A288: $A0 $04 - Load Index Y with Memory
	DEY                 ; $A28A: $88 - Decrement Index Y by One
	LDA $0200,Y         ; $A28B: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $23             ; $A28E: $F0 $23 - Branch on Result Zero
	LDA $37             ; $A290: $A5 $37 - Load Accumulator with Memory
	SBC $004A,Y         ; $A292: $F9 $4A $00 - Subtract Memory from Accumulator with Borrow
	BPL $02             ; $A295: $10 $02 - Branch on Result Plus
	EOR #$FF            ; $A297: $49 $FF - Exclusive-OR Memory with Accumulator
	CMP #$17            ; $A299: $C9 $17 - Compare Memory with Accumulator
	BCS $16             ; $A29B: $B0 $16 - Branch on Carry Set
	LDA $38             ; $A29D: $A5 $38 - Load Accumulator with Memory
	SBC $0360,Y         ; $A29F: $F9 $60 $03 - Subtract Memory from Accumulator with Borrow
	ADC $CC             ; $A2A2: $65 $CC - Add Memory to Accumulator with Carry
	BPL $02             ; $A2A4: $10 $02 - Branch on Result Plus
	EOR #$FF            ; $A2A6: $49 $FF - Exclusive-OR Memory with Accumulator
	CMP #$17            ; $A2A8: $C9 $17 - Compare Memory with Accumulator
	BCS $07             ; $A2AA: $B0 $07 - Branch on Carry Set
	LDA #$04            ; $A2AC: $A9 $04 - Load Accumulator with Memory
	JSR $A223           ; $A2AE: $20 $23 $A2 - Jump to New Location Saving Return Address
	BCC $04             ; $A2B1: $90 $04 - Branch on Carry Clear
	DEY                 ; $A2B3: $88 - Decrement Index Y by One
	BPL $D5             ; $A2B4: $10 $D5 - Branch on Result Plus
	SEC                 ; $A2B6: $38 - Set Carry Flag
	RTS                 ; $A2B7: $60 - Return from Subroutine
	JSR $A211           ; $A2B8: $20 $11 $A2 - Jump to New Location Saving Return Address
	LDY #$04            ; $A2BB: $A0 $04 - Load Index Y with Memory
	RTS                 ; $A2BD: $60 - Return from Subroutine
	JSR $A2B8           ; $A2BE: $20 $B8 $A2 - Jump to New Location Saving Return Address
	JSR $A28A           ; $A2C1: $20 $8A $A2 - Jump to New Location Saving Return Address
	BCS $08             ; $A2C4: $B0 $08 - Branch on Carry Set
	LDA $0088,Y         ; $A2C6: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $A2C9: $C9 $09 - Compare Memory with Accumulator
	BEQ $F4             ; $A2CB: $F0 $F4 - Branch on Result Zero
	CLC                 ; $A2CD: $18 - Clear Carry Flag
	RTS                 ; $A2CE: $60 - Return from Subroutine
	JSR $A2B8           ; $A2CF: $20 $B8 $A2 - Jump to New Location Saving Return Address
	JSR $A28A           ; $A2D2: $20 $8A $A2 - Jump to New Location Saving Return Address
	BCS $07             ; $A2D5: $B0 $07 - Branch on Carry Set
	LDA $0088,Y         ; $A2D7: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$03            ; $A2DA: $C9 $03 - Compare Memory with Accumulator
	BCS $F4             ; $A2DC: $B0 $F4 - Branch on Carry Set
	RTS                 ; $A2DE: $60 - Return from Subroutine
	LDX #$EF            ; $A2DF: $A2 $EF - Load Index X with Memory
	LDX #$E2            ; $A2E1: $A2 $E2 - Load Index X with Memory
	LDY $BD             ; $A2E3: $A4 $BD - Load Index Y with Memory
	LDA $A2EC,Y         ; $A2E5: $B9 $EC $A2 - Load Accumulator with Memory
	JSR $A92C           ; $A2E8: $20 $2C $A9 - Jump to New Location Saving Return Address
	RTS                 ; $A2EB: $60 - Return from Subroutine
	BRK                 ; $A2EC: $00 - Force Break
	ORA ($01,X)         ; $A2ED: $01 $01 $00 - OR Memory with Accumulator
	JSR $A9EC           ; $A2F0: $20 $EC $A9 - Jump to New Location Saving Return Address
	JSR $87E9           ; $A2F3: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $F3             ; $A2F6: $D0 $F3 - Branch on Result not Zero
	LDA #$D9            ; $A2F8: $A9 $D9 - Load Accumulator with Memory
	JMP $8820           ; $A2FA: $4C $20 $88 - Jump to New Location
	LDA $056D           ; $A303: $AD $6D $05 - Load Accumulator with Memory
	STA $0300,X         ; $A306: $9D $00 $03 - Store Accumulator in Memory
	BRK                 ; $A309: $00 - Force Break
	DEC $0300,X         ; $A30C: $DE $00 $03 - Decrement Memory by One
	BMI $0A             ; $A30F: $30 $0A - Branch on Result Minus
	BNE $42             ; $A311: $D0 $42 - Branch on Result not Zero
	LDA #$00            ; $A313: $A9 $00 - Load Accumulator with Memory
	STA $03DC,X         ; $A315: $9D $DC $03 - Store Accumulator in Memory
	JSR $A309           ; $A318: $20 $09 $A3 - Jump to New Location Saving Return Address
	LDA $03F0,X         ; $A31B: $BD $F0 $03 - Load Accumulator with Memory
	CMP #$05            ; $A31E: $C9 $05 - Compare Memory with Accumulator
	BNE $33             ; $A320: $D0 $33 - Branch on Result not Zero
	LDA #$38            ; $A322: $A9 $38 - Load Accumulator with Memory
	JSR $8B2E           ; $A324: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $29             ; $A327: $90 $29 - Branch on Carry Clear
	LDA #$13            ; $A329: $A9 $13 - Load Accumulator with Memory
	JSR $980F           ; $A32B: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $A884           ; $A32E: $20 $84 $A8 - Jump to New Location Saving Return Address
	BEQ $16             ; $A331: $F0 $16 - Branch on Result Zero
	JSR $893C           ; $A333: $20 $3C $89 - Jump to New Location Saving Return Address
	LDA $004A,Y         ; $A336: $B9 $4A $00 - Load Accumulator with Memory
	SEC                 ; $A339: $38 - Set Carry Flag
	SBC #$04            ; $A33A: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $004A,Y         ; $A33C: $99 $4A $00 - Store Accumulator in Memory
	LDA $0380,Y         ; $A33F: $B9 $80 $03 - Load Accumulator with Memory
	ORA #$40            ; $A342: $09 $40 - OR Memory with Accumulator
	STA $0380,Y         ; $A344: $99 $80 $03 - Store Accumulator in Memory
	BNE $09             ; $A347: $D0 $09 - Branch on Result not Zero
	LDA $004A,Y         ; $A349: $B9 $4A $00 - Load Accumulator with Memory
	CLC                 ; $A34C: $18 - Clear Carry Flag
	ADC #$04            ; $A34D: $69 $04 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $A34F: $99 $4A $00 - Store Accumulator in Memory
	JSR $A303           ; $A352: $20 $03 $A3 - Jump to New Location Saving Return Address
	JMP $D8C9           ; $A355: $4C $C9 $D8 - Jump to New Location
	EOR $6AA3,X         ; $A35B: $5D $A3 $6A - Exclusive-OR Memory with Accumulator
	JSR $D98D           ; $A35E: $20 $8D $D9 - Jump to New Location Saving Return Address
	LDA #$A4            ; $A361: $A9 $A4 - Load Accumulator with Memory
	LDY #$A4            ; $A363: $A0 $A4 - Load Index Y with Memory
	JSR $9860           ; $A365: $20 $60 $98 - Jump to New Location Saving Return Address
	BRK                 ; $A368: $00 - Force Break
	LDA ($9C),Y         ; $A369: $B1 $9C $20 - Load Accumulator with Memory
	INX                 ; $A36C: $E8 - Increment Index X by One
	CMP $0390,Y         ; $A36D: $D9 $90 $03 - Compare Memory with Accumulator
	BRK                 ; $A370: $00 - Force Break
	STA $2060,X         ; $A372: $9D $60 $20 - Store Accumulator in Memory
	ADC ($98),Y         ; $A375: $71 $98 $A9 - Add Memory to Accumulator with Carry
	LDA ($A0),Y         ; $A378: $B1 $A0 $9C - Load Accumulator with Memory
	JSR $D9CF           ; $A37B: $20 $CF $D9 - Jump to New Location Saving Return Address
	LDY $A1             ; $A37E: $A4 $A1 - Load Index Y with Memory
	LDA $A390,Y         ; $A380: $B9 $90 $A3 - Load Accumulator with Memory
	PHA                 ; $A383: $48 - Push Accumulator on Stack
	LDA $A389,Y         ; $A384: $B9 $89 $A3 - Load Accumulator with Memory
	PHA                 ; $A387: $48 - Push Accumulator on Stack
	RTS                 ; $A388: $60 - Return from Subroutine
	STX $F3,Y           ; $A389: $96 $F3 - Store Index X in Memory
	LDX $CDB3           ; $A38B: $AE $B3 $CD - Load Index X with Memory
	LDA $A3FF           ; $A38E: $AD $FF $A3 - Load Accumulator with Memory
	JSR $D9A3           ; $A397: $20 $A3 $D9 - Jump to New Location Saving Return Address
	LDA $A1             ; $A39A: $A5 $A1 - Load Accumulator with Memory
	BEQ $0E             ; $A39C: $F0 $0E - Branch on Result Zero
	BIT $6F             ; $A39E: $24 $6F - Test Bits in Memory with Accumulator
	BVC $0A             ; $A3A0: $50 $0A - Branch on Overflow Clear
	LDA #$10            ; $A3A2: $A9 $10 - Load Accumulator with Memory
	LDY #$08            ; $A3A4: $A0 $08 - Load Index Y with Memory
	LDX #$2C            ; $A3A6: $A2 $2C - Load Index X with Memory
	JSR $A8E3           ; $A3A8: $20 $E3 $A8 - Jump to New Location Saving Return Address
	SEC                 ; $A3AB: $38 - Set Carry Flag
	BCS $46             ; $A3AC: $B0 $46 - Branch on Carry Set
	RTS                 ; $A3AE: $60 - Return from Subroutine
	JSR $A455           ; $A3AF: $20 $55 $A4 - Jump to New Location Saving Return Address
	BNE $40             ; $A3B2: $D0 $40 - Branch on Result not Zero
	LDY $9B             ; $A3B4: $A4 $9B - Load Index Y with Memory
	LDA $004A,Y         ; $A3B6: $B9 $4A $00 - Load Accumulator with Memory
	JSR $A58D           ; $A3B9: $20 $8D $A5 - Jump to New Location Saving Return Address
	STA $9F             ; $A3BC: $85 $9F - Store Accumulator in Memory
	LDA $A3C6,Y         ; $A3BE: $B9 $C6 $A3 - Load Accumulator with Memory
	STA $A0             ; $A3C1: $85 $A0 - Store Accumulator in Memory
	JMP $A3F4           ; $A3C3: $4C $F4 $A3 - Jump to New Location
	ORA $05             ; $A3C6: $05 $05 - OR Memory with Accumulator
	ORA ($00,X)         ; $A3CC: $01 $00 $A5 - OR Memory with Accumulator
	CMP #$9E            ; $A3D0: $C9 $9E - Compare Memory with Accumulator
	BCC $07             ; $A3D2: $90 $07 - Branch on Carry Clear
	BNE $19             ; $A3D4: $D0 $19 - Branch on Result not Zero
	LDA #$0E            ; $A3D6: $A9 $0E - Load Accumulator with Memory
	JSR $980F           ; $A3D8: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $A48E           ; $A3DB: $20 $8E $A4 - Jump to New Location Saving Return Address
	LDA #$20            ; $A3DE: $A9 $20 - Load Accumulator with Memory
	JSR $8BD1           ; $A3E0: $20 $D1 $8B - Jump to New Location Saving Return Address
	JSR $A9C4           ; $A3E3: $20 $C4 $A9 - Jump to New Location Saving Return Address
	LDA $0360,X         ; $A3E6: $BD $60 $03 - Load Accumulator with Memory
	CMP #$08            ; $A3E9: $C9 $08 - Compare Memory with Accumulator
	BCS $02             ; $A3EB: $B0 $02 - Branch on Carry Set
	INC $A1             ; $A3ED: $E6 $A1 - Increment Memory by One
	JSR $8806           ; $A3EF: $20 $06 $88 - Jump to New Location Saving Return Address
	BEQ $55             ; $A3F2: $F0 $55 - Branch on Result Zero
	LDA $0440,X         ; $A3F4: $BD $40 $04 - Load Accumulator with Memory
	CMP #$07            ; $A3F7: $C9 $07 - Compare Memory with Accumulator
	BCS $1A             ; $A3F9: $B0 $1A - Branch on Carry Set
	LDA #$48            ; $A3FB: $A9 $48 - Load Accumulator with Memory
	LDY #$A5            ; $A3FD: $A0 $A5 - Load Index Y with Memory
	JSR $9860           ; $A3FF: $20 $60 $98 - Jump to New Location Saving Return Address
	LDA #$04            ; $A402: $A9 $04 - Load Accumulator with Memory
	STA $A1             ; $A404: $85 $A1 - Store Accumulator in Memory
	JSR $A484           ; $A406: $20 $84 $A4 - Jump to New Location Saving Return Address
	LDA #$FF            ; $A409: $A9 $FF - Load Accumulator with Memory
	STA $0440,X         ; $A40B: $9D $40 $04 - Store Accumulator in Memory
	STA $A3             ; $A40E: $85 $A3 - Store Accumulator in Memory
	STA $21             ; $A410: $85 $21 - Store Accumulator in Memory
	JMP $DA16           ; $A412: $4C $16 $DA - Jump to New Location
	JSR $A45F           ; $A415: $20 $5F $A4 - Jump to New Location Saving Return Address
	JSR $9278           ; $A418: $20 $78 $92 - Jump to New Location Saving Return Address
	LDA $AD             ; $A41B: $A5 $AD - Load Accumulator with Memory
	BPL $2B             ; $A41D: $10 $2B - Branch on Result Plus
	JSR $A44D           ; $A41F: $20 $4D $A4 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $A422: $B5 $4A $18 - Load Accumulator with Memory
	ADC $9A             ; $A425: $65 $9A - Add Memory to Accumulator with Carry
	STA $B4             ; $A427: $85 $B4 - Store Accumulator in Memory
	LDA $0360,X         ; $A429: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $A42C: $18 - Clear Carry Flag
	ADC $9E             ; $A42D: $65 $9E - Add Memory to Accumulator with Carry
	STA $B5             ; $A42F: $85 $B5 - Store Accumulator in Memory
	LDA $0300,X         ; $A431: $BD $00 $03 - Load Accumulator with Memory
	BNE $04             ; $A434: $D0 $04 - Branch on Result not Zero
	LDA #$00            ; $A436: $A9 $00 - Load Accumulator with Memory
	BPL $05             ; $A438: $10 $05 - Branch on Result Plus
	LDA $0C             ; $A43A: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $A43C: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	JSR $A92C           ; $A43F: $20 $2C $A9 - Jump to New Location Saving Return Address
	LDY #$27            ; $A442: $A0 $27 - Load Index Y with Memory
	LDA #$00            ; $A444: $A9 $00 - Load Accumulator with Memory
	JSR $F08D           ; $A446: $20 $8D $F0 - Jump to New Location Saving Return Address
	RTS                 ; $A449: $60 - Return from Subroutine
	JSR $A422           ; $A44A: $20 $22 $A4 - Jump to New Location Saving Return Address
	LDA #$02            ; $A44D: $A9 $02 - Load Accumulator with Memory
	JSR $A92C           ; $A44F: $20 $2C $A9 - Jump to New Location Saving Return Address
	JMP $A992           ; $A452: $4C $92 $A9 - Jump to New Location
	LDA $0C             ; $A455: $A5 $0C - Load Accumulator with Memory
	CLC #$02            ; $A457: $29 $02 - Clear Carry Flag
	ASL A               ; $A459: $0A - Shift Left One Bit
	SBC #$01            ; $A45A: $E9 $01 - Subtract Memory from Accumulator with Borrow
	STA $9A             ; $A45C: $85 $9A - Store Accumulator in Memory
	RTS                 ; $A45E: $60 - Return from Subroutine
	LDA $9A             ; $A45F: $A5 $9A - Load Accumulator with Memory
	SEC                 ; $A461: $38 - Set Carry Flag
	SBC $9F             ; $A462: $E5 $9F - Subtract Memory from Accumulator with Borrow
	BMI $07             ; $A464: $30 $07 - Branch on Result Minus
	BEQ $07             ; $A466: $F0 $07 - Branch on Result Zero
	DEC $9A             ; $A468: $C6 $9A - Decrement Memory by One
	JMP $A46F           ; $A46A: $4C $6F $A4 - Jump to New Location
	INC $9A             ; $A46D: $E6 $9A - Increment Memory by One
	LDA $9E             ; $A46F: $A5 $9E - Load Accumulator with Memory
	SEC                 ; $A471: $38 - Set Carry Flag
	SBC $A0             ; $A472: $E5 $A0 - Subtract Memory from Accumulator with Borrow
	BMI $07             ; $A474: $30 $07 - Branch on Result Minus
	BEQ $07             ; $A476: $F0 $07 - Branch on Result Zero
	DEC $9E             ; $A478: $C6 $9E - Decrement Memory by One
	JMP $A47F           ; $A47A: $4C $7F $A4 - Jump to New Location
	INC $9E             ; $A47D: $E6 $9E - Increment Memory by One
	RTS                 ; $A47F: $60 - Return from Subroutine
	LDA #$01            ; $A480: $A9 $01 - Load Accumulator with Memory
	STA $A1             ; $A482: $85 $A1 - Store Accumulator in Memory
	LDA #$00            ; $A484: $A9 $00 - Load Accumulator with Memory
	STA $9F             ; $A486: $85 $9F - Store Accumulator in Memory
	STA $A0             ; $A488: $85 $A0 - Store Accumulator in Memory
	RTS                 ; $A48A: $60 - Return from Subroutine
	JSR $A480           ; $A48B: $20 $80 $A4 - Jump to New Location Saving Return Address
	LDA #$FB            ; $A48E: $A9 $FB - Load Accumulator with Memory
	STA $A0             ; $A490: $85 $A0 - Store Accumulator in Memory
	RTS                 ; $A492: $60 - Return from Subroutine
	JSR $A480           ; $A493: $20 $80 $A4 - Jump to New Location Saving Return Address
	LDA #$FC            ; $A496: $A9 $FC - Load Accumulator with Memory
	STA $9F             ; $A498: $85 $9F - Store Accumulator in Memory
	RTS                 ; $A49A: $60 - Return from Subroutine
	INC $0300,X         ; $A49B: $FE $00 $03 - Increment Memory by One
	RTS                 ; $A49E: $60 - Return from Subroutine
	DEC $0300,X         ; $A49F: $DE $00 $03 - Decrement Memory by One
	JMP $DA85           ; $A4A2: $4C $85 $DA - Jump to New Location
	JSR $98A4           ; $A4A5: $20 $A4 $98 - Jump to New Location Saving Return Address
	LDA $A1             ; $A4A8: $A5 $A1 - Load Accumulator with Memory
	BEQ $F9             ; $A4AA: $F0 $F9 - Branch on Result Zero
	JSR $A4BB           ; $A4AC: $20 $BB $A4 - Jump to New Location Saving Return Address
	JSR $989C           ; $A4AF: $20 $9C $98 - Jump to New Location Saving Return Address
	JSR $A501           ; $A4B2: $20 $01 $A5 - Jump to New Location Saving Return Address
	JSR $9890           ; $A4B5: $20 $90 $98 - Jump to New Location Saving Return Address
	JMP $A4AC           ; $A4B8: $4C $AC $A4 - Jump to New Location
	LDA #$03            ; $A4BB: $A9 $03 - Load Accumulator with Memory
	STA $1D             ; $A4BD: $85 $1D - Store Accumulator in Memory
	JSR $888A           ; $A4BF: $20 $8A $88 - Jump to New Location Saving Return Address
	BCS $3A             ; $A4C2: $B0 $3A - Branch on Carry Set
	STY $9B             ; $A4C4: $84 $9B - Sore Index Y in Memory
	JSR $DA81           ; $A4C6: $20 $81 $DA - Jump to New Location Saving Return Address
	LDA #$03            ; $A4C9: $A9 $03 - Load Accumulator with Memory
	STA $A1             ; $A4CB: $85 $A1 - Store Accumulator in Memory
	JSR $98BE           ; $A4CD: $20 $BE $98 - Jump to New Location Saving Return Address
	JSR $A49B           ; $A4D0: $20 $9B $A4 - Jump to New Location Saving Return Address
	JSR $98BE           ; $A4D3: $20 $BE $98 - Jump to New Location Saving Return Address
	LDA #$29            ; $A4D6: $A9 $29 - Load Accumulator with Memory
	JSR $8B4D           ; $A4D8: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $15             ; $A4DB: $90 $15 - Branch on Carry Clear
	TXA                 ; $A4DD: $8A - Transfer Index X to Accumulator
	PHA                 ; $A4DE: $48 - Push Accumulator on Stack
	TYA                 ; $A4DF: $98 - Transfer Index Y to Accumulator
	TAX                 ; $A4E0: $AA - Transfer Accumulator to Index X
	LDY $9B             ; $A4E1: $A4 $9B - Load Index Y with Memory
	LDA $004A,Y         ; $A4E3: $B9 $4A $00 - Load Accumulator with Memory
	PHA                 ; $A4E6: $48 - Push Accumulator on Stack
	LDA $0360,Y         ; $A4E7: $B9 $60 $03 - Load Accumulator with Memory
	TAY                 ; $A4EA: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $A4EB: $68 - Pull Accumulator from Stack
	CLC                 ; $A4EC: $18 - Clear Carry Flag
	JSR $8996           ; $A4ED: $20 $96 $89 - Jump to New Location Saving Return Address
	PLA                 ; $A4F0: $68 - Pull Accumulator from Stack
	TAX                 ; $A4F1: $AA - Transfer Accumulator to Index X
	LDA #$14            ; $A4F2: $A9 $14 - Load Accumulator with Memory
	JSR $98C4           ; $A4F4: $20 $C4 $98 - Jump to New Location Saving Return Address
	DEC $1D             ; $A4F7: $C6 $1D - Decrement Memory by One
	BNE $DB             ; $A4F9: $D0 $DB - Branch on Result not Zero
	JSR $A49F           ; $A4FB: $20 $9F $A4 - Jump to New Location Saving Return Address
	JMP $A480           ; $A4FE: $4C $80 $A4 - Jump to New Location
	JSR $A48B           ; $A501: $20 $8B $A4 - Jump to New Location Saving Return Address
	JSR $98BA           ; $A504: $20 $BA $98 - Jump to New Location Saving Return Address
	JSR $A49B           ; $A507: $20 $9B $A4 - Jump to New Location Saving Return Address
	LDA #$08            ; $A50A: $A9 $08 - Load Accumulator with Memory
	STA $1D             ; $A50C: $85 $1D - Store Accumulator in Memory
	LDA #$29            ; $A50E: $A9 $29 - Load Accumulator with Memory
	JSR $8B4D           ; $A510: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $22             ; $A513: $90 $22 - Branch on Carry Clear
	LDA $CC             ; $A515: $A5 $CC - Load Accumulator with Memory
	ADC #$08            ; $A517: $69 $08 - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $A519: $99 $60 $03 - Store Accumulator in Memory
	JSR $9FDE           ; $A51C: $20 $DE $9F - Jump to New Location Saving Return Address
	CMP #$64            ; $A51F: $C9 $64 - Compare Memory with Accumulator
	BCS $07             ; $A521: $B0 $07 - Branch on Carry Set
	ADC $CC             ; $A523: $65 $CC - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $A525: $99 $60 $03 - Store Accumulator in Memory
	LDA #$F8            ; $A528: $A9 $F8 - Load Accumulator with Memory
	STA $004A,Y         ; $A52A: $99 $4A $00 - Store Accumulator in Memory
	LDA #$02            ; $A52D: $A9 $02 - Load Accumulator with Memory
	STA $02A0,Y         ; $A52F: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$FF            ; $A532: $A9 $FF - Load Accumulator with Memory
	STA $0260,Y         ; $A534: $99 $60 $02 - Store Accumulator in Memory
	LDA #$0A            ; $A537: $A9 $0A - Load Accumulator with Memory
	JSR $98C4           ; $A539: $20 $C4 $98 - Jump to New Location Saving Return Address
	DEC $1D             ; $A53C: $C6 $1D - Decrement Memory by One
	BNE $CE             ; $A53E: $D0 $CE - Branch on Result not Zero
	JSR $A49F           ; $A540: $20 $9F $A4 - Jump to New Location Saving Return Address
	JSR $98BE           ; $A543: $20 $BE $98 - Jump to New Location Saving Return Address
	JMP $A480           ; $A546: $4C $80 $A4 - Jump to New Location
	JSR $989C           ; $A549: $20 $9C $98 - Jump to New Location Saving Return Address
	BIT $6F             ; $A54C: $24 $6F - Test Bits in Memory with Accumulator
	BPL $F9             ; $A54E: $10 $F9 - Branch on Result Plus
	LDA #$80            ; $A550: $A9 $80 - Load Accumulator with Memory
	LDY #$01            ; $A552: $A0 $01 - Load Index Y with Memory
	LDX #$2B            ; $A554: $A2 $2B - Load Index X with Memory
	JSR $A8E3           ; $A556: $20 $E3 $A8 - Jump to New Location Saving Return Address
	STX $1D             ; $A559: $86 $1D - Store Index X in Memory
	LDY #$52            ; $A55B: $A0 $52 - Load Index Y with Memory
	JSR $98A4           ; $A55D: $20 $A4 $98 - Jump to New Location Saving Return Address
	INC $0360,X         ; $A560: $FE $60 $03 - Increment Memory by One
	DEY                 ; $A563: $88 - Decrement Index Y by One
	BNE $F7             ; $A564: $D0 $F7 - Branch on Result not Zero
	LDX #$28            ; $A566: $A2 $28 - Load Index X with Memory
	LDA #$8B            ; $A568: $A9 $8B - Load Accumulator with Memory
	JSR $E912           ; $A56A: $20 $12 $E9 - Jump to New Location Saving Return Address
	LDY #$04            ; $A56D: $A0 $04 - Load Index Y with Memory
	JSR $E9E2           ; $A56F: $20 $E2 $E9 - Jump to New Location Saving Return Address
	LDA #$A9            ; $A572: $A9 $A9 - Load Accumulator with Memory
	STA $77             ; $A574: $85 $77 - Store Accumulator in Memory
	JSR $98A0           ; $A576: $20 $A0 $98 - Jump to New Location Saving Return Address
	LDX #$03            ; $A579: $A2 $03 - Load Index X with Memory
	LDA $A589,X         ; $A57B: $BD $89 $A5 - Load Accumulator with Memory
	LDY #$00            ; $A57E: $A0 $00 - Load Index Y with Memory
	JSR $CFD6           ; $A580: $20 $D6 $CF - Jump to New Location Saving Return Address
	DEX                 ; $A583: $CA - Decrement Index X by One
	BPL $F5             ; $A584: $10 $F5 - Branch on Result Plus
	JMP $98A0           ; $A586: $4C $A0 $98 - Jump to New Location
	PLA                 ; $A589: $68 - Pull Accumulator from Stack
	SEI                 ; $A58A: $78 - Set Interrupt Disable Status
	DEY                 ; $A58B: $88 - Decrement Index Y by One
	TYA                 ; $A58C: $98 - Transfer Index Y to Accumulator
	LSR A               ; $A58D: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $A58F: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	SEC                 ; $A591: $38 - Set Carry Flag
	SBC #$08            ; $A592: $E9 $08 - Subtract Memory from Accumulator with Borrow
	PHA                 ; $A594: $48 - Push Accumulator on Stack
	JSR $F894           ; $A595: $20 $94 $F8 - Jump to New Location Saving Return Address
	CMP #$08            ; $A598: $C9 $08 - Compare Memory with Accumulator
	BCC $02             ; $A59A: $90 $02 - Branch on Carry Clear
	LDA #$07            ; $A59C: $A9 $07 - Load Accumulator with Memory
	TAY                 ; $A59E: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $A59F: $68 - Pull Accumulator from Stack
	RTS                 ; $A5A0: $60 - Return from Subroutine
	ASL A               ; $A5A1: $0A - Shift Left One Bit
	TAY                 ; $A5A2: $A8 - Transfer Accumulator to Index Y
	LDA $AF10,Y         ; $A5A3: $B9 $10 $AF - Load Accumulator with Memory
	STA $DA             ; $A5A6: $85 $DA - Store Accumulator in Memory
	LDA $AF11,Y         ; $A5A8: $B9 $11 $AF - Load Accumulator with Memory
	STA $DB             ; $A5AB: $85 $DB - Store Accumulator in Memory
	LDY #$00            ; $A5AD: $A0 $00 - Load Index Y with Memory
	LDA ($DA),Y         ; $A5AF: $B1 $DA $85 - Load Accumulator with Memory
	INY                 ; $A5B3: $C8 - Increment Index Y by One
	LDA ($DA),Y         ; $A5B4: $B1 $DA $85 - Load Accumulator with Memory
	CMP $02A9,X         ; $A5B7: $DD $A9 $02 - Compare Memory with Accumulator
	JSR $A657           ; $A5BA: $20 $57 $A6 - Jump to New Location Saving Return Address
	DEY                 ; $A5BD: $88 - Decrement Index Y by One
	LDA $DA             ; $A5BE: $A5 $DA - Load Accumulator with Memory
	STA $003A,Y         ; $A5C0: $99 $3A $00 - Store Accumulator in Memory
	INY                 ; $A5C3: $C8 - Increment Index Y by One
	LDA $DB             ; $A5C4: $A5 $DB - Load Accumulator with Memory
	STA $003A,Y         ; $A5C6: $99 $3A $00 - Store Accumulator in Memory
	INY                 ; $A5C9: $C8 - Increment Index Y by One
	LDA $DC             ; $A5CA: $A5 $DC - Load Accumulator with Memory
	JSR $A657           ; $A5CC: $20 $57 $A6 - Jump to New Location Saving Return Address
	CPY #$08            ; $A5CF: $C0 $08 - Compare Memory and Index Y
	BCC $EB             ; $A5D1: $90 $EB - Branch on Carry Clear
	LDA $DC             ; $A5D3: $A5 $DC - Load Accumulator with Memory
	CLC                 ; $A5D5: $18 - Clear Carry Flag
	ADC #$4C            ; $A5D6: $69 $4C - Add Memory to Accumulator with Carry
	STA $DE             ; $A5D8: $85 $DE - Store Accumulator in Memory
	LDY #$00            ; $A5DA: $A0 $00 - Load Index Y with Memory
	TYA                 ; $A5DC: $98 - Transfer Index Y to Accumulator
	PHA                 ; $A5DD: $48 - Push Accumulator on Stack
	LDA ($DA),Y         ; $A5DE: $B1 $DA $A0 - Load Accumulator with Memory
	PHA                 ; $A5E2: $48 - Push Accumulator on Stack
	CLC #$03            ; $A5E3: $29 $03 - Clear Carry Flag
	STA $0132,X         ; $A5E5: $9D $32 $01 - Store Accumulator in Memory
	INX                 ; $A5E8: $E8 - Increment Index X by One
	PLA                 ; $A5E9: $68 - Pull Accumulator from Stack
	LSR A               ; $A5EA: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	PHA                 ; $A5EC: $48 - Push Accumulator on Stack
	DEY                 ; $A5ED: $88 - Decrement Index Y by One
	BNE $F3             ; $A5EE: $D0 $F3 - Branch on Result not Zero
	PLA                 ; $A5F0: $68 - Pull Accumulator from Stack
	PLA                 ; $A5F1: $68 - Pull Accumulator from Stack
	TAY                 ; $A5F2: $A8 - Transfer Accumulator to Index Y
	INY                 ; $A5F3: $C8 - Increment Index Y by One
	CPX $DE             ; $A5F4: $E4 $DE - Compare Memory and Index Y
	BCC $E4             ; $A5F6: $90 $E4 - Branch on Carry Clear
	TXA                 ; $A5F8: $8A - Transfer Index X to Accumulator
	LSR A               ; $A5F9: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	JSR $A657           ; $A5FB: $20 $57 $A6 - Jump to New Location Saving Return Address
	LDY #$00            ; $A5FE: $A0 $00 - Load Index Y with Memory
	LDA $DA             ; $A600: $A5 $DA - Load Accumulator with Memory
	STA $0042,Y         ; $A602: $99 $42 $00 - Store Accumulator in Memory
	INY                 ; $A605: $C8 - Increment Index Y by One
	LDA $DB             ; $A606: $A5 $DB - Load Accumulator with Memory
	STA $0042,Y         ; $A608: $99 $42 $00 - Store Accumulator in Memory
	INY                 ; $A60B: $C8 - Increment Index Y by One
	LDA $DD             ; $A60C: $A5 $DD - Load Accumulator with Memory
	JSR $A657           ; $A60E: $20 $57 $A6 - Jump to New Location Saving Return Address
	CPY #$08            ; $A611: $C0 $08 - Compare Memory and Index Y
	BCC $EB             ; $A613: $90 $EB - Branch on Carry Clear
	BIT $6F             ; $A615: $24 $6F - Test Bits in Memory with Accumulator
	BPL $05             ; $A617: $10 $05 - Branch on Result Plus
	LDA #$09            ; $A619: $A9 $09 - Load Accumulator with Memory
	JSR $A657           ; $A61B: $20 $57 $A6 - Jump to New Location Saving Return Address
	LDA $DA             ; $A61E: $A5 $DA - Load Accumulator with Memory
	LDY $DB             ; $A620: $A4 $DB - Load Index Y with Memory
	BIT $D1             ; $A622: $24 $D1 - Test Bits in Memory with Accumulator
	BPL $04             ; $A624: $10 $04 - Branch on Result Plus
	LDA #$53            ; $A626: $A9 $53 - Load Accumulator with Memory
	LDY #$B3            ; $A628: $A0 $B3 - Load Index Y with Memory
	LDX #$00            ; $A62A: $A2 $00 - Load Index X with Memory
	JSR $A635           ; $A62C: $20 $35 $A6 - Jump to New Location Saving Return Address
	LDA #$5F            ; $A62F: $A9 $5F - Load Accumulator with Memory
	LDY #$BD            ; $A631: $A0 $BD - Load Index Y with Memory
	LDX #$10            ; $A633: $A2 $10 - Load Index X with Memory
	JSR $CAA2           ; $A635: $20 $A2 $CA - Jump to New Location Saving Return Address
	LDA #$0C            ; $A638: $A9 $0C - Load Accumulator with Memory
	STA $DA             ; $A63A: $85 $DA - Store Accumulator in Memory
	TXA                 ; $A63C: $8A - Transfer Index X to Accumulator
	CLC #$03            ; $A63D: $29 $03 - Clear Carry Flag
	BNE $06             ; $A63F: $D0 $06 - Branch on Result not Zero
	LDA #$0F            ; $A641: $A9 $0F - Load Accumulator with Memory
	STA $0586,X         ; $A643: $9D $86 $05 - Store Accumulator in Memory
	INX                 ; $A646: $E8 - Increment Index X by One
	LDY #$06            ; $A647: $A0 $06 - Load Index Y with Memory
	JSR $CAB7           ; $A649: $20 $B7 $CA - Jump to New Location Saving Return Address
	STA $0586,X         ; $A64C: $9D $86 $05 - Store Accumulator in Memory
	INX                 ; $A64F: $E8 - Increment Index X by One
	DEC $DA             ; $A650: $C6 $DA - Decrement Memory by One
	BNE $E8             ; $A652: $D0 $E8 - Branch on Result not Zero
	INC $AA             ; $A654: $E6 $AA - Increment Memory by One
	RTS                 ; $A656: $60 - Return from Subroutine
	CLC                 ; $A657: $18 - Clear Carry Flag
	ADC $DA             ; $A658: $65 $DA - Add Memory to Accumulator with Carry
	STA $DA             ; $A65A: $85 $DA - Store Accumulator in Memory
	BCC $02             ; $A65C: $90 $02 - Branch on Carry Clear
	INC $DB             ; $A65E: $E6 $DB - Increment Memory by One
	RTS                 ; $A660: $60 - Return from Subroutine
	LDA #$56            ; $A661: $A9 $56 - Load Accumulator with Memory
	LDY #$BD            ; $A663: $A0 $BD - Load Index Y with Memory
	LDX #$10            ; $A665: $A2 $10 - Load Index X with Memory
	JMP $A635           ; $A667: $4C $35 $A6 - Jump to New Location
	JSR $A692           ; $A66A: $20 $92 $A6 - Jump to New Location Saving Return Address
	LDX #$41            ; $A66D: $A2 $41 - Load Index X with Memory
	CLC                 ; $A66F: $18 - Clear Carry Flag
	LDY #$12            ; $A670: $A0 $12 - Load Index Y with Memory
	JSR $E934           ; $A672: $20 $34 $E9 - Jump to New Location Saving Return Address
	LDA #$20            ; $A675: $A9 $20 - Load Accumulator with Memory
	STA $C3             ; $A677: $85 $C3 - Store Accumulator in Memory
	LDA #$00            ; $A679: $A9 $00 - Load Accumulator with Memory
	STA $C2             ; $A67B: $85 $C2 - Store Accumulator in Memory
	STA $02C4           ; $A67D: $8D $C4 $02 - Store Accumulator in Memory
	LDA #$E2            ; $A680: $A9 $E2 - Load Accumulator with Memory
	LDY #$A7            ; $A682: $A0 $A7 - Load Index Y with Memory
	JSR $9860           ; $A684: $20 $60 $98 - Jump to New Location Saving Return Address
	JSR $96E5           ; $A687: $20 $E5 $96 - Jump to New Location Saving Return Address
	LDA #$05            ; $A68A: $A9 $05 - Load Accumulator with Memory
	JSR $97AA           ; $A68C: $20 $AA $97 - Jump to New Location Saving Return Address
	JMP $FAB5           ; $A68F: $4C $B5 $FA - Jump to New Location
	LDA #$00            ; $A692: $A9 $00 - Load Accumulator with Memory
	JSR $D8DE           ; $A694: $20 $DE $D8 - Jump to New Location Saving Return Address
	LDY #$28            ; $A697: $A0 $28 - Load Index Y with Memory
	LDA #$40            ; $A699: $A9 $40 - Load Accumulator with Memory
	JSR $EEDE           ; $A69B: $20 $DE $EE - Jump to New Location Saving Return Address
	LDX #$06            ; $A69E: $A2 $06 - Load Index X with Memory
	JSR $C75B           ; $A6A0: $20 $5B $C7 - Jump to New Location Saving Return Address
	LDX #$03            ; $A6A3: $A2 $03 - Load Index X with Memory
	TXA                 ; $A6A5: $8A - Transfer Index X to Accumulator
	ASL A               ; $A6A6: $0A - Shift Left One Bit
	ASL A               ; $A6A7: $0A - Shift Left One Bit
	ASL A               ; $A6A8: $0A - Shift Left One Bit
	ADC #$B1            ; $A6A9: $69 $B1 - Add Memory to Accumulator with Carry
	STA $9A,X           ; $A6AB: $95 $9A - Store Accumulator in Memory
	DEX                 ; $A6AD: $CA - Decrement Index X by One
	BPL $F5             ; $A6AE: $10 $F5 - Branch on Result Plus
	RTS                 ; $A6B0: $60 - Return from Subroutine
	JSR $9713           ; $A6B1: $20 $13 $97 - Jump to New Location Saving Return Address
	LDX #$04            ; $A6B4: $A2 $04 - Load Index X with Memory
	LDA #$EC            ; $A6B6: $A9 $EC - Load Accumulator with Memory
	STA $CD             ; $A6B8: $85 $CD - Store Accumulator in Memory
	LDA #$1C            ; $A6BA: $A9 $1C - Load Accumulator with Memory
	STA $0360,X         ; $A6BC: $9D $60 $03 - Store Accumulator in Memory
	JSR $A93B           ; $A6BF: $20 $3B $A9 - Jump to New Location Saving Return Address
	LDA #$06            ; $A6C2: $A9 $06 - Load Accumulator with Memory
	LDY #$A8            ; $A6C4: $A0 $A8 - Load Index Y with Memory
	JSR $9860           ; $A6C6: $20 $60 $98 - Jump to New Location Saving Return Address
	JMP $A6A3           ; $A6C9: $4C $A3 $A6 - Jump to New Location
	JSR $EE6D           ; $A6CC: $20 $6D $EE - Jump to New Location Saving Return Address
	BIT $BC             ; $A6CF: $24 $BC - Test Bits in Memory with Accumulator
	BVC $06             ; $A6D1: $50 $06 - Branch on Overflow Clear
	JSR $A70A           ; $A6D3: $20 $0A $A7 - Jump to New Location Saving Return Address
	JMP $E6FE           ; $A6D6: $4C $FE $E6 - Jump to New Location
	JSR $9871           ; $A6D9: $20 $71 $98 - Jump to New Location Saving Return Address
	JSR $A944           ; $A6DC: $20 $44 $A9 - Jump to New Location Saving Return Address
	LDY #$EC            ; $A6DF: $A0 $EC - Load Index Y with Memory
	CPY $CD             ; $A6E1: $C4 $CD - Compare Memory and Index Y
	BEQ $13             ; $A6E3: $F0 $13 - Branch on Result Zero
	LDA $E5             ; $A6E5: $A5 $E5 - Load Accumulator with Memory
	CLC #$90            ; $A6E7: $29 $90 - Clear Carry Flag
	BNE $C6             ; $A6E9: $D0 $C6 - Branch on Result not Zero
	LDX #$04            ; $A6EB: $A2 $04 - Load Index X with Memory
	LDA #$02            ; $A6ED: $A9 $02 - Load Accumulator with Memory
	JSR $8BC1           ; $A6EF: $20 $C1 $8B - Jump to New Location Saving Return Address
	JSR $89F0           ; $A6F2: $20 $F0 $89 - Jump to New Location Saving Return Address
	JSR $A9C4           ; $A6F5: $20 $C4 $A9 - Jump to New Location Saving Return Address
	BIT $BC             ; $A6F8: $24 $BC - Test Bits in Memory with Accumulator
	BVS $08             ; $A6FA: $70 $08 - Branch on Overflow Set
	LDX #$03            ; $A6FC: $A2 $03 - Load Index X with Memory
	JSR $A762           ; $A6FE: $20 $62 $A7 - Jump to New Location Saving Return Address
	DEX                 ; $A701: $CA - Decrement Index X by One
	BPL $FA             ; $A702: $10 $FA - Branch on Result Plus
	JSR $A70A           ; $A704: $20 $0A $A7 - Jump to New Location Saving Return Address
	JMP $D7A1           ; $A707: $4C $A1 $D7 - Jump to New Location
	LDA #$84            ; $A70A: $A9 $84 - Load Accumulator with Memory
	JSR $9FD3           ; $A70C: $20 $D3 $9F - Jump to New Location Saving Return Address
	LDX #$1C            ; $A70F: $A2 $1C - Load Index X with Memory
	STX $DA             ; $A711: $86 $DA - Store Index X in Memory
	TXA                 ; $A713: $8A - Transfer Index X to Accumulator
	LSR A               ; $A714: $4A $A4 - Shift One Bit Right (Memory or Accumulator)
	LDA $A75C,Y         ; $A717: $B9 $5C $A7 - Load Accumulator with Memory
	BCC $03             ; $A71A: $90 $03 - Branch on Carry Clear
	LDA $A75E,Y         ; $A71C: $B9 $5E $A7 - Load Accumulator with Memory
	STA $AF             ; $A71F: $85 $AF - Store Accumulator in Memory
	LDA $A760,Y         ; $A721: $B9 $60 $A7 - Load Accumulator with Memory
	BIT $BC             ; $A724: $24 $BC - Test Bits in Memory with Accumulator
	BPL $0F             ; $A726: $10 $0F - Branch on Result Plus
	LDA $E9             ; $A728: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $A72A: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	ADC $DA             ; $A72C: $65 $DA - Add Memory to Accumulator with Carry
	CLC #$0F            ; $A72E: $29 $0F - Clear Carry Flag
	LSR A               ; $A730: $4A $A8 - Shift One Bit Right (Memory or Accumulator)
	LDA $A754,Y         ; $A732: $B9 $54 $A7 - Load Accumulator with Memory
	ORA #$20            ; $A735: $09 $20 - OR Memory with Accumulator
	STA $AE             ; $A737: $85 $AE - Store Accumulator in Memory
	JSR $9FDE           ; $A739: $20 $DE $9F - Jump to New Location Saving Return Address
	SBC $0364           ; $A73C: $ED $64 $03 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $A73F: $A8 - Transfer Accumulator to Index Y
	LDA $CD             ; $A740: $A5 $CD - Load Accumulator with Memory
	CMP #$D0            ; $A742: $C9 $D0 - Compare Memory with Accumulator
	JSR $9FDE           ; $A744: $20 $DE $9F - Jump to New Location Saving Return Address
	BCC $04             ; $A747: $90 $04 - Branch on Carry Clear
	CPY #$B5            ; $A749: $C0 $B5 - Compare Memory and Index Y
	BCS $03             ; $A74B: $B0 $03 - Branch on Carry Set
	JSR $F040           ; $A74D: $20 $40 $F0 - Jump to New Location Saving Return Address
	DEX                 ; $A750: $CA - Decrement Index X by One
	BNE $BE             ; $A751: $D0 $BE - Branch on Result not Zero
	RTS                 ; $A753: $60 - Return from Subroutine
	BRK                 ; $A754: $00 - Force Break
	BRK                 ; $A755: $00 - Force Break
	BRK                 ; $A756: $00 - Force Break
	ORA ($02,X)         ; $A757: $01 $02 $01 - OR Memory with Accumulator
	BRK                 ; $A75A: $00 - Force Break
	BRK                 ; $A75B: $00 - Force Break
	BEQ $CA             ; $A75C: $F0 $CA - Branch on Result Zero
	DEX                 ; $A75F: $CA - Decrement Index X by One
	AND ($A5,X)         ; $A761: $21 $A5 $E9 - AND Memory with Accumulator
	CLC #$01            ; $A764: $29 $01 - Clear Carry Flag
	BNE $37             ; $A766: $D0 $37 - Branch on Result not Zero
	DEC $9A,X           ; $A768: $D6 $9A - Decrement Memory by One
	BNE $33             ; $A76A: $D0 $33 - Branch on Result not Zero
	LDA $0200,X         ; $A76C: $BD $00 $02 - Load Accumulator with Memory
	BNE $03             ; $A76F: $D0 $03 - Branch on Result not Zero
	JSR $A7B3           ; $A771: $20 $B3 $A7 - Jump to New Location Saving Return Address
	LDY $13,X           ; $A774: $B4 $13 $B9 - Load Index Y with Memory
	LDA $A7             ; $A777: $A5 $A7 - Load Accumulator with Memory
	STA $9A,X           ; $A779: $95 $9A - Store Accumulator in Memory
	CMP #$20            ; $A77B: $C9 $20 - Compare Memory with Accumulator
	BNE $05             ; $A77D: $D0 $05 - Branch on Result not Zero
	LDA #$A0            ; $A77F: $A9 $A0 - Load Accumulator with Memory
	STA $053A,X         ; $A781: $9D $3A $05 - Store Accumulator in Memory
	LDA $A7A3,Y         ; $A784: $B9 $A3 $A7 - Load Accumulator with Memory
	CMP #$FF            ; $A787: $C9 $FF - Compare Memory with Accumulator
	BEQ $15             ; $A789: $F0 $15 - Branch on Result Zero
	PHA                 ; $A78B: $48 - Push Accumulator on Stack
	LDA $A7A4,Y         ; $A78C: $B9 $A4 $A7 - Load Accumulator with Memory
	TAY                 ; $A78F: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $A790: $68 - Pull Accumulator from Stack
	JSR $CFB3           ; $A791: $20 $B3 $CF - Jump to New Location Saving Return Address
	LDA #$08            ; $A794: $A9 $08 - Load Accumulator with Memory
	STA $88,X           ; $A796: $95 $88 - Store Accumulator in Memory
	LDA $13,X           ; $A798: $B5 $13 $18 - Load Accumulator with Memory
	ADC #$03            ; $A79B: $69 $03 - Add Memory to Accumulator with Carry
	STA $13,X           ; $A79D: $95 $13 - Store Accumulator in Memory
	RTS                 ; $A79F: $60 - Return from Subroutine
	JMP $8833           ; $A7A0: $4C $33 $88 - Jump to New Location
	CPY #$90            ; $A7A3: $C0 $90 - Compare Memory and Index Y
	RTI                 ; $A7A7: $40 - Return from Interrupt
	ASL $E040,X         ; $A7A8: $1E $40 $E0 - Shift Left One Bit
	PLP                 ; $A7AB: $28 - Pull Processor Status from Stack
	LSR $C0             ; $A7AE: $46 $C0 - Shift One Bit Right (Memory or Accumulator)
	LDY $20             ; $A7B0: $A4 $20 - Load Index Y with Memory
	LDY $A7C3,X         ; $A7B3: $BC $C3 $A7 - Load Index Y with Memory
	LDA $A7C7,X         ; $A7B6: $BD $C7 $A7 - Load Accumulator with Memory
	STA $6A             ; $A7B9: $85 $6A - Store Accumulator in Memory
	LDA #$21            ; $A7BB: $A9 $21 - Load Accumulator with Memory
	JSR $A88A           ; $A7BD: $20 $8A $A8 - Jump to New Location Saving Return Address
	BRK                 ; $A7C0: $00 - Force Break
	LDY #$9D            ; $A7C1: $A0 $9D - Load Index Y with Memory
	BRK                 ; $A7C3: $00 - Force Break
	BRK                 ; $A7C5: $00 - Force Break
	RTI                 ; $A7C7: $40 - Return from Interrupt
	RTI                 ; $A7C8: $40 - Return from Interrupt
	RTS                 ; $A7C9: $60 - Return from Subroutine
	RTS                 ; $A7CA: $60 - Return from Subroutine
	LDA $E9             ; $A7CB: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $A7CD: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	LDY $C3             ; $A7D0: $A4 $C3 - Load Index Y with Memory
	LDA $C2             ; $A7D2: $A5 $C2 - Load Accumulator with Memory
	JSR $EEDE           ; $A7D4: $20 $DE $EE - Jump to New Location Saving Return Address
	LDA #$00            ; $A7D7: $A9 $00 - Load Accumulator with Memory
	STA $2007           ; $A7D9: $8D $07 $20 - Store Accumulator in Memory
	INC $C2             ; $A7DC: $E6 $C2 - Increment Memory by One
	BNE $02             ; $A7DE: $D0 $02 - Branch on Result not Zero
	INC $C3             ; $A7E0: $E6 $C3 - Increment Memory by One
	RTS                 ; $A7E2: $60 - Return from Subroutine
	LDA #$CA            ; $A7E3: $A9 $CA - Load Accumulator with Memory
	LDY #$A7            ; $A7E5: $A0 $A7 - Load Index Y with Memory
	JSR $C527           ; $A7E7: $20 $27 $C5 - Jump to New Location Saving Return Address
	LDX #$03            ; $A7EA: $A2 $03 - Load Index X with Memory
	JSR $98A0           ; $A7EC: $20 $A0 $98 - Jump to New Location Saving Return Address
	DEX                 ; $A7EF: $CA - Decrement Index X by One
	BNE $FA             ; $A7F0: $D0 $FA - Branch on Result not Zero
	LDX #$3B            ; $A7F2: $A2 $3B - Load Index X with Memory
	LDA $CD             ; $A7F4: $A5 $CD - Load Accumulator with Memory
	CLC                 ; $A7F6: $18 - Clear Carry Flag
	ADC #$04            ; $A7F7: $69 $04 - Add Memory to Accumulator with Carry
	STA $CD             ; $A7F9: $85 $CD - Store Accumulator in Memory
	JSR $98A4           ; $A7FB: $20 $A4 $98 - Jump to New Location Saving Return Address
	DEX                 ; $A7FE: $CA - Decrement Index X by One
	BNE $F3             ; $A7FF: $D0 $F3 - Branch on Result not Zero
	JSR $989C           ; $A801: $20 $9C $98 - Jump to New Location Saving Return Address
	SEC                 ; $A804: $38 - Set Carry Flag
	ROR $BC             ; $A805: $66 $BC - Rotate One Bit Right
	JSR $C541           ; $A807: $20 $41 $C5 - Jump to New Location Saving Return Address
	JSR $A661           ; $A80A: $20 $61 $A6 - Jump to New Location Saving Return Address
	LDX #$02            ; $A80D: $A2 $02 - Load Index X with Memory
	LDA $A84B,X         ; $A80F: $BD $4B $A8 - Load Accumulator with Memory
	STA $0587           ; $A812: $8D $87 $05 - Store Accumulator in Memory
	LDA $A84E,X         ; $A815: $BD $4E $A8 - Load Accumulator with Memory
	STA $0588           ; $A818: $8D $88 $05 - Store Accumulator in Memory
	INC $AA             ; $A81B: $E6 $AA - Increment Memory by One
	LDA #$07            ; $A81D: $A9 $07 - Load Accumulator with Memory
	JSR $98A6           ; $A81F: $20 $A6 $98 - Jump to New Location Saving Return Address
	DEX                 ; $A822: $CA - Decrement Index X by One
	BPL $EA             ; $A823: $10 $EA - Branch on Result Plus
	LDA #$C0            ; $A825: $A9 $C0 - Load Accumulator with Memory
	STA $BC             ; $A827: $85 $BC - Store Accumulator in Memory
	LDX #$2A            ; $A829: $A2 $2A - Load Index X with Memory
	LDA #$29            ; $A82B: $A9 $29 - Load Accumulator with Memory
	JSR $E912           ; $A82D: $20 $12 $E9 - Jump to New Location Saving Return Address
	LDY #$00            ; $A830: $A0 $00 - Load Index Y with Memory
	JSR $E9DE           ; $A832: $20 $DE $E9 - Jump to New Location Saving Return Address
	LDX #$2B            ; $A835: $A2 $2B - Load Index X with Memory
	LDA #$6A            ; $A837: $A9 $6A - Load Accumulator with Memory
	JSR $E912           ; $A839: $20 $12 $E9 - Jump to New Location Saving Return Address
	LDY #$02            ; $A83C: $A0 $02 - Load Index Y with Memory
	JSR $E9DE           ; $A83E: $20 $DE $E9 - Jump to New Location Saving Return Address
	LDY #$FF            ; $A841: $A0 $FF - Load Index Y with Memory
	STY $A4             ; $A843: $84 $A4 - Sore Index Y in Memory
	JSR $98A4           ; $A845: $20 $A4 $98 - Jump to New Location Saving Return Address
	JMP $A845           ; $A848: $4C $45 $A8 - Jump to New Location
	ORA $05,X           ; $A84B: $15 $05 - OR Memory with Accumulator
	ROL $16             ; $A84E: $26 $16 - Rotate One Bit Left
	ASL $A9             ; $A850: $06 $A9 - Shift Left One Bit
	LDY #$B0            ; $A853: $A0 $B0 - Load Index Y with Memory
	STA $0260,X         ; $A855: $9D $60 $02 - Store Accumulator in Memory
	TYA                 ; $A858: $98 - Transfer Index Y to Accumulator
	STA $0280,X         ; $A859: $9D $80 $02 - Store Accumulator in Memory
	RTS                 ; $A85C: $60 - Return from Subroutine
	JSR $A869           ; $A85D: $20 $69 $A8 - Jump to New Location Saving Return Address
	LDA #$00            ; $A860: $A9 $00 - Load Accumulator with Memory
	STA $0260,X         ; $A862: $9D $60 $02 - Store Accumulator in Memory
	STA $0280,X         ; $A865: $9D $80 $02 - Store Accumulator in Memory
	RTS                 ; $A868: $60 - Return from Subroutine
	LDA #$00            ; $A869: $A9 $00 - Load Accumulator with Memory
	STA $02A0,X         ; $A86B: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $A86E: $9D $C0 $02 - Store Accumulator in Memory
	RTS                 ; $A871: $60 - Return from Subroutine
	LDA $0380,X         ; $A872: $BD $80 $03 - Load Accumulator with Memory
	EOR #$40            ; $A875: $49 $40 - Exclusive-OR Memory with Accumulator
	STA $0380,X         ; $A877: $9D $80 $03 - Store Accumulator in Memory
	RTS                 ; $A87A: $60 - Return from Subroutine
	LDA #$BF            ; $A87B: $A9 $BF - Load Accumulator with Memory
	AND $0380,X         ; $A87D: $3D $80 $03 - AND Memory with Accumulator
	STA $0380,X         ; $A880: $9D $80 $03 - Store Accumulator in Memory
	RTS                 ; $A883: $60 - Return from Subroutine
	LDA $0380,X         ; $A884: $BD $80 $03 - Load Accumulator with Memory
	CLC #$40            ; $A887: $29 $40 - Clear Carry Flag
	RTS                 ; $A889: $60 - Return from Subroutine
	PHA                 ; $A88A: $48 - Push Accumulator on Stack
	TYA                 ; $A88B: $98 - Transfer Index Y to Accumulator
	STA $4A,X           ; $A88C: $95 $4A - Store Accumulator in Memory
	LDA $6A             ; $A88E: $A5 $6A - Load Accumulator with Memory
	STA $0360,X         ; $A890: $9D $60 $03 - Store Accumulator in Memory
	PLA                 ; $A893: $68 - Pull Accumulator from Stack
	STA $0200,X         ; $A894: $9D $00 $02 - Store Accumulator in Memory
	TAY                 ; $A897: $A8 - Transfer Accumulator to Index Y
	LDA $BE6D,Y         ; $A898: $B9 $6D $BE - Load Accumulator with Memory
	CLC #$03            ; $A89B: $29 $03 - Clear Carry Flag
	STA $0380,X         ; $A89D: $9D $80 $03 - Store Accumulator in Memory
	LDA #$00            ; $A8A0: $A9 $00 - Load Accumulator with Memory
	STA $0220,X         ; $A8A2: $9D $20 $02 - Store Accumulator in Memory
	STA $0240,X         ; $A8A5: $9D $40 $02 - Store Accumulator in Memory
	STA $0260,X         ; $A8A8: $9D $60 $02 - Store Accumulator in Memory
	STA $0280,X         ; $A8AB: $9D $80 $02 - Store Accumulator in Memory
	STA $02A0,X         ; $A8AE: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $A8B1: $9D $C0 $02 - Store Accumulator in Memory
	STA $02E0,X         ; $A8B4: $9D $E0 $02 - Store Accumulator in Memory
	STA $0300,X         ; $A8B7: $9D $00 $03 - Store Accumulator in Memory
	STA $0320,X         ; $A8BA: $9D $20 $03 - Store Accumulator in Memory
	STA $0340,X         ; $A8BD: $9D $40 $03 - Store Accumulator in Memory
	CPX #$14            ; $A8C0: $E0 $14 - Compare Memory and Index Y
	BCS $18             ; $A8C2: $B0 $18 - Branch on Carry Set
	STA $03B4,X         ; $A8C4: $9D $B4 $03 - Store Accumulator in Memory
	STA $03A0,X         ; $A8C7: $9D $A0 $03 - Store Accumulator in Memory
	STA $0418,X         ; $A8CA: $9D $18 $04 - Store Accumulator in Memory
	STA $042C,X         ; $A8CD: $9D $2C $04 - Store Accumulator in Memory
	STA $03DC,X         ; $A8D0: $9D $DC $03 - Store Accumulator in Memory
	STA $03F0,X         ; $A8D3: $9D $F0 $03 - Store Accumulator in Memory
	LDA $BD9A,Y         ; $A8D6: $B9 $9A $BD - Load Accumulator with Memory
	STA $0440,X         ; $A8D9: $9D $40 $04 - Store Accumulator in Memory
	LDY #$02            ; $A8DC: $A0 $02 - Load Index Y with Memory
	JSR $FCEF           ; $A8DE: $20 $EF $FC - Jump to New Location Saving Return Address
	SEC                 ; $A8E1: $38 - Set Carry Flag
	RTS                 ; $A8E2: $60 - Return from Subroutine
	STY $6A             ; $A8E3: $84 $6A - Sore Index Y in Memory
	STX $6B             ; $A8E5: $86 $6B - Store Index X in Memory
	LDX #$04            ; $A8E7: $A2 $04 - Load Index X with Memory
	LDY #$14            ; $A8E9: $A0 $14 - Load Index Y with Memory
	BNE $08             ; $A8EB: $D0 $08 - Branch on Result not Zero
	STY $6A             ; $A8ED: $84 $6A - Sore Index Y in Memory
	STX $6B             ; $A8EF: $86 $6B - Store Index X in Memory
	LDX #$14            ; $A8F1: $A2 $14 - Load Index X with Memory
	LDY #$20            ; $A8F3: $A0 $20 - Load Index Y with Memory
	PHA                 ; $A8F5: $48 - Push Accumulator on Stack
	STY $6C             ; $A8F6: $84 $6C - Sore Index Y in Memory
	LDA #$FF            ; $A8F8: $A9 $FF - Load Accumulator with Memory
	STA $6E             ; $A8FA: $85 $6E - Store Accumulator in Memory
	LDY $0200,X         ; $A8FC: $BC $00 $02 - Load Index Y with Memory
	BNE $07             ; $A8FF: $D0 $07 - Branch on Result not Zero
	PLA                 ; $A901: $68 - Pull Accumulator from Stack
	TAY                 ; $A902: $A8 - Transfer Accumulator to Index Y
	LDA $6B             ; $A903: $A5 $6B - Load Accumulator with Memory
	JMP $A88A           ; $A905: $4C $8A $A8 - Jump to New Location
	LDA $BE6D,Y         ; $A908: $B9 $6D $BE - Load Accumulator with Memory
	CMP $6E             ; $A90B: $C5 $6E - Compare Memory with Accumulator
	BCS $04             ; $A90D: $B0 $04 - Branch on Carry Set
	STA $6E             ; $A90F: $85 $6E - Store Accumulator in Memory
	STX $6D             ; $A911: $86 $6D - Store Index X in Memory
	INX                 ; $A913: $E8 - Increment Index X by One
	CPX $6C             ; $A914: $E4 $6C - Compare Memory and Index Y
	BNE $E4             ; $A916: $D0 $E4 - Branch on Result not Zero
	LDX $6D             ; $A918: $A6 $6D - Load Index X with Memory
	LDY $6B             ; $A91A: $A4 $6B - Load Index Y with Memory
	LDA $BE6D,Y         ; $A91C: $B9 $6D $BE - Load Accumulator with Memory
	CMP $6E             ; $A91F: $C5 $6E - Compare Memory with Accumulator
	BCS $DE             ; $A921: $B0 $DE - Branch on Carry Set
	PLA                 ; $A923: $68 - Pull Accumulator from Stack
	CLC                 ; $A924: $18 - Clear Carry Flag
	RTS                 ; $A925: $60 - Return from Subroutine
	LDA $0C             ; $A926: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $A928: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	CLC #$03            ; $A92A: $29 $03 - Clear Carry Flag
	STA $04FD           ; $A92C: $8D $FD $04 - Store Accumulator in Memory
	LDA $0380,X         ; $A92F: $BD $80 $03 - Load Accumulator with Memory
	CLC #$FC            ; $A932: $29 $FC - Clear Carry Flag
	ORA $04FD           ; $A934: $0D $FD $04 - OR Memory with Accumulator
	STA $0380,X         ; $A937: $9D $80 $03 - Store Accumulator in Memory
	RTS                 ; $A93A: $60 - Return from Subroutine
	LDX #$1F            ; $A93B: $A2 $1F - Load Index X with Memory
	JSR $8833           ; $A93D: $20 $33 $88 - Jump to New Location Saving Return Address
	DEX                 ; $A940: $CA - Decrement Index X by One
	BPL $FA             ; $A941: $10 $FA - Branch on Result Plus
	RTS                 ; $A943: $60 - Return from Subroutine
	LDA #$00            ; $A944: $A9 $00 - Load Accumulator with Memory
	STA $AC             ; $A946: $85 $AC - Store Accumulator in Memory
	LDA #$FC            ; $A948: $A9 $FC - Load Accumulator with Memory
	BIT $AD             ; $A94A: $24 $AD - Test Bits in Memory with Accumulator
	BPL $02             ; $A94C: $10 $02 - Branch on Result Plus
	LDA #$04            ; $A94E: $A9 $04 - Load Accumulator with Memory
	STA $AD             ; $A950: $85 $AD - Store Accumulator in Memory
	LDX #$17            ; $A952: $A2 $17 - Load Index X with Memory
	LDA $053A,X         ; $A954: $BD $3A $05 - Load Accumulator with Memory
	BEQ $03             ; $A957: $F0 $03 - Branch on Result Zero
	DEC $053A,X         ; $A959: $DE $3A $05 - Decrement Memory by One
	DEX                 ; $A95C: $CA - Decrement Index X by One
	BPL $F5             ; $A95D: $10 $F5 - Branch on Result Plus
	DEC $0D             ; $A95F: $C6 $0D - Decrement Memory by One
	BPL $04             ; $A961: $10 $04 - Branch on Result Plus
	LDA #$02            ; $A963: $A9 $02 - Load Accumulator with Memory
	STA $0D             ; $A965: $85 $0D - Store Accumulator in Memory
	LDX #$1F            ; $A967: $A2 $1F - Load Index X with Memory
	LDA $0200,X         ; $A969: $BD $00 $02 - Load Accumulator with Memory
	BEQ $20             ; $A96C: $F0 $20 - Branch on Result Zero
	LDA $E9             ; $A96E: $A5 $E9 - Load Accumulator with Memory
	STA $0C             ; $A970: $85 $0C - Store Accumulator in Memory
	LDA $0340,X         ; $A972: $BD $40 $03 - Load Accumulator with Memory
	BEQ $14             ; $A975: $F0 $14 - Branch on Result Zero
	DEC $0340,X         ; $A977: $DE $40 $03 - Decrement Memory by One
	CMP #$69            ; $A97A: $C9 $69 - Compare Memory with Accumulator
	BCC $09             ; $A97C: $90 $09 - Branch on Carry Clear
	JSR $A995           ; $A97E: $20 $95 $A9 - Jump to New Location Saving Return Address
	JSR $882C           ; $A981: $20 $2C $88 - Jump to New Location Saving Return Address
	JMP $A98E           ; $A984: $4C $8E $A9 - Jump to New Location
	LSR $0C             ; $A987: $46 $0C - Shift One Bit Right (Memory or Accumulator)
	BCS $F3             ; $A989: $B0 $F3 - Branch on Carry Set
	JSR $FCED           ; $A98B: $20 $ED $FC - Jump to New Location Saving Return Address
	DEX                 ; $A98E: $CA - Decrement Index X by One
	BPL $D8             ; $A98F: $10 $D8 - Branch on Result Plus
	RTS                 ; $A991: $60 - Return from Subroutine
	JSR $FA26           ; $A992: $20 $26 $FA - Jump to New Location Saving Return Address
	LDA $03B4,X         ; $A995: $BD $B4 $03 - Load Accumulator with Memory
	BEQ $23             ; $A998: $F0 $23 - Branch on Result Zero
	LDY $0200,X         ; $A99A: $BC $00 $02 - Load Index Y with Memory
	LDA $BE6D,Y         ; $A99D: $B9 $6D $BE - Load Accumulator with Memory
	CLC #$03            ; $A9A0: $29 $03 - Clear Carry Flag
	TAY                 ; $A9A2: $A8 - Transfer Accumulator to Index Y
	LDA $0340,X         ; $A9A3: $BD $40 $03 - Load Accumulator with Memory
	BEQ $09             ; $A9A6: $F0 $09 - Branch on Result Zero
	CMP #$69            ; $A9A8: $C9 $69 - Compare Memory with Accumulator
	BCS $05             ; $A9AA: $B0 $05 - Branch on Carry Set
	LSR A               ; $A9AC: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $A9AE: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	PHP                 ; $A9B0: $08 - Push Processor Status on Stack
	LDA $A9C0,Y         ; $A9B1: $B9 $C0 $A9 - Load Accumulator with Memory
	DEC $03B4,X         ; $A9B4: $DE $B4 $03 - Decrement Memory by One
	BNE $01             ; $A9B7: $D0 $01 - Branch on Result not Zero
	TYA                 ; $A9B9: $98 - Transfer Index Y to Accumulator
	JSR $A92C           ; $A9BA: $20 $2C $A9 - Jump to New Location Saving Return Address
	JMP $F068           ; $A9BD: $4C $68 $F0 - Jump to New Location
	JSR $A9F4           ; $A9C4: $20 $F4 $A9 - Jump to New Location Saving Return Address
	LDA $0220,X         ; $A9C7: $BD $20 $02 - Load Accumulator with Memory
	CLC                 ; $A9CA: $18 - Clear Carry Flag
	ADC $0280,X         ; $A9CB: $7D $80 $02 - Add Memory to Accumulator with Carry
	STA $0220,X         ; $A9CE: $9D $20 $02 - Store Accumulator in Memory
	LDA $0260,X         ; $A9D1: $BD $60 $02 - Load Accumulator with Memory
	ADC $4A,X           ; $A9D4: $75 $4A - Add Memory to Accumulator with Carry
	STA $4A,X           ; $A9D6: $95 $4A - Store Accumulator in Memory
	RTS                 ; $A9D8: $60 - Return from Subroutine
	LDA $4A,X           ; $A9D9: $B5 $4A $18 - Load Accumulator with Memory
	ADC $0260,X         ; $A9DC: $7D $60 $02 - Add Memory to Accumulator with Carry
	STA $4A,X           ; $A9DF: $95 $4A - Store Accumulator in Memory
	LDA $0360,X         ; $A9E1: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $A9E4: $18 - Clear Carry Flag
	ADC $02A0,X         ; $A9E5: $7D $A0 $02 - Add Memory to Accumulator with Carry
	STA $0360,X         ; $A9E8: $9D $60 $03 - Store Accumulator in Memory
	RTS                 ; $A9EB: $60 - Return from Subroutine
	JSR $A9C7           ; $A9EC: $20 $C7 $A9 - Jump to New Location Saving Return Address
	LDA #$25            ; $A9EF: $A9 $25 - Load Accumulator with Memory
	JSR $8BC1           ; $A9F1: $20 $C1 $8B - Jump to New Location Saving Return Address
	LDA $0240,X         ; $A9F4: $BD $40 $02 - Load Accumulator with Memory
	CLC                 ; $A9F7: $18 - Clear Carry Flag
	ADC $02C0,X         ; $A9F8: $7D $C0 $02 - Add Memory to Accumulator with Carry
	STA $0240,X         ; $A9FB: $9D $40 $02 - Store Accumulator in Memory
	LDA $02A0,X         ; $A9FE: $BD $A0 $02 - Load Accumulator with Memory
	ADC $0360,X         ; $AA01: $7D $60 $03 - Add Memory to Accumulator with Carry
	STA $0360,X         ; $AA04: $9D $60 $03 - Store Accumulator in Memory
	RTS                 ; $AA07: $60 - Return from Subroutine
	JSR $A9C7           ; $AA08: $20 $C7 $A9 - Jump to New Location Saving Return Address
	LDA #$E3            ; $AA0B: $A9 $E3 - Load Accumulator with Memory
	JSR $A87D           ; $AA0D: $20 $7D $A8 - Jump to New Location Saving Return Address
	JSR $A150           ; $AA10: $20 $50 $A1 - Jump to New Location Saving Return Address
	JSR $A9EF           ; $AA13: $20 $EF $A9 - Jump to New Location Saving Return Address
	JMP $A1A9           ; $AA16: $4C $A9 $A1 - Jump to New Location
	LDA #$36            ; $AA19: $A9 $36 - Load Accumulator with Memory
	LDX #$04            ; $AA1B: $A2 $04 - Load Index X with Memory
	CMP $0200,X         ; $AA1D: $DD $00 $02 - Compare Memory with Accumulator
	BEQ $06             ; $AA20: $F0 $06 - Branch on Result Zero
	INX                 ; $AA22: $E8 - Increment Index X by One
	CPX #$14            ; $AA23: $E0 $14 - Compare Memory and Index Y
	BNE $F6             ; $AA25: $D0 $F6 - Branch on Result not Zero
	TXA                 ; $AA27: $8A - Transfer Index X to Accumulator
	RTS                 ; $AA28: $60 - Return from Subroutine
	TXA                 ; $AA29: $8A - Transfer Index X to Accumulator
	PHA                 ; $AA2A: $48 - Push Accumulator on Stack
	TYA                 ; $AA2B: $98 - Transfer Index Y to Accumulator
	LDY #$00            ; $AA2C: $A0 $00 - Load Index Y with Memory
	LDX #$04            ; $AA2E: $A2 $04 - Load Index X with Memory
	CMP $0200,X         ; $AA30: $DD $00 $02 - Compare Memory with Accumulator
	BNE $01             ; $AA33: $D0 $01 - Branch on Result not Zero
	INY                 ; $AA35: $C8 - Increment Index Y by One
	INX                 ; $AA36: $E8 - Increment Index X by One
	CPX #$14            ; $AA37: $E0 $14 - Compare Memory and Index Y
	BNE $F5             ; $AA39: $D0 $F5 - Branch on Result not Zero
	PLA                 ; $AA3B: $68 - Pull Accumulator from Stack
	TAX                 ; $AA3C: $AA - Transfer Accumulator to Index X
	RTS                 ; $AA3D: $60 - Return from Subroutine
	TAX                 ; $AA3E: $AA - Transfer Accumulator to Index X
	TAX                 ; $AA40: $AA - Transfer Accumulator to Index X
	EOR ($A9,X)         ; $AA41: $41 $A9 $46 - Exclusive-OR Memory with Accumulator
	STA $02E0,X         ; $AA44: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $AA47: $60 - Return from Subroutine
	DEC $02E0,X         ; $AA48: $DE $E0 $02 - Decrement Memory by One
	BEQ $26             ; $AA4B: $F0 $26 - Branch on Result Zero
	LDA $02E0,X         ; $AA4D: $BD $E0 $02 - Load Accumulator with Memory
	CLC #$03            ; $AA50: $29 $03 - Clear Carry Flag
	BNE $1E             ; $AA52: $D0 $1E - Branch on Result not Zero
	JSR $9FDE           ; $AA54: $20 $DE $9F - Jump to New Location Saving Return Address
	CLC #$1F            ; $AA57: $29 $1F - Clear Carry Flag
	SBC #$10            ; $AA59: $E9 $10 - Subtract Memory from Accumulator with Borrow
	STA $DA             ; $AA5B: $85 $DA - Store Accumulator in Memory
	JSR $9FDE           ; $AA5D: $20 $DE $9F - Jump to New Location Saving Return Address
	CLC #$1F            ; $AA60: $29 $1F - Clear Carry Flag
	SBC #$10            ; $AA62: $E9 $10 - Subtract Memory from Accumulator with Borrow
	STA $09             ; $AA64: $85 $09 - Store Accumulator in Memory
	LDA #$23            ; $AA66: $A9 $23 - Load Accumulator with Memory
	LDY $DA             ; $AA68: $A4 $DA - Load Index Y with Memory
	JSR $8B32           ; $AA6A: $20 $32 $8B - Jump to New Location Saving Return Address
	LDA #$02            ; $AA6D: $A9 $02 - Load Accumulator with Memory
	JMP $980F           ; $AA6F: $4C $0F $98 - Jump to New Location
	RTS                 ; $AA72: $60 - Return from Subroutine
	JMP $8833           ; $AA73: $4C $33 $88 - Jump to New Location
	TAX                 ; $AA76: $AA - Transfer Accumulator to Index X
	TAX                 ; $AA78: $AA - Transfer Accumulator to Index X
	TAX                 ; $AA7A: $AA - Transfer Accumulator to Index X
	ROR $C200,X         ; $AA7B: $7E $00 $C2 - Rotate One Bit Right
	LDA $F7             ; $AA7F: $A5 $F7 - Load Accumulator with Memory
	BEQ $08             ; $AA81: $F0 $08 - Branch on Result Zero
	LDA $02E0,X         ; $AA83: $BD $E0 $02 - Load Accumulator with Memory
	BNE $03             ; $AA86: $D0 $03 - Branch on Result not Zero
	INC $02E0,X         ; $AA88: $FE $E0 $02 - Increment Memory by One
	RTS                 ; $AA8B: $60 - Return from Subroutine
	LDY $02E0,X         ; $AA8C: $BC $E0 $02 - Load Index Y with Memory
	BEQ $3D             ; $AA8F: $F0 $3D - Branch on Result Zero
	DEY                 ; $AA91: $88 - Decrement Index Y by One
	BEQ $09             ; $AA92: $F0 $09 - Branch on Result Zero
	JSR $A9C4           ; $AA94: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $AAE3           ; $AA97: $20 $E3 $AA - Jump to New Location Saving Return Address
	JMP $D8C9           ; $AA9A: $4C $C9 $D8 - Jump to New Location
	LDA $03F0,X         ; $AA9D: $BD $F0 $03 - Load Accumulator with Memory
	BIT $6F             ; $AAA0: $24 $6F - Test Bits in Memory with Accumulator
	BPL $04             ; $AAA2: $10 $04 - Branch on Result Plus
	CMP #$0C            ; $AAA4: $C9 $0C - Compare Memory with Accumulator
	BCS $04             ; $AAA6: $B0 $04 - Branch on Carry Set
	CMP #$17            ; $AAA8: $C9 $17 - Compare Memory with Accumulator
	BCC $1F             ; $AAAA: $90 $1F - Branch on Carry Clear
	LDA $0577           ; $AAAC: $AD $77 $05 - Load Accumulator with Memory
	STA $0280,X         ; $AAAF: $9D $80 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $AAB2: $9D $C0 $02 - Store Accumulator in Memory
	JSR $8862           ; $AAB5: $20 $62 $88 - Jump to New Location Saving Return Address
	LDA $004A,Y         ; $AAB8: $B9 $4A $00 - Load Accumulator with Memory
	CMP $4A,X           ; $AABB: $D5 $4A - Compare Memory with Accumulator
	BCS $03             ; $AABD: $B0 $03 - Branch on Carry Set
	JSR $8925           ; $AABF: $20 $25 $89 - Jump to New Location Saving Return Address
	JSR $AB15           ; $AAC2: $20 $15 $AB - Jump to New Location Saving Return Address
	INC $02E0,X         ; $AAC5: $FE $E0 $02 - Increment Memory by One
	BRK                 ; $AAC8: $00 - Force Break
	LDA $4C9B           ; $AAC9: $AD $9B $4C - Load Accumulator with Memory
	CPY $20D8           ; $AACC: $CC $D8 $20 - Compare Memory and Index Y
	BEQ $87             ; $AACF: $F0 $87 - Branch on Result Zero
	BNE $0A             ; $AAD1: $D0 $0A - Branch on Result not Zero
	JSR $8862           ; $AAD3: $20 $62 $88 - Jump to New Location Saving Return Address
	CMP #$40            ; $AAD6: $C9 $40 - Compare Memory with Accumulator
	BCS $03             ; $AAD8: $B0 $03 - Branch on Carry Set
	JSR $AA83           ; $AADA: $20 $83 $AA - Jump to New Location Saving Return Address
	JSR $A995           ; $AADD: $20 $95 $A9 - Jump to New Location Saving Return Address
	JMP $8823           ; $AAE0: $4C $23 $88 - Jump to New Location
	LDA $0260,X         ; $AAE3: $BD $60 $02 - Load Accumulator with Memory
	BPL $0B             ; $AAE6: $10 $0B - Branch on Result Plus
	LDA #$FC            ; $AAE8: $A9 $FC - Load Accumulator with Memory
	LDY #$00            ; $AAEA: $A0 $00 - Load Index Y with Memory
	JSR $A132           ; $AAEC: $20 $32 $A1 - Jump to New Location Saving Return Address
	BEQ $0E             ; $AAEF: $F0 $0E - Branch on Result Zero
	BNE $09             ; $AAF1: $D0 $09 - Branch on Result not Zero
	LDA #$04            ; $AAF3: $A9 $04 - Load Accumulator with Memory
	LDY #$00            ; $AAF5: $A0 $00 - Load Index Y with Memory
	JSR $A132           ; $AAF7: $20 $32 $A1 - Jump to New Location Saving Return Address
	BEQ $03             ; $AAFA: $F0 $03 - Branch on Result Zero
	JSR $8925           ; $AAFC: $20 $25 $89 - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $AAFF: $BD $A0 $02 - Load Accumulator with Memory
	BPL $07             ; $AB02: $10 $07 - Branch on Result Plus
	JSR $A12E           ; $AB04: $20 $2E $A1 - Jump to New Location Saving Return Address
	BEQ $0C             ; $AB07: $F0 $0C - Branch on Result Zero
	BNE $07             ; $AB09: $D0 $07 - Branch on Result not Zero
	LDY #$04            ; $AB0B: $A0 $04 - Load Index Y with Memory
	JSR $A130           ; $AB0D: $20 $30 $A1 - Jump to New Location Saving Return Address
	BEQ $03             ; $AB10: $F0 $03 - Branch on Result Zero
	JSR $894E           ; $AB12: $20 $4E $89 - Jump to New Location Saving Return Address
	LDY $0260,X         ; $AB15: $BC $60 $02 - Load Index Y with Memory
	BPL $09             ; $AB18: $10 $09 - Branch on Result Plus
	LDA #$40            ; $AB1A: $A9 $40 - Load Accumulator with Memory
	ORA $0380,X         ; $AB1C: $1D $80 $03 - OR Memory with Accumulator
	STA $0380,X         ; $AB1F: $9D $80 $03 - Store Accumulator in Memory
	RTS                 ; $AB22: $60 - Return from Subroutine
	JMP $A87B           ; $AB23: $4C $7B $A8 - Jump to New Location
	ROL $24,X           ; $AB26: $36 $24 - Rotate One Bit Left
	BMI $40             ; $AB2B: $30 $40 - Branch on Result Minus
	DEY                 ; $AB2E: $88 - Decrement Index Y by One
	BCS $98             ; $AB2F: $B0 $98 - Branch on Carry Set
	INY                 ; $AB31: $C8 - Increment Index Y by One
	PLA                 ; $AB32: $68 - Pull Accumulator from Stack
	SEC                 ; $AB33: $38 - Set Carry Flag
	SEI                 ; $AB34: $78 - Set Interrupt Disable Status
	DEY                 ; $AB35: $88 - Decrement Index Y by One
	PHA                 ; $AB36: $48 - Push Accumulator on Stack
	PLA                 ; $AB37: $68 - Pull Accumulator from Stack
	TYA                 ; $AB38: $98 - Transfer Index Y to Accumulator
	CLV                 ; $AB39: $B8 - Clear Overflow Flag
	STY $8386           ; $AB3B: $8C $86 $83 - Sore Index Y in Memory
	DEY                 ; $AB3F: $88 - Decrement Index Y by One
	LDY $A6             ; $AB40: $A4 $A6 - Load Index Y with Memory
	LDA #$AB            ; $AB42: $A9 $AB - Load Accumulator with Memory
	EOR $49AB,Y         ; $AB45: $59 $AB $49 - Exclusive-OR Memory with Accumulator
	LDA $CE,X           ; $AB49: $B5 $CE $D5 - Load Accumulator with Memory
	ORA $20             ; $AB4C: $05 $20 - OR Memory with Accumulator
	STA $A9D9           ; $AB4E: $8D $D9 $A9 - Store Accumulator in Memory
	LDA $ABA0,X         ; $AB51: $BD $A0 $AB - Load Accumulator with Memory
	JSR $9860           ; $AB54: $20 $60 $98 - Jump to New Location Saving Return Address
	BRK                 ; $AB57: $00 - Force Break
	LDA ($9C),Y         ; $AB58: $B1 $9C $20 - Load Accumulator with Memory
	ADC ($98),Y         ; $AB5B: $71 $98 $A5 - Add Memory to Accumulator with Carry
	LDA ($D0,X)         ; $AB5E: $A1 $D0 $06 - Load Accumulator with Memory
	JSR $D9A3           ; $AB61: $20 $A3 $D9 - Jump to New Location Saving Return Address
	BCS $01             ; $AB64: $B0 $01 - Branch on Carry Set
	RTS                 ; $AB66: $60 - Return from Subroutine
	LDA #$B1            ; $AB67: $A9 $B1 - Load Accumulator with Memory
	LDY #$9C            ; $AB69: $A0 $9C - Load Index Y with Memory
	JSR $D9CF           ; $AB6B: $20 $CF $D9 - Jump to New Location Saving Return Address
	JSR $A9C4           ; $AB6E: $20 $C4 $A9 - Jump to New Location Saving Return Address
	LDA $A0             ; $AB71: $A5 $A0 - Load Accumulator with Memory
	BNE $03             ; $AB73: $D0 $03 - Branch on Result not Zero
	JSR $8B60           ; $AB75: $20 $60 $8B - Jump to New Location Saving Return Address
	JSR $FA26           ; $AB78: $20 $26 $FA - Jump to New Location Saving Return Address
	LDA $0C             ; $AB7B: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $AB7D: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	CLC #$07            ; $AB7F: $29 $07 - Clear Carry Flag
	TAY                 ; $AB81: $A8 - Transfer Accumulator to Index Y
	LDA $ABA6,Y         ; $AB82: $B9 $A6 $AB - Load Accumulator with Memory
	STA $DA             ; $AB85: $85 $DA - Store Accumulator in Memory
	LDA $ABAE,Y         ; $AB87: $B9 $AE $AB - Load Accumulator with Memory
	STA $042C,X         ; $AB8A: $9D $2C $04 - Store Accumulator in Memory
	JSR $A995           ; $AB8D: $20 $95 $A9 - Jump to New Location Saving Return Address
	LDY #$25            ; $AB90: $A0 $25 - Load Index Y with Memory
	LDA $DA             ; $AB92: $A5 $DA - Load Accumulator with Memory
	JSR $F08D           ; $AB94: $20 $8D $F0 - Jump to New Location Saving Return Address
	LDA $B5             ; $AB97: $A5 $B5 - Load Accumulator with Memory
	CLC                 ; $AB99: $18 - Clear Carry Flag
	ADC #$18            ; $AB9A: $69 $18 - Add Memory to Accumulator with Carry
	STA $B5             ; $AB9C: $85 $B5 - Store Accumulator in Memory
	LDY #$26            ; $AB9E: $A0 $26 - Load Index Y with Memory
	LDA $DA             ; $ABA0: $A5 $DA - Load Accumulator with Memory
	JSR $F08D           ; $ABA2: $20 $8D $F0 - Jump to New Location Saving Return Address
	RTS                 ; $ABA5: $60 - Return from Subroutine
	BRK                 ; $ABA6: $00 - Force Break
	PHP                 ; $ABA9: $08 - Push Processor Status on Stack
	PHP                 ; $ABAA: $08 - Push Processor Status on Stack
	BPL $01             ; $ABAD: $10 $01 - Branch on Result Plus
	BRK                 ; $ABAF: $00 - Force Break
	INC $FEFD,X         ; $ABB1: $FE $FD $FE - Increment Memory by One
	BRK                 ; $ABB5: $00 - Force Break
	JSR $D9E8           ; $ABB6: $20 $E8 $D9 - Jump to New Location Saving Return Address
	BCC $EA             ; $ABB9: $90 $EA - Branch on Carry Clear
	BRK                 ; $ABBB: $00 - Force Break
	ORA ($9E,X)         ; $ABBC: $01 $9E $A9 - OR Memory with Accumulator
	JSR $CF88           ; $ABC0: $20 $88 $CF - Jump to New Location Saving Return Address
	JSR $98A4           ; $ABC3: $20 $A4 $98 - Jump to New Location Saving Return Address
	LDA $A1             ; $ABC6: $A5 $A1 - Load Accumulator with Memory
	BEQ $F9             ; $ABC8: $F0 $F9 - Branch on Result Zero
	JSR $AC46           ; $ABCA: $20 $46 $AC - Jump to New Location Saving Return Address
	JSR $AC55           ; $ABCD: $20 $55 $AC - Jump to New Location Saving Return Address
	LDA #$50            ; $ABD0: $A9 $50 - Load Accumulator with Memory
	JSR $ACD6           ; $ABD2: $20 $D6 $AC - Jump to New Location Saving Return Address
	LDA #$D7            ; $ABD5: $A9 $D7 - Load Accumulator with Memory
	JSR $CF88           ; $ABD7: $20 $88 $CF - Jump to New Location Saving Return Address
	JSR $AC73           ; $ABDA: $20 $73 $AC - Jump to New Location Saving Return Address
	JSR $ACB3           ; $ABDD: $20 $B3 $AC - Jump to New Location Saving Return Address
	JSR $AD3A           ; $ABE0: $20 $3A $AD - Jump to New Location Saving Return Address
	LDY #$01            ; $ABE3: $A0 $01 - Load Index Y with Memory
	STY $9A             ; $ABE5: $84 $9A - Sore Index Y in Memory
	LDA $9F             ; $ABE7: $A5 $9F - Load Accumulator with Memory
	JSR $8960           ; $ABE9: $20 $60 $89 - Jump to New Location Saving Return Address
	JSR $98C2           ; $ABEC: $20 $C2 $98 - Jump to New Location Saving Return Address
	LDA $0C             ; $ABEF: $A5 $0C - Load Accumulator with Memory
	CLC #$7F            ; $ABF1: $29 $7F - Clear Carry Flag
	BNE $18             ; $ABF3: $D0 $18 - Branch on Result not Zero
	BIT $6F             ; $ABF5: $24 $6F - Test Bits in Memory with Accumulator
	BPL $14             ; $ABF7: $10 $14 - Branch on Result Plus
	LDY #$0D            ; $ABF9: $A0 $0D - Load Index Y with Memory
	JSR $AA29           ; $ABFB: $20 $29 $AA - Jump to New Location Saving Return Address
	BIT $6F             ; $ABFE: $24 $6F - Test Bits in Memory with Accumulator
	BVS $02             ; $AC00: $70 $02 - Branch on Overflow Set
	INY                 ; $AC02: $C8 - Increment Index Y by One
	INY                 ; $AC03: $C8 - Increment Index Y by One
	CPY #$03            ; $AC04: $C0 $03 - Compare Memory and Index Y
	BCS $05             ; $AC06: $B0 $05 - Branch on Carry Set
	LDA #$0D            ; $AC08: $A9 $0D - Load Accumulator with Memory
	JSR $8B4D           ; $AC0A: $20 $4D $8B - Jump to New Location Saving Return Address
	JSR $ACE6           ; $AC0D: $20 $E6 $AC - Jump to New Location Saving Return Address
	BNE $02             ; $AC10: $D0 $02 - Branch on Result not Zero
	BEQ $D3             ; $AC12: $F0 $D3 - Branch on Result Zero
	JSR $A85D           ; $AC14: $20 $5D $A8 - Jump to New Location Saving Return Address
	JSR $DA81           ; $AC17: $20 $81 $DA - Jump to New Location Saving Return Address
	INC $A0             ; $AC1A: $E6 $A0 - Increment Memory by One
	JSR $9894           ; $AC1C: $20 $94 $98 - Jump to New Location Saving Return Address
	JSR $AC55           ; $AC1F: $20 $55 $AC - Jump to New Location Saving Return Address
	LDY $9E             ; $AC22: $A4 $9E - Load Index Y with Memory
	LDA $AB28,Y         ; $AC24: $B9 $28 $AB - Load Accumulator with Memory
	BIT $6F             ; $AC27: $24 $6F - Test Bits in Memory with Accumulator
	BPL $02             ; $AC29: $10 $02 - Branch on Result Plus
	SBC #$1E            ; $AC2B: $E9 $1E - Subtract Memory from Accumulator with Borrow
	JSR $ACD6           ; $AC2D: $20 $D6 $AC - Jump to New Location Saving Return Address
	DEC $A0             ; $AC30: $C6 $A0 - Decrement Memory by One
	JSR $AC73           ; $AC32: $20 $73 $AC - Jump to New Location Saving Return Address
	JSR $ACB3           ; $AC35: $20 $B3 $AC - Jump to New Location Saving Return Address
	JSR $DA85           ; $AC38: $20 $85 $DA - Jump to New Location Saving Return Address
	INC $9B             ; $AC3B: $E6 $9B - Increment Memory by One
	JSR $AC46           ; $AC3D: $20 $46 $AC - Jump to New Location Saving Return Address
	JSR $AD41           ; $AC40: $20 $41 $AD - Jump to New Location Saving Return Address
	JMP $ABE3           ; $AC43: $4C $E3 $AB - Jump to New Location
	LDY $9B             ; $AC46: $A4 $9B - Load Index Y with Memory
	LDA $AB2C,Y         ; $AC48: $B9 $2C $AB - Load Accumulator with Memory
	BIT $6F             ; $AC4B: $24 $6F - Test Bits in Memory with Accumulator
	BPL $03             ; $AC4D: $10 $03 - Branch on Result Plus
	CLC                 ; $AC4F: $18 - Clear Carry Flag
	ADC #$20            ; $AC50: $69 $20 - Add Memory to Accumulator with Carry
	STA $9F             ; $AC52: $85 $9F - Store Accumulator in Memory
	RTS                 ; $AC54: $60 - Return from Subroutine
	JSR $98C2           ; $AC55: $20 $C2 $98 - Jump to New Location Saving Return Address
	LDA #$20            ; $AC58: $A9 $20 - Load Accumulator with Memory
	LDY #$40            ; $AC5A: $A0 $40 - Load Index Y with Memory
	CLC                 ; $AC5C: $18 - Clear Carry Flag
	JSR $8996           ; $AC5D: $20 $96 $89 - Jump to New Location Saving Return Address
	LDA #$20            ; $AC60: $A9 $20 - Load Accumulator with Memory
	STA $09             ; $AC62: $85 $09 - Store Accumulator in Memory
	LDA #$40            ; $AC64: $A9 $40 - Load Accumulator with Memory
	JSR $8839           ; $AC66: $20 $39 $88 - Jump to New Location Saving Return Address
	CMP #$02            ; $AC69: $C9 $02 - Compare Memory with Accumulator
	BCS $E8             ; $AC6B: $B0 $E8 - Branch on Carry Set
	JSR $A85D           ; $AC6D: $20 $5D $A8 - Jump to New Location Saving Return Address
	BRK                 ; $AC70: $00 - Force Break
	LDA #$0F            ; $AC73: $A9 $0F - Load Accumulator with Memory
	JSR $980F           ; $AC75: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$01            ; $AC78: $A9 $01 - Load Accumulator with Memory
	LDY #$9E            ; $AC7A: $A0 $9E - Load Index Y with Memory
	JSR $F9FE           ; $AC7C: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$01            ; $AC7F: $A9 $01 - Load Accumulator with Memory
	STA $0260,X         ; $AC81: $9D $60 $02 - Store Accumulator in Memory
	SEC                 ; $AC84: $38 - Set Carry Flag
	ROR $0280,X         ; $AC85: $7E $80 $02 - Rotate One Bit Right
	LDY #$03            ; $AC88: $A0 $03 - Load Index Y with Memory
	LDA $0200,Y         ; $AC8A: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $10             ; $AC8D: $F0 $10 - Branch on Result Zero
	LDA $0360,X         ; $AC8F: $BD $60 $03 - Load Accumulator with Memory
	CMP $0360,Y         ; $AC92: $D9 $60 $03 - Compare Memory with Accumulator
	BCS $08             ; $AC95: $B0 $08 - Branch on Carry Set
	LDA #$FE            ; $AC97: $A9 $FE - Load Accumulator with Memory
	STA $02A0,Y         ; $AC99: $99 $A0 $02 - Store Accumulator in Memory
	STA $02C0,Y         ; $AC9C: $99 $C0 $02 - Store Accumulator in Memory
	DEY                 ; $AC9F: $88 - Decrement Index Y by One
	BPL $E8             ; $ACA0: $10 $E8 - Branch on Result Plus
	LDA #$A6            ; $ACA2: $A9 $A6 - Load Accumulator with Memory
	JSR $AD82           ; $ACA4: $20 $82 $AD - Jump to New Location Saving Return Address
	JSR $98C2           ; $ACA7: $20 $C2 $98 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $ACAA: $B5 $4A $C9 - Load Accumulator with Memory
	BEQ $90             ; $ACAD: $F0 $90 - Branch on Result Zero
	CLD                 ; $ACAF: $D8 - Clear Decimal Mode
	BRK                 ; $ACB0: $00 - Force Break
	LDA ($9C),Y         ; $ACB1: $B1 $9C $A9 - Load Accumulator with Memory
	ASL $0F20           ; $ACB4: $0E $20 $0F - Shift Left One Bit
	TYA                 ; $ACB7: $98 - Transfer Index Y to Accumulator
	LDA #$01            ; $ACB8: $A9 $01 - Load Accumulator with Memory
	STA $02A0,X         ; $ACBA: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$FA            ; $ACBD: $A9 $FA - Load Accumulator with Memory
	STA $0260,X         ; $ACBF: $9D $60 $02 - Store Accumulator in Memory
	JSR $98C2           ; $ACC2: $20 $C2 $98 - Jump to New Location Saving Return Address
	LDA #$08            ; $ACC5: $A9 $08 - Load Accumulator with Memory
	JSR $88B4           ; $ACC7: $20 $B4 $88 - Jump to New Location Saving Return Address
	JSR $8B86           ; $ACCA: $20 $86 $8B - Jump to New Location Saving Return Address
	LDA $4A,X           ; $ACCD: $B5 $4A $C9 - Load Accumulator with Memory
	ORA ($B0),Y         ; $ACD0: $11 $B0 $EF - OR Memory with Accumulator
	JMP $A85D           ; $ACD3: $4C $5D $A8 - Jump to New Location
	TAY                 ; $ACD6: $A8 - Transfer Accumulator to Index Y
	JSR $A926           ; $ACD7: $20 $26 $A9 - Jump to New Location Saving Return Address
	JSR $98C2           ; $ACDA: $20 $C2 $98 - Jump to New Location Saving Return Address
	DEY                 ; $ACDD: $88 - Decrement Index Y by One
	BNE $F7             ; $ACDE: $D0 $F7 - Branch on Result not Zero
	LDA #$03            ; $ACE0: $A9 $03 - Load Accumulator with Memory
	STA $0380,X         ; $ACE2: $9D $80 $03 - Store Accumulator in Memory
	RTS                 ; $ACE5: $60 - Return from Subroutine
	LDA $9A             ; $ACE6: $A5 $9A - Load Accumulator with Memory
	BNE $1B             ; $ACE8: $D0 $1B - Branch on Result not Zero
	LDA #$08            ; $ACEA: $A9 $08 - Load Accumulator with Memory
	JSR $8BD1           ; $ACEC: $20 $D1 $8B - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $ACEF: $BD $A0 $02 - Load Accumulator with Memory
	BPL $2A             ; $ACF2: $10 $2A - Branch on Result Plus
	CMP #$FF            ; $ACF4: $C9 $FF - Compare Memory with Accumulator
	BCS $26             ; $ACF6: $B0 $26 - Branch on Carry Set
	LDA $02C0,X         ; $ACF8: $BD $C0 $02 - Load Accumulator with Memory
	CMP #$B0            ; $ACFB: $C9 $B0 - Compare Memory with Accumulator
	BCS $1F             ; $ACFD: $B0 $1F - Branch on Carry Set
	LDA #$01            ; $ACFF: $A9 $01 - Load Accumulator with Memory
	STA $9A             ; $AD01: $85 $9A - Store Accumulator in Memory
	BNE $19             ; $AD03: $D0 $19 - Branch on Result not Zero
	LDA #$08            ; $AD05: $A9 $08 - Load Accumulator with Memory
	JSR $8BC1           ; $AD07: $20 $C1 $8B - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $AD0A: $BD $A0 $02 - Load Accumulator with Memory
	BMI $0F             ; $AD0D: $30 $0F - Branch on Result Minus
	CMP #$01            ; $AD0F: $C9 $01 - Compare Memory with Accumulator
	BCC $0B             ; $AD11: $90 $0B - Branch on Carry Clear
	LDA $02C0,X         ; $AD13: $BD $C0 $02 - Load Accumulator with Memory
	CMP #$50            ; $AD16: $C9 $50 - Compare Memory with Accumulator
	BCC $04             ; $AD18: $90 $04 - Branch on Carry Clear
	LDA #$00            ; $AD1A: $A9 $00 - Load Accumulator with Memory
	STA $9A             ; $AD1C: $85 $9A - Store Accumulator in Memory
	LDA $0360,X         ; $AD1E: $BD $60 $03 - Load Accumulator with Memory
	CMP #$68            ; $AD21: $C9 $68 - Compare Memory with Accumulator
	BCS $03             ; $AD23: $B0 $03 - Branch on Carry Set
	INC $0360,X         ; $AD25: $FE $60 $03 - Increment Memory by One
	LDY #$03            ; $AD28: $A0 $03 - Load Index Y with Memory
	LDA $0440,X         ; $AD2A: $BD $40 $04 - Load Accumulator with Memory
	CMP $AB25,Y         ; $AD2D: $D9 $25 $AB - Compare Memory with Accumulator
	BCC $03             ; $AD30: $90 $03 - Branch on Carry Clear
	DEY                 ; $AD32: $88 - Decrement Index Y by One
	BNE $F5             ; $AD33: $D0 $F5 - Branch on Result not Zero
	STY $9E             ; $AD35: $84 $9E - Sore Index Y in Memory
	CPY $9B             ; $AD37: $C4 $9B - Compare Memory and Index Y
	RTS                 ; $AD39: $60 - Return from Subroutine
	LDY #$05            ; $AD3A: $A0 $05 - Load Index Y with Memory
	JSR $AD41           ; $AD3C: $20 $41 $AD - Jump to New Location Saving Return Address
	LDY #$06            ; $AD3F: $A0 $06 - Load Index Y with Memory
	STY $DE             ; $AD41: $84 $DE - Sore Index Y in Memory
	LDA $AB39,Y         ; $AD43: $B9 $39 $AB - Load Accumulator with Memory
	TAY                 ; $AD46: $A8 - Transfer Accumulator to Index Y
	LDA $0600,Y         ; $AD47: $B9 $00 $06 - Load Accumulator with Memory
	BEQ $1B             ; $AD4A: $F0 $1B - Branch on Result Zero
	LDA #$10            ; $AD4C: $A9 $10 - Load Accumulator with Memory
	STA $0600,Y         ; $AD4E: $99 $00 $06 - Store Accumulator in Memory
	STY $27             ; $AD51: $84 $27 - Sore Index Y in Memory
	LDY #$06            ; $AD53: $A0 $06 - Load Index Y with Memory
	JSR $9A6E           ; $AD55: $20 $6E $9A - Jump to New Location Saving Return Address
	LDY $DE             ; $AD58: $A4 $DE - Load Index Y with Memory
	LDA $AB2F,Y         ; $AD5A: $B9 $2F $AB - Load Accumulator with Memory
	LDY #$88            ; $AD5D: $A0 $88 - Load Index Y with Memory
	JSR $AD6A           ; $AD5F: $20 $6A $AD - Jump to New Location Saving Return Address
	LDA #$12            ; $AD62: $A9 $12 - Load Accumulator with Memory
	STA $05CF           ; $AD64: $8D $CF $05 - Store Accumulator in Memory
	LDY $DE             ; $AD67: $A4 $DE - Load Index Y with Memory
	RTS                 ; $AD69: $60 - Return from Subroutine
	STA $30             ; $AD6A: $85 $30 - Store Accumulator in Memory
	STY $31             ; $AD6C: $84 $31 - Sore Index Y in Memory
	TXA                 ; $AD6E: $8A - Transfer Index X to Accumulator
	PHA                 ; $AD6F: $48 - Push Accumulator on Stack
	LDX #$1F            ; $AD70: $A2 $1F - Load Index X with Memory
	LDA #$3A            ; $AD72: $A9 $3A - Load Accumulator with Memory
	JSR $A894           ; $AD74: $20 $94 $A8 - Jump to New Location Saving Return Address
	LDA #$FF            ; $AD77: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $AD79: $9D $A0 $02 - Store Accumulator in Memory
	JSR $CE53           ; $AD7C: $20 $53 $CE - Jump to New Location Saving Return Address
	PLA                 ; $AD7F: $68 - Pull Accumulator from Stack
	TAX                 ; $AD80: $AA - Transfer Accumulator to Index X
	RTS                 ; $AD81: $60 - Return from Subroutine
	STA $DA             ; $AD82: $85 $DA - Store Accumulator in Memory
	JSR $87F0           ; $AD84: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $17             ; $AD87: $D0 $17 - Branch on Result not Zero
	LDA #$3C            ; $AD89: $A9 $3C - Load Accumulator with Memory
	JSR $8B2E           ; $AD8B: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $10             ; $AD8E: $90 $10 - Branch on Carry Clear
	JSR $9FDE           ; $AD90: $20 $DE $9F - Jump to New Location Saving Return Address
	STA $004A,Y         ; $AD93: $99 $4A $00 - Store Accumulator in Memory
	LDA $DA             ; $AD96: $A5 $DA - Load Accumulator with Memory
	STA $0360,Y         ; $AD98: $99 $60 $03 - Store Accumulator in Memory
	LDA #$FD            ; $AD9B: $A9 $FD - Load Accumulator with Memory
	STA $02A0,Y         ; $AD9D: $99 $A0 $02 - Store Accumulator in Memory
	RTS                 ; $ADA0: $60 - Return from Subroutine
	LDA #$04            ; $ADA1: $A9 $04 - Load Accumulator with Memory
	JSR $D8DE           ; $ADA3: $20 $DE $D8 - Jump to New Location Saving Return Address
	LDY #$20            ; $ADA6: $A0 $20 - Load Index Y with Memory
	LDA #$80            ; $ADA8: $A9 $80 - Load Accumulator with Memory
	JSR $EEDE           ; $ADAA: $20 $DE $EE - Jump to New Location Saving Return Address
	LDX #$0F            ; $ADAD: $A2 $0F - Load Index X with Memory
	JSR $C75B           ; $ADAF: $20 $5B $C7 - Jump to New Location Saving Return Address
	LDY #$70            ; $ADB2: $A0 $70 - Load Index Y with Memory
	LDA #$0F            ; $ADB4: $A9 $0F - Load Accumulator with Memory
	JSR $ADC7           ; $ADB6: $20 $C7 $AD - Jump to New Location Saving Return Address
	STX $A4             ; $ADB9: $86 $A4 - Store Index X in Memory
	STX $D1             ; $ADBB: $86 $D1 - Store Index X in Memory
	LDA #$0D            ; $ADBD: $A9 $0D - Load Accumulator with Memory
	LDY #$AE            ; $ADBF: $A0 $AE - Load Index Y with Memory
	JSR $9860           ; $ADC1: $20 $60 $98 - Jump to New Location Saving Return Address
	JMP $FAB5           ; $ADC4: $4C $B5 $FA - Jump to New Location
	PHA                 ; $ADC7: $48 - Push Accumulator on Stack
	LDA #$00            ; $ADC8: $A9 $00 - Load Accumulator with Memory
	TAX                 ; $ADCA: $AA - Transfer Accumulator to Index X
	STA $0600,X         ; $ADCB: $9D $00 $06 - Store Accumulator in Memory
	INX                 ; $ADCE: $E8 - Increment Index X by One
	BNE $FA             ; $ADCF: $D0 $FA - Branch on Result not Zero
	PLA                 ; $ADD1: $68 - Pull Accumulator from Stack
	LDX #$10            ; $ADD2: $A2 $10 - Load Index X with Memory
	STA $0600,Y         ; $ADD4: $99 $00 $06 - Store Accumulator in Memory
	INY                 ; $ADD7: $C8 - Increment Index Y by One
	DEX                 ; $ADD8: $CA - Decrement Index X by One
	BNE $F9             ; $ADD9: $D0 $F9 - Branch on Result not Zero
	RTS                 ; $ADDB: $60 - Return from Subroutine
	LDX #$03            ; $ADDC: $A2 $03 - Load Index X with Memory
	LDA $88,X           ; $ADDE: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$B0            ; $ADE1: $09 $B0 - OR Memory with Accumulator
	ORA #$A5            ; $ADE3: $09 $A5 - OR Memory with Accumulator
	LDY $95             ; $ADE5: $A4 $95 - Load Index Y with Memory
	SBC $F0             ; $ADE7: $E5 $F0 - Subtract Memory from Accumulator with Borrow
	JSR $A851           ; $ADEA: $20 $51 $A8 - Jump to New Location Saving Return Address
	DEX                 ; $ADED: $CA - Decrement Index X by One
	BPL $EE             ; $ADEE: $10 $EE - Branch on Result Plus
	LDA #$00            ; $ADF0: $A9 $00 - Load Accumulator with Memory
	STA $E4             ; $ADF2: $85 $E4 - Store Accumulator in Memory
	LDX #$13            ; $ADF4: $A2 $13 - Load Index X with Memory
	LDA $4A,X           ; $ADF6: $B5 $4A $C9 - Load Accumulator with Memory
	JSR $03B0           ; $ADF9: $20 $B0 $03 - Jump to New Location Saving Return Address
	JSR $8833           ; $ADFC: $20 $33 $88 - Jump to New Location Saving Return Address
	DEX                 ; $ADFF: $CA - Decrement Index X by One
	BPL $F4             ; $AE00: $10 $F4 - Branch on Result Plus
	JSR $9871           ; $AE02: $20 $71 $98 - Jump to New Location Saving Return Address
	JSR $EE6D           ; $AE05: $20 $6D $EE - Jump to New Location Saving Return Address
	JSR $A944           ; $AE08: $20 $44 $A9 - Jump to New Location Saving Return Address
	JMP $D7A1           ; $AE0B: $4C $A1 $D7 - Jump to New Location
	JSR $989C           ; $AE0E: $20 $9C $98 - Jump to New Location Saving Return Address
	LDX #$03            ; $AE11: $A2 $03 - Load Index X with Memory
	LDA $73,X           ; $AE13: $B5 $73 $F0 - Load Accumulator with Memory
	LDA $88,X           ; $AE17: $B5 $88 $48 - Load Accumulator with Memory
	LDA #$20            ; $AE1A: $A9 $20 - Load Accumulator with Memory
	STA $6A             ; $AE1C: $85 $6A - Store Accumulator in Memory
	LDY $AECF,X         ; $AE1E: $BC $CF $AE - Load Index Y with Memory
	LDA #$21            ; $AE21: $A9 $21 - Load Accumulator with Memory
	JSR $A88A           ; $AE23: $20 $8A $A8 - Jump to New Location Saving Return Address
	PLA                 ; $AE26: $68 - Pull Accumulator from Stack
	CMP #$0A            ; $AE27: $C9 $0A - Compare Memory with Accumulator
	BNE $03             ; $AE29: $D0 $03 - Branch on Result not Zero
	JSR $CFF7           ; $AE2B: $20 $F7 $CF - Jump to New Location Saving Return Address
	JSR $9894           ; $AE2E: $20 $94 $98 - Jump to New Location Saving Return Address
	DEX                 ; $AE31: $CA - Decrement Index X by One
	BPL $DF             ; $AE32: $10 $DF - Branch on Result Plus
	JSR $9890           ; $AE34: $20 $90 $98 - Jump to New Location Saving Return Address
	LDA #$B8            ; $AE37: $A9 $B8 - Load Accumulator with Memory
	LDY #$40            ; $AE39: $A0 $40 - Load Index Y with Memory
	LDX #$40            ; $AE3B: $A2 $40 - Load Index X with Memory
	JSR $A8ED           ; $AE3D: $20 $ED $A8 - Jump to New Location Saving Return Address
	JSR $9898           ; $AE40: $20 $98 $98 - Jump to New Location Saving Return Address
	LDA #$06            ; $AE43: $A9 $06 - Load Accumulator with Memory
	JSR $97AA           ; $AE45: $20 $AA $97 - Jump to New Location Saving Return Address
	LDX #$20            ; $AE48: $A2 $20 - Load Index X with Memory
	LDA #$D7            ; $AE4A: $A9 $D7 - Load Accumulator with Memory
	JSR $E912           ; $AE4C: $20 $12 $E9 - Jump to New Location Saving Return Address
	JSR $E9DC           ; $AE4F: $20 $DC $E9 - Jump to New Location Saving Return Address
	JSR $9890           ; $AE52: $20 $90 $98 - Jump to New Location Saving Return Address
	LDX #$03            ; $AE55: $A2 $03 - Load Index X with Memory
	LDA $88,X           ; $AE57: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$B0            ; $AE5A: $09 $B0 - OR Memory with Accumulator
	LDA #$04            ; $AE5D: $A9 $04 - Load Accumulator with Memory
	STA $88,X           ; $AE5F: $95 $88 - Store Accumulator in Memory
	LDA #$22            ; $AE61: $A9 $22 - Load Accumulator with Memory
	LDY #$9D            ; $AE63: $A0 $9D - Load Index Y with Memory
	JSR $F9FE           ; $AE65: $20 $FE $F9 - Jump to New Location Saving Return Address
	DEX                 ; $AE68: $CA - Decrement Index X by One
	BPL $EC             ; $AE69: $10 $EC - Branch on Result Plus
	JSR $98A0           ; $AE6B: $20 $A0 $98 - Jump to New Location Saving Return Address
	LDA #$E0            ; $AE6E: $A9 $E0 - Load Accumulator with Memory
	LDY #$68            ; $AE70: $A0 $68 - Load Index Y with Memory
	LDX #$2D            ; $AE72: $A2 $2D - Load Index X with Memory
	JSR $A8E3           ; $AE74: $20 $E3 $A8 - Jump to New Location Saving Return Address
	LDA #$69            ; $AE77: $A9 $69 - Load Accumulator with Memory
	JSR $98A6           ; $AE79: $20 $A6 $98 - Jump to New Location Saving Return Address
	INC $0304           ; $AE7C: $EE $04 $03 - Increment Memory by One
	LDA #$05            ; $AE7F: $A9 $05 - Load Accumulator with Memory
	JSR $980F           ; $AE81: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$10            ; $AE84: $A9 $10 - Load Accumulator with Memory
	JSR $98A6           ; $AE86: $20 $A6 $98 - Jump to New Location Saving Return Address
	LDA #$05            ; $AE89: $A9 $05 - Load Accumulator with Memory
	JSR $980F           ; $AE8B: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $9894           ; $AE8E: $20 $94 $98 - Jump to New Location Saving Return Address
	LDY #$01            ; $AE91: $A0 $01 - Load Index Y with Memory
	JSR $AED3           ; $AE93: $20 $D3 $AE - Jump to New Location Saving Return Address
	LDX #$22            ; $AE96: $A2 $22 - Load Index X with Memory
	LDA #$46            ; $AE98: $A9 $46 - Load Accumulator with Memory
	JSR $E912           ; $AE9A: $20 $12 $E9 - Jump to New Location Saving Return Address
	LDY #$0B            ; $AE9D: $A0 $0B - Load Index Y with Memory
	JSR $E9E2           ; $AE9F: $20 $E2 $E9 - Jump to New Location Saving Return Address
	JSR $988C           ; $AEA2: $20 $8C $98 - Jump to New Location Saving Return Address
	LDY #$0C            ; $AEA5: $A0 $0C - Load Index Y with Memory
	JSR $E9E2           ; $AEA7: $20 $E2 $E9 - Jump to New Location Saving Return Address
	JSR $988C           ; $AEAA: $20 $8C $98 - Jump to New Location Saving Return Address
	LDY #$0D            ; $AEAD: $A0 $0D - Load Index Y with Memory
	JSR $E9E2           ; $AEAF: $20 $E2 $E9 - Jump to New Location Saving Return Address
	JSR $9890           ; $AEB2: $20 $90 $98 - Jump to New Location Saving Return Address
	LDY #$01            ; $AEB5: $A0 $01 - Load Index Y with Memory
	JSR $AED3           ; $AEB7: $20 $D3 $AE - Jump to New Location Saving Return Address
	DEC $0304           ; $AEBA: $CE $04 $03 - Decrement Memory by One
	LDY #$04            ; $AEBD: $A0 $04 - Load Index Y with Memory
	JSR $AED3           ; $AEBF: $20 $D3 $AE - Jump to New Location Saving Return Address
	LDA #$02            ; $AEC2: $A9 $02 - Load Accumulator with Memory
	STA $A4             ; $AEC4: $85 $A4 - Store Accumulator in Memory
	JSR $98A0           ; $AEC6: $20 $A0 $98 - Jump to New Location Saving Return Address
	JSR $9890           ; $AEC9: $20 $90 $98 - Jump to New Location Saving Return Address
	JMP $F166           ; $AECC: $4C $66 $F1 - Jump to New Location
	RTS                 ; $AECF: $60 - Return from Subroutine
	BVC $40             ; $AED0: $50 $40 - Branch on Overflow Clear
	BVS $A2             ; $AED2: $70 $A2 - Branch on Overflow Set
	LDA $0200,X         ; $AED5: $BD $00 $02 - Load Accumulator with Memory
	BEQ $15             ; $AED8: $F0 $15 - Branch on Result Zero
	LDA $88,X           ; $AEDA: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$B0            ; $AEDD: $09 $B0 - OR Memory with Accumulator
	LDA #$03            ; $AEE0: $A9 $03 - Load Accumulator with Memory
	JSR $980F           ; $AEE2: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$00            ; $AEE5: $A9 $00 - Load Accumulator with Memory
	STA $88,X           ; $AEE7: $95 $88 - Store Accumulator in Memory
	DEC $02A0,X         ; $AEE9: $DE $A0 $02 - Decrement Memory by One
	DEC $02A0,X         ; $AEEC: $DE $A0 $02 - Decrement Memory by One
	LDA #$07            ; $AEEF: $A9 $07 - Load Accumulator with Memory
	JSR $98C4           ; $AEF1: $20 $C4 $98 - Jump to New Location Saving Return Address
	DEX                 ; $AEF4: $CA - Decrement Index X by One
	BPL $DE             ; $AEF5: $10 $DE - Branch on Result Plus
	LDA #$18            ; $AEF7: $A9 $18 - Load Accumulator with Memory
	JSR $98C4           ; $AEF9: $20 $C4 $98 - Jump to New Location Saving Return Address
	DEY                 ; $AEFC: $88 - Decrement Index Y by One
	BNE $D4             ; $AEFD: $D0 $D4 - Branch on Result not Zero
	RTS                 ; $AEFF: $60 - Return from Subroutine
	ORA ($04,X)         ; $AF00: $01 $04 $05 - OR Memory with Accumulator
	ASL $07             ; $AF03: $06 $07 - Shift Left One Bit
	ORA $0802           ; $AF05: $0D $02 $08 - OR Memory with Accumulator
	ASL A               ; $AF08: $0A - Shift Left One Bit
	ORA #$0B            ; $AF09: $09 $0B - OR Memory with Accumulator
	ASL $905E           ; $AF0B: $0E $5E $90 - Shift Left One Bit
	STX $6E             ; $AF0E: $86 $6E - Store Index X in Memory
	LDX #$B5            ; $AF10: $A2 $B5 - Load Index X with Memory
	BEQ $B0             ; $AF12: $F0 $B0 - Branch on Result Zero
	LDX ($00),Y         ; $AF17: $B6 $00 $40 - Load Index X with Memory
	RTI                 ; $AF1A: $40 - Return from Interrupt
	ASL $02             ; $AF1C: $06 $02 - Shift Left One Bit
	ORA ($11),Y         ; $AF21: $11 $11 $11 - OR Memory with Accumulator
	ORA ($11),Y         ; $AF24: $11 $11 $11 - OR Memory with Accumulator
	ORA ($81),Y         ; $AF27: $11 $81 $81 - OR Memory with Accumulator
	STA ($81,X)         ; $AF2A: $81 $81 $81 - Store Accumulator in Memory
	STA ($81,X)         ; $AF2D: $81 $81 $81 - Store Accumulator in Memory
	BRK                 ; $AF30: $00 - Force Break
	ORA #$00            ; $AF31: $09 $00 - OR Memory with Accumulator
	ORA #$00            ; $AF33: $09 $00 - OR Memory with Accumulator
	ORA #$00            ; $AF35: $09 $00 - OR Memory with Accumulator
	ORA #$00            ; $AF37: $09 $00 - OR Memory with Accumulator
	ORA #$00            ; $AF39: $09 $00 - OR Memory with Accumulator
	ORA #$00            ; $AF3B: $09 $00 - OR Memory with Accumulator
	ORA #$00            ; $AF3D: $09 $00 - OR Memory with Accumulator
	ORA #$0C            ; $AF3F: $09 $0C - OR Memory with Accumulator
	STY $118E           ; $AF41: $8C $8E $11 - Sore Index Y in Memory
	BRK                 ; $AF44: $00 - Force Break
	BRK                 ; $AF45: $00 - Force Break
	BRK                 ; $AF46: $00 - Force Break
	PLA                 ; $AF48: $68 - Pull Accumulator from Stack
	ORA ($78,X)         ; $AF4B: $01 $78 $42 - OR Memory with Accumulator
	BRK                 ; $AF4F: $00 - Force Break
	ROL $00,X           ; $AF51: $36 $00 - Rotate One Bit Left
	BRK                 ; $AF54: $00 - Force Break
	ORA $17,X           ; $AF57: $15 $17 - OR Memory with Accumulator
	ASL $17,X           ; $AF5B: $16 $17 - Shift Left One Bit
	ASL $7978,X         ; $AF5F: $1E $78 $79 - Shift Left One Bit
	BRK                 ; $AF62: $00 - Force Break
	BRK                 ; $AF63: $00 - Force Break
	BRK                 ; $AF64: $00 - Force Break
	ADC $7800,Y         ; $AF65: $79 $00 $78 - Add Memory to Accumulator with Carry
	LDY #$6C            ; $AF68: $A0 $6C - Load Index Y with Memory
	TXA                 ; $AF6A: $8A - Transfer Index X to Accumulator
	BRK                 ; $AF6B: $00 - Force Break
	LDY #$6C            ; $AF6C: $A0 $6C - Load Index Y with Memory
	TXA                 ; $AF6E: $8A - Transfer Index X to Accumulator
	BRK                 ; $AF6F: $00 - Force Break
	BRK                 ; $AF70: $00 - Force Break
	ADC $61             ; $AF71: $65 $61 - Add Memory to Accumulator with Carry
	BRK                 ; $AF74: $00 - Force Break
	BRK                 ; $AF75: $00 - Force Break
	BRK                 ; $AF76: $00 - Force Break
	ADC $6D             ; $AF77: $65 $6D - Add Memory to Accumulator with Carry
	LSR $00             ; $AF79: $46 $00 - Shift One Bit Right (Memory or Accumulator)
	ROR $0000           ; $AF7B: $6E $00 $00 - Rotate One Bit Right
	ORA #$09            ; $AF7E: $09 $09 - OR Memory with Accumulator
	BRK                 ; $AF80: $00 - Force Break
	BRK                 ; $AF81: $00 - Force Break
	ORA #$09            ; $AF82: $09 $09 - OR Memory with Accumulator
	BRK                 ; $AF84: $00 - Force Break
	BRK                 ; $AF85: $00 - Force Break
	ORA #$09            ; $AF86: $09 $09 - OR Memory with Accumulator
	BRK                 ; $AF88: $00 - Force Break
	BRK                 ; $AF89: $00 - Force Break
	ORA #$09            ; $AF8A: $09 $09 - OR Memory with Accumulator
	ORA $8F8D           ; $AF8C: $0D $8D $8F - OR Memory with Accumulator
	ORA ($00),Y         ; $AF8F: $11 $00 $9C - OR Memory with Accumulator
	BRK                 ; $AF92: $00 - Force Break
	ADC $69             ; $AF93: $65 $69 - Add Memory to Accumulator with Carry
	ORA ($7A,X)         ; $AF97: $01 $7A $44 - OR Memory with Accumulator
	BRK                 ; $AF9A: $00 - Force Break
	BRK                 ; $AF9F: $00 - Force Break
	BRK                 ; $AFA1: $00 - Force Break
	ASL $12,X           ; $AFA2: $16 $12 - Shift Left One Bit
	ORA $7A79,X         ; $AFAB: $1D $79 $7A - OR Memory with Accumulator
	BRK                 ; $AFAE: $00 - Force Break
	BRK                 ; $AFAF: $00 - Force Break
	ADC $7A00,Y         ; $AFB0: $79 $00 $7A - Add Memory to Accumulator with Carry
	BRK                 ; $AFB3: $00 - Force Break
	LDA ($00,X)         ; $AFB5: $A1 $00 $8A - Load Accumulator with Memory
	LDA ($00,X)         ; $AFB9: $A1 $00 $8A - Load Accumulator with Memory
	BRK                 ; $AFBD: $00 - Force Break
	BRK                 ; $AFBE: $00 - Force Break
	RTS                 ; $AFBF: $60 - Return from Subroutine
	BRK                 ; $AFC0: $00 - Force Break
	BRK                 ; $AFC1: $00 - Force Break
	BRK                 ; $AFC3: $00 - Force Break
	EOR $6A             ; $AFC4: $45 $6A - Exclusive-OR Memory with Accumulator
	BRK                 ; $AFC7: $00 - Force Break
	BRK                 ; $AFC8: $00 - Force Break
	BRK                 ; $AFC9: $00 - Force Break
	BRK                 ; $AFCA: $00 - Force Break
	BRK                 ; $AFCB: $00 - Force Break
	ORA #$09            ; $AFCC: $09 $09 - OR Memory with Accumulator
	ORA #$09            ; $AFCE: $09 $09 - OR Memory with Accumulator
	BRK                 ; $AFD0: $00 - Force Break
	BRK                 ; $AFD1: $00 - Force Break
	BRK                 ; $AFD2: $00 - Force Break
	BRK                 ; $AFD3: $00 - Force Break
	ORA #$09            ; $AFD4: $09 $09 - OR Memory with Accumulator
	ORA #$09            ; $AFD6: $09 $09 - OR Memory with Accumulator
	ASL $0A0A           ; $AFD8: $0E $0A $0A - Shift Left One Bit
	BRK                 ; $AFDB: $00 - Force Break
	BRK                 ; $AFDC: $00 - Force Break
	BRK                 ; $AFDD: $00 - Force Break
	STA $0000,X         ; $AFDE: $9D $00 $00 - Store Accumulator in Memory
	BRK                 ; $AFE1: $00 - Force Break
	ORA ($7B,X)         ; $AFE3: $01 $7B $45 - OR Memory with Accumulator
	SEC                 ; $AFE9: $38 - Set Carry Flag
	BRK                 ; $AFEA: $00 - Force Break
	BRK                 ; $AFEC: $00 - Force Break
	TYA                 ; $AFED: $98 - Transfer Index Y to Accumulator
	ROL A               ; $AFEE: $2A - Rotate One Bit Left
	ORA $2A21,Y         ; $AFEF: $19 $21 $2A - OR Memory with Accumulator
	ROL A               ; $AFF2: $2A - Rotate One Bit Left
	AND ($2A,X)         ; $AFF6: $21 $2A $7B - AND Memory with Accumulator
	BRK                 ; $AFFC: $00 - Force Break
	BRK                 ; $AFFE: $00 - Force Break
	LDX #$A2            ; $B000: $A2 $A2 - Load Index X with Memory
	BRK                 ; $B003: $00 - Force Break
	LDX #$A2            ; $B004: $A2 $A2 - Load Index X with Memory
	BRK                 ; $B007: $00 - Force Break
	ADC ($00,X)         ; $B008: $61 $00 $61 - Add Memory to Accumulator with Carry
	STA $6D6A           ; $B00B: $8D $6A $6D - Store Accumulator in Memory
	BRK                 ; $B00F: $00 - Force Break
	EOR $6D             ; $B010: $45 $6D - Exclusive-OR Memory with Accumulator
	BRK                 ; $B012: $00 - Force Break
	BRK                 ; $B013: $00 - Force Break
	BRK                 ; $B014: $00 - Force Break
	BRK                 ; $B015: $00 - Force Break
	BRK                 ; $B016: $00 - Force Break
	BRK                 ; $B017: $00 - Force Break
	BRK                 ; $B018: $00 - Force Break
	BRK                 ; $B019: $00 - Force Break
	BRK                 ; $B01A: $00 - Force Break
	BRK                 ; $B01B: $00 - Force Break
	ORA #$09            ; $B01C: $09 $09 - OR Memory with Accumulator
	ORA #$09            ; $B01E: $09 $09 - OR Memory with Accumulator
	ORA #$09            ; $B020: $09 $09 - OR Memory with Accumulator
	ORA #$09            ; $B022: $09 $09 - OR Memory with Accumulator
	BRK                 ; $B027: $00 - Force Break
	BRK                 ; $B029: $00 - Force Break
	BRK                 ; $B02A: $00 - Force Break
	BRK                 ; $B02B: $00 - Force Break
	BRK                 ; $B02C: $00 - Force Break
	BRK                 ; $B02D: $00 - Force Break
	ORA ($7D,X)         ; $B02F: $01 $7D $46 - OR Memory with Accumulator
	PLA                 ; $B032: $68 - Pull Accumulator from Stack
	BRK                 ; $B033: $00 - Force Break
	AND $39,X           ; $B034: $35 $39 - AND Memory with Accumulator
	BRK                 ; $B037: $00 - Force Break
	STA $1A00,Y         ; $B038: $99 $00 $1A - Store Accumulator in Memory
	CLC                 ; $B03E: $18 - Clear Carry Flag
	JSR $221B           ; $B041: $20 $1B $22 - Jump to New Location Saving Return Address
	ADC $7D7C,X         ; $B045: $7D $7C $7D - Add Memory to Accumulator with Carry
	BRK                 ; $B049: $00 - Force Break
	ADC $A200,X         ; $B04A: $7D $00 $A2 - Add Memory to Accumulator with Carry
	LDX #$00            ; $B04D: $A2 $00 - Load Index X with Memory
	LDX #$A2            ; $B050: $A2 $A2 - Load Index X with Memory
	BRK                 ; $B052: $00 - Force Break
	STA $8D60,X         ; $B054: $9D $60 $8D - Store Accumulator in Memory
	RTS                 ; $B057: $60 - Return from Subroutine
	ADC $656A           ; $B058: $6D $6A $65 - Add Memory to Accumulator with Carry
	ADC $11             ; $B05B: $65 $11 - Add Memory to Accumulator with Carry
	LSR $00             ; $B05D: $46 $00 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $B05F: $00 - Force Break
	BRK                 ; $B060: $00 - Force Break
	BRK                 ; $B061: $00 - Force Break
	BIT $0000           ; $B062: $2C $00 $00 - Test Bits in Memory with Accumulator
	AND $3335           ; $B065: $2D $35 $33 - AND Memory with Accumulator
	BIT $0400           ; $B06A: $2C $00 $04 - Test Bits in Memory with Accumulator
	BIT $312D           ; $B06D: $2C $2D $31 - Test Bits in Memory with Accumulator
	ROL $36,X           ; $B070: $36 $36 - Rotate One Bit Left
	ROL $31,X           ; $B072: $36 $31 - Rotate One Bit Left
	ORA $3528,Y         ; $B074: $19 $28 $35 - OR Memory with Accumulator
	ROL A               ; $B077: $2A - Rotate One Bit Left
	ORA $31,X           ; $B078: $15 $31 - OR Memory with Accumulator
	RTI                 ; $B07A: $40 - Return from Interrupt
	AND ($00),Y         ; $B07B: $31 $00 $1C - AND Memory with Accumulator
	ORA $00,X           ; $B07E: $15 $00 - OR Memory with Accumulator
	BPL $46             ; $B080: $10 $46 - Branch on Result Plus
	BRK                 ; $B084: $00 - Force Break
	SEC                 ; $B087: $38 - Set Carry Flag
	BIT $00             ; $B088: $24 $00 - Test Bits in Memory with Accumulator
	BIT $3232           ; $B08A: $2C $32 $32 - Test Bits in Memory with Accumulator
	BIT $2800           ; $B08F: $2C $00 $28 - Test Bits in Memory with Accumulator
	BMI $37             ; $B093: $30 $37 - Branch on Result Minus
	BMI $30             ; $B096: $30 $30 - Branch on Result Minus
	ORA $2934,Y         ; $B098: $19 $34 $29 - OR Memory with Accumulator
	BRK                 ; $B09C: $00 - Force Break
	BMI $41             ; $B09D: $30 $41 - Branch on Result Minus
	BMI $20             ; $B09F: $30 $20 - Branch on Result Minus
	BIT $2C18           ; $B0A1: $2C $18 $2C - Test Bits in Memory with Accumulator
	BPL $17             ; $B0A4: $10 $17 - Branch on Result Plus
	BRK                 ; $B0A6: $00 - Force Break
	BRK                 ; $B0A7: $00 - Force Break
	BRK                 ; $B0A8: $00 - Force Break
	BRK                 ; $B0A9: $00 - Force Break
	BRK                 ; $B0AB: $00 - Force Break
	BRK                 ; $B0AC: $00 - Force Break
	ROL $3437           ; $B0AD: $2E $37 $34 - Rotate One Bit Left
	BMI $30             ; $B0B0: $30 $30 - Branch on Result Minus
	ASL $2F0F           ; $B0B3: $0E $0F $2F - Shift Left One Bit
	ROL $3430           ; $B0B6: $2E $30 $34 - Rotate One Bit Left
	EOR #$34            ; $B0B9: $49 $34 - Exclusive-OR Memory with Accumulator
	ORA $2632,Y         ; $B0BB: $19 $32 $26 - OR Memory with Accumulator
	ROL A               ; $B0BE: $2A - Rotate One Bit Left
	CLC #$00            ; $B0BF: $29 $00 - Clear Carry Flag
	PLP                 ; $B0C3: $28 - Pull Processor Status from Stack
	BRK                 ; $B0C4: $00 - Force Break
	ASL $11,X           ; $B0C6: $16 $11 - Shift Left One Bit
	BRK                 ; $B0C8: $00 - Force Break
	ASL $151F,X         ; $B0C9: $1E $1F $15 - Shift Left One Bit
	BRK                 ; $B0CC: $00 - Force Break
	ROL $3A00,X         ; $B0CD: $3E $00 $3A - Rotate One Bit Left
	BRK                 ; $B0D0: $00 - Force Break
	BRK                 ; $B0D1: $00 - Force Break
	AND ($31),Y         ; $B0D3: $31 $31 $35 - AND Memory with Accumulator
	ORA $3629           ; $B0D8: $0D $29 $36 - OR Memory with Accumulator
	AND ($35),Y         ; $B0DB: $31 $35 $45 - AND Memory with Accumulator
	AND ($19),Y         ; $B0DE: $31 $19 $33 - AND Memory with Accumulator
	BRK                 ; $B0E3: $00 - Force Break
	ASL $29,X           ; $B0E4: $16 $29 - Shift Left One Bit
	ROL $00,X           ; $B0E7: $36 $00 - Rotate One Bit Left
	ORA $2F,X           ; $B0EA: $15 $2F - OR Memory with Accumulator
	BRK                 ; $B0EC: $00 - Force Break
	BRK                 ; $B0ED: $00 - Force Break
	BRK                 ; $B0EE: $00 - Force Break
	ASL $51,X           ; $B0EF: $16 $51 - Shift Left One Bit
	BRK                 ; $B0F2: $00 - Force Break
	LDY #$AD            ; $B0F4: $A0 $AD - Load Index Y with Memory
	BRK                 ; $B0F6: $00 - Force Break
	PHP                 ; $B0F8: $08 - Push Processor Status on Stack
	BRK                 ; $B0F9: $00 - Force Break
	BRK                 ; $B0FA: $00 - Force Break
	BRK                 ; $B0FB: $00 - Force Break
	AND $3D3C,X         ; $B0FD: $3D $3C $3D - AND Memory with Accumulator
	ROL $033D,X         ; $B100: $3E $3D $03 - Rotate One Bit Left
	BRK                 ; $B104: $00 - Force Break
	BRK                 ; $B106: $00 - Force Break
	EOR $53,X           ; $B107: $55 $53 - Exclusive-OR Memory with Accumulator
	ASL $16,X           ; $B10B: $16 $16 - Shift Left One Bit
	ORA $3A,X           ; $B10D: $15 $3A - OR Memory with Accumulator
	BRK                 ; $B110: $00 - Force Break
	BRK                 ; $B111: $00 - Force Break
	BRK                 ; $B112: $00 - Force Break
	BRK                 ; $B113: $00 - Force Break
	BPL $00             ; $B117: $10 $00 - Branch on Result Plus
	BRK                 ; $B119: $00 - Force Break
	ASL $9023,X         ; $B11A: $1E $23 $90 - Shift Left One Bit
	STX $00,Y           ; $B11D: $96 $00 - Store Index X in Memory
	BRK                 ; $B11F: $00 - Force Break
	BRK                 ; $B121: $00 - Force Break
	BRK                 ; $B123: $00 - Force Break
	BRK                 ; $B124: $00 - Force Break
	BRK                 ; $B125: $00 - Force Break
	BRK                 ; $B126: $00 - Force Break
	ADC $68             ; $B127: $65 $68 - Add Memory to Accumulator with Carry
	BRK                 ; $B12C: $00 - Force Break
	BRK                 ; $B12E: $00 - Force Break
	BRK                 ; $B12F: $00 - Force Break
	AND $3C3D,X         ; $B130: $3D $3D $3C - AND Memory with Accumulator
	ROL $0303,X         ; $B133: $3E $03 $03 - Rotate One Bit Left
	EOR ($00,X)         ; $B137: $41 $00 $3E - Exclusive-OR Memory with Accumulator
	ADC #$3E            ; $B13C: $69 $3E - Add Memory to Accumulator with Carry
	RTI                 ; $B13F: $40 - Return from Interrupt
	EOR ($3E,X)         ; $B140: $41 $3E $A0 - Exclusive-OR Memory with Accumulator
	LDA ($A1,X)         ; $B144: $A1 $A1 $AE - Load Accumulator with Memory
	BRK                 ; $B148: $00 - Force Break
	BRK                 ; $B149: $00 - Force Break
	PHP                 ; $B14A: $08 - Push Processor Status on Stack
	BRK                 ; $B14B: $00 - Force Break
	BRK                 ; $B14C: $00 - Force Break
	AND $3E3F,X         ; $B14D: $3D $3F $3E - AND Memory with Accumulator
	AND $043E,X         ; $B151: $3D $3E $04 - AND Memory with Accumulator
	BRK                 ; $B156: $00 - Force Break
	BRK                 ; $B158: $00 - Force Break
	EOR $14,X           ; $B15A: $55 $14 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B161: $00 - Force Break
	BRK                 ; $B162: $00 - Force Break
	BRK                 ; $B163: $00 - Force Break
	BRK                 ; $B164: $00 - Force Break
	TXS                 ; $B165: $9A - Transfer Index X to Stack Register
	ROL $072F           ; $B167: $2E $2F $07 - Rotate One Bit Left
	BRK                 ; $B16A: $00 - Force Break
	JSR $9791           ; $B16C: $20 $91 $97 - Jump to New Location Saving Return Address
	BRK                 ; $B16F: $00 - Force Break
	BRK                 ; $B170: $00 - Force Break
	BRK                 ; $B171: $00 - Force Break
	ROR $6600           ; $B172: $6E $00 $66 - Rotate One Bit Right
	BRK                 ; $B175: $00 - Force Break
	BRK                 ; $B176: $00 - Force Break
	BRK                 ; $B178: $00 - Force Break
	ROR A               ; $B179: $6A - Rotate One Bit Right
	PLA                 ; $B17A: $68 - Pull Accumulator from Stack
	LDX $00             ; $B17D: $A6 $00 - Load Index X with Memory
	BRK                 ; $B180: $00 - Force Break
	ROL $3D3E,X         ; $B181: $3E $3E $3D - Rotate One Bit Left
	LDX $00             ; $B187: $A6 $00 - Load Index X with Memory
	BRK                 ; $B189: $00 - Force Break
	AND $2B55,X         ; $B18A: $3D $55 $2B - AND Memory with Accumulator
	ROR A               ; $B18D: $6A - Rotate One Bit Right
	AND $0023,X         ; $B18E: $3D $23 $00 - AND Memory with Accumulator
	BRK                 ; $B191: $00 - Force Break
	AND $00A1,X         ; $B192: $3D $A1 $00 - AND Memory with Accumulator
	ADC $AEAC           ; $B195: $6D $AC $AE - Add Memory to Accumulator with Carry
	BRK                 ; $B198: $00 - Force Break
	BRK                 ; $B199: $00 - Force Break
	ORA $00             ; $B19A: $05 $00 - OR Memory with Accumulator
	BRK                 ; $B19C: $00 - Force Break
	ASL $00             ; $B19E: $06 $00 - Shift Left One Bit
	BRK                 ; $B1A0: $00 - Force Break
	BRK                 ; $B1A1: $00 - Force Break
	ASL $00             ; $B1A2: $06 $00 - Shift Left One Bit
	BRK                 ; $B1A4: $00 - Force Break
	BRK                 ; $B1A6: $00 - Force Break
	BRK                 ; $B1A7: $00 - Force Break
	BRK                 ; $B1A8: $00 - Force Break
	EOR $53,X           ; $B1A9: $55 $53 - Exclusive-OR Memory with Accumulator
	STA $5200           ; $B1B1: $8D $00 $52 - Store Accumulator in Memory
	BVC $51             ; $B1B4: $50 $51 - Branch on Overflow Clear
	BRK                 ; $B1B7: $00 - Force Break
	AND ($28,X)         ; $B1B8: $21 $28 $00 - AND Memory with Accumulator
	BRK                 ; $B1BB: $00 - Force Break
	ROL A               ; $B1BC: $2A - Rotate One Bit Left
	ORA $9492,Y         ; $B1BD: $19 $92 $94 - OR Memory with Accumulator
	BRK                 ; $B1C0: $00 - Force Break
	BRK                 ; $B1C2: $00 - Force Break
	ROR $6267           ; $B1C3: $6E $67 $62 - Rotate One Bit Right
	BRK                 ; $B1C6: $00 - Force Break
	ADC $63             ; $B1C7: $65 $63 - Add Memory to Accumulator with Carry
	ADC $62             ; $B1C9: $65 $62 - Add Memory to Accumulator with Carry
	PLA                 ; $B1CB: $68 - Pull Accumulator from Stack
	ROL $002E           ; $B1CC: $2E $2E $00 - Rotate One Bit Left
	BRK                 ; $B1CF: $00 - Force Break
	ROR $986F           ; $B1D0: $6E $6F $98 - Rotate One Bit Right
	STA $9898,Y         ; $B1D4: $99 $98 $98 - Store Accumulator in Memory
	BRK                 ; $B1D8: $00 - Force Break
	BRK                 ; $B1DB: $00 - Force Break
	STA $4767           ; $B1DD: $8D $67 $47 - Store Accumulator in Memory
	CLC                 ; $B1E0: $18 - Clear Carry Flag
	EOR ($41,X)         ; $B1E1: $41 $41 $98 - Exclusive-OR Memory with Accumulator
	LDY $AD07           ; $B1E4: $AC $07 $AD - Load Index Y with Memory
	LDA $0000           ; $B1E7: $AD $00 $00 - Load Accumulator with Memory
	BRK                 ; $B1EA: $00 - Force Break
	BRK                 ; $B1EB: $00 - Force Break
	ORA $6E             ; $B1EC: $05 $6E - OR Memory with Accumulator
	BRK                 ; $B1EE: $00 - Force Break
	BRK                 ; $B1EF: $00 - Force Break
	ASL $00             ; $B1F0: $06 $00 - Shift Left One Bit
	BRK                 ; $B1F2: $00 - Force Break
	BRK                 ; $B1F3: $00 - Force Break
	ASL $07             ; $B1F4: $06 $07 - Shift Left One Bit
	BRK                 ; $B1F6: $00 - Force Break
	BRK                 ; $B1F7: $00 - Force Break
	BRK                 ; $B1F8: $00 - Force Break
	BRK                 ; $B1FA: $00 - Force Break
	EOR $23,X           ; $B1FC: $55 $23 - Exclusive-OR Memory with Accumulator
	STA $5044           ; $B201: $8D $44 $50 - Store Accumulator in Memory
	BRK                 ; $B204: $00 - Force Break
	EOR ($52),Y         ; $B205: $51 $52 $00 - Exclusive-OR Memory with Accumulator
	AND ($24,X)         ; $B208: $21 $24 $1B - AND Memory with Accumulator
	BRK                 ; $B20C: $00 - Force Break
	STA $03,X           ; $B210: $95 $03 - Store Accumulator in Memory
	BRK                 ; $B212: $00 - Force Break
	BRK                 ; $B214: $00 - Force Break
	BRK                 ; $B218: $00 - Force Break
	ADC $68             ; $B21A: $65 $68 - Add Memory to Accumulator with Carry
	PLA                 ; $B21C: $68 - Pull Accumulator from Stack
	BPL $2F             ; $B21D: $10 $2F - Branch on Result Plus
	BRK                 ; $B21F: $00 - Force Break
	BRK                 ; $B220: $00 - Force Break
	BRK                 ; $B222: $00 - Force Break
	STA $4343,Y         ; $B223: $99 $43 $43 - Store Accumulator in Memory
	BRK                 ; $B226: $00 - Force Break
	STA $0000,Y         ; $B228: $99 $00 $00 - Store Accumulator in Memory
	BRK                 ; $B22C: $00 - Force Break
	STA $0062           ; $B22E: $8D $62 $00 - Store Accumulator in Memory
	ORA $0000,Y         ; $B231: $19 $00 $00 - OR Memory with Accumulator
	STA $01AD,Y         ; $B234: $99 $AD $01 - Store Accumulator in Memory
	BRK                 ; $B237: $00 - Force Break
	BRK                 ; $B238: $00 - Force Break
	BRK                 ; $B239: $00 - Force Break
	EOR ($AA,X)         ; $B23A: $41 $AA $A2 - Exclusive-OR Memory with Accumulator
	STA $5509,Y         ; $B23D: $99 $09 $55 - Store Accumulator in Memory
	EOR $55,X           ; $B240: $55 $55 - Exclusive-OR Memory with Accumulator
	EOR $80,X           ; $B245: $55 $80 - Exclusive-OR Memory with Accumulator
	LDA $AB             ; $B247: $A5 $AB - Load Accumulator with Memory
	LDA #$0A            ; $B24A: $A9 $0A - Load Accumulator with Memory
	BRK                 ; $B24C: $00 - Force Break
	BRK                 ; $B24D: $00 - Force Break
	TAX                 ; $B24E: $AA - Transfer Accumulator to Index X
	EOR $AA,X           ; $B24F: $55 $AA - Exclusive-OR Memory with Accumulator
	STA $05             ; $B252: $85 $05 - Store Accumulator in Memory
	LDY #$A9            ; $B254: $A0 $A9 - Load Index Y with Memory
	ROR A               ; $B256: $6A - Rotate One Bit Right
	EOR $0A,X           ; $B257: $55 $0A - Exclusive-OR Memory with Accumulator
	BRK                 ; $B259: $00 - Force Break
	ORA ($2A,X)         ; $B25A: $01 $2A $01 - OR Memory with Accumulator
	PLP                 ; $B25E: $28 - Pull Processor Status from Stack
	RTS                 ; $B25F: $60 - Return from Subroutine
	STX $90             ; $B261: $86 $90 - Store Index X in Memory
	ORA $0019,Y         ; $B263: $19 $19 $00 - OR Memory with Accumulator
	CLC                 ; $B266: $18 - Clear Carry Flag
	EOR $8F,X           ; $B268: $55 $8F - Exclusive-OR Memory with Accumulator
	ROR $2A             ; $B26A: $66 $2A - Rotate One Bit Right
	STY $00             ; $B26D: $84 $00 - Sore Index Y in Memory
	STY $00,X           ; $B26F: $94 $00 - Sore Index Y in Memory
	ROL A               ; $B272: $2A - Rotate One Bit Left
	AND $00,X           ; $B274: $35 $00 - AND Memory with Accumulator
	ROR $58             ; $B277: $66 $58 - Rotate One Bit Right
	ADC $35             ; $B279: $65 $35 - Add Memory to Accumulator with Carry
	BRK                 ; $B27B: $00 - Force Break
	BRK                 ; $B27C: $00 - Force Break
	BRK                 ; $B27D: $00 - Force Break
	BRK                 ; $B27E: $00 - Force Break
	EOR $8B6A,Y         ; $B282: $59 $6A $8B - Exclusive-OR Memory with Accumulator
	AND ($26),Y         ; $B285: $31 $26 $2A - AND Memory with Accumulator
	BRK                 ; $B289: $00 - Force Break
	ROR $4750,X         ; $B28A: $7E $50 $47 - Rotate One Bit Right
	STX $47,Y           ; $B28D: $96 $47 - Store Index X in Memory
	AND $00,X           ; $B28F: $35 $00 - AND Memory with Accumulator
	AND $9B,X           ; $B291: $35 $9B - AND Memory with Accumulator
	ORA $7233,Y         ; $B293: $19 $33 $72 - OR Memory with Accumulator
	BRK                 ; $B297: $00 - Force Break
	BRK                 ; $B298: $00 - Force Break
	ADC $90             ; $B29B: $65 $90 - Add Memory to Accumulator with Carry
	BRK                 ; $B29E: $00 - Force Break
	ORA $167B,Y         ; $B29F: $19 $7B $16 - OR Memory with Accumulator
	LSR A               ; $B2A2: $4A $00 - Shift One Bit Right (Memory or Accumulator)
	STA $9A             ; $B2A8: $85 $9A - Store Accumulator in Memory
	CLC #$64            ; $B2AA: $29 $64 - Clear Carry Flag
	BRK                 ; $B2AF: $00 - Force Break
	ADC $97             ; $B2B2: $65 $97 - Add Memory to Accumulator with Carry
	BRK                 ; $B2B7: $00 - Force Break
	BRK                 ; $B2B8: $00 - Force Break
	LSR $93,X           ; $B2B9: $56 $93 - Shift One Bit Right (Memory or Accumulator)
	ADC $378D           ; $B2BE: $6D $8D $37 - Add Memory to Accumulator with Carry
	ASL A               ; $B2C3: $0A - Shift Left One Bit
	TXS                 ; $B2C4: $9A - Transfer Index X to Stack Register
	STX $7F,Y           ; $B2C8: $96 $7F - Store Index X in Memory
	ORA $5D9B,Y         ; $B2CC: $19 $9B $5D - OR Memory with Accumulator
	ASL $32,X           ; $B2D0: $16 $32 - Shift Left One Bit
	STA $3200,Y         ; $B2D2: $99 $00 $32 - Store Accumulator in Memory
	ROL A               ; $B2D5: $2A - Rotate One Bit Left
	BRK                 ; $B2D7: $00 - Force Break
	PHP                 ; $B2D9: $08 - Push Processor Status on Stack
	ORA $0019,Y         ; $B2DA: $19 $19 $00 - OR Memory with Accumulator
	CLI                 ; $B2DD: $58 - Clear Interrupt Disable Bit
	EOR $006E           ; $B2DF: $4D $6E $00 - Exclusive-OR Memory with Accumulator
	ROL $70             ; $B2E2: $26 $70 - Rotate One Bit Left
	BRK                 ; $B2E4: $00 - Force Break
	PLA                 ; $B2E5: $68 - Pull Accumulator from Stack
	BRK                 ; $B2E6: $00 - Force Break
	ROL $3495           ; $B2E7: $2E $95 $34 - Rotate One Bit Left
	TYA                 ; $B2ED: $98 - Transfer Index Y to Accumulator
	BRK                 ; $B2EE: $00 - Force Break
	ADC $37,X           ; $B2EF: $75 $37 - Add Memory to Accumulator with Carry
	BRK                 ; $B2F1: $00 - Force Break
	SEI                 ; $B2F2: $78 - Set Interrupt Disable Status
	BRK                 ; $B2F4: $00 - Force Break
	BRK                 ; $B2F6: $00 - Force Break
	BRK                 ; $B2F7: $00 - Force Break
	RTS                 ; $B2F9: $60 - Return from Subroutine
	CLI                 ; $B2FC: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B2FE: $00 - Force Break
	BRK                 ; $B2FF: $00 - Force Break
	BRK                 ; $B301: $00 - Force Break
	BRK                 ; $B302: $00 - Force Break
	BRK                 ; $B303: $00 - Force Break
	BRK                 ; $B304: $00 - Force Break
	BRK                 ; $B306: $00 - Force Break
	BMI $9C             ; $B307: $30 $9C - Branch on Result Minus
	BRK                 ; $B30B: $00 - Force Break
	BRK                 ; $B30D: $00 - Force Break
	ROR $36,X           ; $B30E: $76 $36 - Rotate One Bit Right
	ADC $88,X           ; $B311: $75 $88 - Add Memory to Accumulator with Carry
	BRK                 ; $B313: $00 - Force Break
	ORA $0019,Y         ; $B315: $19 $19 $00 - OR Memory with Accumulator
	BRK                 ; $B319: $00 - Force Break
	BRK                 ; $B31B: $00 - Force Break
	ADC ($91),Y         ; $B31E: $71 $91 $95 - Add Memory to Accumulator with Carry
	STA $35,X           ; $B323: $95 $35 - Store Accumulator in Memory
	ROL $98,X           ; $B326: $36 $98 - Rotate One Bit Left
	ADC $99,X           ; $B328: $75 $99 - Add Memory to Accumulator with Carry
	ROL $23,X           ; $B32A: $36 $23 - Rotate One Bit Left
	ADC $3323,Y         ; $B32E: $79 $23 $33 - Add Memory to Accumulator with Carry
	STA $3623,Y         ; $B331: $99 $23 $36 - Store Accumulator in Memory
	BRK                 ; $B335: $00 - Force Break
	ORA $009A,Y         ; $B339: $19 $9A $00 - OR Memory with Accumulator
	BRK                 ; $B33C: $00 - Force Break
	BRK                 ; $B33D: $00 - Force Break
	BRK                 ; $B33E: $00 - Force Break
	ADC $5236,X         ; $B33F: $7D $36 $52 - Add Memory to Accumulator with Carry
	ASL $1100           ; $B345: $0E $00 $11 - Shift Left One Bit
	TXS                 ; $B348: $9A - Transfer Index X to Stack Register
	BRK                 ; $B349: $00 - Force Break
	ORA $ED69,Y         ; $B34A: $19 $69 $ED - OR Memory with Accumulator
	LSR $1C73,X         ; $B34D: $5E $73 $1C - Shift One Bit Right (Memory or Accumulator)
	SBC ($D7),Y         ; $B351: $F1 $D7 $19 - Subtract Memory from Accumulator with Borrow
	ADC $8791           ; $B354: $6D $91 $87 - Add Memory to Accumulator with Carry
	BPL $80             ; $B358: $10 $80 - Branch on Result Plus
	BEQ $D3             ; $B35A: $F0 $D3 - Branch on Result Zero
	EOR #$3A            ; $B35C: $49 $3A - Exclusive-OR Memory with Accumulator
	BRK                 ; $B35E: $00 - Force Break
	ASL $00             ; $B35F: $06 $00 - Shift Left One Bit
	ASL $87             ; $B361: $06 $87 - Shift Left One Bit
	ADC ($00,X)         ; $B363: $61 $00 $2D - Add Memory to Accumulator with Carry
	BRK                 ; $B366: $00 - Force Break
	EOR $1327,X         ; $B367: $5D $27 $13 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B36A: $00 - Force Break
	BRK                 ; $B36C: $00 - Force Break
	DEY                 ; $B36D: $88 - Decrement Index Y by One
	STA $1342,Y         ; $B36E: $99 $42 $13 - Store Accumulator in Memory
	ROL $28             ; $B371: $26 $28 - Rotate One Bit Left
	BRK                 ; $B374: $00 - Force Break
	EOR $82             ; $B376: $45 $82 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B378: $00 - Force Break
	BRK                 ; $B379: $00 - Force Break
	PHP                 ; $B37A: $08 - Push Processor Status on Stack
	BRK                 ; $B37B: $00 - Force Break
	BRK                 ; $B37D: $00 - Force Break
	TAY                 ; $B37F: $A8 - Transfer Accumulator to Index Y
	LDY $A6             ; $B380: $A4 $A6 - Load Index Y with Memory
	BRK                 ; $B384: $00 - Force Break
	LDA ($A3),Y         ; $B385: $B1 $A3 $BC - Load Accumulator with Memory
	TSX                 ; $B388: $BA - Transfer Stack Pointer to Index X
	LSR $86,X           ; $B38A: $56 $86 - Shift One Bit Right (Memory or Accumulator)
	CLI                 ; $B38D: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B38E: $00 - Force Break
	BRK                 ; $B391: $00 - Force Break
	BRK                 ; $B392: $00 - Force Break
	BRK                 ; $B394: $00 - Force Break
	BRK                 ; $B396: $00 - Force Break
	LSR $0000,X         ; $B397: $5E $00 $00 - Shift One Bit Right (Memory or Accumulator)
	STX $26             ; $B39A: $86 $26 - Store Index X in Memory
	STX $28             ; $B39C: $86 $28 - Store Index X in Memory
	BIT $7590           ; $B39E: $2C $90 $75 - Test Bits in Memory with Accumulator
	ROR A               ; $B3A1: $6A - Rotate One Bit Right
	BRK                 ; $B3A3: $00 - Force Break
	BRK                 ; $B3A4: $00 - Force Break
	BRK                 ; $B3A5: $00 - Force Break
	EOR $0006,X         ; $B3A6: $5D $06 $00 - Exclusive-OR Memory with Accumulator
	ASL $00             ; $B3A9: $06 $00 - Shift Left One Bit
	BRK                 ; $B3AC: $00 - Force Break
	BIT $0000           ; $B3AD: $2C $00 $00 - Test Bits in Memory with Accumulator
	LSR $2412,X         ; $B3B0: $5E $12 $24 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $B3B3: $00 - Force Break
	BRK                 ; $B3B4: $00 - Force Break
	BRK                 ; $B3B6: $00 - Force Break
	TYA                 ; $B3B8: $98 - Transfer Index Y to Accumulator
	AND $12             ; $B3B9: $25 $12 - AND Memory with Accumulator
	TXS                 ; $B3BB: $9A - Transfer Index X to Stack Register
	CLC #$00            ; $B3BC: $29 $00 - Clear Carry Flag
	LSR $7E             ; $B3BE: $46 $7E - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $B3C1: $00 - Force Break
	BRK                 ; $B3C2: $00 - Force Break
	BRK                 ; $B3C3: $00 - Force Break
	BRK                 ; $B3C5: $00 - Force Break
	BRK                 ; $B3C6: $00 - Force Break
	LDA #$A5            ; $B3C8: $A9 $A5 - Load Accumulator with Memory
	BRK                 ; $B3CB: $00 - Force Break
	BRK                 ; $B3CC: $00 - Force Break
	BCS $B2             ; $B3CD: $B0 $B2 - Branch on Carry Set
	LDA $88BB,X         ; $B3D0: $BD $BB $88 - Load Accumulator with Memory
	ADC ($59,X)         ; $B3D5: $61 $59 $00 - Add Memory to Accumulator with Carry
	BRK                 ; $B3D9: $00 - Force Break
	BRK                 ; $B3DC: $00 - Force Break
	EOR $0000,X         ; $B3DF: $5D $00 $00 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B3E2: $00 - Force Break
	DEY                 ; $B3E3: $88 - Decrement Index Y by One
	JSR $2587           ; $B3E4: $20 $87 $25 - Jump to New Location Saving Return Address
	AND $5769           ; $B3E7: $2D $69 $57 - AND Memory with Accumulator
	ROR A               ; $B3EA: $6A - Rotate One Bit Right
	BRK                 ; $B3EC: $00 - Force Break
	BRK                 ; $B3ED: $00 - Force Break
	ROR A               ; $B3EE: $6A - Rotate One Bit Right
	BRK                 ; $B3F0: $00 - Force Break
	BRK                 ; $B3F2: $00 - Force Break
	ADC ($2D,X)         ; $B3F5: $61 $2D $2C - Add Memory to Accumulator with Carry
	BRK                 ; $B3F8: $00 - Force Break
	ADC ($29,X)         ; $B3F9: $61 $29 $24 - Add Memory to Accumulator with Carry
	BRK                 ; $B3FC: $00 - Force Break
	BRK                 ; $B3FD: $00 - Force Break
	DEY                 ; $B3FE: $88 - Decrement Index Y by One
	BRK                 ; $B3FF: $00 - Force Break
	BRK                 ; $B400: $00 - Force Break
	BIT $29             ; $B402: $24 $29 - Test Bits in Memory with Accumulator
	TXS                 ; $B404: $9A - Transfer Index X to Stack Register
	BRK                 ; $B405: $00 - Force Break
	BRK                 ; $B406: $00 - Force Break
	BRK                 ; $B409: $00 - Force Break
	BRK                 ; $B40A: $00 - Force Break
	ROR $00A3,X         ; $B40B: $7E $A3 $00 - Rotate One Bit Right
	BRK                 ; $B40F: $00 - Force Break
	LDX $ACAA           ; $B411: $AE $AA $AC - Load Index X with Memory
	CLV                 ; $B415: $B8 - Clear Overflow Flag
	LDY $B6,X           ; $B416: $B4 $B6 $A3 - Load Index Y with Memory
	CPY #$BE            ; $B419: $C0 $BE - Compare Memory and Index Y
	ADC $B8             ; $B41B: $65 $B8 - Add Memory to Accumulator with Carry
	BRK                 ; $B41D: $00 - Force Break
	BRK                 ; $B420: $00 - Force Break
	ROR A               ; $B421: $6A - Rotate One Bit Right
	BRK                 ; $B423: $00 - Force Break
	ADC $07,X           ; $B424: $75 $07 - Add Memory to Accumulator with Carry
	CLI                 ; $B426: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B428: $00 - Force Break
	ADC ($00),Y         ; $B429: $71 $00 $58 - Add Memory to Accumulator with Carry
	PLP                 ; $B42D: $28 - Pull Processor Status from Stack
	DEY                 ; $B42E: $88 - Decrement Index Y by One
	BMI $2E             ; $B42F: $30 $2E - Branch on Result Minus
	CLI                 ; $B431: $58 - Clear Interrupt Disable Bit
	CLI                 ; $B432: $58 - Clear Interrupt Disable Bit
	BMI $89             ; $B434: $30 $89 - Branch on Result Minus
	AND $7500           ; $B436: $2D $00 $75 - AND Memory with Accumulator
	BRK                 ; $B43A: $00 - Force Break
	BRK                 ; $B43C: $00 - Force Break
	BRK                 ; $B43E: $00 - Force Break
	ROL $002D           ; $B43F: $2E $2D $00 - Rotate One Bit Left
	PLP                 ; $B444: $28 - Pull Processor Status from Stack
	BRK                 ; $B446: $00 - Force Break
	BRK                 ; $B447: $00 - Force Break
	BRK                 ; $B44A: $00 - Force Break
	PLP                 ; $B44B: $28 - Pull Processor Status from Stack
	BRK                 ; $B44D: $00 - Force Break
	BRK                 ; $B44F: $00 - Force Break
	BRK                 ; $B452: $00 - Force Break
	BRK                 ; $B453: $00 - Force Break
	BRK                 ; $B455: $00 - Force Break
	BRK                 ; $B457: $00 - Force Break
	BRK                 ; $B458: $00 - Force Break
	LDA $B900           ; $B45C: $AD $00 $B9 - Load Accumulator with Memory
	LDA $B7,X           ; $B45F: $B5 $B7 $6A - Load Accumulator with Memory
	CMP ($BF,X)         ; $B462: $C1 $BF $64 - Compare Memory with Accumulator
	STA $00,X           ; $B465: $95 $00 - Store Accumulator in Memory
	ADC ($B5,X)         ; $B467: $61 $B5 $00 - Add Memory to Accumulator with Carry
	ROR A               ; $B46A: $6A - Rotate One Bit Right
	BRK                 ; $B46B: $00 - Force Break
	BRK                 ; $B46E: $00 - Force Break
	BRK                 ; $B470: $00 - Force Break
	PLA                 ; $B471: $68 - Pull Accumulator from Stack
	BRK                 ; $B472: $00 - Force Break
	BRK                 ; $B473: $00 - Force Break
	BIT $61             ; $B476: $24 $61 - Test Bits in Memory with Accumulator
	AND ($2F),Y         ; $B478: $31 $2F $75 - AND Memory with Accumulator
	AND ($89),Y         ; $B47D: $31 $89 $2C - AND Memory with Accumulator
	ADC $5D,X           ; $B480: $75 $5D - Add Memory to Accumulator with Carry
	LDA #$AA            ; $B482: $A9 $AA - Load Accumulator with Memory
	TAX                 ; $B484: $AA - Transfer Accumulator to Index X
	TAX                 ; $B485: $AA - Transfer Accumulator to Index X
	ADC #$D5            ; $B486: $69 $D5 - Add Memory to Accumulator with Carry
	CMP $A5,X           ; $B489: $D5 $A5 - Compare Memory with Accumulator
	EOR $55,X           ; $B48B: $55 $55 - Exclusive-OR Memory with Accumulator
	EOR $00,X           ; $B48D: $55 $00 - Exclusive-OR Memory with Accumulator
	ORA $FF             ; $B48F: $05 $FF - OR Memory with Accumulator
	TAX                 ; $B491: $AA - Transfer Accumulator to Index X
	CMP $F7,X           ; $B492: $D5 $F7 - Compare Memory with Accumulator
	EOR ($AF),Y         ; $B494: $51 $AF $57 - Exclusive-OR Memory with Accumulator
	EOR $55FF,Y         ; $B497: $59 $FF $55 - Exclusive-OR Memory with Accumulator
	ADC $65             ; $B49A: $65 $65 - Add Memory to Accumulator with Carry
	ORA $AA,X           ; $B49C: $15 $AA - OR Memory with Accumulator
	LDA #$A9            ; $B49E: $A9 $A9 - Load Accumulator with Memory
	STX $54,Y           ; $B4A0: $96 $54 - Store Index X in Memory
	AND $7D,X           ; $B4A4: $35 $7D - AND Memory with Accumulator
	EOR $5B5A,Y         ; $B4A9: $59 $5A $5B - Exclusive-OR Memory with Accumulator
	EOR $5959,Y         ; $B4AE: $59 $59 $59 - Exclusive-OR Memory with Accumulator
	AND $581C,Y         ; $B4B1: $39 $1C $58 - AND Memory with Accumulator
	EOR $6000,Y         ; $B4B5: $59 $00 $60 - Exclusive-OR Memory with Accumulator
	LSR $0090,X         ; $B4B8: $5E $90 $00 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $B4BB: $00 - Force Break
	BCC $5A             ; $B4BC: $90 $5A - Branch on Carry Clear
	ROL A               ; $B4BF: $2A - Rotate One Bit Left
	STY $8C00           ; $B4C0: $8C $00 $8C - Sore Index Y in Memory
	STY $0087           ; $B4C3: $8C $87 $00 - Sore Index Y in Memory
	ASL $8768           ; $B4C6: $0E $68 $87 - Shift Left One Bit
	BRK                 ; $B4C9: $00 - Force Break
	STY $8C8C           ; $B4CA: $8C $8C $8C - Sore Index Y in Memory
	BRK                 ; $B4CD: $00 - Force Break
	TXA                 ; $B4CE: $8A - Transfer Index X to Accumulator
	CLI                 ; $B4CF: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B4D1: $00 - Force Break
	BVS $5B             ; $B4D3: $70 $5B - Branch on Overflow Set
	LSR $5B7A,X         ; $B4D5: $5E $7A $5B - Shift One Bit Right (Memory or Accumulator)
	STY $0092           ; $B4D9: $8C $92 $00 - Sore Index Y in Memory
	CLC #$91            ; $B4DC: $29 $91 - Clear Carry Flag
	CLI                 ; $B4DE: $58 - Clear Interrupt Disable Bit
	EOR $582D,Y         ; $B4DF: $59 $2D $58 - Exclusive-OR Memory with Accumulator
	BIT $5A8C           ; $B4E2: $2C $8C $5A - Test Bits in Memory with Accumulator
	CLI                 ; $B4E6: $58 - Clear Interrupt Disable Bit
	CLC #$81            ; $B4E7: $29 $81 - Clear Carry Flag
	PLP                 ; $B4EA: $28 - Pull Processor Status from Stack
	CLI                 ; $B4EB: $58 - Clear Interrupt Disable Bit
	CLC #$5A            ; $B4EC: $29 $5A - Clear Carry Flag
	BRK                 ; $B4EE: $00 - Force Break
	CLC #$58            ; $B4EF: $29 $58 - Clear Carry Flag
	CLI                 ; $B4F1: $58 - Clear Interrupt Disable Bit
	LSR $90,X           ; $B4F2: $56 $90 - Shift One Bit Right (Memory or Accumulator)
	STY $8C10           ; $B4F4: $8C $10 $8C - Sore Index Y in Memory
	BCC $00             ; $B4FA: $90 $00 - Branch on Carry Clear
	BRK                 ; $B4FC: $00 - Force Break
	STY $001D           ; $B4FD: $8C $1D $00 - Sore Index Y in Memory
	ROR A               ; $B501: $6A - Rotate One Bit Right
	ROR $8C             ; $B503: $66 $8C - Rotate One Bit Right
	BRK                 ; $B506: $00 - Force Break
	STY $8754           ; $B507: $8C $54 $87 - Sore Index Y in Memory
	TXA                 ; $B50B: $8A - Transfer Index X to Accumulator
	LSR $78,X           ; $B50F: $56 $78 - Shift One Bit Right (Memory or Accumulator)
	EOR $5B90,X         ; $B512: $5D $90 $5B - Exclusive-OR Memory with Accumulator
	STY $500D           ; $B515: $8C $0D $50 - Sore Index Y in Memory
	BRK                 ; $B518: $00 - Force Break
	EOR $005E,X         ; $B519: $5D $5E $00 - Exclusive-OR Memory with Accumulator
	ADC ($52,X)         ; $B51C: $61 $52 $90 - Add Memory to Accumulator with Carry
	BCC $8C             ; $B51F: $90 $8C - Branch on Carry Clear
	STA $5959           ; $B521: $8D $59 $59 - Store Accumulator in Memory
	EOR $003B,Y         ; $B524: $59 $3B $00 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B528: $00 - Force Break
	EOR $585B,Y         ; $B529: $59 $5B $58 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B52C: $00 - Force Break
	STY $0000           ; $B52D: $8C $00 $00 - Sore Index Y in Memory
	ROL A               ; $B530: $2A - Rotate One Bit Left
	STY $005B           ; $B531: $8C $5B $00 - Sore Index Y in Memory
	BRK                 ; $B535: $00 - Force Break
	ROL $8D60           ; $B536: $2E $60 $8D - Rotate One Bit Left
	BRK                 ; $B539: $00 - Force Break
	STY $946C           ; $B53A: $8C $6C $94 - Sore Index Y in Memory
	LSR $2F,X           ; $B53E: $56 $2F - Shift One Bit Right (Memory or Accumulator)
	BCC $91             ; $B541: $90 $91 - Branch on Carry Clear
	STA $008C           ; $B543: $8D $8C $00 - Store Accumulator in Memory
	EOR $9374,Y         ; $B546: $59 $74 $93 - Exclusive-OR Memory with Accumulator
	STY $57             ; $B549: $84 $57 - Sore Index Y in Memory
	CLC #$7F            ; $B54B: $29 $7F - Clear Carry Flag
	ADC ($8B,X)         ; $B54D: $61 $8B $90 - Add Memory to Accumulator with Carry
	EOR $5953,Y         ; $B551: $59 $53 $59 - Exclusive-OR Memory with Accumulator
	CLI                 ; $B555: $58 - Clear Interrupt Disable Bit
	STY $8B90           ; $B557: $8C $90 $8B - Sore Index Y in Memory
	CLI                 ; $B55A: $58 - Clear Interrupt Disable Bit
	CLI                 ; $B55B: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B55D: $00 - Force Break
	BPL $58             ; $B55E: $10 $58 - Branch on Result Plus
	BRK                 ; $B560: $00 - Force Break
	BRK                 ; $B562: $00 - Force Break
	BRK                 ; $B563: $00 - Force Break
	STY $002F           ; $B567: $8C $2F $00 - Sore Index Y in Memory
	CLI                 ; $B56B: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B56D: $00 - Force Break
	STY $000F           ; $B56E: $8C $0F $00 - Sore Index Y in Memory
	ADC ($58,X)         ; $B571: $61 $58 $11 - Add Memory to Accumulator with Carry
	STY $886E           ; $B574: $8C $6E $88 - Sore Index Y in Memory
	LSR $902E,X         ; $B578: $5E $2E $90 - Shift One Bit Right (Memory or Accumulator)
	STX $918C           ; $B57D: $8E $8C $91 - Store Index X in Memory
	PLP                 ; $B580: $28 - Pull Processor Status from Stack
	ROR $83,X           ; $B581: $76 $83 - Rotate One Bit Right
	EOR $5827           ; $B583: $4D $27 $58 - Exclusive-OR Memory with Accumulator
	ROR $905F,X         ; $B586: $7E $5F $90 - Rotate One Bit Right
	STY $5952           ; $B58A: $8C $52 $59 - Sore Index Y in Memory
	ROR $5960,X         ; $B58D: $7E $60 $59 - Rotate One Bit Right
	LSR $6775,X         ; $B593: $5E $75 $67 - Shift One Bit Right (Memory or Accumulator)
	DEC $E8             ; $B597: $C6 $E8 - Decrement Memory by One
	ORA $C769,Y         ; $B599: $19 $69 $C7 - OR Memory with Accumulator
	ORA ($07,X)         ; $B59C: $01 $07 $2C - OR Memory with Accumulator
	ADC ($17,X)         ; $B5A1: $61 $17 $25 - Add Memory to Accumulator with Carry
	STA $00A3,Y         ; $B5A6: $99 $A3 $00 - Store Accumulator in Memory
	LDY #$72            ; $B5A9: $A0 $72 - Load Index Y with Memory
	BRK                 ; $B5AB: $00 - Force Break
	JSR $9A29           ; $B5AE: $20 $29 $9A - Jump to New Location Saving Return Address
	ASL $9A             ; $B5B1: $06 $9A - Shift Left One Bit
	BRK                 ; $B5B3: $00 - Force Break
	BRK                 ; $B5B5: $00 - Force Break
	ORA ($6E),Y         ; $B5B6: $11 $6E $70 - OR Memory with Accumulator
	TYA                 ; $B5BE: $98 - Transfer Index Y to Accumulator
	LDA ($00,X)         ; $B5BF: $A1 $00 $73 - Load Accumulator with Memory
	ROR $13,X           ; $B5C2: $76 $13 - Rotate One Bit Right
	PLP                 ; $B5C5: $28 - Pull Processor Status from Stack
	JSR $9B06           ; $B5C6: $20 $06 $9B - Jump to New Location Saving Return Address
	BRK                 ; $B5C9: $00 - Force Break
	BRK                 ; $B5CC: $00 - Force Break
	LSR $6F             ; $B5CD: $46 $6F - Shift One Bit Right (Memory or Accumulator)
	ADC ($07),Y         ; $B5CF: $71 $07 $02 - Add Memory to Accumulator with Carry
	STA $00A3,Y         ; $B5D4: $99 $A3 $00 - Store Accumulator in Memory
	ADC ($74),Y         ; $B5D7: $71 $74 $00 - Add Memory to Accumulator with Carry
	AND $21             ; $B5DB: $25 $21 - AND Memory with Accumulator
	AND ($06,X)         ; $B5DD: $21 $06 $07 - AND Memory with Accumulator
	BRK                 ; $B5E0: $00 - Force Break
	BRK                 ; $B5E1: $00 - Force Break
	AND ($6A,X)         ; $B5E2: $21 $6A $6D - AND Memory with Accumulator
	BRK                 ; $B5E5: $00 - Force Break
	BRK                 ; $B5E6: $00 - Force Break
	BMI $24             ; $B5E8: $30 $24 - Branch on Result Minus
	ORA $98A3,X         ; $B5EA: $1D $A3 $98 - OR Memory with Accumulator
	ADC ($00),Y         ; $B5ED: $71 $00 $00 - Add Memory to Accumulator with Carry
	ROL $2A             ; $B5F1: $26 $2A - Rotate One Bit Left
	ASL $00             ; $B5F6: $06 $00 - Shift Left One Bit
	BRK                 ; $B5F8: $00 - Force Break
	ADC $0045           ; $B5FA: $6D $45 $00 - Add Memory to Accumulator with Carry
	BRK                 ; $B5FD: $00 - Force Break
	AND ($00),Y         ; $B5FF: $31 $00 $00 - AND Memory with Accumulator
	BRK                 ; $B602: $00 - Force Break
	BRK                 ; $B603: $00 - Force Break
	ORA ($6A,X)         ; $B604: $01 $6A $A1 - OR Memory with Accumulator
	EOR $55             ; $B607: $45 $55 - Exclusive-OR Memory with Accumulator
	EOR $55,X           ; $B609: $55 $55 - Exclusive-OR Memory with Accumulator
	EOR $FF,X           ; $B60B: $55 $FF - Exclusive-OR Memory with Accumulator
	TAX                 ; $B60F: $AA - Transfer Accumulator to Index X
	STA $5A,X           ; $B610: $95 $5A - Store Accumulator in Memory
	TAX                 ; $B612: $AA - Transfer Accumulator to Index X
	SBC $AF,X           ; $B613: $F5 $AF - Subtract Memory from Accumulator with Borrow
	EOR $5A,X           ; $B615: $55 $5A - Exclusive-OR Memory with Accumulator
	SBC #$3A            ; $B617: $E9 $3A - Subtract Memory from Accumulator with Borrow
	LSR $5600,X         ; $B619: $5E $00 $56 - Shift One Bit Right (Memory or Accumulator)
	AND ($33),Y         ; $B61C: $31 $33 $4C - AND Memory with Accumulator
	JSR $2A28           ; $B620: $20 $28 $2A - Jump to New Location Saving Return Address
	JMP $6254           ; $B623: $4C $54 $62 - Jump to New Location
	PLP                 ; $B626: $28 - Pull Processor Status from Stack
	AND $35,X           ; $B628: $35 $35 - AND Memory with Accumulator
	BRK                 ; $B62A: $00 - Force Break
	BIT $002C           ; $B62B: $2C $2C $00 - Test Bits in Memory with Accumulator
	PLP                 ; $B62E: $28 - Pull Processor Status from Stack
	CLC #$33            ; $B62F: $29 $33 - Clear Carry Flag
	AND ($59),Y         ; $B631: $31 $59 $29 - AND Memory with Accumulator
	ADC ($33,X)         ; $B634: $61 $33 $5F - Add Memory to Accumulator with Carry
	ROL A               ; $B637: $2A - Rotate One Bit Left
	PLP                 ; $B638: $28 - Pull Processor Status from Stack
	BRK                 ; $B639: $00 - Force Break
	PLP                 ; $B63A: $28 - Pull Processor Status from Stack
	PLP                 ; $B63B: $28 - Pull Processor Status from Stack
	BRK                 ; $B63C: $00 - Force Break
	ROL A               ; $B63D: $2A - Rotate One Bit Left
	LSR $5800,X         ; $B63E: $5E $00 $58 - Shift One Bit Right (Memory or Accumulator)
	BMI $32             ; $B641: $30 $32 - Branch on Result Minus
	EOR $4D,X           ; $B643: $55 $4D - Exclusive-OR Memory with Accumulator
	EOR $2B29           ; $B645: $4D $29 $2B - Exclusive-OR Memory with Accumulator
	EOR $4D,X           ; $B648: $55 $4D - Exclusive-OR Memory with Accumulator
	CLC #$34            ; $B64B: $29 $34 - Clear Carry Flag
	CLC #$28            ; $B64D: $29 $28 - Clear Carry Flag
	AND $1900           ; $B64F: $2D $00 $19 - AND Memory with Accumulator
	BIT $3434           ; $B652: $2C $34 $34 - Test Bits in Memory with Accumulator
	BMI $57             ; $B656: $30 $57 - Branch on Result Minus
	ADC ($28,X)         ; $B658: $61 $28 $50 - Add Memory to Accumulator with Carry
	EOR ($2B),Y         ; $B65B: $51 $2B $34 - Exclusive-OR Memory with Accumulator
	CLC #$2C            ; $B65E: $29 $2C - Clear Carry Flag
	ORA $2B28,Y         ; $B660: $19 $28 $2B - OR Memory with Accumulator
	PLP                 ; $B663: $28 - Pull Processor Status from Stack
	ROL A               ; $B665: $2A - Rotate One Bit Left
	EOR $562A,X         ; $B666: $5D $2A $56 - Exclusive-OR Memory with Accumulator
	JMP $5654           ; $B66B: $4C $54 $56 - Jump to New Location
	EOR $0026,Y         ; $B66E: $59 $26 $00 - Exclusive-OR Memory with Accumulator
	CLC #$37            ; $B671: $29 $37 - Clear Carry Flag
	BRK                 ; $B674: $00 - Force Break
	ORA ($10),Y         ; $B677: $11 $10 $32 - OR Memory with Accumulator
	CLC #$2A            ; $B67B: $29 $2A - Clear Carry Flag
	ROL $2A             ; $B67D: $26 $2A - Rotate One Bit Left
	BMI $44             ; $B67F: $30 $44 - Branch on Result Minus
	RTS                 ; $B681: $60 - Return from Subroutine
	CLC #$0E            ; $B682: $29 $0E - Clear Carry Flag
	LSR A               ; $B686: $4A $1C - Shift One Bit Right (Memory or Accumulator)
	CLC #$0E            ; $B688: $29 $0E - Clear Carry Flag
	EOR $2B             ; $B68B: $45 $2B - Exclusive-OR Memory with Accumulator
	EOR $4D,X           ; $B690: $55 $4D - Exclusive-OR Memory with Accumulator
	CLI                 ; $B692: $58 - Clear Interrupt Disable Bit
	BRK                 ; $B695: $00 - Force Break
	ROL $33,X           ; $B696: $36 $33 - Rotate One Bit Left
	ROL $0000           ; $B699: $2E $00 $00 - Rotate One Bit Left
	ROL $33,X           ; $B69D: $36 $33 - Rotate One Bit Left
	AND $5C,X           ; $B69F: $35 $5C - AND Memory with Accumulator
	LSR $004F           ; $B6A4: $4E $4F $00 - Shift One Bit Right (Memory or Accumulator)
	ROL $0F,X           ; $B6A7: $36 $0F - Rotate One Bit Left
	ORA $1C29,Y         ; $B6AA: $19 $29 $1C - OR Memory with Accumulator
	ORA $79,X           ; $B6AD: $15 $79 - OR Memory with Accumulator
	CPY $A472           ; $B6AF: $CC $72 $A4 - Compare Memory and Index Y
	ADC ($80,X)         ; $B6B2: $61 $80 $F0 - Add Memory to Accumulator with Carry
	ORA $C359           ; $B6B6: $0D $59 $C3 - OR Memory with Accumulator
	JMP ($A9A6)         ; $B6BC: $6C $A6 $A9 - Jump to New Location
	BIT $6133           ; $B6BF: $2C $33 $61 - Test Bits in Memory with Accumulator
	BRK                 ; $B6C2: $00 - Force Break
	BRK                 ; $B6C4: $00 - Force Break
	ROR A               ; $B6C5: $6A - Rotate One Bit Right
	ADC #$4C            ; $B6C6: $69 $4C - Add Memory to Accumulator with Carry
	LSR $4342           ; $B6C8: $4E $42 $43 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $B6CB: $00 - Force Break
	BRK                 ; $B6CE: $00 - Force Break
	STY $4C             ; $B6D0: $84 $4C - Sore Index Y in Memory
	LSR $2624           ; $B6D2: $4E $24 $26 - Shift One Bit Right (Memory or Accumulator)
	PHA                 ; $B6D5: $48 - Push Accumulator on Stack
	LSR A               ; $B6D6: $4A $48 - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $B6D8: $4A $42 - Shift One Bit Right (Memory or Accumulator)
	BVC $51             ; $B6DD: $50 $51 - Branch on Overflow Clear
	BRK                 ; $B6DF: $00 - Force Break
	BRK                 ; $B6E0: $00 - Force Break
	TXA                 ; $B6E1: $8A - Transfer Index X to Accumulator
	BRK                 ; $B6E2: $00 - Force Break
	PHA                 ; $B6E3: $48 - Push Accumulator on Stack
	JMP $4243           ; $B6E4: $4C $43 $42 - Jump to New Location
	ADC $0000,Y         ; $B6E7: $79 $00 $00 - Add Memory to Accumulator with Carry
	BRK                 ; $B6EA: $00 - Force Break
	BRK                 ; $B6ED: $00 - Force Break
	RTS                 ; $B6EE: $60 - Return from Subroutine
	BRK                 ; $B6EF: $00 - Force Break
	ADC #$6A            ; $B6F1: $69 $6A - Add Memory to Accumulator with Carry
	EOR $434F           ; $B6F3: $4D $4F $43 - Exclusive-OR Memory with Accumulator
	ROR $0000,X         ; $B6F7: $7E $00 $00 - Rotate One Bit Right
	STA ($85,X)         ; $B6FB: $81 $85 $4D - Store Accumulator in Memory
	AND $27             ; $B6FF: $25 $27 - AND Memory with Accumulator
	EOR #$4B            ; $B701: $49 $4B - Exclusive-OR Memory with Accumulator
	EOR #$4B            ; $B703: $49 $4B - Exclusive-OR Memory with Accumulator
	ROR $51A3,X         ; $B707: $7E $A3 $51 - Rotate One Bit Right
	BRK                 ; $B70B: $00 - Force Break
	BRK                 ; $B70C: $00 - Force Break
	BRK                 ; $B70D: $00 - Force Break
	TXA                 ; $B70E: $8A - Transfer Index X to Accumulator
	ADC $0000,Y         ; $B713: $79 $00 $00 - Add Memory to Accumulator with Carry
	STA $9F6E,X         ; $B716: $9D $6E $9F - Store Accumulator in Memory
	ADC ($00,X)         ; $B719: $61 $00 $8B - Add Memory to Accumulator with Carry
	BRK                 ; $B71C: $00 - Force Break
	ADC $4342           ; $B71E: $6D $42 $43 - Add Memory to Accumulator with Carry
	BRK                 ; $B721: $00 - Force Break
	BRK                 ; $B722: $00 - Force Break
	ROR $0085,X         ; $B723: $7E $85 $00 - Rotate One Bit Right
	BRK                 ; $B726: $00 - Force Break
	STA ($83,X)         ; $B727: $81 $83 $4C - Store Accumulator in Memory
	LSR $9B28           ; $B72A: $4E $28 $9B - Shift One Bit Right (Memory or Accumulator)
	JMP $504E           ; $B72D: $4C $4E $50 - Jump to New Location
	EOR ($45),Y         ; $B730: $51 $45 $11 - Exclusive-OR Memory with Accumulator
	BVC $51             ; $B735: $50 $51 - Branch on Overflow Clear
	TXA                 ; $B737: $8A - Transfer Index X to Accumulator
	BRK                 ; $B738: $00 - Force Break
	BRK                 ; $B73A: $00 - Force Break
	JMP $004C           ; $B73B: $4C $4C $00 - Jump to New Location
	STA $8D00,Y         ; $B73E: $99 $00 $8D - Store Accumulator in Memory
	ROR $0000           ; $B743: $6E $00 $00 - Rotate One Bit Right
	RTS                 ; $B746: $60 - Return from Subroutine
	BRK                 ; $B747: $00 - Force Break
	ADC $4365           ; $B749: $6D $65 $43 - Add Memory to Accumulator with Carry
	BRK                 ; $B74D: $00 - Force Break
	BRK                 ; $B74E: $00 - Force Break
	BRK                 ; $B751: $00 - Force Break
	BRK                 ; $B752: $00 - Force Break
	STY $4D             ; $B754: $84 $4D - Sore Index Y in Memory
	TXS                 ; $B757: $9A - Transfer Index X to Stack Register
	CLC #$4D            ; $B758: $29 $4D - Clear Carry Flag
	EOR ($52),Y         ; $B75B: $51 $52 $11 - Exclusive-OR Memory with Accumulator
	LSR $83             ; $B75E: $46 $83 - Shift One Bit Right (Memory or Accumulator)
	EOR ($52),Y         ; $B761: $51 $52 $00 - Exclusive-OR Memory with Accumulator
	TXA                 ; $B764: $8A - Transfer Index X to Accumulator
	BRK                 ; $B765: $00 - Force Break
	BRK                 ; $B769: $00 - Force Break
	TYA                 ; $B76A: $98 - Transfer Index Y to Accumulator
	BRK                 ; $B76B: $00 - Force Break
	STA $0068           ; $B76C: $8D $68 $00 - Store Accumulator in Memory
	BRK                 ; $B770: $00 - Force Break
	BRK                 ; $B771: $00 - Force Break
	BRK                 ; $B772: $00 - Force Break
	BRK                 ; $B773: $00 - Force Break
	BRK                 ; $B774: $00 - Force Break
	EOR ($47,X)         ; $B777: $41 $47 $54 - Exclusive-OR Memory with Accumulator
	SBC $FF,X           ; $B77A: $F5 $FF - Subtract Memory from Accumulator with Borrow
	TAX                 ; $B77D: $AA - Transfer Accumulator to Index X
	TAX                 ; $B77E: $AA - Transfer Accumulator to Index X
	TAX                 ; $B77F: $AA - Transfer Accumulator to Index X
	BRK                 ; $B780: $00 - Force Break
	BRK                 ; $B781: $00 - Force Break
	EOR $55,X           ; $B782: $55 $55 - Exclusive-OR Memory with Accumulator
	LDY #$05            ; $B784: $A0 $05 - Load Index Y with Memory
	BRK                 ; $B786: $00 - Force Break
	BRK                 ; $B787: $00 - Force Break
	BEQ $00             ; $B788: $F0 $00 - Branch on Result Zero
	ORA $A0             ; $B78A: $05 $A0 - OR Memory with Accumulator
	BIT $1D             ; $B78D: $24 $1D - Test Bits in Memory with Accumulator
	PLA                 ; $B78F: $68 - Pull Accumulator from Stack
	PLA                 ; $B790: $68 - Pull Accumulator from Stack
	AND $16,X           ; $B793: $35 $16 - AND Memory with Accumulator
	RTI                 ; $B795: $40 - Return from Interrupt
	LSR $0874,X         ; $B797: $5E $74 $08 - Shift One Bit Right (Memory or Accumulator)
	BIT $2926           ; $B79A: $2C $26 $29 - Test Bits in Memory with Accumulator
	BRK                 ; $B79D: $00 - Force Break
	CLC #$64            ; $B79E: $29 $64 - Clear Carry Flag
	BPL $2A             ; $B7A2: $10 $2A - Branch on Result Plus
	BRK                 ; $B7A6: $00 - Force Break
	AND $10,X           ; $B7A7: $35 $10 - AND Memory with Accumulator
	AND $76,X           ; $B7A9: $35 $76 - AND Memory with Accumulator
	ROL $6A,X           ; $B7AB: $36 $6A - Rotate One Bit Left
	LSR $4270           ; $B7AD: $4E $70 $42 - Shift One Bit Right (Memory or Accumulator)
	JMP $2D16           ; $B7B1: $4C $16 $2D - Jump to New Location
	BVS $00             ; $B7B4: $70 $00 - Branch on Overflow Set
	EOR $00,X           ; $B7B6: $55 $00 - Exclusive-OR Memory with Accumulator
	CLC #$45            ; $B7B8: $29 $45 - Clear Carry Flag
	ASL $4C,X           ; $B7BA: $16 $4C - Shift Left One Bit
	BVS $00             ; $B7BC: $70 $00 - Branch on Overflow Set
	ROL A               ; $B7BF: $2A - Rotate One Bit Left
	ROL $48             ; $B7C0: $26 $48 - Rotate One Bit Left
	ADC #$69            ; $B7C2: $69 $69 - Add Memory to Accumulator with Carry
	ORA $72,X           ; $B7C7: $15 $72 - OR Memory with Accumulator
	EOR ($5F,X)         ; $B7C9: $41 $5F $50 - Exclusive-OR Memory with Accumulator
	ASL $2710           ; $B7CC: $0E $10 $27 - Shift Left One Bit
	ADC $2C             ; $B7D2: $65 $2C - Add Memory to Accumulator with Carry
	EOR $1000,X         ; $B7D8: $5D $00 $10 - Exclusive-OR Memory with Accumulator
	AND $2928           ; $B7DB: $2D $28 $29 - AND Memory with Accumulator
	BRK                 ; $B7DF: $00 - Force Break
	ASL $4D,X           ; $B7E4: $16 $4D - Shift Left One Bit
	EOR $1D,X           ; $B7E7: $55 $1D - Exclusive-OR Memory with Accumulator
	AND $7600           ; $B7E9: $2D $00 $76 - AND Memory with Accumulator
	ROR $1600           ; $B7EC: $6E $00 $16 - Rotate One Bit Right
	BVS $56             ; $B7EF: $70 $56 - Branch on Overflow Set
	CLI                 ; $B7F1: $58 - Clear Interrupt Disable Bit
	EOR #$62            ; $B7F4: $49 $62 - Exclusive-OR Memory with Accumulator
	ROR $26             ; $B7F6: $66 $26 - Rotate One Bit Right
	PHA                 ; $B7F8: $48 - Push Accumulator on Stack
	ORA $4C,X           ; $B7FA: $15 $4C - OR Memory with Accumulator
	JMP ($2650)         ; $B7FD: $6C $50 $26 - Jump to New Location
	BRK                 ; $B801: $00 - Force Break
	ROL A               ; $B803: $2A - Rotate One Bit Left
	RTS                 ; $B805: $60 - Return from Subroutine
	BRK                 ; $B806: $00 - Force Break
	ROL A               ; $B807: $2A - Rotate One Bit Left
	BRK                 ; $B809: $00 - Force Break
	BPL $37             ; $B80E: $10 $37 - Branch on Result Plus
	ROL A               ; $B810: $2A - Rotate One Bit Left
	LSR $004E           ; $B812: $4E $4E $00 - Shift One Bit Right (Memory or Accumulator)
	BMI $30             ; $B815: $30 $30 - Branch on Result Minus
	JMP $2E14           ; $B817: $4C $14 $2E - Jump to New Location
	ROR $00,X           ; $B81A: $76 $00 - Rotate One Bit Right
	ROR $00,X           ; $B81C: $76 $00 - Rotate One Bit Right
	ROL A               ; $B81E: $2A - Rotate One Bit Left
	EOR #$14            ; $B81F: $49 $14 - Exclusive-OR Memory with Accumulator
	JMP $5600           ; $B821: $4C $00 $56 - Jump to New Location
	CLI                 ; $B824: $58 - Clear Interrupt Disable Bit
	ADC ($00),Y         ; $B825: $71 $00 $28 - Add Memory to Accumulator with Carry
	CLC #$16            ; $B82C: $29 $16 - Clear Carry Flag
	EOR $486D           ; $B82F: $4D $6D $48 - Exclusive-OR Memory with Accumulator
	BRK                 ; $B833: $00 - Force Break
	BRK                 ; $B834: $00 - Force Break
	ROL $2B,X           ; $B835: $36 $2B - Rotate One Bit Left
	ROL $61,X           ; $B837: $36 $61 - Rotate One Bit Left
	AND ($29),Y         ; $B83B: $31 $29 $35 - AND Memory with Accumulator
	EOR $291A,X         ; $B83E: $5D $1A $29 - Exclusive-OR Memory with Accumulator
	BVC $36             ; $B844: $50 $36 - Branch on Overflow Clear
	ROL $00,X           ; $B846: $36 $00 - Rotate One Bit Left
	AND ($31),Y         ; $B848: $31 $31 $15 - AND Memory with Accumulator
	EOR $7676           ; $B84B: $4D $76 $76 - Exclusive-OR Memory with Accumulator
	ROR $1D2F           ; $B84E: $6E $2F $1D - Rotate One Bit Right
	ADC $0F,X           ; $B853: $75 $0F - Add Memory to Accumulator with Carry
	BRK                 ; $B855: $00 - Force Break
	BRK                 ; $B857: $00 - Force Break
	BRK                 ; $B858: $00 - Force Break
	ADC ($48),Y         ; $B859: $71 $48 $5A - Add Memory to Accumulator with Carry
	ROR $8612,X         ; $B85C: $7E $12 $86 - Rotate One Bit Right
	DEC $59             ; $B860: $C6 $59 - Decrement Memory by One
	AND $1135,Y         ; $B862: $39 $35 $11 - AND Memory with Accumulator
	EOR #$9C            ; $B865: $49 $9C - Exclusive-OR Memory with Accumulator
	CPY $51             ; $B869: $C4 $51 - Compare Memory and Index Y
	PLP                 ; $B86B: $28 - Pull Processor Status from Stack
	INC $B8,X           ; $B86C: $F6 $B8 - Increment Memory by One
	BVS $FC             ; $B86E: $70 $FC - Branch on Overflow Set
	JSR $A9C7           ; $B871: $20 $C7 $A9 - Jump to New Location Saving Return Address
	CLC                 ; $B874: $18 - Clear Carry Flag
	JSR $B889           ; $B875: $20 $89 $B8 - Jump to New Location Saving Return Address
	BNE $09             ; $B878: $D0 $09 - Branch on Result not Zero
	JSR $A9EF           ; $B87A: $20 $EF $A9 - Jump to New Location Saving Return Address
	SEC                 ; $B87D: $38 - Set Carry Flag
	JSR $B889           ; $B87E: $20 $89 $B8 - Jump to New Location Saving Return Address
	BEQ $01             ; $B881: $F0 $01 - Branch on Result Zero
	RTS                 ; $B883: $60 - Return from Subroutine
	LDA #$E9            ; $B884: $A9 $E9 - Load Accumulator with Memory
	JMP $8820           ; $B886: $4C $20 $88 - Jump to New Location
	ROR $DC             ; $B889: $66 $DC - Rotate One Bit Right
	JSR $A114           ; $B88B: $20 $14 $A1 - Jump to New Location Saving Return Address
	CLC #$01            ; $B88E: $29 $01 - Clear Carry Flag
	BEQ $4B             ; $B890: $F0 $4B - Branch on Result Zero
	JSR $FD10           ; $B892: $20 $10 $FD - Jump to New Location Saving Return Address
	BMI $41             ; $B895: $30 $41 - Branch on Result Minus
	BIT $DC             ; $B897: $24 $DC - Test Bits in Memory with Accumulator
	BPL $1A             ; $B899: $10 $1A - Branch on Result Plus
	LDA $4A,X           ; $B89B: $B5 $4A $38 - Load Accumulator with Memory
	SBC #$04            ; $B89E: $E9 $04 - Subtract Memory from Accumulator with Borrow
	PHA                 ; $B8A0: $48 - Push Accumulator on Stack
	LDA $0360,X         ; $B8A1: $BD $60 $03 - Load Accumulator with Memory
	CLC #$F8            ; $B8A4: $29 $F8 - Clear Carry Flag
	PHA                 ; $B8A6: $48 - Push Accumulator on Stack
	LDA $02A0,X         ; $B8A7: $BD $A0 $02 - Load Accumulator with Memory
	BMI $05             ; $B8AA: $30 $05 - Branch on Result Minus
	LDA #$81            ; $B8AC: $A9 $81 - Load Accumulator with Memory
	STA $05EA,Y         ; $B8AE: $99 $EA $05 - Store Accumulator in Memory
	LDA #$EB            ; $B8B1: $A9 $EB - Load Accumulator with Memory
	BNE $18             ; $B8B3: $D0 $18 - Branch on Result not Zero
	LDA $4A,X           ; $B8B5: $B5 $4A $29 - Load Accumulator with Memory
	SED                 ; $B8B8: $F8 - Set Decimal Flag
	PHA                 ; $B8B9: $48 - Push Accumulator on Stack
	LDA $0360,X         ; $B8BA: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $B8BD: $38 - Set Carry Flag
	SBC #$04            ; $B8BE: $E9 $04 - Subtract Memory from Accumulator with Borrow
	PHA                 ; $B8C0: $48 - Push Accumulator on Stack
	LDA $0260,X         ; $B8C1: $BD $60 $02 - Load Accumulator with Memory
	BMI $05             ; $B8C4: $30 $05 - Branch on Result Minus
	LDA #$41            ; $B8C6: $A9 $41 - Load Accumulator with Memory
	STA $05EA,Y         ; $B8C8: $99 $EA $05 - Store Accumulator in Memory
	LDA #$EA            ; $B8CB: $A9 $EA - Load Accumulator with Memory
	STA $05E5,Y         ; $B8CD: $99 $E5 $05 - Store Accumulator in Memory
	PLA                 ; $B8D0: $68 - Pull Accumulator from Stack
	STA $05E0,Y         ; $B8D1: $99 $E0 $05 - Store Accumulator in Memory
	PLA                 ; $B8D4: $68 - Pull Accumulator from Stack
	STA $05DB,Y         ; $B8D5: $99 $DB $05 - Store Accumulator in Memory
	JSR $8833           ; $B8D8: $20 $33 $88 - Jump to New Location Saving Return Address
	LDA #$01            ; $B8DB: $A9 $01 - Load Accumulator with Memory
	RTS                 ; $B8DD: $60 - Return from Subroutine
	CLV                 ; $B8DE: $B8 - Clear Overflow Flag
	SBC ($D9,X)         ; $B8DF: $E1 $D9 $6F - Subtract Memory from Accumulator with Borrow
	JSR $87E9           ; $B8E2: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $05             ; $B8E5: $D0 $05 - Branch on Result not Zero
	LDA #$F5            ; $B8E7: $A9 $F5 - Load Accumulator with Memory
	JSR $CD43           ; $B8E9: $20 $43 $CD - Jump to New Location Saving Return Address
	JSR $8C68           ; $B8EC: $20 $68 $8C - Jump to New Location Saving Return Address
	RTS                 ; $B8EF: $60 - Return from Subroutine
	LDA #$03            ; $B8F0: $A9 $03 - Load Accumulator with Memory
	STA $72             ; $B8F2: $85 $72 - Store Accumulator in Memory
	JSR $D951           ; $B8F4: $20 $51 $D9 - Jump to New Location Saving Return Address
	LDX #$00            ; $B8F7: $A2 $00 - Load Index X with Memory
	STX $77             ; $B8F9: $86 $77 - Store Index X in Memory
	DEX                 ; $B8FB: $CA - Decrement Index X by One
	STX $70             ; $B8FC: $86 $70 - Store Index X in Memory
	JSR $F2B4           ; $B8FE: $20 $B4 $F2 - Jump to New Location Saving Return Address
	LDY $03             ; $B901: $A4 $03 - Load Index Y with Memory
	LDA #$01            ; $B903: $A9 $01 - Load Accumulator with Memory
	STA $0073,Y         ; $B905: $99 $73 $00 - Store Accumulator in Memory
	STA $0440,Y         ; $B908: $99 $40 $04 - Store Accumulator in Memory
	DEY                 ; $B90B: $88 - Decrement Index Y by One
	BPL $F5             ; $B90C: $10 $F5 - Branch on Result Plus
	JMP $D616           ; $B90E: $4C $16 $D6 - Jump to New Location
	JSR $97F6           ; $B911: $20 $F6 $97 - Jump to New Location Saving Return Address
	LDA #$18            ; $B914: $A9 $18 - Load Accumulator with Memory
	JSR $980F           ; $B916: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $D7B2           ; $B919: $20 $B2 $D7 - Jump to New Location Saving Return Address
	JSR $C512           ; $B91C: $20 $12 $C5 - Jump to New Location Saving Return Address
	LDA #$01            ; $B91F: $A9 $01 - Load Accumulator with Memory
	STA $71             ; $B921: $85 $71 - Store Accumulator in Memory
	LDA $FE             ; $B923: $A5 $FE - Load Accumulator with Memory
	ORA #$08            ; $B925: $09 $08 - OR Memory with Accumulator
	STA $FE             ; $B927: $85 $FE - Store Accumulator in Memory
	STA $2000           ; $B929: $8D $00 $20 - Store Accumulator in Memory
	RTS                 ; $B92C: $60 - Return from Subroutine
	LDY $71             ; $B92D: $A4 $71 - Load Index Y with Memory
	LDA $B93F,Y         ; $B92F: $B9 $3F $B9 - Load Accumulator with Memory
	PHA                 ; $B932: $48 - Push Accumulator on Stack
	LDA $B938,Y         ; $B933: $B9 $38 $B9 - Load Accumulator with Memory
	PHA                 ; $B936: $48 - Push Accumulator on Stack
	RTS                 ; $B937: $60 - Return from Subroutine
	SBC $C645,Y         ; $B938: $F9 $45 $C6 - Subtract Memory from Accumulator with Borrow
	ORA ($5A),Y         ; $B93C: $11 $5A $FF - OR Memory with Accumulator
	LDA $BAB9,Y         ; $B93F: $B9 $B9 $BA - Load Accumulator with Memory
	LDA $BABA,Y         ; $B942: $B9 $BA $BA - Load Accumulator with Memory
	LDA $E4             ; $B946: $A5 $E4 - Load Accumulator with Memory
	CLC #$10            ; $B948: $29 $10 - Clear Carry Flag
	BEQ $1C             ; $B94A: $F0 $1C - Branch on Result Zero
	LDA #$17            ; $B94C: $A9 $17 - Load Accumulator with Memory
	JSR $980F           ; $B94E: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $97E9           ; $B951: $20 $E9 $97 - Jump to New Location Saving Return Address
	LDA #$02            ; $B954: $A9 $02 - Load Accumulator with Memory
	STA $71             ; $B956: $85 $71 - Store Accumulator in Memory
	JSR $D7B2           ; $B958: $20 $B2 $D7 - Jump to New Location Saving Return Address
	JSR $C512           ; $B95B: $20 $12 $C5 - Jump to New Location Saving Return Address
	LDA $FE             ; $B95E: $A5 $FE - Load Accumulator with Memory
	CLC #$F7            ; $B960: $29 $F7 - Clear Carry Flag
	STA $FE             ; $B962: $85 $FE - Store Accumulator in Memory
	STA $2000           ; $B964: $8D $00 $20 - Store Accumulator in Memory
	RTS                 ; $B967: $60 - Return from Subroutine
	JSR $BAF6           ; $B968: $20 $F6 $BA - Jump to New Location Saving Return Address
	JSR $8E61           ; $B96B: $20 $61 $8E - Jump to New Location Saving Return Address
	LDA $E9             ; $B96E: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $B970: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	LDA $7A             ; $B973: $A5 $7A - Load Accumulator with Memory
	BEQ $37             ; $B975: $F0 $37 - Branch on Result Zero
	LDY $02             ; $B977: $A4 $02 - Load Index Y with Memory
	BEQ $19             ; $B979: $F0 $19 - Branch on Result Zero
	CMP #$28            ; $B97B: $C9 $28 - Compare Memory with Accumulator
	BCS $15             ; $B97D: $B0 $15 - Branch on Carry Set
	CLC #$06            ; $B97F: $29 $06 - Clear Carry Flag
	LSR A               ; $B981: $4A $AA - Shift One Bit Right (Memory or Accumulator)
	LDA $0200,X         ; $B983: $BD $00 $02 - Load Accumulator with Memory
	BEQ $0C             ; $B986: $F0 $0C - Branch on Result Zero
	LDA $88,X           ; $B988: $B5 $88 $C9 - Load Accumulator with Memory
	BCS $06             ; $B98C: $B0 $06 - Branch on Carry Set
	JSR $9809           ; $B98E: $20 $09 $98 - Jump to New Location Saving Return Address
	JSR $CFF4           ; $B991: $20 $F4 $CF - Jump to New Location Saving Return Address
	DEC $7A             ; $B994: $C6 $7A - Decrement Memory by One
	BNE $16             ; $B996: $D0 $16 - Branch on Result not Zero
	LDA $77             ; $B998: $A5 $77 - Load Accumulator with Memory
	BNE $12             ; $B99A: $D0 $12 - Branch on Result not Zero
	LDA $72             ; $B99C: $A5 $72 - Load Accumulator with Memory
	CLC                 ; $B99E: $18 - Clear Carry Flag
	LDY #$99            ; $B99F: $A0 $99 - Load Index Y with Memory
	JSR $8E2F           ; $B9A1: $20 $2F $8E - Jump to New Location Saving Return Address
	STA $72             ; $B9A4: $85 $72 - Store Accumulator in Memory
	BMI $03             ; $B9A6: $30 $03 - Branch on Result Minus
	JMP $D616           ; $B9A8: $4C $16 $D6 - Jump to New Location
	JMP $FA96           ; $B9AB: $4C $96 $FA - Jump to New Location
	LDY $77             ; $B9AE: $A4 $77 - Load Index Y with Memory
	BEQ $0C             ; $B9B0: $F0 $0C - Branch on Result Zero
	DEC $77             ; $B9B2: $C6 $77 - Decrement Memory by One
	BNE $08             ; $B9B4: $D0 $08 - Branch on Result not Zero
	JSR $F2B4           ; $B9B6: $20 $B4 $F2 - Jump to New Location Saving Return Address
	INC $BC             ; $B9B9: $E6 $BC - Increment Memory by One
	JMP $D616           ; $B9BB: $4C $16 $D6 - Jump to New Location
	TYA                 ; $B9BE: $98 - Transfer Index Y to Accumulator
	ORA $7A             ; $B9BF: $05 $7A - OR Memory with Accumulator
	BNE $17             ; $B9C1: $D0 $17 - Branch on Result not Zero
	LDA $79             ; $B9C3: $A5 $79 - Load Accumulator with Memory
	BEQ $13             ; $B9C5: $F0 $13 - Branch on Result Zero
	DEC $79             ; $B9C7: $C6 $79 - Decrement Memory by One
	LDA $CC             ; $B9C9: $A5 $CC - Load Accumulator with Memory
	SBC #$18            ; $B9CB: $E9 $18 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $B9CD: $A8 - Transfer Accumulator to Index Y
	JSR $9FDE           ; $B9CE: $20 $DE $9F - Jump to New Location Saving Return Address
	CLC #$3F            ; $B9D1: $29 $3F - Clear Carry Flag
	ADC #$60            ; $B9D3: $69 $60 - Add Memory to Accumulator with Carry
	LDX #$2A            ; $B9D5: $A2 $2A - Load Index X with Memory
	JSR $A8E3           ; $B9D7: $20 $E3 $A8 - Jump to New Location Saving Return Address
	LDA $BC             ; $B9DA: $A5 $BC - Load Accumulator with Memory
	CMP #$0B            ; $B9DC: $C9 $0B - Compare Memory with Accumulator
	BNE $07             ; $B9DE: $D0 $07 - Branch on Result not Zero
	LDA $77             ; $B9E0: $A5 $77 - Load Accumulator with Memory
	BEQ $03             ; $B9E2: $F0 $03 - Branch on Result Zero
	JSR $9871           ; $B9E4: $20 $71 $98 - Jump to New Location Saving Return Address
	BIT $D1             ; $B9E7: $24 $D1 - Test Bits in Memory with Accumulator
	BPL $07             ; $B9E9: $10 $07 - Branch on Result Plus
	LDA $CF             ; $B9EB: $A5 $CF - Load Accumulator with Memory
	CLC                 ; $B9ED: $18 - Clear Carry Flag
	ADC #$04            ; $B9EE: $69 $04 - Add Memory to Accumulator with Carry
	STA $CF             ; $B9F0: $85 $CF - Store Accumulator in Memory
	RTS                 ; $B9F2: $60 - Return from Subroutine
	LDA #$01            ; $B9F3: $A9 $01 - Load Accumulator with Memory
	STA $71             ; $B9F5: $85 $71 - Store Accumulator in Memory
	JMP $F2F0           ; $B9F7: $4C $F0 $F2 - Jump to New Location
	LDY $0567           ; $B9FA: $AC $67 $05 - Load Index Y with Memory
	LDA $BA0C,Y         ; $B9FD: $B9 $0C $BA - Load Accumulator with Memory
	PHA                 ; $BA00: $48 - Push Accumulator on Stack
	LDA $BA06,Y         ; $BA01: $B9 $06 $BA - Load Accumulator with Memory
	PHA                 ; $BA04: $48 - Push Accumulator on Stack
	RTS                 ; $BA05: $60 - Return from Subroutine
	CMP #$77            ; $BA07: $C9 $77 - Compare Memory with Accumulator
	CMP ($DB),Y         ; $BA09: $D1 $DB $FF - Compare Memory with Accumulator
	LDX $FA             ; $BA0C: $A6 $FA - Load Index X with Memory
	SBC ($AD),Y         ; $BA0F: $F1 $AD $FF - Subtract Memory from Accumulator with Borrow
	LDA #$00            ; $BA12: $A9 $00 - Load Accumulator with Memory
	STA $7A             ; $BA14: $85 $7A - Store Accumulator in Memory
	LDX #$03            ; $BA16: $A2 $03 - Load Index X with Memory
	LDA $88,X           ; $BA18: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$B0            ; $BA1B: $09 $B0 - OR Memory with Accumulator
	LDA #$04            ; $BA1E: $A9 $04 - Load Accumulator with Memory
	STA $88,X           ; $BA20: $95 $88 - Store Accumulator in Memory
	LDA #$A0            ; $BA22: $A9 $A0 - Load Accumulator with Memory
	LDY #$9D            ; $BA24: $A0 $9D - Load Index Y with Memory
	JSR $F9FE           ; $BA26: $20 $FE $F9 - Jump to New Location Saving Return Address
	TXA                 ; $BA29: $8A - Transfer Index X to Accumulator
	ASL A               ; $BA2A: $0A - Shift Left One Bit
	ASL A               ; $BA2B: $0A - Shift Left One Bit
	ASL A               ; $BA2C: $0A - Shift Left One Bit
	CLC                 ; $BA2D: $18 - Clear Carry Flag
	ADC #$73            ; $BA2E: $69 $73 - Add Memory to Accumulator with Carry
	LDY #$2C            ; $BA30: $A0 $2C - Load Index Y with Memory
	JSR $CFB3           ; $BA32: $20 $B3 $CF - Jump to New Location Saving Return Address
	DEX                 ; $BA35: $CA - Decrement Index X by One
	BPL $E0             ; $BA36: $10 $E0 - Branch on Result Plus
	JSR $BAF6           ; $BA38: $20 $F6 $BA - Jump to New Location Saving Return Address
	LDA $E9             ; $BA3B: $A5 $E9 - Load Accumulator with Memory
	CLC #$0F            ; $BA3D: $29 $0F - Clear Carry Flag
	BNE $B1             ; $BA3F: $D0 $B1 - Branch on Result not Zero
	DEC $77             ; $BA41: $C6 $77 - Decrement Memory by One
	LDY $77             ; $BA43: $A4 $77 - Load Index Y with Memory
	BMI $0F             ; $BA45: $30 $0F - Branch on Result Minus
	LDA $0073,Y         ; $BA47: $B9 $73 $00 - Load Accumulator with Memory
	BEQ $F5             ; $BA4A: $F0 $F5 - Branch on Result Zero
	LDA $0088,Y         ; $BA4C: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $BA4F: $C9 $09 - Compare Memory with Accumulator
	BCC $EE             ; $BA51: $90 $EE - Branch on Carry Clear
	JMP $C428           ; $BA53: $4C $28 $C4 - Jump to New Location
	INC $77             ; $BA56: $E6 $77 - Increment Memory by One
	INC $71             ; $BA58: $E6 $71 - Increment Memory by One
	RTS                 ; $BA5A: $60 - Return from Subroutine
	LDY #$03            ; $BA5B: $A0 $03 - Load Index Y with Memory
	STY $78             ; $BA5D: $84 $78 - Sore Index Y in Memory
	LDA $0200,Y         ; $BA5F: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $07             ; $BA62: $F0 $07 - Branch on Result Zero
	LDA $0088,Y         ; $BA64: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$04            ; $BA67: $C9 $04 - Compare Memory with Accumulator
	BNE $20             ; $BA69: $D0 $20 - Branch on Result not Zero
	DEY                 ; $BA6B: $88 - Decrement Index Y by One
	BPL $F1             ; $BA6C: $10 $F1 - Branch on Result Plus
	LDA #$02            ; $BA6E: $A9 $02 - Load Accumulator with Memory
	JSR $F501           ; $BA70: $20 $01 $F5 - Jump to New Location Saving Return Address
	LDY #$00            ; $BA73: $A0 $00 - Load Index Y with Memory
	LDX #$03            ; $BA75: $A2 $03 - Load Index X with Memory
	LDA $73,X           ; $BA77: $B5 $73 $F0 - Load Accumulator with Memory
	LDA $0360,X         ; $BA7B: $BD $60 $03 - Load Accumulator with Memory
	CMP #$BC            ; $BA7E: $C9 $BC - Compare Memory with Accumulator
	BEQ $04             ; $BA80: $F0 $04 - Branch on Result Zero
	DEC $0360,X         ; $BA82: $DE $60 $03 - Decrement Memory by One
	INY                 ; $BA85: $C8 - Increment Index Y by One
	DEX                 ; $BA86: $CA - Decrement Index X by One
	BPL $EE             ; $BA87: $10 $EE - Branch on Result Plus
	STY $78             ; $BA89: $84 $78 - Sore Index Y in Memory
	JSR $BAF9           ; $BA8B: $20 $F9 $BA - Jump to New Location Saving Return Address
	LDY $78             ; $BA8E: $A4 $78 - Load Index Y with Memory
	BNE $34             ; $BA90: $D0 $34 - Branch on Result not Zero
	JSR $F4EF           ; $BA92: $20 $EF $F4 - Jump to New Location Saving Return Address
	BCC $2F             ; $BA95: $90 $2F - Branch on Carry Clear
	JSR $C51E           ; $BA97: $20 $1E $C5 - Jump to New Location Saving Return Address
	LDA #$2A            ; $BA9A: $A9 $2A - Load Accumulator with Memory
	STA $2A             ; $BA9C: $85 $2A - Store Accumulator in Memory
	LDA #$11            ; $BA9E: $A9 $11 - Load Accumulator with Memory
	STA $29             ; $BAA0: $85 $29 - Store Accumulator in Memory
	LDA #$00            ; $BAA2: $A9 $00 - Load Accumulator with Memory
	STA $04F4           ; $BAA4: $8D $F4 $04 - Store Accumulator in Memory
	LDA #$90            ; $BAA7: $A9 $90 - Load Accumulator with Memory
	LDY #$9F            ; $BAA9: $A0 $9F - Load Index Y with Memory
	JSR $C527           ; $BAAB: $20 $27 $C5 - Jump to New Location Saving Return Address
	JSR $C51E           ; $BAAE: $20 $1E $C5 - Jump to New Location Saving Return Address
	LDA #$13            ; $BAB1: $A9 $13 - Load Accumulator with Memory
	STA $06C7           ; $BAB3: $8D $C7 $06 - Store Accumulator in Memory
	STA $06C8           ; $BAB6: $8D $C8 $06 - Store Accumulator in Memory
	LDX #$03            ; $BAB9: $A2 $03 - Load Index X with Memory
	LDA #$00            ; $BABB: $A9 $00 - Load Accumulator with Memory
	STA $88,X           ; $BABD: $95 $88 - Store Accumulator in Memory
	DEX                 ; $BABF: $CA - Decrement Index X by One
	BPL $F9             ; $BAC0: $10 $F9 - Branch on Result Plus
	LDA #$01            ; $BAC2: $A9 $01 - Load Accumulator with Memory
	STA $71             ; $BAC4: $85 $71 - Store Accumulator in Memory
	RTS                 ; $BAC6: $60 - Return from Subroutine
	LDA $E4             ; $BAC7: $A5 $E4 - Load Accumulator with Memory
	CLC #$10            ; $BAC9: $29 $10 - Clear Carry Flag
	BEQ $03             ; $BACB: $F0 $03 - Branch on Result Zero
	JMP $B911           ; $BACD: $4C $11 $B9 - Jump to New Location
	LDY #$00            ; $BAD0: $A0 $00 - Load Index Y with Memory
	LDX #$5F            ; $BAD2: $A2 $5F - Load Index X with Memory
	LDA $EE67,Y         ; $BAD4: $B9 $67 $EE - Load Accumulator with Memory
	BPL $17             ; $BAD7: $10 $17 - Branch on Result Plus
	JSR $F061           ; $BAD9: $20 $61 $F0 - Jump to New Location Saving Return Address
	TYA                 ; $BADC: $98 - Transfer Index Y to Accumulator
	PHA                 ; $BADD: $48 - Push Accumulator on Stack
	LDA #$74            ; $BADE: $A9 $74 - Load Accumulator with Memory
	CLC                 ; $BAE0: $18 - Clear Carry Flag
	ADC $CC             ; $BAE1: $65 $CC - Add Memory to Accumulator with Carry
	TAY                 ; $BAE3: $A8 - Transfer Accumulator to Index Y
	TXA                 ; $BAE4: $8A - Transfer Index X to Accumulator
	ADC #$0A            ; $BAE5: $69 $0A - Add Memory to Accumulator with Carry
	TAX                 ; $BAE7: $AA - Transfer Accumulator to Index X
	JSR $F040           ; $BAE8: $20 $40 $F0 - Jump to New Location Saving Return Address
	PLA                 ; $BAEB: $68 - Pull Accumulator from Stack
	TAY                 ; $BAEC: $A8 - Transfer Accumulator to Index Y
	INY                 ; $BAED: $C8 - Increment Index Y by One
	BNE $E4             ; $BAEE: $D0 $E4 - Branch on Result not Zero
	JSR $D7A1           ; $BAF0: $20 $A1 $D7 - Jump to New Location Saving Return Address
	JMP $C0D4           ; $BAF3: $4C $D4 $C0 - Jump to New Location
	JSR $F4BB           ; $BAF6: $20 $BB $F4 - Jump to New Location Saving Return Address
	JSR $EE6D           ; $BAF9: $20 $6D $EE - Jump to New Location Saving Return Address
	JSR $A944           ; $BAFC: $20 $44 $A9 - Jump to New Location Saving Return Address
	LDX #$07            ; $BAFF: $A2 $07 - Load Index X with Memory
	LDA $05A8,X         ; $BB01: $BD $A8 $05 - Load Accumulator with Memory
	BEQ $5B             ; $BB04: $F0 $5B - Branch on Result Zero
	LDY $05B8,X         ; $BB06: $BC $B8 $05 - Load Index Y with Memory
	LDA $F203,Y         ; $BB09: $B9 $03 $F2 - Load Accumulator with Memory
	STA $10             ; $BB0C: $85 $10 - Store Accumulator in Memory
	LDA #$00            ; $BB0E: $A9 $00 - Load Accumulator with Memory
	CPY #$05            ; $BB10: $C0 $05 - Compare Memory and Index Y
	BNE $02             ; $BB12: $D0 $02 - Branch on Result not Zero
	LDA #$FA            ; $BB14: $A9 $FA - Load Accumulator with Memory
	STA $11             ; $BB16: $85 $11 - Store Accumulator in Memory
	LDY $AC             ; $BB18: $A4 $AC - Load Index Y with Memory
	LDA $05B0,X         ; $BB1A: $BD $B0 $05 - Load Accumulator with Memory
	CLC                 ; $BB1D: $18 - Clear Carry Flag
	SBC $CC             ; $BB1E: $E5 $CC - Subtract Memory from Accumulator with Borrow
	STA $0700,Y         ; $BB20: $99 $00 $07 - Store Accumulator in Memory
	LDA #$00            ; $BB23: $A9 $00 - Load Accumulator with Memory
	STA $0702,Y         ; $BB25: $99 $02 $07 - Store Accumulator in Memory
	LDA $E9             ; $BB28: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $BB2A: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	LDA $10             ; $BB2D: $A5 $10 - Load Accumulator with Memory
	STA $0701,Y         ; $BB2F: $99 $01 $07 - Store Accumulator in Memory
	LDA $05A8,X         ; $BB32: $BD $A8 $05 - Load Accumulator with Memory
	JMP $BB43           ; $BB35: $4C $43 $BB - Jump to New Location
	LDA $11             ; $BB38: $A5 $11 - Load Accumulator with Memory
	STA $0701,Y         ; $BB3A: $99 $01 $07 - Store Accumulator in Memory
	LDA $05A8,X         ; $BB3D: $BD $A8 $05 - Load Accumulator with Memory
	CLC                 ; $BB40: $18 - Clear Carry Flag
	ADC #$08            ; $BB41: $69 $08 - Add Memory to Accumulator with Carry
	STA $0703,Y         ; $BB43: $99 $03 $07 - Store Accumulator in Memory
	TYA                 ; $BB46: $98 - Transfer Index Y to Accumulator
	CLC                 ; $BB47: $18 - Clear Carry Flag
	ADC $AD             ; $BB48: $65 $AD - Add Memory to Accumulator with Carry
	STA $AC             ; $BB4A: $85 $AC - Store Accumulator in Memory
	LDA $E9             ; $BB4C: $A5 $E9 - Load Accumulator with Memory
	CLC #$03            ; $BB4E: $29 $03 - Clear Carry Flag
	CMP #$03            ; $BB50: $C9 $03 - Compare Memory with Accumulator
	BNE $03             ; $BB52: $D0 $03 - Branch on Result not Zero
	DEC $05B0,X         ; $BB54: $DE $B0 $05 - Decrement Memory by One
	DEC $05C0,X         ; $BB57: $DE $C0 $05 - Decrement Memory by One
	BNE $05             ; $BB5A: $D0 $05 - Branch on Result not Zero
	LDA #$00            ; $BB5C: $A9 $00 - Load Accumulator with Memory
	STA $05A8,X         ; $BB5E: $9D $A8 $05 - Store Accumulator in Memory
	DEX                 ; $BB61: $CA - Decrement Index X by One
	BPL $9D             ; $BB62: $10 $9D - Branch on Result Plus
	JSR $FD26           ; $BB64: $20 $26 $FD - Jump to New Location Saving Return Address
	JSR $D7A1           ; $BB67: $20 $A1 $D7 - Jump to New Location Saving Return Address
	LDY $22             ; $BB6A: $A4 $22 - Load Index Y with Memory
	CPY $23             ; $BB6C: $C4 $23 - Compare Memory and Index Y
	BEQ $0B             ; $BB6E: $F0 $0B - Branch on Result Zero
	LDA $82             ; $BB70: $A5 $82 - Load Accumulator with Memory
	BNE $07             ; $BB72: $D0 $07 - Branch on Result not Zero
	LDA #$4E            ; $BB74: $A9 $4E - Load Accumulator with Memory
	LDY #$9B            ; $BB76: $A0 $9B - Load Index Y with Memory
	JSR $C527           ; $BB78: $20 $27 $C5 - Jump to New Location Saving Return Address
	JMP $C0D4           ; $BB7B: $4C $D4 $C0 - Jump to New Location
	STA ($C9,X)         ; $BB7F: $81 $C9 $00 - Store Accumulator in Memory
	LDA $02E0,X         ; $BB82: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $BB85: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	JSR $A9D9           ; $BB88: $20 $D9 $A9 - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $BB8B: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $BB8E: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $BB90: $A8 - Transfer Accumulator to Index Y
	LDA $BB9A,Y         ; $BB91: $B9 $9A $BB - Load Accumulator with Memory
	JSR $CD43           ; $BB94: $20 $43 $CD - Jump to New Location Saving Return Address
	JMP $8C62           ; $BB97: $4C $62 $8C - Jump to New Location
	INX                 ; $BB9A: $E8 - Increment Index X by One
	INC $BB             ; $BB9C: $E6 $BB - Increment Memory by One
	CMP ($BB,X)         ; $BB9E: $C1 $BB $A2 - Compare Memory with Accumulator
	JSR $D98D           ; $BBA3: $20 $8D $D9 - Jump to New Location Saving Return Address
	LDA #$2C            ; $BBA6: $A9 $2C - Load Accumulator with Memory
	STA $9A             ; $BBA8: $85 $9A - Store Accumulator in Memory
	LDA #$28            ; $BBAA: $A9 $28 - Load Accumulator with Memory
	STA $9B             ; $BBAC: $85 $9B - Store Accumulator in Memory
	STA $9E             ; $BBAE: $85 $9E - Store Accumulator in Memory
	BIT $6F             ; $BBB0: $24 $6F - Test Bits in Memory with Accumulator
	BVC $03             ; $BBB2: $50 $03 - Branch on Overflow Clear
	INC $0380,X         ; $BBB4: $FE $80 $03 - Increment Memory by One
	LDY #$1D            ; $BBB7: $A0 $1D - Load Index Y with Memory
	LDA #$01            ; $BBB9: $A9 $01 - Load Accumulator with Memory
	STA $0132,Y         ; $BBBB: $99 $32 $01 - Store Accumulator in Memory
	DEY                 ; $BBBE: $88 - Decrement Index Y by One
	BPL $FA             ; $BBBF: $10 $FA - Branch on Result Plus
	RTS                 ; $BBC1: $60 - Return from Subroutine
	STX $9D             ; $BBC2: $86 $9D - Store Index X in Memory
	LDA $A1             ; $BBC4: $A5 $A1 - Load Accumulator with Memory
	BNE $06             ; $BBC6: $D0 $06 - Branch on Result not Zero
	JSR $D9A3           ; $BBC8: $20 $A3 $D9 - Jump to New Location Saving Return Address
	BCS $01             ; $BBCB: $B0 $01 - Branch on Carry Set
	RTS                 ; $BBCD: $60 - Return from Subroutine
	LDA $6F             ; $BBCE: $A5 $6F - Load Accumulator with Memory
	ROL A               ; $BBD0: $2A - Rotate One Bit Left
	ROL A               ; $BBD1: $2A - Rotate One Bit Left
	LDA $A3             ; $BBD2: $A5 $A3 - Load Accumulator with Memory
	CLC #$01            ; $BBD4: $29 $01 - Clear Carry Flag
	ROL A               ; $BBD6: $2A - Rotate One Bit Left
	TAY                 ; $BBD7: $A8 - Transfer Accumulator to Index Y
	LDA $BCC4,Y         ; $BBD8: $B9 $C4 $BC - Load Accumulator with Memory
	STA $DC             ; $BBDB: $85 $DC - Store Accumulator in Memory
	LDA $0C             ; $BBDD: $A5 $0C - Load Accumulator with Memory
	CLC #$03            ; $BBDF: $29 $03 - Clear Carry Flag
	STA $DD             ; $BBE1: $85 $DD - Store Accumulator in Memory
	LDY #$FF            ; $BBE3: $A0 $FF - Load Index Y with Memory
	LDA $0C             ; $BBE5: $A5 $0C - Load Accumulator with Memory
	CLC #$3F            ; $BBE7: $29 $3F - Clear Carry Flag
	BNE $07             ; $BBE9: $D0 $07 - Branch on Result not Zero
	JSR $9FDE           ; $BBEB: $20 $DE $9F - Jump to New Location Saving Return Address
	LSR A               ; $BBEE: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $BBF1: $A8 - Transfer Accumulator to Index Y
	STY $E0             ; $BBF2: $84 $E0 - Sore Index Y in Memory
	LDA #$05            ; $BBF4: $A9 $05 - Load Accumulator with Memory
	STA $DB             ; $BBF6: $85 $DB - Store Accumulator in Memory
	LDA #$00            ; $BBF8: $A9 $00 - Load Accumulator with Memory
	STA $DE             ; $BBFA: $85 $DE - Store Accumulator in Memory
	STA $DF             ; $BBFC: $85 $DF - Store Accumulator in Memory
	LDA $9B             ; $BBFE: $A5 $9B - Load Accumulator with Memory
	STA $0360,X         ; $BC00: $9D $60 $03 - Store Accumulator in Memory
	LDA #$06            ; $BC03: $A9 $06 - Load Accumulator with Memory
	STA $DA             ; $BC05: $85 $DA - Store Accumulator in Memory
	LDA $9A             ; $BC07: $A5 $9A - Load Accumulator with Memory
	STA $4A,X           ; $BC09: $95 $4A - Store Accumulator in Memory
	LDY $DE             ; $BC0B: $A4 $DE - Load Index Y with Memory
	LDA $0132,Y         ; $BC0D: $B9 $32 $01 - Load Accumulator with Memory
	BEQ $36             ; $BC10: $F0 $36 - Branch on Result Zero
	LDA $0360,X         ; $BC12: $BD $60 $03 - Load Accumulator with Memory
	CMP #$9C            ; $BC15: $C9 $9C - Compare Memory with Accumulator
	BCC $0B             ; $BC17: $90 $0B - Branch on Carry Clear
	LDA #$00            ; $BC19: $A9 $00 - Load Accumulator with Memory
	STA $0132,Y         ; $BC1B: $99 $32 $01 - Store Accumulator in Memory
	JSR $8B2C           ; $BC1E: $20 $2C $8B - Jump to New Location Saving Return Address
	JMP $BC48           ; $BC21: $4C $48 $BC - Jump to New Location
	LDA $DF             ; $BC24: $A5 $DF - Load Accumulator with Memory
	CMP $E0             ; $BC26: $C5 $E0 - Compare Memory with Accumulator
	BNE $09             ; $BC28: $D0 $09 - Branch on Result not Zero
	LDA $9C             ; $BC2A: $A5 $9C - Load Accumulator with Memory
	BEQ $05             ; $BC2C: $F0 $05 - Branch on Result Zero
	LDA #$37            ; $BC2E: $A9 $37 - Load Accumulator with Memory
	JSR $8B2E           ; $BC30: $20 $2E $8B - Jump to New Location Saving Return Address
	INC $DF             ; $BC33: $E6 $DF - Increment Memory by One
	LDA $DC             ; $BC35: $A5 $DC - Load Accumulator with Memory
	JSR $CD43           ; $BC37: $20 $43 $CD - Jump to New Location Saving Return Address
	DEC $DD             ; $BC3A: $C6 $DD - Decrement Memory by One
	BPL $0A             ; $BC3C: $10 $0A - Branch on Result Plus
	JSR $A211           ; $BC3E: $20 $11 $A2 - Jump to New Location Saving Return Address
	JSR $BCD7           ; $BC41: $20 $D7 $BC - Jump to New Location Saving Return Address
	LDA #$03            ; $BC44: $A9 $03 - Load Accumulator with Memory
	STA $DD             ; $BC46: $85 $DD - Store Accumulator in Memory
	INC $DE             ; $BC48: $E6 $DE - Increment Memory by One
	LDA $4A,X           ; $BC4A: $B5 $4A $18 - Load Accumulator with Memory
	ADC #$1D            ; $BC4D: $69 $1D - Add Memory to Accumulator with Carry
	STA $4A,X           ; $BC4F: $95 $4A - Store Accumulator in Memory
	DEC $DA             ; $BC51: $C6 $DA - Decrement Memory by One
	BNE $B6             ; $BC53: $D0 $B6 - Branch on Result not Zero
	LDA $0360,X         ; $BC55: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $BC58: $18 - Clear Carry Flag
	ADC #$14            ; $BC59: $69 $14 - Add Memory to Accumulator with Carry
	STA $0360,X         ; $BC5B: $9D $60 $03 - Store Accumulator in Memory
	DEC $DB             ; $BC5E: $C6 $DB - Decrement Memory by One
	BNE $A1             ; $BC60: $D0 $A1 - Branch on Result not Zero
	DEC $9E             ; $BC62: $C6 $9E - Decrement Memory by One
	BNE $43             ; $BC64: $D0 $43 - Branch on Result not Zero
	LDY $A3             ; $BC66: $A4 $A3 - Load Index Y with Memory
	INC $A3             ; $BC68: $E6 $A3 - Increment Memory by One
	CPY #$1F            ; $BC6A: $C0 $1F - Compare Memory and Index Y
	BEQ $0F             ; $BC6C: $F0 $0F - Branch on Result Zero
	CPY #$0F            ; $BC6E: $C0 $0F - Compare Memory and Index Y
	BEQ $0F             ; $BC70: $F0 $0F - Branch on Result Zero
	BCS $19             ; $BC72: $B0 $19 - Branch on Carry Set
	LDA $9A             ; $BC74: $A5 $9A - Load Accumulator with Memory
	CLC                 ; $BC76: $18 - Clear Carry Flag
	ADC #$02            ; $BC77: $69 $02 - Add Memory to Accumulator with Carry
	STA $9A             ; $BC79: $85 $9A - Store Accumulator in Memory
	BNE $17             ; $BC7B: $D0 $17 - Branch on Result not Zero
	LDA #$00            ; $BC7D: $A9 $00 - Load Accumulator with Memory
	STA $A3             ; $BC7F: $85 $A3 - Store Accumulator in Memory
	JSR $A872           ; $BC81: $20 $72 $A8 - Jump to New Location Saving Return Address
	LDA $9B             ; $BC84: $A5 $9B - Load Accumulator with Memory
	CLC                 ; $BC86: $18 - Clear Carry Flag
	ADC #$08            ; $BC87: $69 $08 - Add Memory to Accumulator with Carry
	STA $9B             ; $BC89: $85 $9B - Store Accumulator in Memory
	BNE $07             ; $BC8B: $D0 $07 - Branch on Result not Zero
	LDA $9A             ; $BC8D: $A5 $9A - Load Accumulator with Memory
	SEC                 ; $BC8F: $38 - Set Carry Flag
	SBC #$02            ; $BC90: $E9 $02 - Subtract Memory from Accumulator with Borrow
	STA $9A             ; $BC92: $85 $9A - Store Accumulator in Memory
	LDA #$10            ; $BC94: $A9 $10 - Load Accumulator with Memory
	LDY $DF             ; $BC96: $A4 $DF - Load Index Y with Memory
	CPY #$15            ; $BC98: $C0 $15 - Compare Memory and Index Y
	BCS $01             ; $BC9A: $B0 $01 - Branch on Carry Set
	LSR A               ; $BC9C: $4A $C0 - Shift One Bit Right (Memory or Accumulator)
	BCS $01             ; $BC9F: $B0 $01 - Branch on Carry Set
	LSR A               ; $BCA1: $4A $C0 - Shift One Bit Right (Memory or Accumulator)
	ASL $B0             ; $BCA3: $06 $B0 - Shift Left One Bit
	ORA ($4A,X)         ; $BCA5: $01 $4A $85 - OR Memory with Accumulator
	LDA $DF             ; $BCA9: $A5 $DF - Load Accumulator with Memory
	BNE $16             ; $BCAB: $D0 $16 - Branch on Result not Zero
	LDA $9C             ; $BCAD: $A5 $9C - Load Accumulator with Memory
	BPL $05             ; $BCAF: $10 $05 - Branch on Result Plus
	JSR $AA19           ; $BCB1: $20 $19 $AA - Jump to New Location Saving Return Address
	BEQ $0D             ; $BCB4: $F0 $0D - Branch on Result Zero
	BNE $10             ; $BCB6: $D0 $10 - Branch on Result not Zero
	LDA #$80            ; $BCB8: $A9 $80 - Load Accumulator with Memory
	LDY #$A8            ; $BCBA: $A0 $A8 - Load Index Y with Memory
	LDX #$00            ; $BCBC: $A2 $00 - Load Index X with Memory
	JSR $8C92           ; $BCBE: $20 $92 $8C - Jump to New Location Saving Return Address
	DEC $9C             ; $BCC1: $C6 $9C - Decrement Memory by One
	RTS                 ; $BCC3: $60 - Return from Subroutine
	BIT $B6             ; $BCC4: $24 $B6 - Test Bits in Memory with Accumulator
	AND $BA             ; $BCC6: $25 $BA - AND Memory with Accumulator
	LDX $9D             ; $BCC8: $A6 $9D - Load Index X with Memory
	JSR $8833           ; $BCCA: $20 $33 $88 - Jump to New Location Saving Return Address
	LDA #$80            ; $BCCD: $A9 $80 - Load Accumulator with Memory
	STA $4A,X           ; $BCCF: $95 $4A - Store Accumulator in Memory
	STA $0360,X         ; $BCD1: $9D $60 $03 - Store Accumulator in Memory
	JMP $DA16           ; $BCD4: $4C $16 $DA - Jump to New Location
	LDY #$14            ; $BCD7: $A0 $14 - Load Index Y with Memory
	JSR $8C80           ; $BCD9: $20 $80 $8C - Jump to New Location Saving Return Address
	BNE $2F             ; $BCDC: $D0 $2F - Branch on Result not Zero
	LDA #$04            ; $BCDE: $A9 $04 - Load Accumulator with Memory
	JSR $A223           ; $BCE0: $20 $23 $A2 - Jump to New Location Saving Return Address
	BCS $28             ; $BCE3: $B0 $28 - Branch on Carry Set
	TXA                 ; $BCE5: $8A - Transfer Index X to Accumulator
	PHA                 ; $BCE6: $48 - Push Accumulator on Stack
	LDX $DE             ; $BCE7: $A6 $DE - Load Index X with Memory
	DEC $0132,X         ; $BCE9: $DE $32 $01 - Decrement Memory by One
	TYA                 ; $BCEC: $98 - Transfer Index Y to Accumulator
	TAX                 ; $BCED: $AA - Transfer Accumulator to Index X
	JSR $CD74           ; $BCEE: $20 $74 $CD - Jump to New Location Saving Return Address
	LDA $0300,X         ; $BCF1: $BD $00 $03 - Load Accumulator with Memory
	TAX                 ; $BCF4: $AA - Transfer Accumulator to Index X
	LDA #$01            ; $BCF5: $A9 $01 - Load Accumulator with Memory
	JSR $F213           ; $BCF7: $20 $13 $F2 - Jump to New Location Saving Return Address
	PLA                 ; $BCFA: $68 - Pull Accumulator from Stack
	TAX                 ; $BCFB: $AA - Transfer Accumulator to Index X
	INC $9C             ; $BCFC: $E6 $9C - Increment Memory by One
	LDA #$3E            ; $BCFE: $A9 $3E - Load Accumulator with Memory
	JSR $8B2E           ; $BD00: $20 $2E $8B - Jump to New Location Saving Return Address
	LDA #$01            ; $BD03: $A9 $01 - Load Accumulator with Memory
	JSR $F25B           ; $BD05: $20 $5B $F2 - Jump to New Location Saving Return Address
	LDA #$08            ; $BD08: $A9 $08 - Load Accumulator with Memory
	JMP $980F           ; $BD0A: $4C $0F $98 - Jump to New Location
	INY                 ; $BD0D: $C8 - Increment Index Y by One
	CPY #$1F            ; $BD0E: $C0 $1F - Compare Memory and Index Y
	BNE $C7             ; $BD10: $D0 $C7 - Branch on Result not Zero
	RTS                 ; $BD12: $60 - Return from Subroutine
	SEC                 ; $BD13: $38 - Set Carry Flag
	ROR $05D6           ; $BD14: $6E $D6 $05 - Rotate One Bit Right
	JSR $988C           ; $BD17: $20 $8C $98 - Jump to New Location Saving Return Address
	LSR $05D6           ; $BD1A: $4E $D6 $05 - Shift One Bit Right (Memory or Accumulator)
	DEC $05D5           ; $BD1D: $CE $D5 $05 - Decrement Memory by One
	LDA #$0F            ; $BD20: $A9 $0F - Load Accumulator with Memory
	JSR $980F           ; $BD22: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $98A4           ; $BD25: $20 $A4 $98 - Jump to New Location Saving Return Address
	LDA #$BA            ; $BD28: $A9 $BA - Load Accumulator with Memory
	JSR $AD82           ; $BD2A: $20 $82 $AD - Jump to New Location Saving Return Address
	LDX #$03            ; $BD2D: $A2 $03 - Load Index X with Memory
	LDY #$05            ; $BD2F: $A0 $05 - Load Index Y with Memory
	LDA #$FE            ; $BD31: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $BD33: $9D $A0 $02 - Store Accumulator in Memory
	LDA $0200,X         ; $BD36: $BD $00 $02 - Load Accumulator with Memory
	BEQ $0A             ; $BD39: $F0 $0A - Branch on Result Zero
	LDA $0360,X         ; $BD3B: $BD $60 $03 - Load Accumulator with Memory
	CMP #$07            ; $BD3E: $C9 $07 - Compare Memory with Accumulator
	BCS $04             ; $BD40: $B0 $04 - Branch on Carry Set
	JSR $8833           ; $BD42: $20 $33 $88 - Jump to New Location Saving Return Address
	DEY                 ; $BD45: $88 - Decrement Index Y by One
	DEX                 ; $BD46: $CA - Decrement Index X by One
	BPL $E8             ; $BD47: $10 $E8 - Branch on Result Plus
	STY $77             ; $BD49: $84 $77 - Sore Index Y in Memory
	BMI $D8             ; $BD4B: $30 $D8 - Branch on Result Minus
	BRK                 ; $BD4E: $00 - Force Break
	ORA ($00,X)         ; $BD51: $01 $00 $04 - OR Memory with Accumulator
	ADC ($C9),Y         ; $BD5C: $71 $C9 $20 - Add Memory to Accumulator with Carry
	PHA                 ; $BD60: $48 - Push Accumulator on Stack
	ORA $9E,X           ; $BD61: $15 $9E - OR Memory with Accumulator
	BIT $9A81           ; $BD64: $2C $81 $9A - Test Bits in Memory with Accumulator
	RTS                 ; $BD67: $60 - Return from Subroutine
	PHP                 ; $BD68: $08 - Push Processor Status on Stack
	ASL $02             ; $BD69: $06 $02 - Shift Left One Bit
	ORA ($01,X)         ; $BD6E: $01 $01 $07 - OR Memory with Accumulator
	ORA ($00,X)         ; $BD72: $01 $00 $00 - OR Memory with Accumulator
	BRK                 ; $BD75: $00 - Force Break
	BRK                 ; $BD76: $00 - Force Break
	BRK                 ; $BD77: $00 - Force Break
	BRK                 ; $BD78: $00 - Force Break
	BRK                 ; $BD79: $00 - Force Break
	BRK                 ; $BD7A: $00 - Force Break
	BRK                 ; $BD7B: $00 - Force Break
	BRK                 ; $BD7C: $00 - Force Break
	BRK                 ; $BD7D: $00 - Force Break
	BRK                 ; $BD7E: $00 - Force Break
	BRK                 ; $BD7F: $00 - Force Break
	ORA ($04,X)         ; $BD80: $01 $04 $05 - OR Memory with Accumulator
	ORA ($03,X)         ; $BD83: $01 $03 $04 - OR Memory with Accumulator
	BRK                 ; $BD87: $00 - Force Break
	BRK                 ; $BD88: $00 - Force Break
	ORA ($01,X)         ; $BD89: $01 $01 $01 - OR Memory with Accumulator
	ORA #$09            ; $BD8C: $09 $09 - OR Memory with Accumulator
	ORA ($00,X)         ; $BD8E: $01 $00 $00 - OR Memory with Accumulator
	BRK                 ; $BD91: $00 - Force Break
	BRK                 ; $BD92: $00 - Force Break
	BRK                 ; $BD93: $00 - Force Break
	BRK                 ; $BD94: $00 - Force Break
	BRK                 ; $BD96: $00 - Force Break
	ORA ($00,X)         ; $BD98: $01 $00 $03 - OR Memory with Accumulator
	JMP $5A4C           ; $BD9B: $4C $4C $5A - Jump to New Location
	ASL $4A14           ; $BD9E: $0E $14 $4A - Shift Left One Bit
	ASL A               ; $BDA1: $0A - Shift Left One Bit
	ROR $0858           ; $BDA2: $6E $58 $08 - Rotate One Bit Right
	PHP                 ; $BDA9: $08 - Push Processor Status on Stack
	ASL $02             ; $BDAA: $06 $02 - Shift Left One Bit
	ASL $08             ; $BDAE: $06 $08 - Shift Left One Bit
	JSR $0404           ; $BDB0: $20 $04 $04 - Jump to New Location Saving Return Address
	BRK                 ; $BDB3: $00 - Force Break
	BRK                 ; $BDB4: $00 - Force Break
	BRK                 ; $BDB5: $00 - Force Break
	BRK                 ; $BDB6: $00 - Force Break
	BRK                 ; $BDB7: $00 - Force Break
	BRK                 ; $BDB8: $00 - Force Break
	BRK                 ; $BDB9: $00 - Force Break
	ORA ($01,X)         ; $BDBA: $01 $01 $72 - OR Memory with Accumulator
	RTI                 ; $BDBD: $40 - Return from Interrupt
	LDY $AD             ; $BDBF: $A4 $AD - Load Index Y with Memory
	TYA                 ; $BDC3: $98 - Transfer Index Y to Accumulator
	ROR $3135           ; $BDC5: $6E $35 $31 - Rotate One Bit Right
	PHA                 ; $BDC8: $48 - Push Accumulator on Stack
	ROL A               ; $BDC9: $2A - Rotate One Bit Left
	DEX                 ; $BDCA: $CA - Decrement Index X by One
	EOR $C6             ; $BDCB: $45 $C6 - Exclusive-OR Memory with Accumulator
	PHA                 ; $BDCE: $48 - Push Accumulator on Stack
	ROL $CA,X           ; $BDCF: $36 $CA - Rotate One Bit Left
	CMP $39             ; $BDD2: $C5 $39 - Compare Memory with Accumulator
	TSX                 ; $BDD4: $BA - Transfer Stack Pointer to Index X
	SBC ($A9),Y         ; $BDD5: $F1 $A9 $75 - Subtract Memory from Accumulator with Borrow
	ADC #$D3            ; $BDD9: $69 $D3 - Add Memory to Accumulator with Carry
	CPY $8200           ; $BDDB: $CC $00 $82 - Compare Memory and Index Y
	LSR A               ; $BDDE: $4A $87 - Shift One Bit Right (Memory or Accumulator)
	DEC $C66B           ; $BDE2: $CE $6B $C6 - Decrement Memory by One
	INY                 ; $BDE5: $C8 - Increment Index Y by One
	CMP $2F39           ; $BDE6: $CD $39 $2F - Compare Memory with Accumulator
	CPY #$C0            ; $BDE9: $C0 $C0 - Compare Memory and Index Y
	CPY #$C0            ; $BDEC: $C0 $C0 - Compare Memory and Index Y
	CPY #$BF            ; $BDEF: $C0 $BF - Compare Memory and Index Y
	BRK                 ; $BDF4: $00 - Force Break
	BRK                 ; $BDF5: $00 - Force Break
	BRK                 ; $BDF6: $00 - Force Break
	BRK                 ; $BDF7: $00 - Force Break
	BRK                 ; $BDF8: $00 - Force Break
	BRK                 ; $BDF9: $00 - Force Break
	BRK                 ; $BDFA: $00 - Force Break
	BRK                 ; $BDFB: $00 - Force Break
	BRK                 ; $BDFC: $00 - Force Break
	BRK                 ; $BDFD: $00 - Force Break
	BRK                 ; $BDFE: $00 - Force Break
	BRK                 ; $BDFF: $00 - Force Break
	BRK                 ; $BE00: $00 - Force Break
	CPY #$BF            ; $BE01: $C0 $BF - Compare Memory and Index Y
	CPY #$C0            ; $BE05: $C0 $C0 - Compare Memory and Index Y
	BRK                 ; $BE08: $00 - Force Break
	BRK                 ; $BE09: $00 - Force Break
	CPY #$BF            ; $BE0D: $C0 $BF - Compare Memory and Index Y
	CLI                 ; $BE12: $58 - Clear Interrupt Disable Bit
	JMP ($B29A)         ; $BE14: $6C $9A $B2 - Jump to New Location
	AND ($60,X)         ; $BE17: $21 $60 $7D - AND Memory with Accumulator
	SBC $CCC9,X         ; $BE1A: $FD $C9 $CC - Subtract Memory from Accumulator with Borrow
	INC $93DB           ; $BE1D: $EE $DB $93 - Increment Memory by One
	ROR $CC,X           ; $BE21: $76 $CC - Rotate One Bit Right
	INX                 ; $BE23: $E8 - Increment Index X by One
	ORA ($DB),Y         ; $BE25: $11 $DB $89 - OR Memory with Accumulator
	INX                 ; $BE28: $E8 - Increment Index X by One
	ORA #$CC            ; $BE29: $09 $CC - OR Memory with Accumulator
	SBC ($15),Y         ; $BE2B: $F1 $15 $B3 - Subtract Memory from Accumulator with Borrow
	ROR $32DB,X         ; $BE2E: $7E $DB $32 - Rotate One Bit Right
	TXA                 ; $BE31: $8A - Transfer Index X to Accumulator
	LDA $E0             ; $BE32: $A5 $E0 - Load Accumulator with Memory
	LSR A               ; $BE38: $4A $13 - Shift One Bit Right (Memory or Accumulator)
	DEC $6E             ; $BE3B: $C6 $6E - Decrement Memory by One
	STA $2157,X         ; $BE3E: $9D $57 $21 - Store Accumulator in Memory
	INX                 ; $BE44: $E8 - Increment Index X by One
	AND $06,X           ; $BE46: $35 $06 - AND Memory with Accumulator
	INX                 ; $BE49: $E8 - Increment Index X by One
	SBC $DED3           ; $BE4A: $ED $D3 $DE - Subtract Memory from Accumulator with Borrow
	STX $DF             ; $BE4D: $86 $DF - Store Index X in Memory
	ROL $6D42,X         ; $BE4F: $3E $42 $6D - Rotate One Bit Left
	ROR $2AE7,X         ; $BE52: $7E $E7 $2A - Rotate One Bit Right
	JMP ($0404)         ; $BE55: $6C $04 $04 - Jump to New Location
	BRK                 ; $BE62: $00 - Force Break
	ORA ($02,X)         ; $BE63: $01 $02 $00 - OR Memory with Accumulator
	BRK                 ; $BE66: $00 - Force Break
	ORA ($01,X)         ; $BE67: $01 $01 $02 - OR Memory with Accumulator
	ORA ($00,X)         ; $BE6A: $01 $00 $03 - OR Memory with Accumulator
	ADC $76,X           ; $BE6F: $75 $76 - Add Memory to Accumulator with Carry
	BVS $59             ; $BE71: $70 $59 - Branch on Overflow Set
	ROR $51,X           ; $BE73: $76 $51 - Rotate One Bit Right
	ROR $5B,X           ; $BE75: $76 $5B - Rotate One Bit Right
	EOR ($51),Y         ; $BE78: $51 $51 $5B - Exclusive-OR Memory with Accumulator
	EOR $5839,Y         ; $BE7D: $59 $39 $58 - Exclusive-OR Memory with Accumulator
	EOR $5832,Y         ; $BE83: $59 $32 $58 - Exclusive-OR Memory with Accumulator
	SEC                 ; $BE88: $38 - Set Carry Flag
	BVS $5B             ; $BE8A: $70 $5B - Branch on Overflow Set
	EOR ($50,X)         ; $BE8D: $41 $50 $01 - Exclusive-OR Memory with Accumulator
	EOR ($5A),Y         ; $BE90: $51 $5A $53 - Exclusive-OR Memory with Accumulator
	EOR ($00),Y         ; $BE94: $51 $00 $5A - Exclusive-OR Memory with Accumulator
	ADC ($40,X)         ; $BE97: $61 $40 $58 - Add Memory to Accumulator with Carry
	EOR ($70),Y         ; $BE9A: $51 $70 $70 - Exclusive-OR Memory with Accumulator
	BVS $70             ; $BE9D: $70 $70 - Branch on Overflow Set
	BVS $52             ; $BEA0: $70 $52 - Branch on Overflow Set
	BVS $70             ; $BEA2: $70 $70 - Branch on Overflow Set
	BVC $53             ; $BEA4: $50 $53 - Branch on Overflow Clear
	BVS $50             ; $BEA7: $70 $50 - Branch on Overflow Set
	EOR ($30),Y         ; $BEAB: $51 $30 $70 - Exclusive-OR Memory with Accumulator
	EOR ($01,X)         ; $BEAE: $41 $01 $00 - Exclusive-OR Memory with Accumulator
	CMP ($FB,X)         ; $BEB7: $C1 $FB $FD - Compare Memory with Accumulator
	STY $C2CB           ; $BEBA: $8C $CB $C2 - Sore Index Y in Memory
	LDX #$C2            ; $BEBE: $A2 $C2 - Load Index X with Memory
	SED                 ; $BEC0: $F8 - Set Decimal Flag
	NOP                 ; $BEC1: $EA - No Operation
	TYA                 ; $BEC2: $98 - Transfer Index Y to Accumulator
	CLD                 ; $BEC3: $D8 - Clear Decimal Mode
	TYA                 ; $BEC4: $98 - Transfer Index Y to Accumulator
	TAX                 ; $BEC5: $AA - Transfer Accumulator to Index X
	SED                 ; $BEC6: $F8 - Set Decimal Flag
	INC $9A98           ; $BEC7: $EE $98 $9A - Increment Memory by One
	TYA                 ; $BECA: $98 - Transfer Index Y to Accumulator
	INY                 ; $BECC: $C8 - Increment Index Y by One
	CLD                 ; $BECD: $D8 - Clear Decimal Mode
	CMP #$C7            ; $BECE: $C9 $C7 - Compare Memory with Accumulator
	TYA                 ; $BED3: $98 - Transfer Index Y to Accumulator
	BNE $DA             ; $BED4: $D0 $DA - Branch on Result not Zero
	SED                 ; $BED6: $F8 - Set Decimal Flag
	NOP                 ; $BED7: $EA - No Operation
	SED                 ; $BED8: $F8 - Set Decimal Flag
	SED                 ; $BED9: $F8 - Set Decimal Flag
	SED                 ; $BEDA: $F8 - Set Decimal Flag
	DEX                 ; $BEDB: $CA - Decrement Index X by One
	CMP #$F9            ; $BEDF: $C9 $F9 - Compare Memory with Accumulator
	INX                 ; $BEE1: $E8 - Increment Index X by One
	INX                 ; $BEE3: $E8 - Increment Index X by One
	INY                 ; $BEE5: $C8 - Increment Index Y by One
	INX                 ; $BEE6: $E8 - Increment Index X by One
	CPY $EA8F           ; $BEE8: $CC $8F $EA - Compare Memory and Index Y
	STA $FC,X           ; $BEEB: $95 $FC - Store Accumulator in Memory
	CPY $999E           ; $BEED: $CC $9E $99 - Compare Memory and Index Y
	CLV                 ; $BEF0: $B8 - Clear Overflow Flag
	LDX #$AA            ; $BEF2: $A2 $AA - Load Index X with Memory
	SBC ($B8),Y         ; $BEF4: $F1 $B8 $BB - Subtract Memory from Accumulator with Borrow
	INX                 ; $BEF7: $E8 - Increment Index X by One
	STA $D9,X           ; $BEF8: $95 $D9 - Store Accumulator in Memory
	ORA #$0C            ; $BEFE: $09 $0C - OR Memory with Accumulator
	ORA $06             ; $BF01: $05 $06 - OR Memory with Accumulator
	ORA $07             ; $BF03: $05 $07 - OR Memory with Accumulator
	PHP                 ; $BF12: $08 - Push Processor Status on Stack
	BRK                 ; $BF1B: $00 - Force Break
	BRK                 ; $BF1C: $00 - Force Break
	BRK                 ; $BF1D: $00 - Force Break
	BRK                 ; $BF1E: $00 - Force Break
	BRK                 ; $BF1F: $00 - Force Break
	BRK                 ; $BF20: $00 - Force Break
	ORA $03             ; $BF21: $05 $03 - OR Memory with Accumulator
	BRK                 ; $BF26: $00 - Force Break
	BRK                 ; $BF27: $00 - Force Break
	ORA $00             ; $BF28: $05 $00 - OR Memory with Accumulator
	BRK                 ; $BF2B: $00 - Force Break
	BRK                 ; $BF2C: $00 - Force Break
	ORA $04             ; $BF2E: $05 $04 - OR Memory with Accumulator
	STX $01             ; $BF35: $86 $01 - Store Index X in Memory
	ORA ($12),Y         ; $BF38: $11 $12 $03 - OR Memory with Accumulator
	ORA $06             ; $BF3E: $05 $06 - OR Memory with Accumulator
	ORA $16,X           ; $BF40: $15 $16 - OR Memory with Accumulator
	PHP                 ; $BF46: $08 - Push Processor Status on Stack
	ORA #$18            ; $BF47: $09 $18 - OR Memory with Accumulator
	ORA $068F,Y         ; $BF49: $19 $8F $06 - OR Memory with Accumulator
	LSR $86             ; $BF4C: $46 $86 - Shift One Bit Right (Memory or Accumulator)
	DEC $04             ; $BF4E: $C6 $04 - Decrement Memory by One
	STY $C4             ; $BF51: $84 $C4 - Sore Index Y in Memory
	ORA ($41,X)         ; $BF53: $01 $41 $81 - OR Memory with Accumulator
	CMP ($03,X)         ; $BF56: $C1 $03 $00 - Compare Memory with Accumulator
	LDX $01             ; $BF5B: $A6 $01 - Load Index X with Memory
	ORA ($12),Y         ; $BF5E: $11 $12 $03 - OR Memory with Accumulator
	ORA ($02,X)         ; $BF62: $01 $02 $11 - OR Memory with Accumulator
	BRK                 ; $BF67: $00 - Force Break
	ORA ($02,X)         ; $BF68: $01 $02 $11 - OR Memory with Accumulator
	BRK                 ; $BF6D: $00 - Force Break
	ASL $02             ; $BF70: $06 $02 - Shift Left One Bit
	ORA $01             ; $BF72: $05 $01 - OR Memory with Accumulator
	BRK                 ; $BF76: $00 - Force Break
	BRK                 ; $BF77: $00 - Force Break
	BRK                 ; $BF78: $00 - Force Break
	BRK                 ; $BF79: $00 - Force Break
	ORA ($01,X)         ; $BF7A: $01 $01 $81 - OR Memory with Accumulator
	STA ($00,X)         ; $BF7D: $81 $00 $00 - Store Accumulator in Memory
	STA ($81,X)         ; $BF80: $81 $81 $2D - Store Accumulator in Memory
	ORA ($02,X)         ; $BF83: $01 $02 $11 - OR Memory with Accumulator
	STA ($2D),Y         ; $BF87: $91 $2D $6D - Store Accumulator in Memory
	ORA ($41,X)         ; $BF94: $01 $41 $62 - OR Memory with Accumulator
	TAX                 ; $BF98: $AA - Transfer Accumulator to Index X
	ORA ($41,X)         ; $BF99: $01 $41 $11 - OR Memory with Accumulator
	EOR ($02),Y         ; $BF9C: $51 $02 $42 - Exclusive-OR Memory with Accumulator
	LDX $0101           ; $BFA9: $AE $01 $01 - Load Index X with Memory
	CMP ($61,X)         ; $BFAC: $C1 $61 $41 - Compare Memory with Accumulator
	EOR ($D1),Y         ; $BFAF: $51 $D1 $00 - Exclusive-OR Memory with Accumulator
	ORA ($91),Y         ; $BFB2: $11 $91 $01 - OR Memory with Accumulator
	AND ($01,X)         ; $BFB5: $21 $01 $01 - AND Memory with Accumulator
	STA ($41,X)         ; $BFB8: $81 $41 $41 - Store Accumulator in Memory
	EOR ($D1),Y         ; $BFBB: $51 $D1 $51 - Exclusive-OR Memory with Accumulator
	ORA ($91),Y         ; $BFBE: $11 $91 $51 - OR Memory with Accumulator
	CMP ($3E),Y         ; $BFC1: $D1 $3E $00 - Compare Memory with Accumulator
	BRK                 ; $BFC4: $00 - Force Break
	BRK                 ; $BFC5: $00 - Force Break
	BRK                 ; $BFC6: $00 - Force Break
	BRK                 ; $BFC7: $00 - Force Break
	BRK                 ; $BFC8: $00 - Force Break
	BRK                 ; $BFC9: $00 - Force Break
	BRK                 ; $BFCB: $00 - Force Break
	BRK                 ; $BFCC: $00 - Force Break
	BRK                 ; $BFCD: $00 - Force Break
	STA $01             ; $BFCE: $85 $01 - Store Accumulator in Memory
	ORA ($D1),Y         ; $BFD0: $11 $D1 $91 - OR Memory with Accumulator
	STA ($82,X)         ; $BFD6: $81 $82 $84 - Store Accumulator in Memory
	CPY $C2             ; $BFD9: $C4 $C2 - Compare Memory and Index Y
	CMP ($79,X)         ; $BFDB: $C1 $79 $01 - Compare Memory with Accumulator
	ORA #$0A            ; $BFE1: $09 $0A - OR Memory with Accumulator
	ORA $06             ; $BFE5: $05 $06 - OR Memory with Accumulator
	LSR $45             ; $BFE7: $46 $45 - Shift One Bit Right (Memory or Accumulator)
	JMP $4A4B           ; $BFE9: $4C $4B $4A - Jump to New Location
	EOR #$44            ; $BFEC: $49 $44 - Exclusive-OR Memory with Accumulator
	EOR ($63,X)         ; $BFF0: $41 $63 $84 - Exclusive-OR Memory with Accumulator
	ORA ($03,X)         ; $BFF4: $01 $03 $82 - OR Memory with Accumulator
	STA ($6F,X)         ; $BFF9: $81 $6F $01 - Store Accumulator in Memory
	EOR ($11,X)         ; $BFFE: $41 $11 $12 - Exclusive-OR Memory with Accumulator
	EOR ($91),Y         ; $C002: $51 $91 $92 - Exclusive-OR Memory with Accumulator
	CMP ($81),Y         ; $C006: $D1 $81 $82 - Compare Memory with Accumulator
	CMP ($01,X)         ; $C00A: $C1 $01 $90 - Compare Memory with Accumulator
	BNE $41             ; $C00D: $D0 $41 - Branch on Result not Zero
	ORA ($12),Y         ; $C00F: $11 $12 $52 - OR Memory with Accumulator
	EOR ($91),Y         ; $C012: $51 $91 $92 - Exclusive-OR Memory with Accumulator
	CMP ($81),Y         ; $C016: $D1 $81 $10 - Compare Memory with Accumulator
	BVC $C1             ; $C019: $50 $C1 - Branch on Overflow Clear
	STY $D4,X           ; $C01C: $94 $D4 - Sore Index Y in Memory
	DEY                 ; $C01F: $88 - Decrement Index Y by One
	INY                 ; $C022: $C8 - Increment Index Y by One
	PHP                 ; $C023: $08 - Push Processor Status on Stack
	PHA                 ; $C026: $48 - Push Accumulator on Stack
	ORA ($02,X)         ; $C02C: $01 $02 $03 - OR Memory with Accumulator
	EOR ($01,X)         ; $C02F: $41 $01 $02 - Exclusive-OR Memory with Accumulator
	EOR ($01,X)         ; $C033: $41 $01 $02 - Exclusive-OR Memory with Accumulator
	EOR ($01,X)         ; $C037: $41 $01 $02 - Exclusive-OR Memory with Accumulator
	EOR ($01,X)         ; $C03B: $41 $01 $02 - Exclusive-OR Memory with Accumulator
	EOR ($3F,X)         ; $C03F: $41 $3F $01 - Exclusive-OR Memory with Accumulator
	EOR ($11,X)         ; $C044: $41 $11 $12 - Exclusive-OR Memory with Accumulator
	EOR ($03),Y         ; $C048: $51 $03 $04 - Exclusive-OR Memory with Accumulator
	ASL $16             ; $C051: $06 $16 - Shift Left One Bit
	LSR $46,X           ; $C053: $56 $46 - Shift One Bit Right (Memory or Accumulator)
	ORA ($02,X)         ; $C055: $01 $02 $42 - OR Memory with Accumulator
	EOR ($11,X)         ; $C058: $41 $11 $12 - Exclusive-OR Memory with Accumulator
	EOR ($03),Y         ; $C05C: $51 $03 $05 - Exclusive-OR Memory with Accumulator
	EOR $43             ; $C05F: $45 $43 - Exclusive-OR Memory with Accumulator
	ORA $55,X           ; $C062: $15 $55 - OR Memory with Accumulator
	ASL $16             ; $C065: $06 $16 - Shift Left One Bit
	LSR $46,X           ; $C067: $56 $46 - Shift One Bit Right (Memory or Accumulator)
	ROL $01             ; $C069: $26 $01 - Rotate One Bit Left
	EOR ($42,X)         ; $C070: $41 $42 $73 - Exclusive-OR Memory with Accumulator
	ORA $4101           ; $C073: $0D $01 $41 - OR Memory with Accumulator
	EOR $0504           ; $C076: $4D $04 $05 - Exclusive-OR Memory with Accumulator
	EOR $44             ; $C079: $45 $44 - Exclusive-OR Memory with Accumulator
	ORA $4303           ; $C07B: $0D $03 $43 - OR Memory with Accumulator
	EOR $0604           ; $C07E: $4D $04 $06 - Exclusive-OR Memory with Accumulator
	LSR $44             ; $C081: $46 $44 - Shift One Bit Right (Memory or Accumulator)
	ORA $4202           ; $C083: $0D $02 $42 - OR Memory with Accumulator
	EOR $0504           ; $C086: $4D $04 $05 - Exclusive-OR Memory with Accumulator
	EOR $44             ; $C089: $45 $44 - Exclusive-OR Memory with Accumulator
	ORA ($02,X)         ; $C08C: $01 $02 $11 - OR Memory with Accumulator
	ORA ($02,X)         ; $C090: $01 $02 $11 - OR Memory with Accumulator
	ORA ($02,X)         ; $C094: $01 $02 $11 - OR Memory with Accumulator
	ORA ($02,X)         ; $C098: $01 $02 $11 - OR Memory with Accumulator
	ORA ($02,X)         ; $C09C: $01 $02 $11 - OR Memory with Accumulator
	ORA $07             ; $C0A0: $05 $07 - OR Memory with Accumulator
	ORA $06,X           ; $C0A2: $15 $06 - OR Memory with Accumulator
	ORA ($03,X)         ; $C0A6: $01 $03 $01 - OR Memory with Accumulator
	ORA ($05,X)         ; $C0AA: $01 $05 $01 - OR Memory with Accumulator
	EOR $01,X           ; $C0AD: $55 $01 - Exclusive-OR Memory with Accumulator
	ORA $06             ; $C0B2: $05 $06 - OR Memory with Accumulator
	BRK                 ; $C0B4: $00 - Force Break
	BRK                 ; $C0B5: $00 - Force Break
	PHP                 ; $C0B7: $08 - Push Processor Status on Stack
	ORA #$0A            ; $C0B8: $09 $0A - OR Memory with Accumulator
	ASL $4101,X         ; $C0BA: $1E $01 $41 - Shift Left One Bit
	ORA ($41,X)         ; $C0BD: $01 $41 $31 - OR Memory with Accumulator
	AND ($6F),Y         ; $C0C1: $31 $6F $30 - AND Memory with Accumulator
	BVS $30             ; $C0C4: $70 $30 - Branch on Overflow Set
	BVS $2F             ; $C0C6: $70 $2F - Branch on Overflow Set
	ADC ($2F),Y         ; $C0C8: $71 $2F $71 - Add Memory to Accumulator with Carry
	ORA ($41,X)         ; $C0CC: $01 $41 $02 - OR Memory with Accumulator
	LDA $7B             ; $C0D4: $A5 $7B - Load Accumulator with Memory
	BEQ $07             ; $C0D6: $F0 $07 - Branch on Result Zero
	JSR $C17B           ; $C0D8: $20 $7B $C1 - Jump to New Location Saving Return Address
	LDA #$00            ; $C0DB: $A9 $00 - Load Accumulator with Memory
	STA $7B             ; $C0DD: $85 $7B - Store Accumulator in Memory
	LDA #$FF            ; $C0DF: $A9 $FF - Load Accumulator with Memory
	STA $7C             ; $C0E1: $85 $7C - Store Accumulator in Memory
	STA $7D             ; $C0E3: $85 $7D - Store Accumulator in Memory
	LDX #$07            ; $C0E5: $A2 $07 - Load Index X with Memory
	LDA $0509,X         ; $C0E7: $BD $09 $05 - Load Accumulator with Memory
	BEQ $20             ; $C0EA: $F0 $20 - Branch on Result Zero
	LDA $0511,X         ; $C0EC: $BD $11 $05 - Load Accumulator with Memory
	BEQ $05             ; $C0EF: $F0 $05 - Branch on Result Zero
	DEC $0511,X         ; $C0F1: $DE $11 $05 - Decrement Memory by One
	BNE $16             ; $C0F4: $D0 $16 - Branch on Result not Zero
	LDA #$06            ; $C0F6: $A9 $06 - Load Accumulator with Memory
	LDY $7C             ; $C0F8: $A4 $7C - Load Index Y with Memory
	BPL $07             ; $C0FA: $10 $07 - Branch on Result Plus
	STA $0511,X         ; $C0FC: $9D $11 $05 - Store Accumulator in Memory
	STX $7C             ; $C0FF: $86 $7C - Store Index X in Memory
	BMI $09             ; $C101: $30 $09 - Branch on Result Minus
	LDY $7D             ; $C103: $A4 $7D - Load Index Y with Memory
	BPL $05             ; $C105: $10 $05 - Branch on Result Plus
	STA $0511,X         ; $C107: $9D $11 $05 - Store Accumulator in Memory
	STX $7D             ; $C10A: $86 $7D - Store Index X in Memory
	DEX                 ; $C10C: $CA - Decrement Index X by One
	BPL $D8             ; $C10D: $10 $D8 - Branch on Result Plus
	LDA $82             ; $C10F: $A5 $82 - Load Accumulator with Memory
	BNE $0B             ; $C111: $D0 $0B - Branch on Result not Zero
	LDA $7C             ; $C113: $A5 $7C - Load Accumulator with Memory
	BMI $07             ; $C115: $30 $07 - Branch on Result Minus
	LDA #$1E            ; $C117: $A9 $1E - Load Accumulator with Memory
	LDY #$C1            ; $C119: $A0 $C1 - Load Index Y with Memory
	JSR $C527           ; $C11B: $20 $27 $C5 - Jump to New Location Saving Return Address
	RTS                 ; $C11E: $60 - Return from Subroutine
	LDX $7C             ; $C11F: $A6 $7C - Load Index X with Memory
	JSR $C12C           ; $C121: $20 $2C $C1 - Jump to New Location Saving Return Address
	LDX $7D             ; $C124: $A6 $7D - Load Index X with Memory
	JSR $C12C           ; $C126: $20 $2C $C1 - Jump to New Location Saving Return Address
	JMP $C541           ; $C129: $4C $41 $C5 - Jump to New Location
	BPL $01             ; $C12C: $10 $01 - Branch on Result Plus
	RTS                 ; $C12E: $60 - Return from Subroutine
	BIT $2002           ; $C12F: $2C $02 $20 - Test Bits in Memory with Accumulator
	LDA $0509,X         ; $C132: $BD $09 $05 - Load Accumulator with Memory
	STA $2006           ; $C135: $8D $06 $20 - Store Accumulator in Memory
	LDA $0501,X         ; $C138: $BD $01 $05 - Load Accumulator with Memory
	STA $2006           ; $C13B: $8D $06 $20 - Store Accumulator in Memory
	LDY $0519,X         ; $C13E: $BC $19 $05 - Load Index Y with Memory
	INY                 ; $C141: $C8 - Increment Index Y by One
	TYA                 ; $C142: $98 - Transfer Index Y to Accumulator
	CLC #$07            ; $C143: $29 $07 - Clear Carry Flag
	STA $0519,X         ; $C145: $9D $19 $05 - Store Accumulator in Memory
	STA $EB             ; $C148: $85 $EB - Store Accumulator in Memory
	LDA $0529,X         ; $C14A: $BD $29 $05 - Load Accumulator with Memory
	STA $EA             ; $C14D: $85 $EA - Store Accumulator in Memory
	LDY $0501,X         ; $C14F: $BC $01 $05 - Load Index Y with Memory
	CLC                 ; $C152: $18 - Clear Carry Flag
	TYA                 ; $C153: $98 - Transfer Index Y to Accumulator
	CLC #$07            ; $C154: $29 $07 - Clear Carry Flag
	TAY                 ; $C156: $A8 - Transfer Accumulator to Index Y
	LDA $C173,Y         ; $C157: $B9 $73 $C1 - Load Accumulator with Memory
	ADC $EB             ; $C15A: $65 $EB - Add Memory to Accumulator with Carry
	CLC #$07            ; $C15C: $29 $07 - Clear Carry Flag
	TAX                 ; $C15E: $AA - Transfer Accumulator to Index X
	LDA $C16B,X         ; $C15F: $BD $6B $C1 - Load Accumulator with Memory
	STA $2007           ; $C162: $8D $07 $20 - Store Accumulator in Memory
	INY                 ; $C165: $C8 - Increment Index Y by One
	DEC $EA             ; $C166: $C6 $EA - Decrement Memory by One
	BPL $E9             ; $C168: $10 $E9 - Branch on Result Plus
	RTS                 ; $C16A: $60 - Return from Subroutine
	CMP $D6,X           ; $C16D: $D5 $D6 - Compare Memory with Accumulator
	BRK                 ; $C173: $00 - Force Break
	ASL $03             ; $C174: $06 $03 - Shift Left One Bit
	ORA ($05,X)         ; $C178: $01 $05 $02 - OR Memory with Accumulator
	LDA $C8             ; $C17B: $A5 $C8 - Load Accumulator with Memory
	CLC #$20            ; $C17D: $29 $20 - Clear Carry Flag
	BEQ $16             ; $C17F: $F0 $16 - Branch on Result Zero
	INC $7E             ; $C181: $E6 $7E - Increment Memory by One
	LDA $7E             ; $C183: $A5 $7E - Load Accumulator with Memory
	LDX #$07            ; $C185: $A2 $07 - Load Index X with Memory
	CMP $0521,X         ; $C187: $DD $21 $05 - Compare Memory with Accumulator
	BNE $07             ; $C18A: $D0 $07 - Branch on Result not Zero
	LDA #$00            ; $C18C: $A9 $00 - Load Accumulator with Memory
	STA $0509,X         ; $C18E: $9D $09 $05 - Store Accumulator in Memory
	LDA $7E             ; $C191: $A5 $7E - Load Accumulator with Memory
	DEX                 ; $C193: $CA - Decrement Index X by One
	BPL $F1             ; $C194: $10 $F1 - Branch on Result Plus
	RTS                 ; $C196: $60 - Return from Subroutine
	LDX #$1F            ; $C197: $A2 $1F - Load Index X with Memory
	LDA $010A,X         ; $C199: $BD $0A $01 - Load Accumulator with Memory
	CMP #$02            ; $C19C: $C9 $02 - Compare Memory with Accumulator
	BNE $11             ; $C19E: $D0 $11 - Branch on Result not Zero
	LDY #$00            ; $C1A0: $A0 $00 - Load Index Y with Memory
	DEX                 ; $C1A2: $CA - Decrement Index X by One
	BMI $08             ; $C1A3: $30 $08 - Branch on Result Minus
	CMP $010A,X         ; $C1A5: $DD $0A $01 - Compare Memory with Accumulator
	BNE $03             ; $C1A8: $D0 $03 - Branch on Result not Zero
	INY                 ; $C1AA: $C8 - Increment Index Y by One
	BNE $F5             ; $C1AB: $D0 $F5 - Branch on Result not Zero
	INX                 ; $C1AD: $E8 - Increment Index X by One
	JSR $C1B5           ; $C1AE: $20 $B5 $C1 - Jump to New Location Saving Return Address
	DEX                 ; $C1B1: $CA - Decrement Index X by One
	BPL $E5             ; $C1B2: $10 $E5 - Branch on Result Plus
	RTS                 ; $C1B4: $60 - Return from Subroutine
	STY $DB             ; $C1B5: $84 $DB - Sore Index Y in Memory
	LDY #$07            ; $C1B7: $A0 $07 - Load Index Y with Memory
	LDA $0509,Y         ; $C1B9: $B9 $09 $05 - Load Accumulator with Memory
	BEQ $04             ; $C1BC: $F0 $04 - Branch on Result Zero
	DEY                 ; $C1BE: $88 - Decrement Index Y by One
	BPL $F8             ; $C1BF: $10 $F8 - Branch on Result Plus
	RTS                 ; $C1C1: $60 - Return from Subroutine
	LDA $DB             ; $C1C2: $A5 $DB - Load Accumulator with Memory
	STA $0529,Y         ; $C1C4: $99 $29 $05 - Store Accumulator in Memory
	LDA #$01            ; $C1C7: $A9 $01 - Load Accumulator with Memory
	STA $0511,Y         ; $C1C9: $99 $11 $05 - Store Accumulator in Memory
	LDA #$00            ; $C1CC: $A9 $00 - Load Accumulator with Memory
	STA $0519,Y         ; $C1CE: $99 $19 $05 - Store Accumulator in Memory
	LDA $7E             ; $C1D1: $A5 $7E - Load Accumulator with Memory
	CLC                 ; $C1D3: $18 - Clear Carry Flag
	ADC #$10            ; $C1D4: $69 $10 - Add Memory to Accumulator with Carry
	STA $0521,Y         ; $C1D6: $99 $21 $05 - Store Accumulator in Memory
	STX $DA             ; $C1D9: $86 $DA - Store Index X in Memory
	LDA #$1F            ; $C1DB: $A9 $1F - Load Accumulator with Memory
	SEC                 ; $C1DD: $38 - Set Carry Flag
	SBC $DA             ; $C1DE: $E5 $DA - Subtract Memory from Accumulator with Borrow
	CLC                 ; $C1E0: $18 - Clear Carry Flag
	ADC $C8             ; $C1E1: $65 $C8 - Add Memory to Accumulator with Carry
	SEC                 ; $C1E3: $38 - Set Carry Flag
	SBC $DB             ; $C1E4: $E5 $DB - Subtract Memory from Accumulator with Borrow
	STA $0501,Y         ; $C1E6: $99 $01 $05 - Store Accumulator in Memory
	LDA $C9             ; $C1E9: $A5 $C9 - Load Accumulator with Memory
	STA $0509,Y         ; $C1EB: $99 $09 $05 - Store Accumulator in Memory
	RTS                 ; $C1EE: $60 - Return from Subroutine
	BMI $C1             ; $C1F0: $30 $C1 - Branch on Result Minus
	BIT $86             ; $C1F4: $24 $86 - Test Bits in Memory with Accumulator
	LDA $CD             ; $C1F7: $A5 $CD - Load Accumulator with Memory
	SBC #$80            ; $C1F9: $E9 $80 - Subtract Memory from Accumulator with Borrow
	STA $0300,X         ; $C1FB: $9D $00 $03 - Store Accumulator in Memory
	LDA $CE             ; $C1FE: $A5 $CE - Load Accumulator with Memory
	SBC #$00            ; $C200: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $03A0,X         ; $C202: $9D $A0 $03 - Store Accumulator in Memory
	LDY $05C8           ; $C205: $AC $C8 $05 - Load Index Y with Memory
	CPY #$02            ; $C208: $C0 $02 - Compare Memory and Index Y
	BCC $09             ; $C20A: $90 $09 - Branch on Carry Clear
	CMP #$FC            ; $C20C: $C9 $FC - Compare Memory with Accumulator
	BNE $05             ; $C20E: $D0 $05 - Branch on Result not Zero
	LDA #$B8            ; $C210: $A9 $B8 - Load Accumulator with Memory
	STA $0300,X         ; $C212: $9D $00 $03 - Store Accumulator in Memory
	LDA $05D0           ; $C215: $AD $D0 $05 - Load Accumulator with Memory
	BNE $08             ; $C218: $D0 $08 - Branch on Result not Zero
	LDA #$01            ; $C21A: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $C21C: $9D $E0 $02 - Store Accumulator in Memory
	BRK                 ; $C21F: $00 - Force Break
	BRK                 ; $C222: $00 - Force Break
	LDA ($9C),Y         ; $C223: $B1 $9C $BD - Load Accumulator with Memory
	CPX #$02            ; $C226: $E0 $02 - Compare Memory and Index Y
	CMP #$01            ; $C228: $C9 $01 - Compare Memory with Accumulator
	BNE $04             ; $C22A: $D0 $04 - Branch on Result not Zero
	LDA #$02            ; $C22C: $A9 $02 - Load Accumulator with Memory
	STA $F9             ; $C22E: $85 $F9 - Store Accumulator in Memory
	RTS                 ; $C230: $60 - Return from Subroutine
	JSR $87F0           ; $C231: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $0D             ; $C234: $D0 $0D - Branch on Result not Zero
	LDA $02E0,X         ; $C236: $BD $E0 $02 - Load Accumulator with Memory
	BNE $08             ; $C239: $D0 $08 - Branch on Result not Zero
	JSR $A2BE           ; $C23B: $20 $BE $A2 - Jump to New Location Saving Return Address
	BCS $03             ; $C23E: $B0 $03 - Branch on Carry Set
	JSR $C246           ; $C240: $20 $46 $C2 - Jump to New Location Saving Return Address
	JMP $D8CC           ; $C243: $4C $CC $D8 - Jump to New Location
	LDA #$15            ; $C246: $A9 $15 - Load Accumulator with Memory
	JSR $980F           ; $C248: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA $0300,X         ; $C24B: $BD $00 $03 - Load Accumulator with Memory
	STA $BE             ; $C24E: $85 $BE - Store Accumulator in Memory
	LDA $03A0,X         ; $C250: $BD $A0 $03 - Load Accumulator with Memory
	STA $BF             ; $C253: $85 $BF - Store Accumulator in Memory
	LDA #$01            ; $C255: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $C257: $9D $E0 $02 - Store Accumulator in Memory
	JSR $8BF2           ; $C25A: $20 $F2 $8B - Jump to New Location Saving Return Address
	BRK                 ; $C25D: $00 - Force Break
	ADC $C2             ; $C263: $65 $C2 - Add Memory to Accumulator with Carry
	CMP ($20,X)         ; $C265: $C1 $20 $D9 - Compare Memory with Accumulator
	SED                 ; $C268: $F8 - Set Decimal Flag
	BRK                 ; $C269: $00 - Force Break
	LSR $9C             ; $C26A: $46 $9C - Shift One Bit Right (Memory or Accumulator)
	LDY #$00            ; $C26C: $A0 $00 - Load Index Y with Memory
	LDA $0440,X         ; $C26E: $BD $40 $04 - Load Accumulator with Memory
	CMP #$58            ; $C271: $C9 $58 - Compare Memory with Accumulator
	BCS $1F             ; $C273: $B0 $1F - Branch on Carry Set
	CLC #$0F            ; $C275: $29 $0F - Clear Carry Flag
	BEQ $08             ; $C277: $F0 $08 - Branch on Result Zero
	LDA $E9             ; $C279: $A5 $E9 - Load Accumulator with Memory
	LSR A               ; $C27B: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	DEC $0440,X         ; $C27E: $DE $40 $04 - Decrement Memory by One
	LDA $0C             ; $C281: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $C283: $4A $20 - Shift One Bit Right (Memory or Accumulator)
	PLP                 ; $C285: $28 - Pull Processor Status from Stack
	LDA #$BD            ; $C286: $A9 $BD - Load Accumulator with Memory
	BEQ $03             ; $C288: $F0 $03 - Branch on Result Zero
	CMP #$03            ; $C28A: $C9 $03 - Compare Memory with Accumulator
	BNE $05             ; $C28C: $D0 $05 - Branch on Result not Zero
	LDA #$21            ; $C28E: $A9 $21 - Load Accumulator with Memory
	JSR $980F           ; $C290: $20 $0F $98 - Jump to New Location Saving Return Address
	INY                 ; $C293: $C8 - Increment Index Y by One
	LDA $0579,Y         ; $C294: $B9 $79 $05 - Load Accumulator with Memory
	STA $03A0,X         ; $C297: $9D $A0 $03 - Store Accumulator in Memory
	PHA                 ; $C29A: $48 - Push Accumulator on Stack
	LDA $057B,Y         ; $C29B: $B9 $7B $05 - Load Accumulator with Memory
	TAY                 ; $C29E: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $C29F: $68 - Pull Accumulator from Stack
	JSR $F913           ; $C2A0: $20 $13 $F9 - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $C2A3: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $08             ; $C2A6: $F0 $08 - Branch on Result Zero
	JSR $F8D9           ; $C2A8: $20 $D9 $F8 - Jump to New Location Saving Return Address
	LDA #$00            ; $C2AB: $A9 $00 - Load Accumulator with Memory
	STA $02E0,X         ; $C2AD: $9D $E0 $02 - Store Accumulator in Memory
	JSR $A9C4           ; $C2B0: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $87F0           ; $C2B3: $20 $F0 $87 - Jump to New Location Saving Return Address
	BEQ $09             ; $C2B6: $F0 $09 - Branch on Result Zero
	JSR $8B65           ; $C2B8: $20 $65 $8B - Jump to New Location Saving Return Address
	JSR $A992           ; $C2BB: $20 $92 $A9 - Jump to New Location Saving Return Address
	JMP $882C           ; $C2BE: $4C $2C $88 - Jump to New Location
	RTS                 ; $C2C1: $60 - Return from Subroutine
	LDA $F7             ; $C2C2: $A5 $F7 - Load Accumulator with Memory
	BEQ $FB             ; $C2C4: $F0 $FB - Branch on Result Zero
	BRK                 ; $C2C6: $00 - Force Break
	DEC $D7FC           ; $C2CC: $CE $FC $D7 - Decrement Memory by One
	JSR $8C8A           ; $C2CF: $20 $8A $8C - Jump to New Location Saving Return Address
	BRK                 ; $C2D2: $00 - Force Break
	ORA #$9C            ; $C2D3: $09 $9C - OR Memory with Accumulator
	LDA $02E0,X         ; $C2D5: $BD $E0 $02 - Load Accumulator with Memory
	BNE $27             ; $C2D8: $D0 $27 - Branch on Result not Zero
	JSR $87F0           ; $C2DA: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $1F             ; $C2DD: $D0 $1F - Branch on Result not Zero
	JSR $C339           ; $C2DF: $20 $39 $C3 - Jump to New Location Saving Return Address
	BCC $1A             ; $C2E2: $90 $1A - Branch on Carry Clear
	LDA #$0E            ; $C2E4: $A9 $0E - Load Accumulator with Memory
	LDY #$9C            ; $C2E6: $A0 $9C - Load Index Y with Memory
	JSR $F9FE           ; $C2E8: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$01            ; $C2EB: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $C2ED: $9D $E0 $02 - Store Accumulator in Memory
	BIT $6F             ; $C2F0: $24 $6F - Test Bits in Memory with Accumulator
	BVC $05             ; $C2F2: $50 $05 - Branch on Overflow Clear
	LDA #$1B            ; $C2F4: $A9 $1B - Load Accumulator with Memory
	STA $03F0,X         ; $C2F6: $9D $F0 $03 - Store Accumulator in Memory
	LDA #$1F            ; $C2F9: $A9 $1F - Load Accumulator with Memory
	JSR $980F           ; $C2FB: $20 $0F $98 - Jump to New Location Saving Return Address
	JMP $C32A           ; $C2FE: $4C $2A $C3 - Jump to New Location
	LDA $03F0,X         ; $C301: $BD $F0 $03 - Load Accumulator with Memory
	CMP #$1D            ; $C304: $C9 $1D - Compare Memory with Accumulator
	BCC $22             ; $C306: $90 $22 - Branch on Carry Clear
	LDA $056F           ; $C308: $AD $6F $05 - Load Accumulator with Memory
	JSR $8960           ; $C30B: $20 $60 $89 - Jump to New Location Saving Return Address
	JSR $87E9           ; $C30E: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $17             ; $C311: $D0 $17 - Branch on Result not Zero
	LDA $02A0,X         ; $C313: $BD $A0 $02 - Load Accumulator with Memory
	BMI $07             ; $C316: $30 $07 - Branch on Result Minus
	CMP #$03            ; $C318: $C9 $03 - Compare Memory with Accumulator
	BCC $03             ; $C31A: $90 $03 - Branch on Carry Clear
	DEC $02A0,X         ; $C31C: $DE $A0 $02 - Decrement Memory by One
	LDA #$00            ; $C31F: $A9 $00 - Load Accumulator with Memory
	LDY #$FC            ; $C321: $A0 $FC - Load Index Y with Memory
	JSR $A118           ; $C323: $20 $18 $A1 - Jump to New Location Saving Return Address
	CLC #$40            ; $C326: $29 $40 - Clear Carry Flag
	BNE $03             ; $C328: $D0 $03 - Branch on Result not Zero
	JMP $D8C6           ; $C32A: $4C $C6 $D8 - Jump to New Location
	TXA                 ; $C32D: $8A - Transfer Index X to Accumulator
	TAY                 ; $C32E: $A8 - Transfer Accumulator to Index Y
	LDA #$FF            ; $C32F: $A9 $FF - Load Accumulator with Memory
	STA $0A             ; $C331: $85 $0A - Store Accumulator in Memory
	LDA #$FF            ; $C333: $A9 $FF - Load Accumulator with Memory
	JSR $8A40           ; $C335: $20 $40 $8A - Jump to New Location Saving Return Address
	RTS                 ; $C338: $60 - Return from Subroutine
	LDY #$03            ; $C339: $A0 $03 - Load Index Y with Memory
	LDA $0200,Y         ; $C33B: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $28             ; $C33E: $F0 $28 - Branch on Result Zero
	LDA $0088,Y         ; $C340: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $C343: $C9 $09 - Compare Memory with Accumulator
	BCS $21             ; $C345: $B0 $21 - Branch on Carry Set
	LDA $0360,X         ; $C347: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $C34A: $38 - Set Carry Flag
	SBC $0360,Y         ; $C34B: $F9 $60 $03 - Subtract Memory from Accumulator with Borrow
	CMP #$FC            ; $C34E: $C9 $FC - Compare Memory with Accumulator
	BCS $04             ; $C350: $B0 $04 - Branch on Carry Set
	CMP #$09            ; $C352: $C9 $09 - Compare Memory with Accumulator
	BCS $12             ; $C354: $B0 $12 - Branch on Carry Set
	LDA $4A,X           ; $C356: $B5 $4A $D9 - Load Accumulator with Memory
	LSR A               ; $C359: $4A $00 - Shift One Bit Right (Memory or Accumulator)
	LDA $0380,X         ; $C35B: $BD $80 $03 - Load Accumulator with Memory
	CLC #$40            ; $C35E: $29 $40 - Clear Carry Flag
	BEQ $04             ; $C360: $F0 $04 - Branch on Result Zero
	BCS $09             ; $C362: $B0 $09 - Branch on Carry Set
	BCC $02             ; $C364: $90 $02 - Branch on Carry Clear
	BCC $05             ; $C366: $90 $05 - Branch on Carry Clear
	DEY                 ; $C368: $88 - Decrement Index Y by One
	BPL $D0             ; $C369: $10 $D0 - Branch on Result Plus
	CLC                 ; $C36B: $18 - Clear Carry Flag
	RTS                 ; $C36C: $60 - Return from Subroutine
	SEC                 ; $C36D: $38 - Set Carry Flag
	RTS                 ; $C36E: $60 - Return from Subroutine
	STA ($C3,X)         ; $C370: $81 $C3 $74 - Store Accumulator in Memory
	LDA #$10            ; $C375: $A9 $10 - Load Accumulator with Memory
	STA $0300,X         ; $C377: $9D $00 $03 - Store Accumulator in Memory
	LDA #$06            ; $C37A: $A9 $06 - Load Accumulator with Memory
	JSR $8BD1           ; $C37C: $20 $D1 $8B - Jump to New Location Saving Return Address
	BRK                 ; $C37F: $00 - Force Break
	LDA $02E0,X         ; $C382: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $14             ; $C385: $F0 $14 - Branch on Result Zero
	BMI $0C             ; $C387: $30 $0C - Branch on Result Minus
	LDA #$EE            ; $C389: $A9 $EE - Load Accumulator with Memory
	LDY #$9B            ; $C38B: $A0 $9B - Load Index Y with Memory
	JSR $F9FE           ; $C38D: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$01            ; $C390: $A9 $01 - Load Accumulator with Memory
	JSR $A92C           ; $C392: $20 $2C $A9 - Jump to New Location Saving Return Address
	JSR $8C73           ; $C395: $20 $73 $8C - Jump to New Location Saving Return Address
	JMP $C40B           ; $C398: $4C $0B $C4 - Jump to New Location
	JSR $87FE           ; $C39B: $20 $FE $87 - Jump to New Location Saving Return Address
	BNE $0F             ; $C39E: $D0 $0F - Branch on Result not Zero
	JSR $C454           ; $C3A0: $20 $54 $C4 - Jump to New Location Saving Return Address
	BCC $0A             ; $C3A3: $90 $0A - Branch on Carry Clear
	LDA #$00            ; $C3A5: $A9 $00 - Load Accumulator with Memory
	STA $0260,Y         ; $C3A7: $99 $60 $02 - Store Accumulator in Memory
	LDA #$01            ; $C3AA: $A9 $01 - Load Accumulator with Memory
	STA $02A0,Y         ; $C3AC: $99 $A0 $02 - Store Accumulator in Memory
	JSR $87E9           ; $C3AF: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $54             ; $C3B2: $D0 $54 - Branch on Result not Zero
	JSR $A114           ; $C3B4: $20 $14 $A1 - Jump to New Location Saving Return Address
	LSR A               ; $C3B7: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	ASL $A0BD           ; $C3B9: $0E $BD $A0 - Shift Left One Bit
	BPL $06             ; $C3BD: $10 $06 - Branch on Result Plus
	INC $0360,X         ; $C3BF: $FE $60 $03 - Increment Memory by One
	JMP $C3C8           ; $C3C2: $4C $C8 $C3 - Jump to New Location
	DEC $0360,X         ; $C3C5: $DE $60 $03 - Decrement Memory by One
	JSR $A2B8           ; $C3C8: $20 $B8 $A2 - Jump to New Location Saving Return Address
	JSR $A28A           ; $C3CB: $20 $8A $A2 - Jump to New Location Saving Return Address
	BCS $1F             ; $C3CE: $B0 $1F - Branch on Carry Set
	JSR $C40E           ; $C3D0: $20 $0E $C4 - Jump to New Location Saving Return Address
	BCC $08             ; $C3D3: $90 $08 - Branch on Carry Clear
	BNE $50             ; $C3D5: $D0 $50 - Branch on Result not Zero
	JSR $8833           ; $C3D7: $20 $33 $88 - Jump to New Location Saving Return Address
	JMP $C428           ; $C3DA: $4C $28 $C4 - Jump to New Location
	LDA $0440,Y         ; $C3DD: $B9 $40 $04 - Load Accumulator with Memory
	CMP #$02            ; $C3E0: $C9 $02 - Compare Memory with Accumulator
	BCS $E7             ; $C3E2: $B0 $E7 - Branch on Carry Set
	JSR $9805           ; $C3E4: $20 $05 $98 - Jump to New Location Saving Return Address
	LDA #$02            ; $C3E7: $A9 $02 - Load Accumulator with Memory
	STA $0440,Y         ; $C3E9: $99 $40 $04 - Store Accumulator in Memory
	JMP $8833           ; $C3EC: $4C $33 $88 - Jump to New Location
	INC $0300,X         ; $C3EF: $FE $00 $03 - Increment Memory by One
	LDA $0300,X         ; $C3F2: $BD $00 $03 - Load Accumulator with Memory
	CLC #$3F            ; $C3F5: $29 $3F - Clear Carry Flag
	CMP #$20            ; $C3F7: $C9 $20 - Compare Memory with Accumulator
	BCS $08             ; $C3F9: $B0 $08 - Branch on Carry Set
	LDA #$06            ; $C3FB: $A9 $06 - Load Accumulator with Memory
	JSR $8BD1           ; $C3FD: $20 $D1 $8B - Jump to New Location Saving Return Address
	JMP $C408           ; $C400: $4C $08 $C4 - Jump to New Location
	LDA #$06            ; $C403: $A9 $06 - Load Accumulator with Memory
	JSR $8BC1           ; $C405: $20 $C1 $8B - Jump to New Location Saving Return Address
	JSR $A9C4           ; $C408: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JMP $D8CC           ; $C40B: $4C $CC $D8 - Jump to New Location
	LDA $0088,Y         ; $C40E: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $C411: $C9 $09 - Compare Memory with Accumulator
	BCC $12             ; $C413: $90 $12 - Branch on Carry Clear
	STX $DA             ; $C415: $86 $DA - Store Index X in Memory
	TYA                 ; $C417: $98 - Transfer Index Y to Accumulator
	TAX                 ; $C418: $AA - Transfer Accumulator to Index X
	LDY #$FE            ; $C419: $A0 $FE - Load Index Y with Memory
	JSR $A130           ; $C41B: $20 $30 $A1 - Jump to New Location Saving Return Address
	SEC                 ; $C41E: $38 - Set Carry Flag
	BNE $06             ; $C41F: $D0 $06 - Branch on Result not Zero
	TXA                 ; $C421: $8A - Transfer Index X to Accumulator
	TAY                 ; $C422: $A8 - Transfer Accumulator to Index Y
	LDX $DA             ; $C423: $A6 $DA - Load Index X with Memory
	LDA #$00            ; $C425: $A9 $00 - Load Accumulator with Memory
	RTS                 ; $C427: $60 - Return from Subroutine
	JSR $9805           ; $C428: $20 $05 $98 - Jump to New Location Saving Return Address
	LDA #$00            ; $C42B: $A9 $00 - Load Accumulator with Memory
	STA $7A             ; $C42D: $85 $7A - Store Accumulator in Memory
	LDA #$01            ; $C42F: $A9 $01 - Load Accumulator with Memory
	STA $0440,Y         ; $C431: $99 $40 $04 - Store Accumulator in Memory
	LDA #$FE            ; $C434: $A9 $FE - Load Accumulator with Memory
	STA $02A0,Y         ; $C436: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$00            ; $C439: $A9 $00 - Load Accumulator with Memory
	STA $0088,Y         ; $C43B: $99 $88 $00 - Store Accumulator in Memory
	STA $02C0,Y         ; $C43E: $99 $C0 $02 - Store Accumulator in Memory
	LDA #$6E            ; $C441: $A9 $6E - Load Accumulator with Memory
	STA $053E,Y         ; $C443: $99 $3E $05 - Store Accumulator in Memory
	TYA                 ; $C446: $98 - Transfer Index Y to Accumulator
	TAX                 ; $C447: $AA - Transfer Accumulator to Index X
	LDA #$43            ; $C448: $A9 $43 - Load Accumulator with Memory
	JSR $8B2E           ; $C44A: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $0A             ; $C44D: $90 $0A - Branch on Carry Clear
	LDA #$01            ; $C44F: $A9 $01 - Load Accumulator with Memory
	STA $0260,Y         ; $C451: $99 $60 $02 - Store Accumulator in Memory
	LDA #$43            ; $C454: $A9 $43 - Load Accumulator with Memory
	JSR $8B2E           ; $C456: $20 $2E $8B - Jump to New Location Saving Return Address
	SEC                 ; $C459: $38 - Set Carry Flag
	RTS                 ; $C45A: $60 - Return from Subroutine
	JSR $1720           ; $C45C: $20 $20 $17 - Jump to New Location Saving Return Address
	JSR $170F           ; $C463: $20 $0F $17 - Jump to New Location Saving Return Address
	ORA ($18),Y         ; $C467: $11 $18 $A4 - OR Memory with Accumulator
	JSR $8E2F           ; $C46B: $20 $2F $8E - Jump to New Location Saving Return Address
	STA $7F             ; $C46E: $85 $7F - Store Accumulator in Memory
	RTS                 ; $C470: $60 - Return from Subroutine
	LDA $7F             ; $C471: $A5 $7F - Load Accumulator with Memory
	LSR A               ; $C473: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $C475: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	STA $DE             ; $C477: $85 $DE - Store Accumulator in Memory
	LDA $7F             ; $C479: $A5 $7F - Load Accumulator with Memory
	CLC #$0F            ; $C47B: $29 $0F - Clear Carry Flag
	BEQ $04             ; $C47D: $F0 $04 - Branch on Result Zero
	CMP #$05            ; $C47F: $C9 $05 - Compare Memory with Accumulator
	BNE $06             ; $C481: $D0 $06 - Branch on Result not Zero
	JSR $C4F6           ; $C483: $20 $F6 $C4 - Jump to New Location Saving Return Address
	JMP $C4B7           ; $C486: $4C $B7 $C4 - Jump to New Location
	CMP $DE             ; $C489: $C5 $DE - Compare Memory with Accumulator
	BNE $2A             ; $C48B: $D0 $2A - Branch on Result not Zero
	SEC                 ; $C48D: $38 - Set Carry Flag
	JSR $C4BC           ; $C48E: $20 $BC $C4 - Jump to New Location Saving Return Address
	JSR $C4FB           ; $C491: $20 $FB $C4 - Jump to New Location Saving Return Address
	JMP $C4B7           ; $C494: $4C $B7 $C4 - Jump to New Location
	LDA $7F             ; $C497: $A5 $7F - Load Accumulator with Memory
	CLC #$0F            ; $C499: $29 $0F - Clear Carry Flag
	CLC                 ; $C49B: $18 - Clear Carry Flag
	JSR $C4BC           ; $C49C: $20 $BC $C4 - Jump to New Location Saving Return Address
	BCC $16             ; $C49F: $90 $16 - Branch on Carry Clear
	JSR $C4FB           ; $C4A1: $20 $FB $C4 - Jump to New Location Saving Return Address
	LDA $004A,Y         ; $C4A4: $B9 $4A $00 - Load Accumulator with Memory
	CLC #$F0            ; $C4A7: $29 $F0 - Clear Carry Flag
	ADC #$06            ; $C4A9: $69 $06 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $C4AB: $99 $4A $00 - Store Accumulator in Memory
	LDA $0360,Y         ; $C4AE: $B9 $60 $03 - Load Accumulator with Memory
	SEC                 ; $C4B1: $38 - Set Carry Flag
	SBC #$08            ; $C4B2: $E9 $08 - Subtract Memory from Accumulator with Borrow
	STA $0360,Y         ; $C4B4: $99 $60 $03 - Store Accumulator in Memory
	LDA #$01            ; $C4B7: $A9 $01 - Load Accumulator with Memory
	JMP $C468           ; $C4B9: $4C $68 $C4 - Jump to New Location
	ROR $0531           ; $C4BC: $6E $31 $05 - Rotate One Bit Right
	TAY                 ; $C4BF: $A8 - Transfer Accumulator to Index Y
	LDA $04FE           ; $C4C0: $AD $FE $04 - Load Accumulator with Memory
	CMP #$04            ; $C4C3: $C9 $04 - Compare Memory with Accumulator
	BCS $01             ; $C4C5: $B0 $01 - Branch on Carry Set
	INY                 ; $C4C7: $C8 - Increment Index Y by One
	CMP #$02            ; $C4C8: $C9 $02 - Compare Memory with Accumulator
	BCS $03             ; $C4CA: $B0 $03 - Branch on Carry Set
	INY                 ; $C4CC: $C8 - Increment Index Y by One
	BNE $16             ; $C4CD: $D0 $16 - Branch on Result not Zero
	CPY #$09            ; $C4CF: $C0 $09 - Compare Memory and Index Y
	BEQ $10             ; $C4D1: $F0 $10 - Branch on Result Zero
	JSR $8BE5           ; $C4D3: $20 $E5 $8B - Jump to New Location Saving Return Address
	SBC #$80            ; $C4D6: $E9 $80 - Subtract Memory from Accumulator with Borrow
	STA $DE             ; $C4D8: $85 $DE - Store Accumulator in Memory
	BCC $09             ; $C4DA: $90 $09 - Branch on Carry Clear
	JSR $9FDE           ; $C4DC: $20 $DE $9F - Jump to New Location Saving Return Address
	CMP $DE             ; $C4DF: $C5 $DE - Compare Memory with Accumulator
	BCS $02             ; $C4E1: $B0 $02 - Branch on Carry Set
	LDY #$0C            ; $C4E3: $A0 $0C - Load Index Y with Memory
	LDA $C45B,Y         ; $C4E5: $B9 $5B $C4 - Load Accumulator with Memory
	BIT $0531           ; $C4E8: $2C $31 $05 - Test Bits in Memory with Accumulator
	BPL $06             ; $C4EB: $10 $06 - Branch on Result Plus
	CMP #$17            ; $C4ED: $C9 $17 - Compare Memory with Accumulator
	BNE $02             ; $C4EF: $D0 $02 - Branch on Result not Zero
	LDA #$0F            ; $C4F1: $A9 $0F - Load Accumulator with Memory
	JMP $8B4D           ; $C4F3: $4C $4D $8B - Jump to New Location
	LDA #$15            ; $C4F6: $A9 $15 - Load Accumulator with Memory
	JSR $C4F3           ; $C4F8: $20 $F3 $C4 - Jump to New Location Saving Return Address
	BCC $14             ; $C4FB: $90 $14 - Branch on Carry Clear
	LDA $30             ; $C4FD: $A5 $30 - Load Accumulator with Memory
	CLC #$F8            ; $C4FF: $29 $F8 - Clear Carry Flag
	CLC                 ; $C501: $18 - Clear Carry Flag
	ADC #$04            ; $C502: $69 $04 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $C504: $99 $4A $00 - Store Accumulator in Memory
	LDA $31             ; $C507: $A5 $31 - Load Accumulator with Memory
	CLC #$F8            ; $C509: $29 $F8 - Clear Carry Flag
	CLC                 ; $C50B: $18 - Clear Carry Flag
	ADC #$04            ; $C50C: $69 $04 - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $C50E: $99 $60 $03 - Store Accumulator in Memory
	RTS                 ; $C511: $60 - Return from Subroutine
	JSR $C515           ; $C512: $20 $15 $C5 - Jump to New Location Saving Return Address
	LDA $80             ; $C515: $A5 $80 - Load Accumulator with Memory
	BEQ $FC             ; $C517: $F0 $FC - Branch on Result Zero
	LDA #$00            ; $C519: $A9 $00 - Load Accumulator with Memory
	STA $80             ; $C51B: $85 $80 - Store Accumulator in Memory
	RTS                 ; $C51D: $60 - Return from Subroutine
	LDA #$00            ; $C51E: $A9 $00 - Load Accumulator with Memory
	STA $80             ; $C520: $85 $80 - Store Accumulator in Memory
	LDA $82             ; $C522: $A5 $82 - Load Accumulator with Memory
	BNE $F8             ; $C524: $D0 $F8 - Branch on Result not Zero
	RTS                 ; $C526: $60 - Return from Subroutine
	STA $83             ; $C527: $85 $83 - Store Accumulator in Memory
	LDA $81             ; $C529: $A5 $81 - Load Accumulator with Memory
	PHA                 ; $C52B: $48 - Push Accumulator on Stack
	LDA #$80            ; $C52C: $A9 $80 - Load Accumulator with Memory
	STA $81             ; $C52E: $85 $81 - Store Accumulator in Memory
	TYA                 ; $C530: $98 - Transfer Index Y to Accumulator
	LDY $82             ; $C531: $A4 $82 - Load Index Y with Memory
	STA $0536,Y         ; $C533: $99 $36 $05 - Store Accumulator in Memory
	LDA $83             ; $C536: $A5 $83 - Load Accumulator with Memory
	STA $0532,Y         ; $C538: $99 $32 $05 - Store Accumulator in Memory
	INC $82             ; $C53B: $E6 $82 - Increment Memory by One
	PLA                 ; $C53D: $68 - Pull Accumulator from Stack
	STA $81             ; $C53E: $85 $81 - Store Accumulator in Memory
	RTS                 ; $C540: $60 - Return from Subroutine
	LDA $81             ; $C541: $A5 $81 - Load Accumulator with Memory
	PHA                 ; $C543: $48 - Push Accumulator on Stack
	LDA #$80            ; $C544: $A9 $80 - Load Accumulator with Memory
	STA $81             ; $C546: $85 $81 - Store Accumulator in Memory
	LDY $82             ; $C548: $A4 $82 - Load Index Y with Memory
	BEQ $02             ; $C54A: $F0 $02 - Branch on Result Zero
	DEC $82             ; $C54C: $C6 $82 - Decrement Memory by One
	PLA                 ; $C54E: $68 - Pull Accumulator from Stack
	STA $81             ; $C54F: $85 $81 - Store Accumulator in Memory
	RTS                 ; $C551: $60 - Return from Subroutine
	LDY $82             ; $C552: $A4 $82 - Load Index Y with Memory
	BEQ $08             ; $C554: $F0 $08 - Branch on Result Zero
	LDA $0535,Y         ; $C556: $B9 $35 $05 - Load Accumulator with Memory
	PHA                 ; $C559: $48 - Push Accumulator on Stack
	LDA $0531,Y         ; $C55A: $B9 $31 $05 - Load Accumulator with Memory
	PHA                 ; $C55D: $48 - Push Accumulator on Stack
	RTS                 ; $C55E: $60 - Return from Subroutine
	PHA                 ; $C55F: $48 - Push Accumulator on Stack
	TXA                 ; $C560: $8A - Transfer Index X to Accumulator
	PHA                 ; $C561: $48 - Push Accumulator on Stack
	TYA                 ; $C562: $98 - Transfer Index Y to Accumulator
	PHA                 ; $C563: $48 - Push Accumulator on Stack
	BIT $81             ; $C564: $24 $81 - Test Bits in Memory with Accumulator
	BVS $31             ; $C566: $70 $31 - Branch on Overflow Set
	BMI $32             ; $C568: $30 $32 - Branch on Result Minus
	LDA $80             ; $C56A: $A5 $80 - Load Accumulator with Memory
	BNE $15             ; $C56C: $D0 $15 - Branch on Result not Zero
	LDA #$00            ; $C56E: $A9 $00 - Load Accumulator with Memory
	STA $2003           ; $C570: $8D $03 $20 - Store Accumulator in Memory
	LDA #$07            ; $C573: $A9 $07 - Load Accumulator with Memory
	STA $4014           ; $C575: $8D $14 $40 - Store Accumulator in Memory
	JSR $C552           ; $C578: $20 $52 $C5 - Jump to New Location Saving Return Address
	LDA $71             ; $C57B: $A5 $71 - Load Accumulator with Memory
	CMP #$02            ; $C57D: $C9 $02 - Compare Memory with Accumulator
	BEQ $02             ; $C57F: $F0 $02 - Branch on Result Zero
	INC $E9             ; $C581: $E6 $E9 - Increment Memory by One
	LDA #$01            ; $C583: $A9 $01 - Load Accumulator with Memory
	STA $80             ; $C585: $85 $80 - Store Accumulator in Memory
	BIT $2002           ; $C587: $2C $02 $20 - Test Bits in Memory with Accumulator
	LDA $CF             ; $C58A: $A5 $CF - Load Accumulator with Memory
	STA $2005           ; $C58C: $8D $05 $20 - Store Accumulator in Memory
	LDA $CD             ; $C58F: $A5 $CD - Load Accumulator with Memory
	STA $2005           ; $C591: $8D $05 $20 - Store Accumulator in Memory
	LDA $FE             ; $C594: $A5 $FE - Load Accumulator with Memory
	STA $2000           ; $C596: $8D $00 $20 - Store Accumulator in Memory
	JSR $9736           ; $C599: $20 $36 $97 - Jump to New Location Saving Return Address
	PLA                 ; $C59C: $68 - Pull Accumulator from Stack
	TAY                 ; $C59D: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $C59E: $68 - Pull Accumulator from Stack
	TAX                 ; $C59F: $AA - Transfer Accumulator to Index X
	PLA                 ; $C5A0: $68 - Pull Accumulator from Stack
	RTI                 ; $C5A1: $40 - Return from Interrupt
	CMP ($B1),Y         ; $C5A3: $D1 $B1 $AC - Compare Memory with Accumulator
	ORA ($0A,X)         ; $C5A8: $01 $0A $C6 - OR Memory with Accumulator
	RTS                 ; $C5AB: $60 - Return from Subroutine
	ASL $B0,X           ; $C5AC: $16 $B0 - Shift Left One Bit
	LDX #$3B            ; $C5AE: $A2 $3B - Load Index X with Memory
	ORA ($15,X)         ; $C5B1: $01 $15 $A1 - OR Memory with Accumulator
	ADC ($E3,X)         ; $C5B4: $61 $E3 $F7 - Add Memory to Accumulator with Carry
	AND ($12,X)         ; $C5BB: $21 $12 $C6 - AND Memory with Accumulator
	CLI                 ; $C5BE: $58 - Clear Interrupt Disable Bit
	DEC $65,X           ; $C5BF: $D6 $65 - Decrement Memory by One
	LDA $86             ; $C5C2: $A5 $86 - Load Accumulator with Memory
	DEC $B2             ; $C5C4: $C6 $B2 - Decrement Memory by One
	BCS $61             ; $C5C6: $B0 $61 - Branch on Carry Set
	ADC #$4C            ; $C5C8: $69 $4C - Add Memory to Accumulator with Carry
	BPL $C4             ; $C5CE: $10 $C4 - Branch on Result Plus
	ROR $06             ; $C5D0: $66 $06 - Rotate One Bit Right
	ASL $14             ; $C5D4: $06 $14 - Shift Left One Bit
	ROL $482C           ; $C5DA: $2E $2C $48 - Rotate One Bit Left
	STA $1B84           ; $C5DD: $8D $84 $1B - Store Accumulator in Memory
	STA $9B4D           ; $C5E0: $8D $4D $9B - Store Accumulator in Memory
	ADC ($B0,X)         ; $C5E3: $61 $B0 $12 - Add Memory to Accumulator with Carry
	CLD                 ; $C5E6: $D8 - Clear Decimal Mode
	LDA $5630,X         ; $C5E7: $BD $30 $56 - Load Accumulator with Memory
	ASL $15             ; $C5EB: $06 $15 - Shift Left One Bit
	SBC $77,X           ; $C5EF: $F5 $77 - Subtract Memory from Accumulator with Borrow
	BEQ $E5             ; $C5F1: $F0 $E5 - Branch on Result Zero
	AND ($C7),Y         ; $C5F5: $31 $C7 $BC - AND Memory with Accumulator
	LSR $78F0,X         ; $C5F8: $5E $F0 $78 - Shift One Bit Right (Memory or Accumulator)
	ORA $40FC,Y         ; $C5FB: $19 $FC $40 - OR Memory with Accumulator
	SED                 ; $C5FE: $F8 - Set Decimal Flag
	CPY $2D             ; $C604: $C4 $2D - Compare Memory and Index Y
	PLA                 ; $C607: $68 - Pull Accumulator from Stack
	ADC ($01),Y         ; $C608: $71 $01 $F7 - Add Memory to Accumulator with Carry
	LDA $80             ; $C60B: $A5 $80 - Load Accumulator with Memory
	LDA ($62,X)         ; $C612: $A1 $62 $D8 - Load Accumulator with Memory
	LSR $2F,X           ; $C615: $56 $2F - Shift One Bit Right (Memory or Accumulator)
	BIT $5E1C           ; $C618: $2C $1C $5E - Test Bits in Memory with Accumulator
	JSR $A0B6           ; $C61B: $20 $B6 $A0 - Jump to New Location Saving Return Address
	SED                 ; $C61E: $F8 - Set Decimal Flag
	ROL A               ; $C61F: $2A - Rotate One Bit Left
	STA $17D5           ; $C621: $8D $D5 $17 - Store Accumulator in Memory
	STX $21F1           ; $C62C: $8E $F1 $21 - Store Index X in Memory
	PHA                 ; $C62F: $48 - Push Accumulator on Stack
	STY $5587           ; $C630: $8C $87 $55 - Sore Index Y in Memory
	AND $95,X           ; $C634: $35 $95 - AND Memory with Accumulator
	CPX $BA             ; $C636: $E4 $BA - Compare Memory and Index Y
	DEY                 ; $C639: $88 - Decrement Index Y by One
	LDA $A832,X         ; $C63A: $BD $32 $A8 - Load Accumulator with Memory
	SBC #$9C            ; $C63D: $E9 $9C - Subtract Memory from Accumulator with Borrow
	AND $1E,X           ; $C640: $35 $1E - AND Memory with Accumulator
	ASL A               ; $C644: $0A - Shift Left One Bit
	DEY                 ; $C645: $88 - Decrement Index Y by One
	BMI $20             ; $C647: $30 $20 - Branch on Result Minus
	STA ($78),Y         ; $C64B: $91 $78 $2A - Store Accumulator in Memory
	TXS                 ; $C64F: $9A - Transfer Index X to Stack Register
	BCS $21             ; $C650: $B0 $21 - Branch on Carry Set
	EOR $0D53           ; $C652: $4D $53 $0D - Exclusive-OR Memory with Accumulator
	AND ($F4),Y         ; $C655: $31 $F4 $DA - AND Memory with Accumulator
	BIT $7098           ; $C658: $2C $98 $70 - Test Bits in Memory with Accumulator
	AND ($A5,X)         ; $C65B: $21 $A5 $80 - AND Memory with Accumulator
	LDA $FF             ; $C65E: $A5 $FF - Load Accumulator with Memory
	CLC                 ; $C662: $18 - Clear Carry Flag
	LSR A               ; $C663: $4A $11 - Shift One Bit Right (Memory or Accumulator)
	STA ($0D,X)         ; $C667: $81 $0D $4C - Store Accumulator in Memory
	STX $A588           ; $C66B: $8E $88 $A5 - Store Index X in Memory
	SBC ($91),Y         ; $C66E: $F1 $91 $E3 - Subtract Memory from Accumulator with Borrow
	ROL $2104           ; $C677: $2E $04 $21 - Rotate One Bit Left
	ROL $33             ; $C67B: $26 $33 - Rotate One Bit Left
	JSR $C60C           ; $C67D: $20 $0C $C6 - Jump to New Location Saving Return Address
	STA $E171,Y         ; $C680: $99 $71 $E1 - Store Accumulator in Memory
	ADC ($28,X)         ; $C683: $61 $28 $AE - Add Memory to Accumulator with Carry
	AND $FC             ; $C686: $25 $FC - AND Memory with Accumulator
	SEI                 ; $C688: $78 - Set Interrupt Disable Status
	SEC                 ; $C689: $38 - Set Carry Flag
	BPL $41             ; $C68A: $10 $41 - Branch on Result Plus
	LDX $E92A           ; $C68F: $AE $2A $E9 - Load Index X with Memory
	STX $68,Y           ; $C692: $96 $68 - Store Index X in Memory
	INC $9051           ; $C694: $EE $51 $90 - Increment Memory by One
	SBC $AD,X           ; $C698: $F5 $AD - Subtract Memory from Accumulator with Borrow
	EOR ($55),Y         ; $C69A: $51 $55 $2F - Exclusive-OR Memory with Accumulator
	BRK                 ; $C69E: $00 - Force Break
	ADC $55,X           ; $C69F: $75 $55 - Add Memory to Accumulator with Carry
	EOR $77,X           ; $C6A1: $55 $77 - Exclusive-OR Memory with Accumulator
	DEX                 ; $C6A8: $CA - Decrement Index X by One
	LDY $2EAB           ; $C6AA: $AC $AB $2E - Load Index Y with Memory
	BCS $25             ; $C6AE: $B0 $25 - Branch on Carry Set
	CLC                 ; $C6B1: $18 - Clear Carry Flag
	STA $3118,X         ; $C6B4: $9D $18 $31 - Store Accumulator in Memory
	SBC $D753,X         ; $C6B7: $FD $53 $D7 - Subtract Memory from Accumulator with Borrow
	ROL $820C,X         ; $C6BB: $3E $0C $82 - Rotate One Bit Left
	CPX $5D             ; $C6BF: $E4 $5D - Compare Memory and Index Y
	LDA #$0A            ; $C6C2: $A9 $0A - Load Accumulator with Memory
	ROL A               ; $C6C4: $2A - Rotate One Bit Left
	LDA $F0             ; $C6C6: $A5 $F0 - Load Accumulator with Memory
	INX                 ; $C6C9: $E8 - Increment Index X by One
	EOR $D1,X           ; $C6CD: $55 $D1 - Exclusive-OR Memory with Accumulator
	CLC #$8A            ; $C6CF: $29 $8A - Clear Carry Flag
	STA $7CE6,Y         ; $C6D2: $99 $E6 $7C - Store Accumulator in Memory
	CLC                 ; $C6D5: $18 - Clear Carry Flag
	CPX #$8E            ; $C6D6: $E0 $8E - Compare Memory and Index Y
	ROL $22,X           ; $C6D8: $36 $22 - Rotate One Bit Left
	JMP ($AE08)         ; $C6DA: $6C $08 $AE - Jump to New Location
	AND ($F0),Y         ; $C6DD: $31 $F0 $D2 - AND Memory with Accumulator
	LDX $8F0C,Y         ; $C6E1: $BE $0C $8F - Load Index X with Memory
	SED                 ; $C6E4: $F8 - Set Decimal Flag
	TAX                 ; $C6E6: $AA - Transfer Accumulator to Index X
	SBC #$0A            ; $C6E7: $E9 $0A - Subtract Memory from Accumulator with Borrow
	LDA ($99,X)         ; $C6EA: $A1 $99 $E6 - Load Accumulator with Memory
	EOR $069F,Y         ; $C6ED: $59 $9F $06 - Exclusive-OR Memory with Accumulator
	AND $21,X           ; $C6F0: $35 $21 - AND Memory with Accumulator
	AND ($FF),Y         ; $C6F2: $31 $FF $CD - AND Memory with Accumulator
	ASL $197E,X         ; $C6F6: $1E $7E $19 - Shift Left One Bit
	DEC $65             ; $C6F9: $C6 $65 - Decrement Memory by One
	STA $6470,Y         ; $C6FB: $99 $70 $64 - Store Accumulator in Memory
	LDA $8926           ; $C6FF: $AD $26 $89 - Load Accumulator with Memory
	LDA $34             ; $C702: $A5 $34 - Load Accumulator with Memory
	JMP $2E93           ; $C704: $4C $93 $2E - Jump to New Location
	ADC $5E00,X         ; $C708: $7D $00 $5E - Add Memory to Accumulator with Carry
	LDA $E2             ; $C70C: $A5 $E2 - Load Accumulator with Memory
	RTI                 ; $C70E: $40 - Return from Interrupt
	CMP ($93,X)         ; $C70F: $C1 $93 $81 - Compare Memory with Accumulator
	LSR $5F             ; $C712: $46 $5F - Shift One Bit Right (Memory or Accumulator)
	ASL $9C0C           ; $C716: $0E $0C $9C - Shift Left One Bit
	TXA                 ; $C719: $8A - Transfer Index X to Accumulator
	ORA ($6C),Y         ; $C71A: $11 $6C $1B - OR Memory with Accumulator
	EOR $E017,X         ; $C721: $5D $17 $E0 - Exclusive-OR Memory with Accumulator
	AND $0A,X           ; $C724: $35 $0A - AND Memory with Accumulator
	BRK                 ; $C727: $00 - Force Break
	EOR ($83,X)         ; $C729: $41 $83 $9A - Exclusive-OR Memory with Accumulator
	INC $EFBF           ; $C72C: $EE $BF $EF - Increment Memory by One
	EOR $C0,X           ; $C730: $55 $C0 - Exclusive-OR Memory with Accumulator
	ROL $F2CB           ; $C733: $2E $CB $F2 - Rotate One Bit Left
	SED                 ; $C736: $F8 - Set Decimal Flag
	SED                 ; $C738: $F8 - Set Decimal Flag
	ORA ($53),Y         ; $C73A: $11 $53 $1B - OR Memory with Accumulator
	JMP ($E530)         ; $C73D: $6C $30 $E5 - Jump to New Location
	LSR A               ; $C740: $4A $3C - Shift One Bit Right (Memory or Accumulator)
	ORA $52,X           ; $C743: $15 $52 - OR Memory with Accumulator
	JMP ($D330)         ; $C746: $6C $30 $D3 - Jump to New Location
	CMP $1A2B,X         ; $C74D: $DD $2B $1A - Compare Memory with Accumulator
	ORA ($C9,X)         ; $C755: $01 $C9 $23 - OR Memory with Accumulator
	ORA $40,X           ; $C758: $15 $40 - OR Memory with Accumulator
	LDY #$06            ; $C75B: $A0 $06 - Load Index Y with Memory
	LDA $C749,X         ; $C75D: $BD $49 $C7 - Load Accumulator with Memory
	STA $00DC,Y         ; $C760: $99 $DC $00 - Store Accumulator in Memory
	DEX                 ; $C763: $CA - Decrement Index X by One
	DEY                 ; $C764: $88 - Decrement Index Y by One
	BPL $F6             ; $C765: $10 $F6 - Branch on Result Plus
	INX                 ; $C767: $E8 - Increment Index X by One
	LDA $C750,X         ; $C768: $BD $50 $C7 - Load Accumulator with Memory
	LDY $C751,X         ; $C76B: $BC $51 $C7 - Load Index Y with Memory
	JSR $A62A           ; $C76E: $20 $2A $A6 - Jump to New Location Saving Return Address
	LDA #$00            ; $C771: $A9 $00 - Load Accumulator with Memory
	STA $DA             ; $C773: $85 $DA - Store Accumulator in Memory
	STA $0A             ; $C775: $85 $0A - Store Accumulator in Memory
	LDA #$06            ; $C777: $A9 $06 - Load Accumulator with Memory
	STA $DB             ; $C779: $85 $DB - Store Accumulator in Memory
	STA $0B             ; $C77B: $85 $0B - Store Accumulator in Memory
	LDA #$A2            ; $C77D: $A9 $A2 - Load Accumulator with Memory
	LDY #$C5            ; $C77F: $A0 $C5 - Load Index Y with Memory
	JSR $CAA2           ; $C781: $20 $A2 $CA - Jump to New Location Saving Return Address
	JSR $CAB1           ; $C784: $20 $B1 $CA - Jump to New Location Saving Return Address
	BEQ $2E             ; $C787: $F0 $2E - Branch on Result Zero
	JSR $CAB1           ; $C789: $20 $B1 $CA - Jump to New Location Saving Return Address
	BEQ $24             ; $C78C: $F0 $24 - Branch on Result Zero
	LDY #$08            ; $C78E: $A0 $08 - Load Index Y with Memory
	JSR $CAB7           ; $C790: $20 $B7 $CA - Jump to New Location Saving Return Address
	STA $E3             ; $C793: $85 $E3 - Store Accumulator in Memory
	LDA $DA             ; $C795: $A5 $DA - Load Accumulator with Memory
	CLC                 ; $C797: $18 - Clear Carry Flag
	SBC $E3             ; $C798: $E5 $E3 - Subtract Memory from Accumulator with Borrow
	STA $0A             ; $C79A: $85 $0A - Store Accumulator in Memory
	JSR $CAB5           ; $C79C: $20 $B5 $CA - Jump to New Location Saving Return Address
	TAX                 ; $C79F: $AA - Transfer Accumulator to Index X
	LDY #$00            ; $C7A0: $A0 $00 - Load Index Y with Memory
	LDA ($0A),Y         ; $C7A2: $B1 $0A $20 - Load Accumulator with Memory
	CMP ($C7,X)         ; $C7A5: $C1 $C7 $24 - Compare Memory with Accumulator
	BMI $15             ; $C7A9: $30 $15 - Branch on Result Minus
	INC $0A             ; $C7AB: $E6 $0A - Increment Memory by One
	DEX                 ; $C7AD: $CA - Decrement Index X by One
	BPL $F0             ; $C7AE: $10 $F0 - Branch on Result Plus
	BMI $D2             ; $C7B0: $30 $D2 - Branch on Result Minus
	LDY #$08            ; $C7B2: $A0 $08 - Load Index Y with Memory
	JSR $CAB7           ; $C7B4: $20 $B7 $CA - Jump to New Location Saving Return Address
	LDY #$00            ; $C7B7: $A0 $00 - Load Index Y with Memory
	JSR $C7C1           ; $C7B9: $20 $C1 $C7 - Jump to New Location Saving Return Address
	BIT $E2             ; $C7BC: $24 $E2 - Test Bits in Memory with Accumulator
	BPL $C4             ; $C7BE: $10 $C4 - Branch on Result Plus
	RTS                 ; $C7C0: $60 - Return from Subroutine
	STA ($DA),Y         ; $C7C1: $91 $DA $E6 - Store Accumulator in Memory
	BIT $DD             ; $C7C5: $24 $DD - Test Bits in Memory with Accumulator
	BPL $1F             ; $C7C7: $10 $1F - Branch on Result Plus
	BIT $DF             ; $C7C9: $24 $DF - Test Bits in Memory with Accumulator
	BPL $06             ; $C7CB: $10 $06 - Branch on Result Plus
	STA $2007           ; $C7CD: $8D $07 $20 - Store Accumulator in Memory
	DEC $E2             ; $C7D0: $C6 $E2 - Decrement Memory by One
	RTS                 ; $C7D2: $60 - Return from Subroutine
	STA $2007           ; $C7D3: $8D $07 $20 - Store Accumulator in Memory
	LDA $DE             ; $C7D6: $A5 $DE - Load Accumulator with Memory
	BNE $0B             ; $C7D8: $D0 $0B - Branch on Result not Zero
	DEC $DF             ; $C7DA: $C6 $DF - Decrement Memory by One
	BPL $07             ; $C7DC: $10 $07 - Branch on Result Plus
	LDY $E1             ; $C7DE: $A4 $E1 - Load Index Y with Memory
	LDA $E0             ; $C7E0: $A5 $E0 - Load Accumulator with Memory
	JSR $EEDE           ; $C7E2: $20 $DE $EE - Jump to New Location Saving Return Address
	DEC $DE             ; $C7E5: $C6 $DE - Decrement Memory by One
	RTS                 ; $C7E7: $60 - Return from Subroutine
	LDA $DC             ; $C7E8: $A5 $DC - Load Accumulator with Memory
	BNE $02             ; $C7EA: $D0 $02 - Branch on Result not Zero
	DEC $DD             ; $C7EC: $C6 $DD - Decrement Memory by One
	DEC $DC             ; $C7EE: $C6 $DC - Decrement Memory by One
	RTS                 ; $C7F0: $60 - Return from Subroutine
	INC $F6C7,X         ; $C7F2: $FE $C7 $F6 - Increment Memory by One
	LDA #$22            ; $C7F7: $A9 $22 - Load Accumulator with Memory
	STA $0380,X         ; $C7F9: $9D $80 $03 - Store Accumulator in Memory
	BRK                 ; $C7FC: $00 - Force Break
	STA ($9C,X)         ; $C7FD: $81 $9C $20 - Store Accumulator in Memory
	SBC #$87            ; $C800: $E9 $87 - Subtract Memory from Accumulator with Borrow
	BNE $4B             ; $C802: $D0 $4B - Branch on Result not Zero
	JSR $A2CF           ; $C804: $20 $CF $A2 - Jump to New Location Saving Return Address
	BCS $46             ; $C807: $B0 $46 - Branch on Carry Set
	LDA $02E0,X         ; $C809: $BD $E0 $02 - Load Accumulator with Memory
	CMP #$02            ; $C80C: $C9 $02 - Compare Memory with Accumulator
	BCS $3F             ; $C80E: $B0 $3F - Branch on Carry Set
	LDA $4A,X           ; $C810: $B5 $4A $69 - Load Accumulator with Memory
	STA $0562,Y         ; $C814: $99 $62 $05 - Store Accumulator in Memory
	LDA #$03            ; $C817: $A9 $03 - Load Accumulator with Memory
	STA $0088,Y         ; $C819: $99 $88 $00 - Store Accumulator in Memory
	LDA #$1A            ; $C81C: $A9 $1A - Load Accumulator with Memory
	JSR $980F           ; $C81E: $20 $0F $98 - Jump to New Location Saving Return Address
	TXA                 ; $C821: $8A - Transfer Index X to Accumulator
	PHA                 ; $C822: $48 - Push Accumulator on Stack
	TYA                 ; $C823: $98 - Transfer Index Y to Accumulator
	TAX                 ; $C824: $AA - Transfer Accumulator to Index X
	LDA #$02            ; $C825: $A9 $02 - Load Accumulator with Memory
	JSR $F213           ; $C827: $20 $13 $F2 - Jump to New Location Saving Return Address
	LDA #$02            ; $C82A: $A9 $02 - Load Accumulator with Memory
	JSR $F25B           ; $C82C: $20 $5B $F2 - Jump to New Location Saving Return Address
	PLA                 ; $C82F: $68 - Pull Accumulator from Stack
	TAX                 ; $C830: $AA - Transfer Accumulator to Index X
	LDA $02E0,X         ; $C831: $BD $E0 $02 - Load Accumulator with Memory
	BNE $19             ; $C834: $D0 $19 - Branch on Result not Zero
	LDA #$F0            ; $C836: $A9 $F0 - Load Accumulator with Memory
	STA $03A0,X         ; $C838: $9D $A0 $03 - Store Accumulator in Memory
	LDA #$19            ; $C83B: $A9 $19 - Load Accumulator with Memory
	JSR $980F           ; $C83D: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $97A7           ; $C840: $20 $A7 $97 - Jump to New Location Saving Return Address
	LDA #$01            ; $C843: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $C845: $9D $E0 $02 - Store Accumulator in Memory
	LDA #$80            ; $C848: $A9 $80 - Load Accumulator with Memory
	STA $77             ; $C84A: $85 $77 - Store Accumulator in Memory
	BRK                 ; $C84C: $00 - Force Break
	ROR $9C             ; $C84D: $66 $9C - Rotate One Bit Right
	JSR $8806           ; $C84F: $20 $06 $88 - Jump to New Location Saving Return Address
	BNE $55             ; $C852: $D0 $55 - Branch on Result not Zero
	JSR $FA26           ; $C854: $20 $26 $FA - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $C857: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $45             ; $C85A: $F0 $45 - Branch on Result Zero
	LDY $03F0,X         ; $C85C: $BC $F0 $03 - Load Index Y with Memory
	CPY #$02            ; $C85F: $C0 $02 - Compare Memory and Index Y
	BEQ $3B             ; $C861: $F0 $3B - Branch on Result Zero
	LDA $0418,X         ; $C863: $BD $18 $04 - Load Accumulator with Memory
	BMI $0F             ; $C866: $30 $0F - Branch on Result Minus
	BEQ $3F             ; $C868: $F0 $3F - Branch on Result Zero
	LDA #$06            ; $C86A: $A9 $06 - Load Accumulator with Memory
	LDY #$08            ; $C86C: $A0 $08 - Load Index Y with Memory
	JSR $980D           ; $C86E: $20 $0D $98 - Jump to New Location Saving Return Address
	CLC                 ; $C871: $18 - Clear Carry Flag
	ROL $03A0,X         ; $C872: $3E $A0 $03 - Rotate One Bit Left
	BCS $32             ; $C875: $B0 $32 - Branch on Carry Set
	LDA #$F9            ; $C877: $A9 $F9 - Load Accumulator with Memory
	STA $09             ; $C879: $85 $09 - Store Accumulator in Memory
	LDA #$32            ; $C87B: $A9 $32 - Load Accumulator with Memory
	LDY #$07            ; $C87D: $A0 $07 - Load Index Y with Memory
	JSR $8B32           ; $C87F: $20 $32 $8B - Jump to New Location Saving Return Address
	LDA #$07            ; $C882: $A9 $07 - Load Accumulator with Memory
	STA $09             ; $C884: $85 $09 - Store Accumulator in Memory
	LDA #$32            ; $C886: $A9 $32 - Load Accumulator with Memory
	LDY #$07            ; $C888: $A0 $07 - Load Index Y with Memory
	JSR $8B32           ; $C88A: $20 $32 $8B - Jump to New Location Saving Return Address
	LDA #$02            ; $C88D: $A9 $02 - Load Accumulator with Memory
	LDY #$FA            ; $C88F: $A0 $FA - Load Index Y with Memory
	JSR $980D           ; $C891: $20 $0D $98 - Jump to New Location Saving Return Address
	LDA #$08            ; $C894: $A9 $08 - Load Accumulator with Memory
	STA $05CF           ; $C896: $8D $CF $05 - Store Accumulator in Memory
	INC $02E0,X         ; $C899: $FE $E0 $02 - Increment Memory by One
	BNE $0B             ; $C89C: $D0 $0B - Branch on Result not Zero
	SEC                 ; $C89E: $38 - Set Carry Flag
	BCS $05             ; $C89F: $B0 $05 - Branch on Carry Set
	LDA $0404,X         ; $C8A1: $BD $04 $04 - Load Accumulator with Memory
	CMP #$05            ; $C8A4: $C9 $05 - Compare Memory with Accumulator
	ROR $03A0,X         ; $C8A6: $7E $A0 $03 - Rotate One Bit Right
	LDA $CF             ; $C8A9: $A5 $CF - Load Accumulator with Memory
	EOR #$FF            ; $C8AB: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $C8AD: $38 - Set Carry Flag
	ADC #$00            ; $C8AE: $69 $00 - Add Memory to Accumulator with Carry
	STA $0418,X         ; $C8B0: $9D $18 $04 - Store Accumulator in Memory
	LDA $03A0,X         ; $C8B3: $BD $A0 $03 - Load Accumulator with Memory
	STA $DA             ; $C8B6: $85 $DA - Store Accumulator in Memory
	LDY #$03            ; $C8B8: $A0 $03 - Load Index Y with Memory
	STY $DB             ; $C8BA: $84 $DB - Sore Index Y in Memory
	LDA $DA             ; $C8BC: $A5 $DA - Load Accumulator with Memory
	LSR A               ; $C8BE: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	LDA $4A,X           ; $C8C1: $B5 $4A $E9 - Load Accumulator with Memory
	LDY $DB             ; $C8C5: $A4 $DB - Load Index Y with Memory
	ADC $C8E4,Y         ; $C8C7: $79 $E4 $C8 - Add Memory to Accumulator with Carry
	PHA                 ; $C8CA: $48 - Push Accumulator on Stack
	LDA #$F6            ; $C8CB: $A9 $F6 - Load Accumulator with Memory
	JSR $F061           ; $C8CD: $20 $61 $F0 - Jump to New Location Saving Return Address
	LDA $0360,X         ; $C8D0: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $C8D3: $38 - Set Carry Flag
	SBC #$10            ; $C8D4: $E9 $10 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $C8D6: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $C8D7: $68 - Pull Accumulator from Stack
	JSR $F040           ; $C8D8: $20 $40 $F0 - Jump to New Location Saving Return Address
	LSR $DA             ; $C8DB: $46 $DA - Shift One Bit Right (Memory or Accumulator)
	DEC $DB             ; $C8DD: $C6 $DB - Decrement Memory by One
	BPL $DB             ; $C8DF: $10 $DB - Branch on Result Plus
	JMP $A995           ; $C8E1: $4C $95 $A9 - Jump to New Location
	ASL A               ; $C8E7: $0A - Shift Left One Bit
	CLD                 ; $C8E8: $D8 - Clear Decimal Mode
	INY                 ; $C8EA: $C8 - Increment Index Y by One
	SBC $1BCB           ; $C8EB: $ED $CB $1B - Subtract Memory from Accumulator with Borrow
	JSR $A114           ; $C8EE: $20 $14 $A1 - Jump to New Location Saving Return Address
	CLC #$40            ; $C8F1: $29 $40 - Clear Carry Flag
	BEQ $03             ; $C8F3: $F0 $03 - Branch on Result Zero
	BRK                 ; $C8F5: $00 - Force Break
	JMP $8833           ; $C8F8: $4C $33 $88 - Jump to New Location
	CMP #$10            ; $C8FB: $C9 $10 - Compare Memory with Accumulator
	CMP #$0A            ; $C8FD: $C9 $0A - Compare Memory with Accumulator
	LDA #$FF            ; $C901: $A9 $FF - Load Accumulator with Memory
	STA $0260,X         ; $C903: $9D $60 $02 - Store Accumulator in Memory
	LDA #$FD            ; $C906: $A9 $FD - Load Accumulator with Memory
	STA $02A0,X         ; $C908: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$0B            ; $C90B: $A9 $0B - Load Accumulator with Memory
	STA $02E0,X         ; $C90D: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $C910: $60 - Return from Subroutine
	LDA $02E0,X         ; $C911: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $C914: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $C916: $A8 - Transfer Accumulator to Index Y
	LDA $C929,Y         ; $C917: $B9 $29 $C9 - Load Accumulator with Memory
	JSR $CD43           ; $C91A: $20 $43 $CD - Jump to New Location Saving Return Address
	JSR $8C68           ; $C91D: $20 $68 $8C - Jump to New Location Saving Return Address
	JSR $87E9           ; $C920: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $03             ; $C923: $D0 $03 - Branch on Result not Zero
	DEC $0360,X         ; $C925: $DE $60 $03 - Decrement Memory by One
	RTS                 ; $C928: $60 - Return from Subroutine
	SBC $E4             ; $C929: $E5 $E4 - Subtract Memory from Accumulator with Borrow
	LDY $047E,X         ; $C92C: $BC $7E $04 - Load Index Y with Memory
	LDA $C9A8,Y         ; $C92F: $B9 $A8 $C9 - Load Accumulator with Memory
	STA $EB             ; $C932: $85 $EB - Store Accumulator in Memory
	LDA $C9AC,Y         ; $C934: $B9 $AC $C9 - Load Accumulator with Memory
	STA $EC             ; $C937: $85 $EC - Store Accumulator in Memory
	LDA $04BA,X         ; $C939: $BD $BA $04 - Load Accumulator with Memory
	TAY                 ; $C93C: $A8 - Transfer Accumulator to Index Y
	LDA ($EB),Y         ; $C93D: $B1 $EB $85 - Load Accumulator with Memory
	NOP                 ; $C940: $EA - No Operation
	INY                 ; $C941: $C8 - Increment Index Y by One
	LDA ($EB),Y         ; $C942: $B1 $EB $30 - Load Accumulator with Memory
	INC $04BA,X         ; $C946: $FE $BA $04 - Increment Memory by One
	LDA $0478,X         ; $C949: $BD $78 $04 - Load Accumulator with Memory
	CLC #$F0            ; $C94C: $29 $F0 - Clear Carry Flag
	STA $EB             ; $C94E: $85 $EB - Store Accumulator in Memory
	LDA $0490,X         ; $C950: $BD $90 $04 - Load Accumulator with Memory
	SEC                 ; $C953: $38 - Set Carry Flag
	ADC $EA             ; $C954: $65 $EA - Add Memory to Accumulator with Carry
	SBC #$0F            ; $C956: $E9 $0F - Subtract Memory from Accumulator with Borrow
	SEC                 ; $C958: $38 - Set Carry Flag
	SBC $04CB           ; $C959: $ED $CB $04 - Subtract Memory from Accumulator with Borrow
	BPL $02             ; $C95C: $10 $02 - Branch on Result Plus
	LDA #$00            ; $C95E: $A9 $00 - Load Accumulator with Memory
	ORA $EB             ; $C960: $05 $EB - OR Memory with Accumulator
	STA $0478,X         ; $C962: $9D $78 $04 - Store Accumulator in Memory
	LDY $047E,X         ; $C965: $BC $7E $04 - Load Index Y with Memory
	LDA $C9B0,Y         ; $C968: $B9 $B0 $C9 - Load Accumulator with Memory
	LSR A               ; $C96B: $4A $48 - Shift One Bit Right (Memory or Accumulator)
	BCC $14             ; $C96D: $90 $14 - Branch on Carry Clear
	LDA $04BE,X         ; $C96F: $BD $BE $04 - Load Accumulator with Memory
	CMP #$18            ; $C972: $C9 $18 - Compare Memory with Accumulator
	BCC $0D             ; $C974: $90 $0D - Branch on Carry Clear
	CLC #$07            ; $C976: $29 $07 - Clear Carry Flag
	TAY                 ; $C978: $A8 - Transfer Accumulator to Index Y
	LDA $0484,X         ; $C979: $BD $84 $04 - Load Accumulator with Memory
	CLC                 ; $C97C: $18 - Clear Carry Flag
	ADC $C9A0,Y         ; $C97D: $79 $A0 $C9 - Add Memory to Accumulator with Carry
	STA $0484,X         ; $C980: $9D $84 $04 - Store Accumulator in Memory
	PLA                 ; $C983: $68 - Pull Accumulator from Stack
	LSR A               ; $C984: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	ORA $BD,X           ; $C986: $15 $BD - OR Memory with Accumulator
	CMP #$01            ; $C98A: $C9 $01 - Compare Memory with Accumulator
	BNE $0E             ; $C98C: $D0 $0E - Branch on Result not Zero
	LDA $18             ; $C98E: $A5 $18 - Load Accumulator with Memory
	CMP #$03            ; $C990: $C9 $03 - Compare Memory with Accumulator
	BCS $08             ; $C992: $B0 $08 - Branch on Carry Set
	LDA $0478,X         ; $C994: $BD $78 $04 - Load Accumulator with Memory
	CLC #$F0            ; $C997: $29 $F0 - Clear Carry Flag
	STA $0478,X         ; $C999: $9D $78 $04 - Store Accumulator in Memory
	INC $04BE,X         ; $C99C: $FE $BE $04 - Increment Memory by One
	RTS                 ; $C99F: $60 - Return from Subroutine
	INC $00FF,X         ; $C9A1: $FE $FF $00 - Increment Memory by One
	ORA ($02,X)         ; $C9A4: $01 $02 $01 - OR Memory with Accumulator
	BRK                 ; $C9A7: $00 - Force Break
	LDY $B6,X           ; $C9A8: $B4 $B6 $B9 - Load Index Y with Memory
	LDX $C9C9,Y         ; $C9AB: $BE $C9 $C9 - Load Index X with Memory
	CMP #$C9            ; $C9AE: $C9 $C9 - Compare Memory with Accumulator
	BRK                 ; $C9B2: $00 - Force Break
	BRK                 ; $C9B3: $00 - Force Break
	ORA $FF             ; $C9B7: $05 $FF - OR Memory with Accumulator
	PHP                 ; $C9B9: $08 - Push Processor Status on Stack
	BRK                 ; $C9BC: $00 - Force Break
	ORA #$08            ; $C9BE: $09 $08 - OR Memory with Accumulator
	ORA $04             ; $C9C1: $05 $04 - OR Memory with Accumulator
	BRK                 ; $C9C4: $00 - Force Break
	STX $898C           ; $C9C7: $8E $8C $89 - Store Index X in Memory
	CMP #$E8            ; $C9CC: $C9 $E8 - Compare Memory with Accumulator
	CMP #$D1            ; $C9CE: $C9 $D1 - Compare Memory with Accumulator
	LDA $4A,X           ; $C9D2: $B5 $4A $4A - Load Accumulator with Memory
	STA $0300,X         ; $C9D5: $9D $00 $03 - Store Accumulator in Memory
	BRK                 ; $C9D8: $00 - Force Break
	DEC $AD9C,X         ; $C9D9: $DE $9C $AD - Decrement Memory by One
	ORA $9D             ; $C9DD: $05 $9D - OR Memory with Accumulator
	BRK                 ; $C9DF: $00 - Force Break
	LDA #$01            ; $C9E1: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $C9E3: $9D $E0 $02 - Store Accumulator in Memory
	BRK                 ; $C9E6: $00 - Force Break
	CMP $BD9C           ; $C9E7: $CD $9C $BD - Compare Memory with Accumulator
	CPX #$02            ; $C9EA: $E0 $02 - Compare Memory and Index Y
	BEQ $46             ; $C9EC: $F0 $46 - Branch on Result Zero
	CMP #$02            ; $C9EE: $C9 $02 - Compare Memory with Accumulator
	BEQ $4D             ; $C9F0: $F0 $4D - Branch on Result Zero
	JSR $A992           ; $C9F2: $20 $92 $A9 - Jump to New Location Saving Return Address
	DEC $0300,X         ; $C9F5: $DE $00 $03 - Decrement Memory by One
	BNE $37             ; $C9F8: $D0 $37 - Branch on Result not Zero
	LDA #$10            ; $C9FA: $A9 $10 - Load Accumulator with Memory
	STA $0300,X         ; $C9FC: $9D $00 $03 - Store Accumulator in Memory
	INC $02E0,X         ; $C9FF: $FE $E0 $02 - Increment Memory by One
	LDA #$1E            ; $CA02: $A9 $1E - Load Accumulator with Memory
	JSR $980F           ; $CA04: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA $A1             ; $CA07: $A5 $A1 - Load Accumulator with Memory
	BEQ $1F             ; $CA09: $F0 $1F - Branch on Result Zero
	LDA #$DE            ; $CA0B: $A9 $DE - Load Accumulator with Memory
	LDY #$9C            ; $CA0D: $A0 $9C - Load Index Y with Memory
	JSR $F9FE           ; $CA0F: $20 $FE $F9 - Jump to New Location Saving Return Address
	JSR $CA7F           ; $CA12: $20 $7F $CA - Jump to New Location Saving Return Address
	BEQ $0E             ; $CA15: $F0 $0E - Branch on Result Zero
	TYA                 ; $CA17: $98 - Transfer Index Y to Accumulator
	TAX                 ; $CA18: $AA - Transfer Accumulator to Index X
	LDA #$C4            ; $CA19: $A9 $C4 - Load Accumulator with Memory
	LDY #$9C            ; $CA1B: $A0 $9C - Load Index Y with Memory
	JSR $F9FE           ; $CA1D: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$0A            ; $CA20: $A9 $0A - Load Accumulator with Memory
	STA $05CF           ; $CA22: $8D $CF $05 - Store Accumulator in Memory
	LDA #$02            ; $CA25: $A9 $02 - Load Accumulator with Memory
	JMP $980F           ; $CA27: $4C $0F $98 - Jump to New Location
	LDA #$C4            ; $CA2A: $A9 $C4 - Load Accumulator with Memory
	LDY #$9C            ; $CA2C: $A0 $9C - Load Index Y with Memory
	JSR $F9FE           ; $CA2E: $20 $FE $F9 - Jump to New Location Saving Return Address
	JMP $CA78           ; $CA31: $4C $78 $CA - Jump to New Location
	DEC $0300,X         ; $CA34: $DE $00 $03 - Decrement Memory by One
	BNE $03             ; $CA37: $D0 $03 - Branch on Result not Zero
	JSR $C9DB           ; $CA39: $20 $DB $C9 - Jump to New Location Saving Return Address
	JMP $CA78           ; $CA3C: $4C $78 $CA - Jump to New Location
	LDA $0300,X         ; $CA3F: $BD $00 $03 - Load Accumulator with Memory
	CLC #$03            ; $CA42: $29 $03 - Clear Carry Flag
	PHA                 ; $CA44: $48 - Push Accumulator on Stack
	TAY                 ; $CA45: $A8 - Transfer Accumulator to Index Y
	LDA $0360,X         ; $CA46: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $CA49: $18 - Clear Carry Flag
	ADC $CA7B,Y         ; $CA4A: $79 $7B $CA - Add Memory to Accumulator with Carry
	STA $0360,X         ; $CA4D: $9D $60 $03 - Store Accumulator in Memory
	JSR $8B65           ; $CA50: $20 $65 $8B - Jump to New Location Saving Return Address
	PLA                 ; $CA53: $68 - Pull Accumulator from Stack
	TAY                 ; $CA54: $A8 - Transfer Accumulator to Index Y
	LDA $0360,X         ; $CA55: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $CA58: $38 - Set Carry Flag
	SBC $CA7B,Y         ; $CA59: $F9 $7B $CA - Subtract Memory from Accumulator with Borrow
	STA $0360,X         ; $CA5C: $9D $60 $03 - Store Accumulator in Memory
	JSR $A992           ; $CA5F: $20 $92 $A9 - Jump to New Location Saving Return Address
	DEC $0300,X         ; $CA62: $DE $00 $03 - Decrement Memory by One
	BNE $11             ; $CA65: $D0 $11 - Branch on Result not Zero
	LDA #$44            ; $CA67: $A9 $44 - Load Accumulator with Memory
	STA $0300,X         ; $CA69: $9D $00 $03 - Store Accumulator in Memory
	LDA #$00            ; $CA6C: $A9 $00 - Load Accumulator with Memory
	STA $02E0,X         ; $CA6E: $9D $E0 $02 - Store Accumulator in Memory
	LDA $A1             ; $CA71: $A5 $A1 - Load Accumulator with Memory
	BEQ $03             ; $CA73: $F0 $03 - Branch on Result Zero
	JMP $8833           ; $CA75: $4C $33 $88 - Jump to New Location
	JMP $882C           ; $CA78: $4C $2C $88 - Jump to New Location
	LDA #$1F            ; $CA7F: $A9 $1F - Load Accumulator with Memory
	JSR $CA86           ; $CA81: $20 $86 $CA - Jump to New Location Saving Return Address
	LDA #$3F            ; $CA84: $A9 $3F - Load Accumulator with Memory
	STA $DA             ; $CA86: $85 $DA - Store Accumulator in Memory
	LDA #$1B            ; $CA88: $A9 $1B - Load Accumulator with Memory
	JSR $8B4D           ; $CA8A: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $12             ; $CA8D: $90 $12 - Branch on Carry Clear
	LDA $0360,Y         ; $CA8F: $B9 $60 $03 - Load Accumulator with Memory
	ADC $DA             ; $CA92: $65 $DA - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $CA94: $99 $60 $03 - Store Accumulator in Memory
	LDA #$02            ; $CA97: $A9 $02 - Load Accumulator with Memory
	STA $02E0,Y         ; $CA99: $99 $E0 $02 - Store Accumulator in Memory
	LDA #$10            ; $CA9C: $A9 $10 - Load Accumulator with Memory
	STA $0300,Y         ; $CA9E: $99 $00 $03 - Store Accumulator in Memory
	RTS                 ; $CAA1: $60 - Return from Subroutine
	STA $84             ; $CAA2: $85 $84 - Store Accumulator in Memory
	STY $85             ; $CAA4: $84 $85 - Sore Index Y in Memory
	LDA #$00            ; $CAA6: $A9 $00 - Load Accumulator with Memory
	STA $86             ; $CAA8: $85 $86 - Store Accumulator in Memory
	STA $87             ; $CAAA: $85 $87 - Store Accumulator in Memory
	RTS                 ; $CAAC: $60 - Return from Subroutine
	LDY #$04            ; $CAAD: $A0 $04 - Load Index Y with Memory
	BNE $06             ; $CAAF: $D0 $06 - Branch on Result not Zero
	LDY #$01            ; $CAB1: $A0 $01 - Load Index Y with Memory
	BNE $02             ; $CAB3: $D0 $02 - Branch on Result not Zero
	LDY #$05            ; $CAB5: $A0 $05 - Load Index Y with Memory
	LDA #$00            ; $CAB7: $A9 $00 - Load Accumulator with Memory
	DEC $87             ; $CAB9: $C6 $87 - Decrement Memory by One
	BPL $16             ; $CABB: $10 $16 - Branch on Result Plus
	PHA                 ; $CABD: $48 - Push Accumulator on Stack
	TYA                 ; $CABE: $98 - Transfer Index Y to Accumulator
	PHA                 ; $CABF: $48 - Push Accumulator on Stack
	LDY #$00            ; $CAC0: $A0 $00 - Load Index Y with Memory
	LDA ($84),Y         ; $CAC2: $B1 $84 $85 - Load Accumulator with Memory
	STX $E6             ; $CAC5: $86 $E6 - Store Index X in Memory
	STY $D0             ; $CAC7: $84 $D0 - Sore Index Y in Memory
	INC $85             ; $CACA: $E6 $85 - Increment Memory by One
	LDA #$07            ; $CACC: $A9 $07 - Load Accumulator with Memory
	STA $87             ; $CACE: $85 $87 - Store Accumulator in Memory
	PLA                 ; $CAD0: $68 - Pull Accumulator from Stack
	TAY                 ; $CAD1: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $CAD2: $68 - Pull Accumulator from Stack
	ASL $86             ; $CAD3: $06 $86 - Shift Left One Bit
	ROL A               ; $CAD5: $2A - Rotate One Bit Left
	DEY                 ; $CAD6: $88 - Decrement Index Y by One
	BNE $E0             ; $CAD7: $D0 $E0 - Branch on Result not Zero
	CMP #$00            ; $CAD9: $C9 $00 - Compare Memory with Accumulator
	RTS                 ; $CADB: $60 - Return from Subroutine
	CLD                 ; $CADC: $D8 - Clear Decimal Mode
	DEX                 ; $CADE: $CA - Decrement Index X by One
	SBC ($CA,X)         ; $CADF: $E1 $CA $FD - Subtract Memory from Accumulator with Borrow
	LDY $BD             ; $CAE2: $A4 $BD - Load Index Y with Memory
	LDA $BC             ; $CAE4: $A5 $BC - Load Accumulator with Memory
	CMP #$01            ; $CAE6: $C9 $01 - Compare Memory with Accumulator
	BNE $04             ; $CAE8: $D0 $04 - Branch on Result not Zero
	BIT $6F             ; $CAEA: $24 $6F - Test Bits in Memory with Accumulator
	BMI $09             ; $CAEC: $30 $09 - Branch on Result Minus
	LDA $CAFA,Y         ; $CAEE: $B9 $FA $CA - Load Accumulator with Memory
	JSR $A92C           ; $CAF1: $20 $2C $A9 - Jump to New Location Saving Return Address
	BRK                 ; $CAF4: $00 - Force Break
	STY $9C             ; $CAF5: $84 $9C - Sore Index Y in Memory
	JMP $8833           ; $CAF7: $4C $33 $88 - Jump to New Location
	ORA ($02,X)         ; $CAFA: $01 $02 $03 - OR Memory with Accumulator
	LDA $BC             ; $CAFE: $A5 $BC - Load Accumulator with Memory
	CMP #$01            ; $CB00: $C9 $01 - Compare Memory with Accumulator
	BNE $0D             ; $CB02: $D0 $0D - Branch on Result not Zero
	TXA                 ; $CB04: $8A - Transfer Index X to Accumulator
	PHA                 ; $CB05: $48 - Push Accumulator on Stack
	LDA #$1A            ; $CB06: $A9 $1A - Load Accumulator with Memory
	LDY #$AA            ; $CB08: $A0 $AA - Load Index Y with Memory
	LDX #$02            ; $CB0A: $A2 $02 - Load Index X with Memory
	JSR $8C92           ; $CB0C: $20 $92 $8C - Jump to New Location Saving Return Address
	PLA                 ; $CB0F: $68 - Pull Accumulator from Stack
	TAX                 ; $CB10: $AA - Transfer Accumulator to Index X
	LDA #$0D            ; $CB11: $A9 $0D - Load Accumulator with Memory
	JSR $980F           ; $CB13: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $8B2C           ; $CB16: $20 $2C $8B - Jump to New Location Saving Return Address
	JSR $8833           ; $CB19: $20 $33 $88 - Jump to New Location Saving Return Address
	LDA #$02            ; $CB1C: $A9 $02 - Load Accumulator with Memory
	STA $F9             ; $CB1E: $85 $F9 - Store Accumulator in Memory
	RTS                 ; $CB20: $60 - Return from Subroutine
	ADC ($CB),Y         ; $CB22: $71 $CB $26 - Add Memory to Accumulator with Carry
	JSR $D98D           ; $CB27: $20 $8D $D9 - Jump to New Location Saving Return Address
	STX $9B             ; $CB2A: $86 $9B - Store Index X in Memory
	LDA #$AD            ; $CB2C: $A9 $AD - Load Accumulator with Memory
	LDY #$CB            ; $CB2E: $A0 $CB - Load Index Y with Memory
	JSR $9860           ; $CB30: $20 $60 $98 - Jump to New Location Saving Return Address
	INC $A1             ; $CB33: $E6 $A1 - Increment Memory by One
	BRK                 ; $CB35: $00 - Force Break
	LDY $9C,X           ; $CB36: $B4 $9C $20 - Load Index Y with Memory
	INX                 ; $CB39: $E8 - Increment Index X by One
	CMP $1390,Y         ; $CB3A: $D9 $90 $13 - Compare Memory with Accumulator
	LDA $0440,X         ; $CB3D: $BD $40 $04 - Load Accumulator with Memory
	LDY $9C             ; $CB40: $A4 $9C - Load Index Y with Memory
	BEQ $06             ; $CB42: $F0 $06 - Branch on Result Zero
	DEY                 ; $CB44: $88 - Decrement Index Y by One
	BEQ $0A             ; $CB45: $F0 $0A - Branch on Result Zero
	BRK                 ; $CB47: $00 - Force Break
	CPY #$9C            ; $CB48: $C0 $9C - Compare Memory and Index Y
	CMP #$41            ; $CB4A: $C9 $41 - Compare Memory with Accumulator
	BCS $02             ; $CB4C: $B0 $02 - Branch on Carry Set
	INC $9C             ; $CB4E: $E6 $9C - Increment Memory by One
	RTS                 ; $CB50: $60 - Return from Subroutine
	LDY $9A             ; $CB51: $A4 $9A - Load Index Y with Memory
	BNE $1C             ; $CB53: $D0 $1C - Branch on Result not Zero
	LDA $0440,X         ; $CB55: $BD $40 $04 - Load Accumulator with Memory
	CMP #$29            ; $CB58: $C9 $29 - Compare Memory with Accumulator
	BCS $15             ; $CB5A: $B0 $15 - Branch on Carry Set
	BIT $6F             ; $CB5C: $24 $6F - Test Bits in Memory with Accumulator
	BMI $08             ; $CB5E: $30 $08 - Branch on Result Minus
	LDA #$00            ; $CB60: $A9 $00 - Load Accumulator with Memory
	STA $0440,X         ; $CB62: $9D $40 $04 - Store Accumulator in Memory
	JSR $DA16           ; $CB65: $20 $16 $DA - Jump to New Location Saving Return Address
	INC $9A             ; $CB68: $E6 $9A - Increment Memory by One
	LDA #$4B            ; $CB6A: $A9 $4B - Load Accumulator with Memory
	LDY #$CC            ; $CB6C: $A0 $CC - Load Index Y with Memory
	JSR $9860           ; $CB6E: $20 $60 $98 - Jump to New Location Saving Return Address
	RTS                 ; $CB71: $60 - Return from Subroutine
	JSR $9871           ; $CB72: $20 $71 $98 - Jump to New Location Saving Return Address
	LDX $9B             ; $CB75: $A6 $9B - Load Index X with Memory
	JSR $A9C4           ; $CB77: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $D8C9           ; $CB7A: $20 $C9 $D8 - Jump to New Location Saving Return Address
	LDX $9C             ; $CB7D: $A6 $9C - Load Index X with Memory
	LDA $CBA8,X         ; $CB7F: $BD $A8 $CB - Load Accumulator with Memory
	LDY $CBAB,X         ; $CB82: $BC $AB $CB - Load Index Y with Memory
	LDX $9B             ; $CB85: $A6 $9B - Load Index X with Memory
	JSR $D9CF           ; $CB87: $20 $CF $D9 - Jump to New Location Saving Return Address
	LDA $9A             ; $CB8A: $A5 $9A - Load Accumulator with Memory
	BNE $C2             ; $CB8C: $D0 $C2 - Branch on Result not Zero
	LDA $0C             ; $CB8E: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $CB90: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $CB92: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	CLC #$03            ; $CB94: $29 $03 - Clear Carry Flag
	TAY                 ; $CB96: $A8 - Transfer Accumulator to Index Y
	LDA $CBA4,Y         ; $CB97: $B9 $A4 $CB - Load Accumulator with Memory
	JSR $F061           ; $CB9A: $20 $61 $F0 - Jump to New Location Saving Return Address
	LDA #$86            ; $CB9D: $A9 $86 - Load Accumulator with Memory
	LDY #$39            ; $CB9F: $A0 $39 - Load Index Y with Memory
	JMP $F040           ; $CBA1: $4C $40 $F0 - Jump to New Location
	CPX #$E1            ; $CBA4: $E0 $E1 - Compare Memory and Index Y
	SBC ($B4,X)         ; $CBA7: $E1 $B4 $BC - Subtract Memory from Accumulator with Borrow
	CLV                 ; $CBAA: $B8 - Clear Overflow Flag
	JSR $988C           ; $CBAE: $20 $8C $98 - Jump to New Location Saving Return Address
	JSR $CBC6           ; $CBB1: $20 $C6 $CB - Jump to New Location Saving Return Address
	LDA $0575           ; $CBB4: $AD $75 $05 - Load Accumulator with Memory
	JSR $98A6           ; $CBB7: $20 $A6 $98 - Jump to New Location Saving Return Address
	JSR $CBEC           ; $CBBA: $20 $EC $CB - Jump to New Location Saving Return Address
	LDA $0575           ; $CBBD: $AD $75 $05 - Load Accumulator with Memory
	JSR $98A6           ; $CBC0: $20 $A6 $98 - Jump to New Location Saving Return Address
	JMP $CBB1           ; $CBC3: $4C $B1 $CB - Jump to New Location
	JSR $CC21           ; $CBC6: $20 $21 $CC - Jump to New Location Saving Return Address
	JSR $98BE           ; $CBC9: $20 $BE $98 - Jump to New Location Saving Return Address
	LDA #$03            ; $CBCC: $A9 $03 - Load Accumulator with Memory
	STA $1D             ; $CBCE: $85 $1D - Store Accumulator in Memory
	LDX $9E             ; $CBD0: $A6 $9E - Load Index X with Memory
	LDA $1D             ; $CBD2: $A5 $1D - Load Accumulator with Memory
	JSR $CC38           ; $CBD4: $20 $38 $CC - Jump to New Location Saving Return Address
	LDA #$0A            ; $CBD7: $A9 $0A - Load Accumulator with Memory
	JSR $98C4           ; $CBD9: $20 $C4 $98 - Jump to New Location Saving Return Address
	DEC $1D             ; $CBDC: $C6 $1D - Decrement Memory by One
	BPL $F0             ; $CBDE: $10 $F0 - Branch on Result Plus
	LDX $9B             ; $CBE0: $A6 $9B - Load Index X with Memory
	JSR $98BA           ; $CBE2: $20 $BA $98 - Jump to New Location Saving Return Address
	LDA #$B1            ; $CBE5: $A9 $B1 - Load Accumulator with Memory
	LDY #$9C            ; $CBE7: $A0 $9C - Load Index Y with Memory
	JMP $CC25           ; $CBE9: $4C $25 $CC - Jump to New Location
	JSR $CC21           ; $CBEC: $20 $21 $CC - Jump to New Location Saving Return Address
	JSR $98BE           ; $CBEF: $20 $BE $98 - Jump to New Location Saving Return Address
	LDA #$80            ; $CBF2: $A9 $80 - Load Accumulator with Memory
	STA $1E             ; $CBF4: $85 $1E - Store Accumulator in Memory
	LDA #$0A            ; $CBF6: $A9 $0A - Load Accumulator with Memory
	STA $1D             ; $CBF8: $85 $1D - Store Accumulator in Memory
	LDA #$1E            ; $CBFA: $A9 $1E - Load Accumulator with Memory
	JSR $8B4D           ; $CBFC: $20 $4D $8B - Jump to New Location Saving Return Address
	LDA #$D0            ; $CBFF: $A9 $D0 - Load Accumulator with Memory
	STA $0360,Y         ; $CC01: $99 $60 $03 - Store Accumulator in Memory
	LDA $1E             ; $CC04: $A5 $1E - Load Accumulator with Memory
	STA $004A,Y         ; $CC06: $99 $4A $00 - Store Accumulator in Memory
	JSR $9FDE           ; $CC09: $20 $DE $9F - Jump to New Location Saving Return Address
	LSR A               ; $CC0C: $4A $65 - Shift One Bit Right (Memory or Accumulator)
	ASL $7F29,X         ; $CC0E: $1E $29 $7F - Shift Left One Bit
	ADC #$40            ; $CC11: $69 $40 - Add Memory to Accumulator with Carry
	STA $1E             ; $CC13: $85 $1E - Store Accumulator in Memory
	LDA #$10            ; $CC15: $A9 $10 - Load Accumulator with Memory
	JSR $98C4           ; $CC17: $20 $C4 $98 - Jump to New Location Saving Return Address
	DEC $1D             ; $CC1A: $C6 $1D - Decrement Memory by One
	BNE $DC             ; $CC1C: $D0 $DC - Branch on Result not Zero
	JMP $CBE2           ; $CC1E: $4C $E2 $CB - Jump to New Location
	LDA #$AA            ; $CC21: $A9 $AA - Load Accumulator with Memory
	LDY #$9C            ; $CC23: $A0 $9C - Load Index Y with Memory
	STA $DA             ; $CC25: $85 $DA - Store Accumulator in Memory
	TXA                 ; $CC27: $8A - Transfer Index X to Accumulator
	PHA                 ; $CC28: $48 - Push Accumulator on Stack
	LDA #$24            ; $CC29: $A9 $24 - Load Accumulator with Memory
	JSR $AA1B           ; $CC2B: $20 $1B $AA - Jump to New Location Saving Return Address
	BNE $05             ; $CC2E: $D0 $05 - Branch on Result not Zero
	LDA $DA             ; $CC30: $A5 $DA - Load Accumulator with Memory
	JSR $F9FE           ; $CC32: $20 $FE $F9 - Jump to New Location Saving Return Address
	PLA                 ; $CC35: $68 - Pull Accumulator from Stack
	TAX                 ; $CC36: $AA - Transfer Accumulator to Index X
	RTS                 ; $CC37: $60 - Return from Subroutine
	STA $DA             ; $CC38: $85 $DA - Store Accumulator in Memory
	LDA #$16            ; $CC3A: $A9 $16 - Load Accumulator with Memory
	JSR $8B4D           ; $CC3C: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $0A             ; $CC3F: $90 $0A - Branch on Carry Clear
	LDA #$FE            ; $CC41: $A9 $FE - Load Accumulator with Memory
	STA $02A0,Y         ; $CC43: $99 $A0 $02 - Store Accumulator in Memory
	LDA $DA             ; $CC46: $A5 $DA - Load Accumulator with Memory
	STA $0300,Y         ; $CC48: $99 $00 $03 - Store Accumulator in Memory
	RTS                 ; $CC4B: $60 - Return from Subroutine
	BIT $6F             ; $CC4C: $24 $6F - Test Bits in Memory with Accumulator
	BMI $05             ; $CC4E: $30 $05 - Branch on Result Minus
	JSR $98A0           ; $CC50: $20 $A0 $98 - Jump to New Location Saving Return Address
	BNE $FB             ; $CC53: $D0 $FB - Branch on Result not Zero
	JSR $DA48           ; $CC55: $20 $48 $DA - Jump to New Location Saving Return Address
	LDX $9B             ; $CC58: $A6 $9B - Load Index X with Memory
	JSR $DA81           ; $CC5A: $20 $81 $DA - Jump to New Location Saving Return Address
	JSR $9890           ; $CC5D: $20 $90 $98 - Jump to New Location Saving Return Address
	LDA #$88            ; $CC60: $A9 $88 - Load Accumulator with Memory
	LDY #$40            ; $CC62: $A0 $40 - Load Index Y with Memory
	JSR $AD6A           ; $CC64: $20 $6A $AD - Jump to New Location Saving Return Address
	INC $9C             ; $CC67: $E6 $9C - Increment Memory by One
	LDA #$01            ; $CC69: $A9 $01 - Load Accumulator with Memory
	STA $A3             ; $CC6B: $85 $A3 - Store Accumulator in Memory
	JSR $9898           ; $CC6D: $20 $98 $98 - Jump to New Location Saving Return Address
	LDA #$00            ; $CC70: $A9 $00 - Load Accumulator with Memory
	LDY #$10            ; $CC72: $A0 $10 - Load Index Y with Memory
	JSR $CCD2           ; $CC74: $20 $D2 $CC - Jump to New Location Saving Return Address
	LDA #$2D            ; $CC77: $A9 $2D - Load Accumulator with Memory
	JSR $CCD0           ; $CC79: $20 $D0 $CC - Jump to New Location Saving Return Address
	LDA #$05            ; $CC7C: $A9 $05 - Load Accumulator with Memory
	STA $0591           ; $CC7E: $8D $91 $05 - Store Accumulator in Memory
	LDA #$0F            ; $CC81: $A9 $0F - Load Accumulator with Memory
	JSR $CCD0           ; $CC83: $20 $D0 $CC - Jump to New Location Saving Return Address
	DEC $0360,X         ; $CC86: $DE $60 $03 - Decrement Memory by One
	JSR $9894           ; $CC89: $20 $94 $98 - Jump to New Location Saving Return Address
	JSR $F8D9           ; $CC8C: $20 $D9 $F8 - Jump to New Location Saving Return Address
	LDA #$60            ; $CC8F: $A9 $60 - Load Accumulator with Memory
	STA $1D             ; $CC91: $85 $1D - Store Accumulator in Memory
	JSR $DA85           ; $CC93: $20 $85 $DA - Jump to New Location Saving Return Address
	JSR $98A4           ; $CC96: $20 $A4 $98 - Jump to New Location Saving Return Address
	LDA #$0E            ; $CC99: $A9 $0E - Load Accumulator with Memory
	STA $03A0,X         ; $CC9B: $9D $A0 $03 - Store Accumulator in Memory
	LDY #$5C            ; $CC9E: $A0 $5C - Load Index Y with Memory
	JSR $F913           ; $CCA0: $20 $13 $F9 - Jump to New Location Saving Return Address
	LDA #$00            ; $CCA3: $A9 $00 - Load Accumulator with Memory
	STA $02E0,X         ; $CCA5: $9D $E0 $02 - Store Accumulator in Memory
	LDY $0300,X         ; $CCA8: $BC $00 $03 - Load Index Y with Memory
	LDA $0088,Y         ; $CCAB: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $CCAE: $C9 $09 - Compare Memory with Accumulator
	BCC $03             ; $CCB0: $90 $03 - Branch on Carry Clear
	JSR $F8D9           ; $CCB2: $20 $D9 $F8 - Jump to New Location Saving Return Address
	INC $1D             ; $CCB5: $E6 $1D - Increment Memory by One
	BPL $14             ; $CCB7: $10 $14 - Branch on Result Plus
	LDA #$00            ; $CCB9: $A9 $00 - Load Accumulator with Memory
	STA $1D             ; $CCBB: $85 $1D - Store Accumulator in Memory
	LDY #$16            ; $CCBD: $A0 $16 - Load Index Y with Memory
	JSR $AA29           ; $CCBF: $20 $29 $AA - Jump to New Location Saving Return Address
	CPY #$02            ; $CCC2: $C0 $02 - Compare Memory and Index Y
	BCS $07             ; $CCC4: $B0 $07 - Branch on Carry Set
	JSR $888A           ; $CCC6: $20 $8A $88 - Jump to New Location Saving Return Address
	TYA                 ; $CCC9: $98 - Transfer Index Y to Accumulator
	JSR $CC38           ; $CCCA: $20 $38 $CC - Jump to New Location Saving Return Address
	JMP $CC96           ; $CCCD: $4C $96 $CC - Jump to New Location
	LDY #$00            ; $CCD0: $A0 $00 - Load Index Y with Memory
	STA $058F           ; $CCD2: $8D $8F $05 - Store Accumulator in Memory
	STY $0590           ; $CCD5: $8C $90 $05 - Sore Index Y in Memory
	INC $AA             ; $CCD8: $E6 $AA - Increment Memory by One
	LDA #$0D            ; $CCDA: $A9 $0D - Load Accumulator with Memory
	JSR $98C4           ; $CCDC: $20 $C4 $98 - Jump to New Location Saving Return Address
	RTS                 ; $CCDF: $60 - Return from Subroutine
	ASL $25             ; $CCE1: $06 $25 - Shift Left One Bit
	CLC #$44            ; $CCE3: $29 $44 - Clear Carry Flag
	ORA $CC             ; $CCE7: $05 $CC - OR Memory with Accumulator
	CPY $20EB           ; $CCEA: $CC $EB $20 - Compare Memory and Index Y
	LDA $CCE2,Y         ; $CCEF: $B9 $E2 $CC - Load Accumulator with Memory
	STA $02E0,X         ; $CCF2: $9D $E0 $02 - Store Accumulator in Memory
	LDA $CCE6,Y         ; $CCF5: $B9 $E6 $CC - Load Accumulator with Memory
	JSR $980F           ; $CCF8: $20 $0F $98 - Jump to New Location Saving Return Address
	RTS                 ; $CCFB: $60 - Return from Subroutine
	DEC $02E0,X         ; $CCFC: $DE $E0 $02 - Decrement Memory by One
	BEQ $73             ; $CCFF: $F0 $73 - Branch on Result Zero
	JSR $A9D9           ; $CD01: $20 $D9 $A9 - Jump to New Location Saving Return Address
	CLC                 ; $CD04: $18 - Clear Carry Flag
	JSR $CDA5           ; $CD05: $20 $A5 $CD - Jump to New Location Saving Return Address
	BCS $69             ; $CD08: $B0 $69 - Branch on Carry Set
	JSR $87E9           ; $CD0A: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $5C             ; $CD0D: $D0 $5C - Branch on Result not Zero
	JSR $CEE0           ; $CD0F: $20 $E0 $CE - Jump to New Location Saving Return Address
	BCS $5F             ; $CD12: $B0 $5F - Branch on Carry Set
	JSR $CF5F           ; $CD14: $20 $5F $CF - Jump to New Location Saving Return Address
	LDA $0C             ; $CD17: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $CD19: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LDA $02A0,X         ; $CD1B: $BD $A0 $02 - Load Accumulator with Memory
	BEQ $14             ; $CD1E: $F0 $14 - Branch on Result Zero
	LDA $0380,X         ; $CD20: $BD $80 $03 - Load Accumulator with Memory
	CLC #$BF            ; $CD23: $29 $BF - Clear Carry Flag
	BCC $02             ; $CD25: $90 $02 - Branch on Carry Clear
	ORA #$40            ; $CD27: $09 $40 - OR Memory with Accumulator
	STA $0380,X         ; $CD29: $9D $80 $03 - Store Accumulator in Memory
	LDA $CD32,Y         ; $CD2C: $B9 $32 $CD - Load Accumulator with Memory
	JMP $CD43           ; $CD2F: $4C $43 $CD - Jump to New Location
	LDA $0380,X         ; $CD34: $BD $80 $03 - Load Accumulator with Memory
	CLC #$7F            ; $CD37: $29 $7F - Clear Carry Flag
	BCC $02             ; $CD39: $90 $02 - Branch on Carry Clear
	ORA #$80            ; $CD3B: $09 $80 - OR Memory with Accumulator
	STA $0380,X         ; $CD3D: $9D $80 $03 - Store Accumulator in Memory
	LDA $CD69,Y         ; $CD40: $B9 $69 $CD - Load Accumulator with Memory
	LDY $AC             ; $CD43: $A4 $AC - Load Index Y with Memory
	STA $0701,Y         ; $CD45: $99 $01 $07 - Store Accumulator in Memory
	LDA $0360,X         ; $CD48: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $CD4B: $18 - Clear Carry Flag
	SBC $CC             ; $CD4C: $E5 $CC - Subtract Memory from Accumulator with Borrow
	SEC                 ; $CD4E: $38 - Set Carry Flag
	SBC #$04            ; $CD4F: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $0700,Y         ; $CD51: $99 $00 $07 - Store Accumulator in Memory
	LDA $0380,X         ; $CD54: $BD $80 $03 - Load Accumulator with Memory
	STA $0702,Y         ; $CD57: $99 $02 $07 - Store Accumulator in Memory
	LDA $4A,X           ; $CD5A: $B5 $4A $38 - Load Accumulator with Memory
	SBC #$04            ; $CD5D: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $0703,Y         ; $CD5F: $99 $03 $07 - Store Accumulator in Memory
	TYA                 ; $CD62: $98 - Transfer Index Y to Accumulator
	CLC                 ; $CD63: $18 - Clear Carry Flag
	ADC $AD             ; $CD64: $65 $AD - Add Memory to Accumulator with Carry
	STA $AC             ; $CD66: $85 $AC - Store Accumulator in Memory
	RTS                 ; $CD68: $60 - Return from Subroutine
	SBC ($F3),Y         ; $CD69: $F1 $F3 $20 - Subtract Memory from Accumulator with Borrow
	DEY                 ; $CD6D: $88 - Decrement Index Y by One
	LDA $0200,X         ; $CD6E: $BD $00 $02 - Load Accumulator with Memory
	BEQ $01             ; $CD71: $F0 $01 - Branch on Result Zero
	RTS                 ; $CD73: $60 - Return from Subroutine
	LDY $0300,X         ; $CD74: $BC $00 $03 - Load Index Y with Memory
	LDA $0552,Y         ; $CD77: $B9 $52 $05 - Load Accumulator with Memory
	BEQ $06             ; $CD7A: $F0 $06 - Branch on Result Zero
	SEC                 ; $CD7C: $38 - Set Carry Flag
	SBC #$01            ; $CD7D: $E9 $01 - Subtract Memory from Accumulator with Borrow
	STA $0552,Y         ; $CD7F: $99 $52 $05 - Store Accumulator in Memory
	JMP $8833           ; $CD82: $4C $33 $88 - Jump to New Location
	LDA $BC             ; $CD85: $A5 $BC - Load Accumulator with Memory
	CMP #$07            ; $CD87: $C9 $07 - Compare Memory with Accumulator
	BNE $17             ; $CD89: $D0 $17 - Branch on Result not Zero
	BIT $DC             ; $CD8B: $24 $DC - Test Bits in Memory with Accumulator
	BMI $13             ; $CD8D: $30 $13 - Branch on Result Minus
	LDA $30             ; $CD8F: $A5 $30 - Load Accumulator with Memory
	CMP #$DC            ; $CD91: $C9 $DC - Compare Memory with Accumulator
	BCC $0D             ; $CD93: $90 $0D - Branch on Carry Clear
	TXA                 ; $CD95: $8A - Transfer Index X to Accumulator
	PHA                 ; $CD96: $48 - Push Accumulator on Stack
	LDA #$E6            ; $CD97: $A9 $E6 - Load Accumulator with Memory
	LDY #$68            ; $CD99: $A0 $68 - Load Index Y with Memory
	LDX #$03            ; $CD9B: $A2 $03 - Load Index X with Memory
	JSR $8C92           ; $CD9D: $20 $92 $8C - Jump to New Location Saving Return Address
	PLA                 ; $CDA0: $68 - Pull Accumulator from Stack
	TAX                 ; $CDA1: $AA - Transfer Accumulator to Index X
	JMP $CE53           ; $CDA2: $4C $53 $CE - Jump to New Location
	ROR $DC             ; $CDA5: $66 $DC - Rotate One Bit Right
	LDA $0C             ; $CDA7: $A5 $0C - Load Accumulator with Memory
	LDY $02A0,X         ; $CDA9: $BC $A0 $02 - Load Index Y with Memory
	BEQ $0F             ; $CDAC: $F0 $0F - Branch on Result Zero
	CLC #$01            ; $CDAE: $29 $01 - Clear Carry Flag
	ASL A               ; $CDB0: $0A - Shift Left One Bit
	ASL A               ; $CDB1: $0A - Shift Left One Bit
	SBC #$01            ; $CDB2: $E9 $01 - Subtract Memory from Accumulator with Borrow
	LDY #$00            ; $CDB4: $A0 $00 - Load Index Y with Memory
	JSR $A118           ; $CDB6: $20 $18 $A1 - Jump to New Location Saving Return Address
	CLC #$11            ; $CDB9: $29 $11 - Clear Carry Flag
	BPL $15             ; $CDBB: $10 $15 - Branch on Result Plus
	LSR A               ; $CDBD: $4A $A9 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $CDBF: $00 - Force Break
	BCC $09             ; $CDC0: $90 $09 - Branch on Carry Clear
	LDY #$02            ; $CDC2: $A0 $02 - Load Index Y with Memory
	JSR $A118           ; $CDC4: $20 $18 $A1 - Jump to New Location Saving Return Address
	CLC #$10            ; $CDC7: $29 $10 - Clear Carry Flag
	BPL $07             ; $CDC9: $10 $07 - Branch on Result Plus
	LDY #$FF            ; $CDCB: $A0 $FF - Load Index Y with Memory
	JSR $A118           ; $CDCD: $20 $18 $A1 - Jump to New Location Saving Return Address
	CLC #$11            ; $CDD0: $29 $11 - Clear Carry Flag
	BEQ $3E             ; $CDD2: $F0 $3E - Branch on Result Zero
	CMP #$01            ; $CDD4: $C9 $01 - Compare Memory with Accumulator
	BEQ $28             ; $CDD6: $F0 $28 - Branch on Result Zero
	JSR $CF6A           ; $CDD8: $20 $6A $CF - Jump to New Location Saving Return Address
	TAY                 ; $CDDB: $A8 - Transfer Accumulator to Index Y
	LDA $2E             ; $CDDC: $A5 $2E - Load Accumulator with Memory
	STA $27             ; $CDDE: $85 $27 - Store Accumulator in Memory
	LDA $2F             ; $CDE0: $A5 $2F - Load Accumulator with Memory
	JSR $9A6E           ; $CDE2: $20 $6E $9A - Jump to New Location Saving Return Address
	CMP #$00            ; $CDE5: $C9 $00 - Compare Memory with Accumulator
	BEQ $1B             ; $CDE7: $F0 $1B - Branch on Result Zero
	CMP #$02            ; $CDE9: $C9 $02 - Compare Memory with Accumulator
	BEQ $52             ; $CDEB: $F0 $52 - Branch on Result Zero
	CMP #$03            ; $CDED: $C9 $03 - Compare Memory with Accumulator
	BEQ $94             ; $CDEF: $F0 $94 - Branch on Result Zero
	CMP #$04            ; $CDF1: $C9 $04 - Compare Memory with Accumulator
	BNE $1F             ; $CDF3: $D0 $1F - Branch on Result not Zero
	LDA #$10            ; $CDF5: $A9 $10 - Load Accumulator with Memory
	JSR $980F           ; $CDF7: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $C497           ; $CDFA: $20 $97 $C4 - Jump to New Location Saving Return Address
	JSR $CF71           ; $CDFD: $20 $71 $CF - Jump to New Location Saving Return Address
	BIT $DC             ; $CE00: $24 $DC - Test Bits in Memory with Accumulator
	BMI $0E             ; $CE02: $30 $0E - Branch on Result Minus
	JSR $CF5F           ; $CE04: $20 $5F $CF - Jump to New Location Saving Return Address
	LDA $CCE4,Y         ; $CE07: $B9 $E4 $CC - Load Accumulator with Memory
	JSR $8B2E           ; $CE0A: $20 $2E $8B - Jump to New Location Saving Return Address
	JSR $CD74           ; $CE0D: $20 $74 $CD - Jump to New Location Saving Return Address
	SEC                 ; $CE10: $38 - Set Carry Flag
	RTS                 ; $CE11: $60 - Return from Subroutine
	CLC                 ; $CE12: $18 - Clear Carry Flag
	RTS                 ; $CE13: $60 - Return from Subroutine
	LDA #$06            ; $CE14: $A9 $06 - Load Accumulator with Memory
	JSR $980F           ; $CE16: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $C471           ; $CE19: $20 $71 $C4 - Jump to New Location Saving Return Address
	JSR $CF37           ; $CE1C: $20 $37 $CF - Jump to New Location Saving Return Address
	LDA #$3E            ; $CE1F: $A9 $3E - Load Accumulator with Memory
	JSR $8B2E           ; $CE21: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $17             ; $CE24: $90 $17 - Branch on Carry Clear
	LDA $30             ; $CE26: $A5 $30 - Load Accumulator with Memory
	CLC #$F8            ; $CE28: $29 $F8 - Clear Carry Flag
	CLC                 ; $CE2A: $18 - Clear Carry Flag
	ADC #$04            ; $CE2B: $69 $04 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $CE2D: $99 $4A $00 - Store Accumulator in Memory
	LDA $31             ; $CE30: $A5 $31 - Load Accumulator with Memory
	CLC #$F8            ; $CE32: $29 $F8 - Clear Carry Flag
	CLC                 ; $CE34: $18 - Clear Carry Flag
	ADC #$04            ; $CE35: $69 $04 - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $CE37: $99 $60 $03 - Store Accumulator in Memory
	JSR $9290           ; $CE3A: $20 $90 $92 - Jump to New Location Saving Return Address
	SEC                 ; $CE3D: $38 - Set Carry Flag
	RTS                 ; $CE3E: $60 - Return from Subroutine
	LDA #$06            ; $CE3F: $A9 $06 - Load Accumulator with Memory
	JSR $980F           ; $CE41: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$22            ; $CE44: $A9 $22 - Load Accumulator with Memory
	JSR $8B4D           ; $CE46: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $03             ; $CE49: $90 $03 - Branch on Carry Clear
	JSR $CF4A           ; $CE4B: $20 $4A $CF - Jump to New Location Saving Return Address
	JSR $CD74           ; $CE4E: $20 $74 $CD - Jump to New Location Saving Return Address
	SEC                 ; $CE51: $38 - Set Carry Flag
	RTS                 ; $CE52: $60 - Return from Subroutine
	STX $DB             ; $CE53: $86 $DB - Store Index X in Memory
	LDA #$02            ; $CE55: $A9 $02 - Load Accumulator with Memory
	JSR $980F           ; $CE57: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$00            ; $CE5A: $A9 $00 - Load Accumulator with Memory
	STA $DC             ; $CE5C: $85 $DC - Store Accumulator in Memory
	STA $DD             ; $CE5E: $85 $DD - Store Accumulator in Memory
	LDA $0260,X         ; $CE60: $BD $60 $02 - Load Accumulator with Memory
	BEQ $0C             ; $CE63: $F0 $0C - Branch on Result Zero
	BPL $04             ; $CE65: $10 $04 - Branch on Result Plus
	LDA #$FF            ; $CE67: $A9 $FF - Load Accumulator with Memory
	BNE $02             ; $CE69: $D0 $02 - Branch on Result not Zero
	LDA #$01            ; $CE6B: $A9 $01 - Load Accumulator with Memory
	STA $DC             ; $CE6D: $85 $DC - Store Accumulator in Memory
	BNE $0D             ; $CE6F: $D0 $0D - Branch on Result not Zero
	LDA $02A0,X         ; $CE71: $BD $A0 $02 - Load Accumulator with Memory
	BPL $04             ; $CE74: $10 $04 - Branch on Result Plus
	LDA #$FE            ; $CE76: $A9 $FE - Load Accumulator with Memory
	BNE $02             ; $CE78: $D0 $02 - Branch on Result not Zero
	LDA #$03            ; $CE7A: $A9 $03 - Load Accumulator with Memory
	STA $DD             ; $CE7C: $85 $DD - Store Accumulator in Memory
	LDA #$02            ; $CE7E: $A9 $02 - Load Accumulator with Memory
	STA $DA             ; $CE80: $85 $DA - Store Accumulator in Memory
	LDA #$3F            ; $CE82: $A9 $3F - Load Accumulator with Memory
	JSR $8B2E           ; $CE84: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $36             ; $CE87: $90 $36 - Branch on Carry Clear
	LDX $DA             ; $CE89: $A6 $DA - Load Index X with Memory
	LDA $30             ; $CE8B: $A5 $30 - Load Accumulator with Memory
	CLC #$F0            ; $CE8D: $29 $F0 - Clear Carry Flag
	CLC                 ; $CE8F: $18 - Clear Carry Flag
	ADC $CED1,X         ; $CE90: $7D $D1 $CE - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $CE93: $99 $4A $00 - Store Accumulator in Memory
	LDA $31             ; $CE96: $A5 $31 - Load Accumulator with Memory
	CLC #$F0            ; $CE98: $29 $F0 - Clear Carry Flag
	CLC                 ; $CE9A: $18 - Clear Carry Flag
	ADC $CED4,X         ; $CE9B: $7D $D4 $CE - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $CE9E: $99 $60 $03 - Store Accumulator in Memory
	LDA $CED7,X         ; $CEA1: $BD $D7 $CE - Load Accumulator with Memory
	CLC                 ; $CEA4: $18 - Clear Carry Flag
	ADC $DC             ; $CEA5: $65 $DC - Add Memory to Accumulator with Carry
	STA $0260,Y         ; $CEA7: $99 $60 $02 - Store Accumulator in Memory
	LDA $CEDA,X         ; $CEAA: $BD $DA $CE - Load Accumulator with Memory
	STA $0280,Y         ; $CEAD: $99 $80 $02 - Store Accumulator in Memory
	LDA $CEDD,X         ; $CEB0: $BD $DD $CE - Load Accumulator with Memory
	CLC                 ; $CEB3: $18 - Clear Carry Flag
	ADC $DD             ; $CEB4: $65 $DD - Add Memory to Accumulator with Carry
	STA $02A0,Y         ; $CEB6: $99 $A0 $02 - Store Accumulator in Memory
	LDX $DB             ; $CEB9: $A6 $DB - Load Index X with Memory
	DEC $DA             ; $CEBB: $C6 $DA - Decrement Memory by One
	BPL $C3             ; $CEBD: $10 $C3 - Branch on Result Plus
	JSR $CD74           ; $CEBF: $20 $74 $CD - Jump to New Location Saving Return Address
	TXA                 ; $CEC2: $8A - Transfer Index X to Accumulator
	TAY                 ; $CEC3: $A8 - Transfer Accumulator to Index Y
	JSR $CF4A           ; $CEC4: $20 $4A $CF - Jump to New Location Saving Return Address
	LDA #$23            ; $CEC7: $A9 $23 - Load Accumulator with Memory
	STA $0200,Y         ; $CEC9: $99 $00 $02 - Store Accumulator in Memory
	JSR $9290           ; $CECC: $20 $90 $92 - Jump to New Location Saving Return Address
	SEC                 ; $CECF: $38 - Set Carry Flag
	RTS                 ; $CED0: $60 - Return from Subroutine
	PHP                 ; $CED3: $08 - Push Processor Status on Stack
	ASL $06             ; $CED4: $06 $06 - Shift Left One Bit
	ASL A               ; $CED6: $0A - Shift Left One Bit
	BRK                 ; $CED8: $00 - Force Break
	BRK                 ; $CED9: $00 - Force Break
	BRK                 ; $CEDC: $00 - Force Break
	INC $00FF,X         ; $CEDD: $FE $FF $00 - Increment Memory by One
	JSR $A24C           ; $CEE0: $20 $4C $A2 - Jump to New Location Saving Return Address
	BCS $50             ; $CEE3: $B0 $50 - Branch on Carry Set
	TYA                 ; $CEE5: $98 - Transfer Index Y to Accumulator
	PHA                 ; $CEE6: $48 - Push Accumulator on Stack
	JSR $CF6A           ; $CEE7: $20 $6A $CF - Jump to New Location Saving Return Address
	STA $F7             ; $CEEA: $85 $F7 - Store Accumulator in Memory
	PLA                 ; $CEEC: $68 - Pull Accumulator from Stack
	TAY                 ; $CEED: $A8 - Transfer Accumulator to Index Y
	LDA $0300,X         ; $CEEE: $BD $00 $03 - Load Accumulator with Memory
	STA $F8             ; $CEF1: $85 $F8 - Store Accumulator in Memory
	JSR $FCD9           ; $CEF3: $20 $D9 $FC - Jump to New Location Saving Return Address
	LDA $F9             ; $CEF6: $A5 $F9 - Load Accumulator with Memory
	CMP #$02            ; $CEF8: $C9 $02 - Compare Memory with Accumulator
	BEQ $39             ; $CEFA: $F0 $39 - Branch on Result Zero
	CMP #$00            ; $CEFC: $C9 $00 - Compare Memory with Accumulator
	BNE $32             ; $CEFE: $D0 $32 - Branch on Result not Zero
	TXA                 ; $CF00: $8A - Transfer Index X to Accumulator
	PHA                 ; $CF01: $48 - Push Accumulator on Stack
	TYA                 ; $CF02: $98 - Transfer Index Y to Accumulator
	PHA                 ; $CF03: $48 - Push Accumulator on Stack
	LDX $0200,Y         ; $CF04: $BE $00 $02 - Load Index X with Memory
	LDY #$00            ; $CF07: $A0 $00 - Load Index Y with Memory
	LDA $BD67,X         ; $CF09: $BD $67 $BD - Load Accumulator with Memory
	BNE $01             ; $CF0C: $D0 $01 - Branch on Result not Zero
	INY                 ; $CF0E: $C8 - Increment Index Y by One
	LDA $BE6D,X         ; $CF0F: $BD $6D $BE - Load Accumulator with Memory
	LDX #$07            ; $CF12: $A2 $07 - Load Index X with Memory
	CLC #$04            ; $CF14: $29 $04 - Clear Carry Flag
	BEQ $02             ; $CF16: $F0 $02 - Branch on Result Zero
	LDX #$1C            ; $CF18: $A2 $1C - Load Index X with Memory
	TXA                 ; $CF1A: $8A - Transfer Index X to Accumulator
	JSR $980D           ; $CF1B: $20 $0D $98 - Jump to New Location Saving Return Address
	PLA                 ; $CF1E: $68 - Pull Accumulator from Stack
	TAY                 ; $CF1F: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $CF20: $68 - Pull Accumulator from Stack
	TAX                 ; $CF21: $AA - Transfer Accumulator to Index X
	LDA $F8             ; $CF22: $A5 $F8 - Load Accumulator with Memory
	STA $0A             ; $CF24: $85 $0A - Store Accumulator in Memory
	LDA $F7             ; $CF26: $A5 $F7 - Load Accumulator with Memory
	JSR $8A48           ; $CF28: $20 $48 $8A - Jump to New Location Saving Return Address
	LDA $0461           ; $CF2B: $AD $61 $04 - Load Accumulator with Memory
	CMP #$06            ; $CF2E: $C9 $06 - Compare Memory with Accumulator
	BCC $05             ; $CF30: $90 $05 - Branch on Carry Clear
	JMP $CF3E           ; $CF32: $4C $3E $CF - Jump to New Location
	CLC                 ; $CF35: $18 - Clear Carry Flag
	RTS                 ; $CF36: $60 - Return from Subroutine
	LDA #$35            ; $CF37: $A9 $35 - Load Accumulator with Memory
	CMP $0200,X         ; $CF39: $DD $00 $02 - Compare Memory with Accumulator
	BEQ $05             ; $CF3C: $F0 $05 - Branch on Result Zero
	JSR $CD74           ; $CF3E: $20 $74 $CD - Jump to New Location Saving Return Address
	SEC                 ; $CF41: $38 - Set Carry Flag
	RTS                 ; $CF42: $60 - Return from Subroutine
	LDA #$3A            ; $CF43: $A9 $3A - Load Accumulator with Memory
	STA $0200,X         ; $CF45: $9D $00 $02 - Store Accumulator in Memory
	CLC                 ; $CF48: $18 - Clear Carry Flag
	RTS                 ; $CF49: $60 - Return from Subroutine
	LDA $30             ; $CF4A: $A5 $30 - Load Accumulator with Memory
	CLC #$F0            ; $CF4C: $29 $F0 - Clear Carry Flag
	CLC                 ; $CF4E: $18 - Clear Carry Flag
	ADC #$08            ; $CF4F: $69 $08 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $CF51: $99 $4A $00 - Store Accumulator in Memory
	LDA $31             ; $CF54: $A5 $31 - Load Accumulator with Memory
	CLC #$F0            ; $CF56: $29 $F0 - Clear Carry Flag
	CLC                 ; $CF58: $18 - Clear Carry Flag
	ADC #$08            ; $CF59: $69 $08 - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $CF5B: $99 $60 $03 - Store Accumulator in Memory
	RTS                 ; $CF5E: $60 - Return from Subroutine
	LDY #$00            ; $CF5F: $A0 $00 - Load Index Y with Memory
	LDA $0200,X         ; $CF61: $BD $00 $02 - Load Accumulator with Memory
	CMP #$35            ; $CF64: $C9 $35 - Compare Memory with Accumulator
	BNE $01             ; $CF66: $D0 $01 - Branch on Result not Zero
	INY                 ; $CF68: $C8 - Increment Index Y by One
	RTS                 ; $CF69: $60 - Return from Subroutine
	JSR $CF5F           ; $CF6A: $20 $5F $CF - Jump to New Location Saving Return Address
	LDA $CCE0,Y         ; $CF6D: $B9 $E0 $CC - Load Accumulator with Memory
	RTS                 ; $CF70: $60 - Return from Subroutine
	LDA #$00            ; $CF71: $A9 $00 - Load Accumulator with Memory
	STA $09             ; $CF73: $85 $09 - Store Accumulator in Memory
	LDA #$32            ; $CF75: $A9 $32 - Load Accumulator with Memory
	LDY #$FC            ; $CF77: $A0 $FC - Load Index Y with Memory
	JSR $8B32           ; $CF79: $20 $32 $8B - Jump to New Location Saving Return Address
	LDA #$07            ; $CF7C: $A9 $07 - Load Accumulator with Memory
	STA $09             ; $CF7E: $85 $09 - Store Accumulator in Memory
	LDA #$32            ; $CF80: $A9 $32 - Load Accumulator with Memory
	LDY #$FA            ; $CF82: $A0 $FA - Load Index Y with Memory
	JSR $8B32           ; $CF84: $20 $32 $8B - Jump to New Location Saving Return Address
	RTS                 ; $CF87: $60 - Return from Subroutine
	LDY #$03            ; $CF88: $A0 $03 - Load Index Y with Memory
	STA $0300,Y         ; $CF8A: $99 $00 $03 - Store Accumulator in Memory
	DEY                 ; $CF8D: $88 - Decrement Index Y by One
	BPL $FA             ; $CF8E: $10 $FA - Branch on Result Plus
	RTS                 ; $CF90: $60 - Return from Subroutine
	LDA $053E,X         ; $CF91: $BD $3E $05 - Load Accumulator with Memory
	BNE $05             ; $CF94: $D0 $05 - Branch on Result not Zero
	LDA $88,X           ; $CF96: $B5 $88 $C9 - Load Accumulator with Memory
	RTS                 ; $CF9A: $60 - Return from Subroutine
	SEC                 ; $CF9B: $38 - Set Carry Flag
	RTS                 ; $CF9C: $60 - Return from Subroutine
	LDA $053E,Y         ; $CF9D: $B9 $3E $05 - Load Accumulator with Memory
	BNE $F9             ; $CFA0: $D0 $F9 - Branch on Result not Zero
	LDA $0088,Y         ; $CFA2: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$03            ; $CFA5: $C9 $03 - Compare Memory with Accumulator
	RTS                 ; $CFA7: $60 - Return from Subroutine
	LDA $0200,Y         ; $CFA8: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $EE             ; $CFAB: $F0 $EE - Branch on Result Zero
	LDA $0088,Y         ; $CFAD: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $CFB0: $C9 $09 - Compare Memory with Accumulator
	RTS                 ; $CFB2: $60 - Return from Subroutine
	STA $0562,X         ; $CFB3: $9D $62 $05 - Store Accumulator in Memory
	TYA                 ; $CFB6: $98 - Transfer Index Y to Accumulator
	STA $02E0,X         ; $CFB7: $9D $E0 $02 - Store Accumulator in Memory
	LDA #$DF            ; $CFBA: $A9 $DF - Load Accumulator with Memory
	JSR $A87D           ; $CFBC: $20 $7D $A8 - Jump to New Location Saving Return Address
	LDA $88,X           ; $CFBF: $B5 $88 $C9 - Load Accumulator with Memory
	ORA $F0             ; $CFC2: $05 $F0 - OR Memory with Accumulator
	CMP #$06            ; $CFC5: $C9 $06 - Compare Memory with Accumulator
	BEQ $03             ; $CFC7: $F0 $03 - Branch on Result Zero
	STA $0556,X         ; $CFC9: $9D $56 $05 - Store Accumulator in Memory
	LDA #$05            ; $CFCC: $A9 $05 - Load Accumulator with Memory
	STA $88,X           ; $CFCE: $95 $88 - Store Accumulator in Memory
	LDA #$00            ; $CFD0: $A9 $00 - Load Accumulator with Memory
	STA $03A0,X         ; $CFD2: $9D $A0 $03 - Store Accumulator in Memory
	RTS                 ; $CFD5: $60 - Return from Subroutine
	JSR $CFB3           ; $CFD6: $20 $B3 $CF - Jump to New Location Saving Return Address
	LDA #$06            ; $CFD9: $A9 $06 - Load Accumulator with Memory
	STA $88,X           ; $CFDB: $95 $88 - Store Accumulator in Memory
	LDA #$24            ; $CFDD: $A9 $24 - Load Accumulator with Memory
	STA $94,X           ; $CFDF: $95 $94 - Store Accumulator in Memory
	JSR $A860           ; $CFE1: $20 $60 $A8 - Jump to New Location Saving Return Address
	LDA #$FE            ; $CFE4: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $CFE6: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $CFE9: $9D $C0 $02 - Store Accumulator in Memory
	LDA #$14            ; $CFEC: $A9 $14 - Load Accumulator with Memory
	JSR $980F           ; $CFEE: $20 $0F $98 - Jump to New Location Saving Return Address
	BRK                 ; $CFF1: $00 - Force Break
	LDY #$9D            ; $CFF2: $A0 $9D - Load Index Y with Memory
	JSR $FD6C           ; $CFF4: $20 $6C $FD - Jump to New Location Saving Return Address
	LDA #$0A            ; $CFF7: $A9 $0A - Load Accumulator with Memory
	STA $88,X           ; $CFF9: $95 $88 - Store Accumulator in Memory
	LDA #$80            ; $CFFB: $A9 $80 - Load Accumulator with Memory
	STA $94,X           ; $CFFD: $95 $94 - Store Accumulator in Memory
	LDA $02             ; $CFFF: $A5 $02 - Load Accumulator with Memory
	BEQ $08             ; $D001: $F0 $08 - Branch on Result Zero
	LDA $7A             ; $D003: $A5 $7A - Load Accumulator with Memory
	BNE $19             ; $D005: $D0 $19 - Branch on Result not Zero
	STX $70             ; $D007: $86 $70 - Store Index X in Memory
	BEQ $11             ; $D009: $F0 $11 - Branch on Result Zero
	LDY #$03            ; $D00B: $A0 $03 - Load Index Y with Memory
	LDA $0200,Y         ; $D00D: $B9 $00 $02 - Load Accumulator with Memory
	BEQ $07             ; $D010: $F0 $07 - Branch on Result Zero
	LDA $0088,Y         ; $D012: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$09            ; $D015: $C9 $09 - Compare Memory with Accumulator
	BCC $07             ; $D017: $90 $07 - Branch on Carry Clear
	DEY                 ; $D019: $88 - Decrement Index Y by One
	BPL $F1             ; $D01A: $10 $F1 - Branch on Result Plus
	LDA #$40            ; $D01C: $A9 $40 - Load Accumulator with Memory
	STA $7A             ; $D01E: $85 $7A - Store Accumulator in Memory
	JSR $A869           ; $D020: $20 $69 $A8 - Jump to New Location Saving Return Address
	STA $8C,X           ; $D023: $95 $8C - Store Accumulator in Memory
	LDA #$01            ; $D025: $A9 $01 - Load Accumulator with Memory
	STA $0440,X         ; $D027: $9D $40 $04 - Store Accumulator in Memory
	LDA #$FE            ; $D02A: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $D02C: $9D $A0 $02 - Store Accumulator in Memory
	BRK                 ; $D02F: $00 - Force Break
	BNE $59             ; $D032: $D0 $59 - Branch on Result not Zero
	BNE $37             ; $D034: $D0 $37 - Branch on Result not Zero
	LDA #$00            ; $D038: $A9 $00 - Load Accumulator with Memory
	BIT $D1             ; $D03A: $24 $D1 - Test Bits in Memory with Accumulator
	BPL $02             ; $D03C: $10 $02 - Branch on Result Plus
	LDA #$02            ; $D03E: $A9 $02 - Load Accumulator with Memory
	STA $88,X           ; $D040: $95 $88 - Store Accumulator in Memory
	TXA                 ; $D042: $8A - Transfer Index X to Accumulator
	TAY                 ; $D043: $A8 - Transfer Accumulator to Index Y
	LDA #$00            ; $D044: $A9 $00 - Load Accumulator with Memory
	STA $053A,Y         ; $D046: $99 $3A $05 - Store Accumulator in Memory
	INY                 ; $D049: $C8 - Increment Index Y by One
	INY                 ; $D04A: $C8 - Increment Index Y by One
	INY                 ; $D04B: $C8 - Increment Index Y by One
	INY                 ; $D04C: $C8 - Increment Index Y by One
	CPY #$28            ; $D04D: $C0 $28 - Compare Memory and Index Y
	BCC $F5             ; $D04F: $90 $F5 - Branch on Carry Clear
	STA $90,X           ; $D051: $95 $90 - Store Accumulator in Memory
	TXA                 ; $D053: $8A - Transfer Index X to Accumulator
	JSR $A92C           ; $D054: $20 $2C $A9 - Jump to New Location Saving Return Address
	BRK                 ; $D057: $00 - Force Break
	STA $00A0,X         ; $D059: $9D $A0 $00 - Store Accumulator in Memory
	STY $0566           ; $D05C: $8C $66 $05 - Sore Index Y in Memory
	LDA $0380,X         ; $D05F: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $D062: $29 $10 - Clear Carry Flag
	BEQ $1E             ; $D064: $F0 $1E - Branch on Result Zero
	TYA                 ; $D066: $98 - Transfer Index Y to Accumulator
	STA $90,X           ; $D067: $95 $90 - Store Accumulator in Memory
	BIT $05D4           ; $D069: $2C $D4 $05 - Test Bits in Memory with Accumulator
	BPL $16             ; $D06C: $10 $16 - Branch on Result Plus
	LDA #$FC            ; $D06E: $A9 $FC - Load Accumulator with Memory
	LDY #$05            ; $D070: $A0 $05 - Load Index Y with Memory
	JSR $A118           ; $D072: $20 $18 $A1 - Jump to New Location Saving Return Address
	STA $0566           ; $D075: $8D $66 $05 - Store Accumulator in Memory
	BMI $0A             ; $D078: $30 $0A - Branch on Result Minus
	LDA #$04            ; $D07A: $A9 $04 - Load Accumulator with Memory
	LDY #$05            ; $D07C: $A0 $05 - Load Index Y with Memory
	JSR $A118           ; $D07E: $20 $18 $A1 - Jump to New Location Saving Return Address
	STA $0566           ; $D081: $8D $66 $05 - Store Accumulator in Memory
	LDA #$00            ; $D084: $A9 $00 - Load Accumulator with Memory
	LDY #$FE            ; $D086: $A0 $FE - Load Index Y with Memory
	JSR $A0BA           ; $D088: $20 $BA $A0 - Jump to New Location Saving Return Address
	STA $99             ; $D08B: $85 $99 - Store Accumulator in Memory
	JSR $A11B           ; $D08D: $20 $1B $A1 - Jump to New Location Saving Return Address
	STA $98             ; $D090: $85 $98 - Store Accumulator in Memory
	LDA $E5,X           ; $D092: $B5 $E5 $F0 - Load Accumulator with Memory
	ORA $A9             ; $D095: $05 $A9 - OR Memory with Accumulator
	STA $054A,X         ; $D098: $9D $4A $05 - Store Accumulator in Memory
	LDA $0300,X         ; $D09B: $BD $00 $03 - Load Accumulator with Memory
	BEQ $09             ; $D09E: $F0 $09 - Branch on Result Zero
	DEC $0300,X         ; $D0A0: $DE $00 $03 - Decrement Memory by One
	LDA $E5,X           ; $D0A3: $B5 $E5 $29 - Load Accumulator with Memory
	BPL $95             ; $D0A6: $10 $95 - Branch on Result Plus
	SBC $B4             ; $D0A8: $E5 $B4 - Subtract Memory from Accumulator with Borrow
	DEY                 ; $D0AA: $88 - Decrement Index Y by One
	LDA $D0C2,Y         ; $D0AB: $B9 $C2 $D0 - Load Accumulator with Memory
	BNE $1E             ; $D0AE: $D0 $1E - Branch on Result not Zero
	PHA                 ; $D0B0: $48 - Push Accumulator on Stack
	LDA $D0B6,Y         ; $D0B1: $B9 $B6 $D0 - Load Accumulator with Memory
	PHA                 ; $D0B4: $48 - Push Accumulator on Stack
	RTS                 ; $D0B5: $60 - Return from Subroutine
	ASL A               ; $D0B7: $0A - Shift Left One Bit
	BVC $7E             ; $D0BA: $50 $7E - Branch on Overflow Clear
	LDA $D6D7,X         ; $D0BC: $BD $D7 $D6 - Load Accumulator with Memory
	AND $FF10,Y         ; $D0BF: $39 $10 $FF - AND Memory with Accumulator
	BCC $90             ; $D0C3: $90 $90 - Branch on Carry Clear
	STA ($91),Y         ; $D0C5: $91 $91 $91 - Store Accumulator in Memory
	STA ($90),Y         ; $D0C8: $91 $90 $91 - Store Accumulator in Memory
	BCC $91             ; $D0CB: $90 $91 - Branch on Carry Clear
	JSR $D0B0           ; $D0CE: $20 $B0 $D0 - Jump to New Location Saving Return Address
	JSR $8BE5           ; $D0D1: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$F0            ; $D0D4: $C9 $F0 - Compare Memory with Accumulator
	BCC $0B             ; $D0D6: $90 $0B - Branch on Carry Clear
	JSR $A869           ; $D0D8: $20 $69 $A8 - Jump to New Location Saving Return Address
	LDA #$F0            ; $D0DB: $A9 $F0 - Load Accumulator with Memory
	CLC                 ; $D0DD: $18 - Clear Carry Flag
	ADC $CC             ; $D0DE: $65 $CC - Add Memory to Accumulator with Carry
	STA $0360,X         ; $D0E0: $9D $60 $03 - Store Accumulator in Memory
	LDY $4A,X           ; $D0E3: $B4 $4A $C0 - Load Index Y with Memory
	ORA $B0             ; $D0E6: $05 $B0 - OR Memory with Accumulator
	LDA #$04            ; $D0E9: $A9 $04 - Load Accumulator with Memory
	STA $4A,X           ; $D0EB: $95 $4A - Store Accumulator in Memory
	CPY #$FC            ; $D0ED: $C0 $FC - Compare Memory and Index Y
	BCC $04             ; $D0EF: $90 $04 - Branch on Carry Clear
	LDA #$FC            ; $D0F1: $A9 $FC - Load Accumulator with Memory
	STA $4A,X           ; $D0F3: $95 $4A - Store Accumulator in Memory
	JSR $8BE5           ; $D0F5: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$07            ; $D0F8: $C9 $07 - Compare Memory with Accumulator
	BCS $0A             ; $D0FA: $B0 $0A - Branch on Carry Set
	LDA #$06            ; $D0FC: $A9 $06 - Load Accumulator with Memory
	ADC $CC             ; $D0FE: $65 $CC - Add Memory to Accumulator with Carry
	STA $0360,X         ; $D100: $9D $60 $03 - Store Accumulator in Memory
	JSR $A869           ; $D103: $20 $69 $A8 - Jump to New Location Saving Return Address
	JSR $D16D           ; $D106: $20 $6D $D1 - Jump to New Location Saving Return Address
	LDA $053E,X         ; $D109: $BD $3E $05 - Load Accumulator with Memory
	LSR A               ; $D10C: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	BCS $5C             ; $D10E: $B0 $5C - Branch on Carry Set
	JSR $FA26           ; $D110: $20 $26 $FA - Jump to New Location Saving Return Address
	LDA $AD             ; $D113: $A5 $AD - Load Accumulator with Memory
	BMI $20             ; $D115: $30 $20 - Branch on Result Minus
	JSR $D13A           ; $D117: $20 $3A $D1 - Jump to New Location Saving Return Address
	TXA                 ; $D11A: $8A - Transfer Index X to Accumulator
	JSR $A92C           ; $D11B: $20 $2C $A9 - Jump to New Location Saving Return Address
	LDA $03A0,X         ; $D11E: $BD $A0 $03 - Load Accumulator with Memory
	BPL $11             ; $D121: $10 $11 - Branch on Result Plus
	CMP #$92            ; $D123: $C9 $92 - Compare Memory with Accumulator
	BCS $04             ; $D125: $B0 $04 - Branch on Carry Set
	CLC #$03            ; $D127: $29 $03 - Clear Carry Flag
	BNE $06             ; $D129: $D0 $06 - Branch on Result not Zero
	CLC #$07            ; $D12B: $29 $07 - Clear Carry Flag
	CMP #$03            ; $D12D: $C9 $03 - Compare Memory with Accumulator
	BCS $03             ; $D12F: $B0 $03 - Branch on Carry Set
	JSR $A92C           ; $D131: $20 $2C $A9 - Jump to New Location Saving Return Address
	JMP $A995           ; $D134: $4C $95 $A9 - Jump to New Location
	JSR $D11A           ; $D137: $20 $1A $D1 - Jump to New Location Saving Return Address
	LDA $8C,X           ; $D13A: $B5 $8C $F0 - Load Accumulator with Memory
	ROL $54BD           ; $D13D: $2E $BD $54 - Rotate One Bit Left
	BEQ $29             ; $D141: $F0 $29 - Branch on Result Zero
	STA $AF             ; $D143: $85 $AF - Store Accumulator in Memory
	LDA $0360,X         ; $D145: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $D148: $38 - Set Carry Flag
	SBC #$06            ; $D149: $E9 $06 - Subtract Memory from Accumulator with Borrow
	ADC $045C,X         ; $D14B: $7D $5C $04 - Add Memory to Accumulator with Carry
	TAY                 ; $D14E: $A8 - Transfer Accumulator to Index Y
	LDA $0380,X         ; $D14F: $BD $80 $03 - Load Accumulator with Memory
	CLC #$FC            ; $D152: $29 $FC - Clear Carry Flag
	ORA #$01            ; $D154: $09 $01 - OR Memory with Accumulator
	STA $AE             ; $D156: $85 $AE - Store Accumulator in Memory
	ASL A               ; $D158: $0A - Shift Left One Bit
	ASL A               ; $D159: $0A - Shift Left One Bit
	LDA $0458,X         ; $D15A: $BD $58 $04 - Load Accumulator with Memory
	BCC $04             ; $D15D: $90 $04 - Branch on Carry Clear
	EOR #$FF            ; $D15F: $49 $FF - Exclusive-OR Memory with Accumulator
	ADC #$00            ; $D161: $69 $00 - Add Memory to Accumulator with Carry
	SEC                 ; $D163: $38 - Set Carry Flag
	SBC #$04            ; $D164: $E9 $04 - Subtract Memory from Accumulator with Borrow
	CLC                 ; $D166: $18 - Clear Carry Flag
	ADC $4A,X           ; $D167: $75 $4A - Add Memory to Accumulator with Carry
	JMP $F040           ; $D169: $4C $40 $F0 - Jump to New Location
	RTS                 ; $D16C: $60 - Return from Subroutine
	LDA $0440,X         ; $D16D: $BD $40 $04 - Load Accumulator with Memory
	CMP #$02            ; $D170: $C9 $02 - Compare Memory with Accumulator
	BCC $F8             ; $D172: $90 $F8 - Branch on Carry Clear
	LDA #$E6            ; $D174: $A9 $E6 - Load Accumulator with Memory
	STA $AF             ; $D176: $85 $AF - Store Accumulator in Memory
	LDA $0C             ; $D178: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $D17A: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $D17D: $A8 - Transfer Accumulator to Index Y
	STX $AE             ; $D17E: $86 $AE - Store Index X in Memory
	LDA $4A,X           ; $D180: $B5 $4A $18 - Load Accumulator with Memory
	ADC $D193,Y         ; $D183: $79 $93 $D1 - Add Memory to Accumulator with Carry
	PHA                 ; $D186: $48 - Push Accumulator on Stack
	LDA $0360,X         ; $D187: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $D18A: $18 - Clear Carry Flag
	ADC $D1A3,Y         ; $D18B: $79 $A3 $D1 - Add Memory to Accumulator with Carry
	TAY                 ; $D18E: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $D18F: $68 - Pull Accumulator from Stack
	JMP $F040           ; $D190: $4C $40 $F0 - Jump to New Location
	ORA ($FF,X)         ; $D195: $01 $FF $FD - OR Memory with Accumulator
	SED                 ; $D199: $F8 - Set Decimal Flag
	INC $F6,X           ; $D19A: $F6 $F6 - Increment Memory by One
	INC $F8,X           ; $D19C: $F6 $F8 - Increment Memory by One
	ORA ($03,X)         ; $D1A1: $01 $03 $FD - OR Memory with Accumulator
	ORA ($03,X)         ; $D1A5: $01 $03 $04 - OR Memory with Accumulator
	ORA ($FF,X)         ; $D1A9: $01 $FF $FD - OR Memory with Accumulator
	SED                 ; $D1AD: $F8 - Set Decimal Flag
	INC $F6,X           ; $D1AE: $F6 $F6 - Increment Memory by One
	INC $F8,X           ; $D1B0: $F6 $F8 - Increment Memory by One
	JSR $D22F           ; $D1B3: $20 $2F $D2 - Jump to New Location Saving Return Address
	JSR $D264           ; $D1B6: $20 $64 $D2 - Jump to New Location Saving Return Address
	LDA $E5,X           ; $D1B9: $B5 $E5 $10 - Load Accumulator with Memory
	AND $BD             ; $D1BC: $25 $BD - AND Memory with Accumulator
	ORA $30             ; $D1BF: $05 $30 - OR Memory with Accumulator
	JMP $D36E           ; $D1C2: $4C $6E $D3 - Jump to New Location
	LDA $90,X           ; $D1C5: $B5 $90 $30 - Load Accumulator with Memory
	BEQ $0D             ; $D1C9: $F0 $0D - Branch on Result Zero
	LDA #$26            ; $D1CB: $A9 $26 - Load Accumulator with Memory
	JSR $8BD1           ; $D1CD: $20 $D1 $8B - Jump to New Location Saving Return Address
	LDA $90,X           ; $D1D0: $B5 $90 $30 - Load Accumulator with Memory
	INC $90,X           ; $D1D4: $F6 $90 - Increment Memory by One
	BNE $0A             ; $D1D6: $D0 $0A - Branch on Result not Zero
	LDA $053A,X         ; $D1D8: $BD $3A $05 - Load Accumulator with Memory
	BEQ $05             ; $D1DB: $F0 $05 - Branch on Result Zero
	LDA #$2C            ; $D1DD: $A9 $2C - Load Accumulator with Memory
	JSR $8BD1           ; $D1DF: $20 $D1 $8B - Jump to New Location Saving Return Address
	LDA $E5,X           ; $D1E2: $B5 $E5 $29 - Load Accumulator with Memory
	PHP                 ; $D1E5: $08 - Push Processor Status on Stack
	BEQ $22             ; $D1E6: $F0 $22 - Branch on Result Zero
	LDA $05D7,X         ; $D1E8: $BD $D7 $05 - Load Accumulator with Memory
	CLC #$08            ; $D1EB: $29 $08 - Clear Carry Flag
	BEQ $05             ; $D1ED: $F0 $05 - Branch on Result Zero
	LDA $054E,X         ; $D1EF: $BD $4E $05 - Load Accumulator with Memory
	BNE $16             ; $D1F2: $D0 $16 - Branch on Result not Zero
	LDA $98             ; $D1F4: $A5 $98 - Load Accumulator with Memory
	CLC #$02            ; $D1F6: $29 $02 - Clear Carry Flag
	BEQ $10             ; $D1F8: $F0 $10 - Branch on Result Zero
	LDA #$01            ; $D1FA: $A9 $01 - Load Accumulator with Memory
	STA $88,X           ; $D1FC: $95 $88 - Store Accumulator in Memory
	JSR $A85D           ; $D1FE: $20 $5D $A8 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $D201: $B5 $4A $29 - Load Accumulator with Memory
	SED                 ; $D204: $F8 - Set Decimal Flag
	CLC                 ; $D205: $18 - Clear Carry Flag
	ADC #$03            ; $D206: $69 $03 - Add Memory to Accumulator with Carry
	STA $4A,X           ; $D208: $95 $4A - Store Accumulator in Memory
	LDA $E5,X           ; $D20A: $B5 $E5 $29 - Load Accumulator with Memory
	JSR $1EF0           ; $D20D: $20 $F0 $1E - Jump to New Location Saving Return Address
	LDA $0440,X         ; $D210: $BD $40 $04 - Load Accumulator with Memory
	CMP #$02            ; $D213: $C9 $02 - Compare Memory with Accumulator
	BNE $17             ; $D215: $D0 $17 - Branch on Result not Zero
	JSR $8B4B           ; $D217: $20 $4B $8B - Jump to New Location Saving Return Address
	BCC $12             ; $D21A: $90 $12 - Branch on Carry Clear
	LDA $0360,Y         ; $D21C: $B9 $60 $03 - Load Accumulator with Memory
	SBC #$09            ; $D21F: $E9 $09 - Subtract Memory from Accumulator with Borrow
	STA $0360,Y         ; $D221: $99 $60 $03 - Store Accumulator in Memory
	LDA #$16            ; $D224: $A9 $16 - Load Accumulator with Memory
	LDY #$20            ; $D226: $A0 $20 - Load Index Y with Memory
	JSR $980D           ; $D228: $20 $0D $98 - Jump to New Location Saving Return Address
	DEC $0440,X         ; $D22B: $DE $40 $04 - Decrement Memory by One
	RTS                 ; $D22E: $60 - Return from Subroutine
	LDA $E5,X           ; $D22F: $B5 $E5 $0A - Load Accumulator with Memory
	BPL $21             ; $D232: $10 $21 - Branch on Result Plus
	LDA $05D7,X         ; $D234: $BD $D7 $05 - Load Accumulator with Memory
	ASL A               ; $D237: $0A - Shift Left One Bit
	BMI $03             ; $D238: $30 $03 - Branch on Result Minus
	JSR $D52D           ; $D23A: $20 $2D $D5 - Jump to New Location Saving Return Address
	INC $03A0,X         ; $D23D: $FE $A0 $03 - Increment Memory by One
	BEQ $0D             ; $D240: $F0 $0D - Branch on Result Zero
	LDA $03A0,X         ; $D242: $BD $A0 $03 - Load Accumulator with Memory
	CMP #$80            ; $D245: $C9 $80 - Compare Memory with Accumulator
	BNE $05             ; $D247: $D0 $05 - Branch on Result not Zero
	LDA #$16            ; $D249: $A9 $16 - Load Accumulator with Memory
	JSR $980F           ; $D24B: $20 $0F $98 - Jump to New Location Saving Return Address
	RTS                 ; $D24E: $60 - Return from Subroutine
	LDA #$92            ; $D24F: $A9 $92 - Load Accumulator with Memory
	STA $03A0,X         ; $D251: $9D $A0 $03 - Store Accumulator in Memory
	RTS                 ; $D254: $60 - Return from Subroutine
	LDA $03A0,X         ; $D255: $BD $A0 $03 - Load Accumulator with Memory
	BPL $F4             ; $D258: $10 $F4 - Branch on Result Plus
	LDA #$00            ; $D25A: $A9 $00 - Load Accumulator with Memory
	STA $03A0,X         ; $D25C: $9D $A0 $03 - Store Accumulator in Memory
	LDY #$35            ; $D25F: $A0 $35 - Load Index Y with Memory
	JMP $D52F           ; $D261: $4C $2F $D5 - Jump to New Location
	LDY #$2C            ; $D264: $A0 $2C - Load Index Y with Memory
	BIT $0566           ; $D266: $2C $66 $05 - Test Bits in Memory with Accumulator
	BPL $02             ; $D269: $10 $02 - Branch on Result Plus
	LDY #$0B            ; $D26B: $A0 $0B - Load Index Y with Memory
	LDA $E5,X           ; $D26D: $B5 $E5 $29 - Load Accumulator with Memory
	BEQ $26             ; $D271: $F0 $26 - Branch on Result Zero
	JSR $D2D2           ; $D273: $20 $D2 $D2 - Jump to New Location Saving Return Address
	TYA                 ; $D276: $98 - Transfer Index Y to Accumulator
	JSR $8BAD           ; $D277: $20 $AD $8B - Jump to New Location Saving Return Address
	BPL $48             ; $D27A: $10 $48 - Branch on Result Plus
	LDA $0260,X         ; $D27C: $BD $60 $02 - Load Accumulator with Memory
	BPL $17             ; $D27F: $10 $17 - Branch on Result Plus
	CMP #$FE            ; $D281: $C9 $FE - Compare Memory with Accumulator
	BCC $09             ; $D283: $90 $09 - Branch on Carry Clear
	BNE $11             ; $D285: $D0 $11 - Branch on Result not Zero
	LDA $0280,X         ; $D287: $BD $80 $02 - Load Accumulator with Memory
	CMP #$B0            ; $D28A: $C9 $B0 - Compare Memory with Accumulator
	BCS $0A             ; $D28C: $B0 $0A - Branch on Carry Set
	LDA #$FE            ; $D28E: $A9 $FE - Load Accumulator with Memory
	STA $0260,X         ; $D290: $9D $60 $02 - Store Accumulator in Memory
	LDA #$B0            ; $D293: $A9 $B0 - Load Accumulator with Memory
	STA $0280,X         ; $D295: $9D $80 $02 - Store Accumulator in Memory
	RTS                 ; $D298: $60 - Return from Subroutine
	LDA $E5,X           ; $D299: $B5 $E5 $4A - Load Accumulator with Memory
	BCC $25             ; $D29C: $90 $25 - Branch on Carry Clear
	JSR $D2DE           ; $D29E: $20 $DE $D2 - Jump to New Location Saving Return Address
	TYA                 ; $D2A1: $98 - Transfer Index Y to Accumulator
	JSR $8B9D           ; $D2A2: $20 $9D $8B - Jump to New Location Saving Return Address
	BMI $1D             ; $D2A5: $30 $1D - Branch on Result Minus
	LDA $0260,X         ; $D2A7: $BD $60 $02 - Load Accumulator with Memory
	BMI $17             ; $D2AA: $30 $17 - Branch on Result Minus
	CMP #$01            ; $D2AC: $C9 $01 - Compare Memory with Accumulator
	BCC $13             ; $D2AE: $90 $13 - Branch on Carry Clear
	BNE $07             ; $D2B0: $D0 $07 - Branch on Result not Zero
	LDA $0280,X         ; $D2B2: $BD $80 $02 - Load Accumulator with Memory
	CMP #$50            ; $D2B5: $C9 $50 - Compare Memory with Accumulator
	BCC $0A             ; $D2B7: $90 $0A - Branch on Carry Clear
	LDA #$01            ; $D2B9: $A9 $01 - Load Accumulator with Memory
	STA $0260,X         ; $D2BB: $9D $60 $02 - Store Accumulator in Memory
	LDA #$50            ; $D2BE: $A9 $50 - Load Accumulator with Memory
	STA $0280,X         ; $D2C0: $9D $80 $02 - Store Accumulator in Memory
	RTS                 ; $D2C3: $60 - Return from Subroutine
	LDA $88,X           ; $D2C4: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$F0            ; $D2C7: $09 $F0 - OR Memory with Accumulator
	SBC $05A9,Y         ; $D2C9: $F9 $A9 $05 - Subtract Memory from Accumulator with Borrow
	STA $055E,X         ; $D2CC: $9D $5E $05 - Store Accumulator in Memory
	BRK                 ; $D2CF: $00 - Force Break
	EOR $9D             ; $D2D0: $45 $9D - Exclusive-OR Memory with Accumulator
	BIT $D1             ; $D2D2: $24 $D1 - Test Bits in Memory with Accumulator
	BMI $08             ; $D2D4: $30 $08 - Branch on Result Minus
	LDA $0542,X         ; $D2D6: $BD $42 $05 - Load Accumulator with Memory
	BNE $08             ; $D2D9: $D0 $08 - Branch on Result not Zero
	JMP $AB1A           ; $D2DB: $4C $1A $AB - Jump to New Location
	LDA $0542,X         ; $D2DE: $BD $42 $05 - Load Accumulator with Memory
	BNE $F8             ; $D2E1: $D0 $F8 - Branch on Result not Zero
	JMP $A87B           ; $D2E3: $4C $7B $A8 - Jump to New Location
	LDA $0380,X         ; $D2E6: $BD $80 $03 - Load Accumulator with Memory
	CLC #$0C            ; $D2E9: $29 $0C - Clear Carry Flag
	BNE $1B             ; $D2EB: $D0 $1B - Branch on Result not Zero
	LDA $02A0,X         ; $D2ED: $BD $A0 $02 - Load Accumulator with Memory
	BMI $10             ; $D2F0: $30 $10 - Branch on Result Minus
	CMP #$02            ; $D2F2: $C9 $02 - Compare Memory with Accumulator
	BCC $0C             ; $D2F4: $90 $0C - Branch on Carry Clear
	STA $02A0,X         ; $D2F6: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$00            ; $D2F9: $A9 $00 - Load Accumulator with Memory
	STA $02C0,X         ; $D2FB: $9D $C0 $02 - Store Accumulator in Memory
	INC $055A,X         ; $D2FE: $FE $5A $05 - Increment Memory by One
	RTS                 ; $D301: $60 - Return from Subroutine
	LDA #$00            ; $D302: $A9 $00 - Load Accumulator with Memory
	STA $055A,X         ; $D304: $9D $5A $05 - Store Accumulator in Memory
	RTS                 ; $D307: $60 - Return from Subroutine
	LDA #$00            ; $D308: $A9 $00 - Load Accumulator with Memory
	STA $055A,X         ; $D30A: $9D $5A $05 - Store Accumulator in Memory
	LDA $0380,X         ; $D30D: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $D310: $29 $10 - Clear Carry Flag
	BNE $59             ; $D312: $D0 $59 - Branch on Result not Zero
	LDA $4A,X           ; $D314: $B5 $4A $E9 - Load Accumulator with Memory
	PHP                 ; $D317: $08 - Push Processor Status on Stack
	CMP #$EF            ; $D318: $C9 $EF - Compare Memory with Accumulator
	BCS $51             ; $D31A: $B0 $51 - Branch on Carry Set
	LDA $90,X           ; $D31C: $B5 $90 $10 - Load Accumulator with Memory
	LDA #$00            ; $D320: $A9 $00 - Load Accumulator with Memory
	STA $90,X           ; $D322: $95 $90 - Store Accumulator in Memory
	LDA #$03            ; $D324: $A9 $03 - Load Accumulator with Memory
	STA $0546,X         ; $D326: $9D $46 $05 - Store Accumulator in Memory
	LDA $02A0,X         ; $D329: $BD $A0 $02 - Load Accumulator with Memory
	BMI $3F             ; $D32C: $30 $3F - Branch on Result Minus
	LDA #$02            ; $D32E: $A9 $02 - Load Accumulator with Memory
	STA $0542,X         ; $D330: $9D $42 $05 - Store Accumulator in Memory
	JSR $87F7           ; $D333: $20 $F7 $87 - Jump to New Location Saving Return Address
	BNE $21             ; $D336: $D0 $21 - Branch on Result not Zero
	LDA #$05            ; $D338: $A9 $05 - Load Accumulator with Memory
	STA $09             ; $D33A: $85 $09 - Store Accumulator in Memory
	LDA #$44            ; $D33C: $A9 $44 - Load Accumulator with Memory
	LDY #$05            ; $D33E: $A0 $05 - Load Index Y with Memory
	JSR $8B32           ; $D340: $20 $32 $8B - Jump to New Location Saving Return Address
	BCC $14             ; $D343: $90 $14 - Branch on Carry Clear
	LDA $0380,X         ; $D345: $BD $80 $03 - Load Accumulator with Memory
	CLC #$04            ; $D348: $29 $04 - Clear Carry Flag
	BEQ $0D             ; $D34A: $F0 $0D - Branch on Result Zero
	LDA $004A,Y         ; $D34C: $B9 $4A $00 - Load Accumulator with Memory
	SBC #$0A            ; $D34F: $E9 $0A - Subtract Memory from Accumulator with Borrow
	STA $004A,Y         ; $D351: $99 $4A $00 - Store Accumulator in Memory
	LDA #$42            ; $D354: $A9 $42 - Load Accumulator with Memory
	STA $0380,Y         ; $D356: $99 $80 $03 - Store Accumulator in Memory
	LDA $02A0,X         ; $D359: $BD $A0 $02 - Load Accumulator with Memory
	BMI $0F             ; $D35C: $30 $0F - Branch on Result Minus
	LDA #$00            ; $D35E: $A9 $00 - Load Accumulator with Memory
	STA $02A0,X         ; $D360: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$20            ; $D363: $A9 $20 - Load Accumulator with Memory
	CMP $02C0,X         ; $D365: $DD $C0 $02 - Compare Memory with Accumulator
	BCS $03             ; $D368: $B0 $03 - Branch on Carry Set
	STA $02C0,X         ; $D36A: $9D $C0 $02 - Store Accumulator in Memory
	RTS                 ; $D36D: $60 - Return from Subroutine
	LDA #$05            ; $D36E: $A9 $05 - Load Accumulator with Memory
	LDY #$00            ; $D370: $A0 $00 - Load Index Y with Memory
	JSR $D40D           ; $D372: $20 $0D $D4 - Jump to New Location Saving Return Address
	BEQ $24             ; $D375: $F0 $24 - Branch on Result Zero
	LDA #$46            ; $D377: $A9 $46 - Load Accumulator with Memory
	JSR $8B2E           ; $D379: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $09             ; $D37C: $90 $09 - Branch on Carry Clear
	LDA $31             ; $D37E: $A5 $31 - Load Accumulator with Memory
	CLC #$F8            ; $D380: $29 $F8 - Clear Carry Flag
	SBC #$04            ; $D382: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $0360,Y         ; $D384: $99 $60 $03 - Store Accumulator in Memory
	LDA #$FE            ; $D387: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $D389: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$94            ; $D38C: $A9 $94 - Load Accumulator with Memory
	STA $02C0,X         ; $D38E: $9D $C0 $02 - Store Accumulator in Memory
	LDA #$0A            ; $D391: $A9 $0A - Load Accumulator with Memory
	STA $053A,X         ; $D393: $9D $3A $05 - Store Accumulator in Memory
	LDA #$03            ; $D396: $A9 $03 - Load Accumulator with Memory
	JMP $980F           ; $D398: $4C $0F $98 - Jump to New Location
	LDA $0546,X         ; $D39B: $BD $46 $05 - Load Accumulator with Memory
	BNE $06             ; $D39E: $D0 $06 - Branch on Result not Zero
	LDA $E5,X           ; $D3A0: $B5 $E5 $29 - Load Accumulator with Memory
	BEQ $52             ; $D3A4: $F0 $52 - Branch on Result Zero
	LDA #$01            ; $D3A6: $A9 $01 - Load Accumulator with Memory
	LDY #$08            ; $D3A8: $A0 $08 - Load Index Y with Memory
	JSR $D40D           ; $D3AA: $20 $0D $D4 - Jump to New Location Saving Return Address
	BEQ $09             ; $D3AD: $F0 $09 - Branch on Result Zero
	LDA #$FE            ; $D3AF: $A9 $FE - Load Accumulator with Memory
	STA $0260,X         ; $D3B1: $9D $60 $02 - Store Accumulator in Memory
	LDA #$00            ; $D3B4: $A9 $00 - Load Accumulator with Memory
	BEQ $10             ; $D3B6: $F0 $10 - Branch on Result Zero
	LDA #$01            ; $D3B8: $A9 $01 - Load Accumulator with Memory
	LDY #$04            ; $D3BA: $A0 $04 - Load Index Y with Memory
	JSR $D40D           ; $D3BC: $20 $0D $D4 - Jump to New Location Saving Return Address
	BEQ $37             ; $D3BF: $F0 $37 - Branch on Result Zero
	LDA #$02            ; $D3C1: $A9 $02 - Load Accumulator with Memory
	STA $0260,X         ; $D3C3: $9D $60 $02 - Store Accumulator in Memory
	LDA #$40            ; $D3C6: $A9 $40 - Load Accumulator with Memory
	STA $DA             ; $D3C8: $85 $DA - Store Accumulator in Memory
	LDA #$3D            ; $D3CA: $A9 $3D - Load Accumulator with Memory
	JSR $8B2E           ; $D3CC: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $19             ; $D3CF: $90 $19 - Branch on Carry Clear
	LDA $30             ; $D3D1: $A5 $30 - Load Accumulator with Memory
	CLC #$F8            ; $D3D3: $29 $F8 - Clear Carry Flag
	BIT $DA             ; $D3D5: $24 $DA - Test Bits in Memory with Accumulator
	BVS $04             ; $D3D7: $70 $04 - Branch on Overflow Set
	SBC #$04            ; $D3D9: $E9 $04 - Subtract Memory from Accumulator with Borrow
	BNE $02             ; $D3DB: $D0 $02 - Branch on Result not Zero
	ADC #$0B            ; $D3DD: $69 $0B - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $D3DF: $99 $4A $00 - Store Accumulator in Memory
	LDA $0380,Y         ; $D3E2: $B9 $80 $03 - Load Accumulator with Memory
	ORA $DA             ; $D3E5: $05 $DA - OR Memory with Accumulator
	STA $0380,Y         ; $D3E7: $99 $80 $03 - Store Accumulator in Memory
	LDA #$00            ; $D3EA: $A9 $00 - Load Accumulator with Memory
	STA $0280,X         ; $D3EC: $9D $80 $02 - Store Accumulator in Memory
	STA $90,X           ; $D3EF: $95 $90 - Store Accumulator in Memory
	LDA #$06            ; $D3F1: $A9 $06 - Load Accumulator with Memory
	STA $0542,X         ; $D3F3: $9D $42 $05 - Store Accumulator in Memory
	BNE $8F             ; $D3F6: $D0 $8F - Branch on Result not Zero
	LDA $8C,X           ; $D3F8: $B5 $8C $F0 - Load Accumulator with Memory
	BPL $B5             ; $D3FB: $10 $B5 - Branch on Result Plus
	BCC $30             ; $D3FD: $90 $30 - Branch on Carry Clear
	LDA #$11            ; $D400: $A9 $11 - Load Accumulator with Memory
	JSR $980F           ; $D402: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$30            ; $D405: $A9 $30 - Load Accumulator with Memory
	STA $90,X           ; $D407: $95 $90 - Store Accumulator in Memory
	JSR $A869           ; $D409: $20 $69 $A8 - Jump to New Location Saving Return Address
	RTS                 ; $D40C: $60 - Return from Subroutine
	STY $DB             ; $D40D: $84 $DB - Sore Index Y in Memory
	STA $DA             ; $D40F: $85 $DA - Store Accumulator in Memory
	LDA $D432,Y         ; $D411: $B9 $32 $D4 - Load Accumulator with Memory
	PHA                 ; $D414: $48 - Push Accumulator on Stack
	LDA $D433,Y         ; $D415: $B9 $33 $D4 - Load Accumulator with Memory
	TAY                 ; $D418: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $D419: $68 - Pull Accumulator from Stack
	JSR $A118           ; $D41A: $20 $18 $A1 - Jump to New Location Saving Return Address
	AND $DA             ; $D41D: $25 $DA - AND Memory with Accumulator
	BNE $10             ; $D41F: $D0 $10 - Branch on Result not Zero
	LDY $DB             ; $D421: $A4 $DB - Load Index Y with Memory
	LDA $D434,Y         ; $D423: $B9 $34 $D4 - Load Accumulator with Memory
	PHA                 ; $D426: $48 - Push Accumulator on Stack
	LDA $D435,Y         ; $D427: $B9 $35 $D4 - Load Accumulator with Memory
	TAY                 ; $D42A: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $D42B: $68 - Pull Accumulator from Stack
	JSR $A118           ; $D42C: $20 $18 $A1 - Jump to New Location Saving Return Address
	AND $DA             ; $D42F: $25 $DA - AND Memory with Accumulator
	RTS                 ; $D431: $60 - Return from Subroutine
	SBC $0306,X         ; $D432: $FD $06 $03 - Subtract Memory from Accumulator with Borrow
	ASL $F9             ; $D435: $06 $F9 - Shift Left One Bit
	SBC $03F9,X         ; $D437: $FD $F9 $03 - Subtract Memory from Accumulator with Borrow
	SBC $0307,X         ; $D43B: $FD $07 $03 - Subtract Memory from Accumulator with Borrow
	LDA $055E,X         ; $D43E: $BD $5E $05 - Load Accumulator with Memory
	BEQ $04             ; $D441: $F0 $04 - Branch on Result Zero
	DEC $055E,X         ; $D443: $DE $5E $05 - Decrement Memory by One
	RTS                 ; $D446: $60 - Return from Subroutine
	LDA $0280,X         ; $D447: $BD $80 $02 - Load Accumulator with Memory
	BNE $05             ; $D44A: $D0 $05 - Branch on Result not Zero
	LDA $02A0,X         ; $D44C: $BD $A0 $02 - Load Accumulator with Memory
	BEQ $03             ; $D44F: $F0 $03 - Branch on Result Zero
	BRK                 ; $D451: $00 - Force Break
	STA $F000,X         ; $D453: $9D $00 $F0 - Store Accumulator in Memory
	LDA $055E,X         ; $D457: $BD $5E $05 - Load Accumulator with Memory
	BEQ $04             ; $D45A: $F0 $04 - Branch on Result Zero
	DEC $055E,X         ; $D45C: $DE $5E $05 - Decrement Memory by One
	RTS                 ; $D45F: $60 - Return from Subroutine
	LDA $0380,X         ; $D460: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $D463: $29 $10 - Clear Carry Flag
	BEQ $26             ; $D465: $F0 $26 - Branch on Result Zero
	LDA $E5,X           ; $D467: $B5 $E5 $29 - Load Accumulator with Memory
	BNE $1D             ; $D46B: $D0 $1D - Branch on Result not Zero
	LDA $E5,X           ; $D46D: $B5 $E5 $29 - Load Accumulator with Memory
	CMP #$08            ; $D471: $C9 $08 - Compare Memory with Accumulator
	BEQ $0C             ; $D473: $F0 $0C - Branch on Result Zero
	CMP #$04            ; $D475: $C9 $04 - Compare Memory with Accumulator
	BEQ $0B             ; $D477: $F0 $0B - Branch on Result Zero
	LDA $E5,X           ; $D479: $B5 $E5 $0A - Load Accumulator with Memory
	BMI $09             ; $D47C: $30 $09 - Branch on Result Minus
	BRK                 ; $D47E: $00 - Force Break
	STA $8A00,X         ; $D480: $9D $00 $8A - Store Accumulator in Memory
	STA $2200,X         ; $D483: $9D $00 $22 - Store Accumulator in Memory
	STA $1D00,X         ; $D486: $9D $00 $1D - Store Accumulator in Memory
	STA $5F00,X         ; $D489: $9D $00 $5F - Store Accumulator in Memory
	STA $90B5,X         ; $D48C: $9D $B5 $90 - Store Accumulator in Memory
	BNE $1C             ; $D48F: $D0 $1C - Branch on Result not Zero
	LDY $02A0,X         ; $D491: $BC $A0 $02 - Load Index Y with Memory
	BMI $23             ; $D494: $30 $23 - Branch on Result Minus
	LDA $0380,X         ; $D496: $BD $80 $03 - Load Accumulator with Memory
	CLC #$0C            ; $D499: $29 $0C - Clear Carry Flag
	BNE $0D             ; $D49B: $D0 $0D - Branch on Result not Zero
	LDA $055A,X         ; $D49D: $BD $5A $05 - Load Accumulator with Memory
	CMP #$04            ; $D4A0: $C9 $04 - Compare Memory with Accumulator
	BCC $03             ; $D4A2: $90 $03 - Branch on Carry Clear
	BRK                 ; $D4A4: $00 - Force Break
	STA $8500,X         ; $D4A6: $9D $00 $85 - Store Accumulator in Memory
	STA $4500,X         ; $D4A9: $9D $00 $45 - Store Accumulator in Memory
	STA $0730,X         ; $D4AC: $9D $30 $07 - Store Accumulator in Memory
	LDA $E5,X           ; $D4AF: $B5 $E5 $10 - Load Accumulator with Memory
	NOP                 ; $D4B2: $EA - No Operation
	BRK                 ; $D4B3: $00 - Force Break
	LSR $009D           ; $D4B4: $4E $9D $00 - Shift One Bit Right (Memory or Accumulator)
	RTI                 ; $D4B7: $40 - Return from Interrupt
	STA $7000,X         ; $D4B8: $9D $00 $70 - Store Accumulator in Memory
	STA $88B5,X         ; $D4BB: $9D $B5 $88 - Store Accumulator in Memory
	CMP #$01            ; $D4BE: $C9 $01 - Compare Memory with Accumulator
	BNE $09             ; $D4C0: $D0 $09 - Branch on Result not Zero
	LDA #$00            ; $D4C2: $A9 $00 - Load Accumulator with Memory
	STA $88,X           ; $D4C4: $95 $88 - Store Accumulator in Memory
	LDA #$12            ; $D4C6: $A9 $12 - Load Accumulator with Memory
	STA $054E,X         ; $D4C8: $9D $4E $05 - Store Accumulator in Memory
	RTS                 ; $D4CB: $60 - Return from Subroutine
	JSR $D22F           ; $D4CC: $20 $2F $D2 - Jump to New Location Saving Return Address
	LDA $E5,X           ; $D4CF: $B5 $E5 $10 - Load Accumulator with Memory
	LDA $05D7,X         ; $D4D3: $BD $D7 $05 - Load Accumulator with Memory
	BMI $06             ; $D4D6: $30 $06 - Branch on Result Minus
	JSR $D4BC           ; $D4D8: $20 $BC $D4 - Jump to New Location Saving Return Address
	JMP $D387           ; $D4DB: $4C $87 $D3 - Jump to New Location
	LDA $055E,X         ; $D4DE: $BD $5E $05 - Load Accumulator with Memory
	BNE $49             ; $D4E1: $D0 $49 - Branch on Result not Zero
	LDA $E5,X           ; $D4E3: $B5 $E5 $29 - Load Accumulator with Memory
	PHP                 ; $D4E6: $08 - Push Processor Status on Stack
	BEQ $0A             ; $D4E7: $F0 $0A - Branch on Result Zero
	LDA #$FF            ; $D4E9: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $D4EB: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$40            ; $D4EE: $A9 $40 - Load Accumulator with Memory
	STA $02C0,X         ; $D4F0: $9D $C0 $02 - Store Accumulator in Memory
	LDA $E5,X           ; $D4F3: $B5 $E5 $29 - Load Accumulator with Memory
	BEQ $0A             ; $D4F7: $F0 $0A - Branch on Result Zero
	LDA #$00            ; $D4F9: $A9 $00 - Load Accumulator with Memory
	STA $02A0,X         ; $D4FB: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$C0            ; $D4FE: $A9 $C0 - Load Accumulator with Memory
	STA $02C0,X         ; $D500: $9D $C0 $02 - Store Accumulator in Memory
	LDA $E5,X           ; $D503: $B5 $E5 $29 - Load Accumulator with Memory
	BEQ $0C             ; $D507: $F0 $0C - Branch on Result Zero
	JSR $AB1A           ; $D509: $20 $1A $AB - Jump to New Location Saving Return Address
	LDA $4A,X           ; $D50C: $B5 $4A $29 - Load Accumulator with Memory
	BEQ $03             ; $D510: $F0 $03 - Branch on Result Zero
	JSR $A851           ; $D512: $20 $51 $A8 - Jump to New Location Saving Return Address
	LDA $E5,X           ; $D515: $B5 $E5 $4A - Load Accumulator with Memory
	BCC $12             ; $D518: $90 $12 - Branch on Carry Clear
	JSR $A87B           ; $D51A: $20 $7B $A8 - Jump to New Location Saving Return Address
	LDA $4A,X           ; $D51D: $B5 $4A $29 - Load Accumulator with Memory
	CMP #$07            ; $D521: $C9 $07 - Compare Memory with Accumulator
	BEQ $07             ; $D523: $F0 $07 - Branch on Result Zero
	LDA #$00            ; $D525: $A9 $00 - Load Accumulator with Memory
	LDY #$50            ; $D527: $A0 $50 - Load Index Y with Memory
	JSR $A855           ; $D529: $20 $55 $A8 - Jump to New Location Saving Return Address
	RTS                 ; $D52C: $60 - Return from Subroutine
	LDY #$3A            ; $D52D: $A0 $3A - Load Index Y with Memory
	LDA #$01            ; $D52F: $A9 $01 - Load Accumulator with Memory
	STY $DD             ; $D531: $84 $DD - Sore Index Y in Memory
	CMP $0552,X         ; $D533: $DD $52 $05 - Compare Memory with Accumulator
	BCS $01             ; $D536: $B0 $01 - Branch on Carry Set
	RTS                 ; $D538: $60 - Return from Subroutine
	LDA #$49            ; $D539: $A9 $49 - Load Accumulator with Memory
	STA $03A0,X         ; $D53B: $9D $A0 $03 - Store Accumulator in Memory
	LDA #$00            ; $D53E: $A9 $00 - Load Accumulator with Memory
	STA $DB             ; $D540: $85 $DB - Store Accumulator in Memory
	STA $DC             ; $D542: $85 $DC - Store Accumulator in Memory
	LDA #$08            ; $D544: $A9 $08 - Load Accumulator with Memory
	STA $055E,X         ; $D546: $9D $5E $05 - Store Accumulator in Memory
	BIT $D1             ; $D549: $24 $D1 - Test Bits in Memory with Accumulator
	BMI $20             ; $D54B: $30 $20 - Branch on Result Minus
	LDA $E5,X           ; $D54D: $B5 $E5 $29 - Load Accumulator with Memory
	BNE $31             ; $D551: $D0 $31 - Branch on Result not Zero
	LDA $E5,X           ; $D553: $B5 $E5 $29 - Load Accumulator with Memory
	PHP                 ; $D556: $08 - Push Processor Status on Stack
	BNE $1E             ; $D557: $D0 $1E - Branch on Result not Zero
	LDA #$1D            ; $D559: $A9 $1D - Load Accumulator with Memory
	LDY #$9D            ; $D55B: $A0 $9D - Load Index Y with Memory
	JSR $F9FE           ; $D55D: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA $0380,X         ; $D560: $BD $80 $03 - Load Accumulator with Memory
	CLC #$40            ; $D563: $29 $40 - Clear Carry Flag
	BEQ $0A             ; $D565: $F0 $0A - Branch on Result Zero
	LDA #$FD            ; $D567: $A9 $FD - Load Accumulator with Memory
	STA $DB             ; $D569: $85 $DB - Store Accumulator in Memory
	BNE $39             ; $D56B: $D0 $39 - Branch on Result not Zero
	LDA #$04            ; $D56D: $A9 $04 - Load Accumulator with Memory
	BNE $02             ; $D56F: $D0 $02 - Branch on Result not Zero
	LDA #$03            ; $D571: $A9 $03 - Load Accumulator with Memory
	STA $DB             ; $D573: $85 $DB - Store Accumulator in Memory
	BNE $2F             ; $D575: $D0 $2F - Branch on Result not Zero
	LDA #$8A            ; $D577: $A9 $8A - Load Accumulator with Memory
	LDY #$9D            ; $D579: $A0 $9D - Load Index Y with Memory
	JSR $F9FE           ; $D57B: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$FD            ; $D57E: $A9 $FD - Load Accumulator with Memory
	STA $DC             ; $D580: $85 $DC - Store Accumulator in Memory
	BNE $22             ; $D582: $D0 $22 - Branch on Result not Zero
	LDA $DD             ; $D584: $A5 $DD - Load Accumulator with Memory
	CMP #$35            ; $D586: $C9 $35 - Compare Memory with Accumulator
	BNE $11             ; $D588: $D0 $11 - Branch on Result not Zero
	LDA #$FD            ; $D58A: $A9 $FD - Load Accumulator with Memory
	STA $02A0,X         ; $D58C: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$E0            ; $D58F: $A9 $E0 - Load Accumulator with Memory
	STA $02C0,X         ; $D591: $9D $C0 $02 - Store Accumulator in Memory
	LDA $90,X           ; $D594: $B5 $90 $F0 - Load Accumulator with Memory
	SEC                 ; $D598: $38 - Set Carry Flag
	ROR $90,X           ; $D599: $76 $90 - Rotate One Bit Right
	LDA #$F5            ; $D59B: $A9 $F5 - Load Accumulator with Memory
	LDY #$9C            ; $D59D: $A0 $9C - Load Index Y with Memory
	JSR $F9FE           ; $D59F: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA #$03            ; $D5A2: $A9 $03 - Load Accumulator with Memory
	STA $DC             ; $D5A4: $85 $DC - Store Accumulator in Memory
	LDA $DD             ; $D5A6: $A5 $DD - Load Accumulator with Memory
	JSR $8B2E           ; $D5A8: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $23             ; $D5AB: $90 $23 - Branch on Carry Clear
	INC $0552,X         ; $D5AD: $FE $52 $05 - Increment Memory by One
	LDA #$00            ; $D5B0: $A9 $00 - Load Accumulator with Memory
	STA $DA             ; $D5B2: $85 $DA - Store Accumulator in Memory
	LDA $DB             ; $D5B4: $A5 $DB - Load Accumulator with Memory
	STA $0260,Y         ; $D5B6: $99 $60 $02 - Store Accumulator in Memory
	CMP #$80            ; $D5B9: $C9 $80 - Compare Memory with Accumulator
	ROR $DA             ; $D5BB: $66 $DA - Rotate One Bit Right
	LDA $DC             ; $D5BD: $A5 $DC - Load Accumulator with Memory
	STA $02A0,Y         ; $D5BF: $99 $A0 $02 - Store Accumulator in Memory
	BMI $01             ; $D5C2: $30 $01 - Branch on Result Minus
	SEC                 ; $D5C4: $38 - Set Carry Flag
	ROR $DA             ; $D5C5: $66 $DA - Rotate One Bit Right
	TXA                 ; $D5C7: $8A - Transfer Index X to Accumulator
	STA $0300,Y         ; $D5C8: $99 $00 $03 - Store Accumulator in Memory
	ORA $DA             ; $D5CB: $05 $DA - OR Memory with Accumulator
	STA $0380,Y         ; $D5CD: $99 $80 $03 - Store Accumulator in Memory
	RTS                 ; $D5D0: $60 - Return from Subroutine
	LDA #$0B            ; $D5D1: $A9 $0B - Load Accumulator with Memory
	JSR $980F           ; $D5D3: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$FE            ; $D5D6: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $D5D8: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$00            ; $D5DB: $A9 $00 - Load Accumulator with Memory
	STA $09             ; $D5DD: $85 $09 - Store Accumulator in Memory
	LDA #$41            ; $D5DF: $A9 $41 - Load Accumulator with Memory
	LDY #$06            ; $D5E1: $A0 $06 - Load Index Y with Memory
	JSR $8B32           ; $D5E3: $20 $32 $8B - Jump to New Location Saving Return Address
	BCC $29             ; $D5E6: $90 $29 - Branch on Carry Clear
	LDA #$FF            ; $D5E8: $A9 $FF - Load Accumulator with Memory
	STA $0260,Y         ; $D5EA: $99 $60 $02 - Store Accumulator in Memory
	JSR $D602           ; $D5ED: $20 $02 $D6 - Jump to New Location Saving Return Address
	LDA #$00            ; $D5F0: $A9 $00 - Load Accumulator with Memory
	STA $09             ; $D5F2: $85 $09 - Store Accumulator in Memory
	LDA #$41            ; $D5F4: $A9 $41 - Load Accumulator with Memory
	LDY #$06            ; $D5F6: $A0 $06 - Load Index Y with Memory
	JSR $8B32           ; $D5F8: $20 $32 $8B - Jump to New Location Saving Return Address
	BCC $14             ; $D5FB: $90 $14 - Branch on Carry Clear
	LDA #$01            ; $D5FD: $A9 $01 - Load Accumulator with Memory
	STA $0260,Y         ; $D5FF: $99 $60 $02 - Store Accumulator in Memory
	LDA #$FF            ; $D602: $A9 $FF - Load Accumulator with Memory
	STA $02A0,Y         ; $D604: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$80            ; $D607: $A9 $80 - Load Accumulator with Memory
	STA $02C0,Y         ; $D609: $99 $C0 $02 - Store Accumulator in Memory
	LDA #$0F            ; $D60C: $A9 $0F - Load Accumulator with Memory
	STA $02E0,Y         ; $D60E: $99 $E0 $02 - Store Accumulator in Memory
	RTS                 ; $D611: $60 - Return from Subroutine
	JMP ($8C7C)         ; $D612: $6C $7C $8C - Jump to New Location
	JSR $F2C6           ; $D616: $20 $C6 $F2 - Jump to New Location Saving Return Address
	LDA $BD             ; $D619: $A5 $BD - Load Accumulator with Memory
	CMP #$04            ; $D61B: $C9 $04 - Compare Memory with Accumulator
	BNE $0A             ; $D61D: $D0 $0A - Branch on Result not Zero
	BIT $6F             ; $D61F: $24 $6F - Test Bits in Memory with Accumulator
	BMI $03             ; $D621: $30 $03 - Branch on Result Minus
	JMP $F166           ; $D623: $4C $66 $F1 - Jump to New Location
	JMP $ADA1           ; $D626: $4C $A1 $AD - Jump to New Location
	JSR $A62F           ; $D629: $20 $2F $A6 - Jump to New Location Saving Return Address
	JSR $D686           ; $D62C: $20 $86 $D6 - Jump to New Location Saving Return Address
	LDA #$02            ; $D62F: $A9 $02 - Load Accumulator with Memory
	JSR $D8DE           ; $D631: $20 $DE $D8 - Jump to New Location Saving Return Address
	LDX #$56            ; $D634: $A2 $56 - Load Index X with Memory
	CLC                 ; $D636: $18 - Clear Carry Flag
	LDY #$08            ; $D637: $A0 $08 - Load Index Y with Memory
	JSR $E934           ; $D639: $20 $34 $E9 - Jump to New Location Saving Return Address
	LDY $BD             ; $D63C: $A4 $BD - Load Index Y with Memory
	INY                 ; $D63E: $C8 - Increment Index Y by One
	TYA                 ; $D63F: $98 - Transfer Index Y to Accumulator
	JSR $E9CD           ; $D640: $20 $CD $E9 - Jump to New Location Saving Return Address
	LDA #$EB            ; $D643: $A9 $EB - Load Accumulator with Memory
	STA $2007           ; $D645: $8D $07 $20 - Store Accumulator in Memory
	LDY $05C8           ; $D648: $AC $C8 $05 - Load Index Y with Memory
	INY                 ; $D64B: $C8 - Increment Index Y by One
	TYA                 ; $D64C: $98 - Transfer Index Y to Accumulator
	JSR $E9CD           ; $D64D: $20 $CD $E9 - Jump to New Location Saving Return Address
	BIT $6F             ; $D650: $24 $6F - Test Bits in Memory with Accumulator
	BPL $05             ; $D652: $10 $05 - Branch on Result Plus
	LDA #$C7            ; $D654: $A9 $C7 - Load Accumulator with Memory
	STA $2007           ; $D656: $8D $07 $20 - Store Accumulator in Memory
	LDY #$21            ; $D659: $A0 $21 - Load Index Y with Memory
	LDA #$10            ; $D65B: $A9 $10 - Load Accumulator with Memory
	JSR $EEDE           ; $D65D: $20 $DE $EE - Jump to New Location Saving Return Address
	LDA #$F6            ; $D660: $A9 $F6 - Load Accumulator with Memory
	STA $2007           ; $D662: $8D $07 $20 - Store Accumulator in Memory
	LDA #$00            ; $D665: $A9 $00 - Load Accumulator with Memory
	STA $2007           ; $D667: $8D $07 $20 - Store Accumulator in Memory
	LDA $72             ; $D66A: $A5 $72 - Load Accumulator with Memory
	CMP #$0A            ; $D66C: $C9 $0A - Compare Memory with Accumulator
	BCC $06             ; $D66E: $90 $06 - Branch on Carry Clear
	JSR $E9C2           ; $D670: $20 $C2 $E9 - Jump to New Location Saving Return Address
	JMP $D679           ; $D673: $4C $79 $D6 - Jump to New Location
	JSR $E9CD           ; $D676: $20 $CD $E9 - Jump to New Location Saving Return Address
	JSR $D6AC           ; $D679: $20 $AC $D6 - Jump to New Location Saving Return Address
	LDA #$FA            ; $D67C: $A9 $FA - Load Accumulator with Memory
	STA $A4             ; $D67E: $85 $A4 - Store Accumulator in Memory
	JSR $D6DB           ; $D680: $20 $DB $D6 - Jump to New Location Saving Return Address
	JMP $FAB5           ; $D683: $4C $B5 $FA - Jump to New Location
	BIT $6F             ; $D686: $24 $6F - Test Bits in Memory with Accumulator
	BVC $04             ; $D688: $50 $04 - Branch on Overflow Clear
	LDY #$2D            ; $D68A: $A0 $2D - Load Index Y with Memory
	BNE $12             ; $D68C: $D0 $12 - Branch on Result not Zero
	LDA #$00            ; $D68E: $A9 $00 - Load Accumulator with Memory
	LDX $BD             ; $D690: $A6 $BD - Load Index X with Memory
	CLC                 ; $D692: $18 - Clear Carry Flag
	ADC #$05            ; $D693: $69 $05 - Add Memory to Accumulator with Carry
	DEX                 ; $D695: $CA - Decrement Index X by One
	BPL $FA             ; $D696: $10 $FA - Branch on Result Plus
	BIT $6F             ; $D698: $24 $6F - Test Bits in Memory with Accumulator
	BPL $03             ; $D69A: $10 $03 - Branch on Result Plus
	CLC                 ; $D69C: $18 - Clear Carry Flag
	ADC #$14            ; $D69D: $69 $14 - Add Memory to Accumulator with Carry
	TAY                 ; $D69F: $A8 - Transfer Accumulator to Index Y
	LDX #$03            ; $D6A0: $A2 $03 - Load Index X with Memory
	LDA $E824,Y         ; $D6A2: $B9 $24 $E8 - Load Accumulator with Memory
	STA $04,X           ; $D6A5: $95 $04 - Store Accumulator in Memory
	INY                 ; $D6A7: $C8 - Increment Index Y by One
	DEX                 ; $D6A8: $CA - Decrement Index X by One
	BPL $F7             ; $D6A9: $10 $F7 - Branch on Result Plus
	RTS                 ; $D6AB: $60 - Return from Subroutine
	LDY #$23            ; $D6AC: $A0 $23 - Load Index Y with Memory
	LDA #$F2            ; $D6AE: $A9 $F2 - Load Accumulator with Memory
	JSR $EEDE           ; $D6B0: $20 $DE $EE - Jump to New Location Saving Return Address
	LDA #$AA            ; $D6B3: $A9 $AA - Load Accumulator with Memory
	LDY #$05            ; $D6B5: $A0 $05 - Load Index Y with Memory
	STA $2007           ; $D6B7: $8D $07 $20 - Store Accumulator in Memory
	DEY                 ; $D6BA: $88 - Decrement Index Y by One
	BNE $FA             ; $D6BB: $D0 $FA - Branch on Result not Zero
	BIT $6F             ; $D6BD: $24 $6F - Test Bits in Memory with Accumulator
	BVC $09             ; $D6BF: $50 $09 - Branch on Overflow Clear
	LDX #$86            ; $D6C1: $A2 $86 - Load Index X with Memory
	SEC                 ; $D6C3: $38 - Set Carry Flag
	LDY #$11            ; $D6C4: $A0 $11 - Load Index Y with Memory
	JSR $E934           ; $D6C6: $20 $34 $E9 - Jump to New Location Saving Return Address
	RTS                 ; $D6C9: $60 - Return from Subroutine
	BMI $04             ; $D6CA: $30 $04 - Branch on Result Minus
	LDA $BD             ; $D6CC: $A5 $BD - Load Accumulator with Memory
	BEQ $F9             ; $D6CE: $F0 $F9 - Branch on Result Zero
	LDX #$94            ; $D6D0: $A2 $94 - Load Index X with Memory
	SEC                 ; $D6D2: $38 - Set Carry Flag
	LDY #$10            ; $D6D3: $A0 $10 - Load Index Y with Memory
	JSR $E934           ; $D6D5: $20 $34 $E9 - Jump to New Location Saving Return Address
	JMP $E807           ; $D6D8: $4C $07 $E8 - Jump to New Location
	LDX #$B6            ; $D6DB: $A2 $B6 - Load Index X with Memory
	CLC                 ; $D6DD: $18 - Clear Carry Flag
	LDY #$07            ; $D6DE: $A0 $07 - Load Index Y with Memory
	JSR $E934           ; $D6E0: $20 $34 $E9 - Jump to New Location Saving Return Address
	LDX #$00            ; $D6E3: $A2 $00 - Load Index X with Memory
	LDA $73,X           ; $D6E5: $B5 $73 $F0 - Load Accumulator with Memory
	ASL $BD,X           ; $D6E8: $16 $BD - Shift Left One Bit
	DEC $38,X           ; $D6EB: $D6 $38 - Decrement Memory by One
	SBC $CD             ; $D6ED: $E5 $CD - Subtract Memory from Accumulator with Borrow
	STA $D5             ; $D6EF: $85 $D5 - Store Accumulator in Memory
	LDA #$64            ; $D6F1: $A9 $64 - Load Accumulator with Memory
	STA $DC             ; $D6F3: $85 $DC - Store Accumulator in Memory
	JSR $F853           ; $D6F5: $20 $53 $F8 - Jump to New Location Saving Return Address
	LDA #$04            ; $D6F8: $A9 $04 - Load Accumulator with Memory
	STA $88,X           ; $D6FA: $95 $88 - Store Accumulator in Memory
	JSR $F28C           ; $D6FC: $20 $8C $F2 - Jump to New Location Saving Return Address
	LDA #$00            ; $D6FF: $A9 $00 - Load Accumulator with Memory
	LDY $73,X           ; $D701: $B4 $73 $D0 - Load Index Y with Memory
	LDA #$D8            ; $D705: $A9 $D8 - Load Accumulator with Memory
	STA $2007           ; $D707: $8D $07 $20 - Store Accumulator in Memory
	LDY #$00            ; $D70A: $A0 $00 - Load Index Y with Memory
	STY $2007           ; $D70C: $8C $07 $20 - Sore Index Y in Memory
	LDA $05FA,X         ; $D70F: $BD $FA $05 - Load Accumulator with Memory
	JSR $E9C2           ; $D712: $20 $C2 $E9 - Jump to New Location Saving Return Address
	LDA $05F5,X         ; $D715: $BD $F5 $05 - Load Accumulator with Memory
	JSR $E9C2           ; $D718: $20 $C2 $E9 - Jump to New Location Saving Return Address
	TYA                 ; $D71B: $98 - Transfer Index Y to Accumulator
	JSR $E9C2           ; $D71C: $20 $C2 $E9 - Jump to New Location Saving Return Address
	TXA                 ; $D71F: $8A - Transfer Index X to Accumulator
	PHA                 ; $D720: $48 - Push Accumulator on Stack
	JSR $E9B0           ; $D721: $20 $B0 $E9 - Jump to New Location Saving Return Address
	PLA                 ; $D724: $68 - Pull Accumulator from Stack
	TAX                 ; $D725: $AA - Transfer Accumulator to Index X
	INX                 ; $D726: $E8 - Increment Index X by One
	CPX #$04            ; $D727: $E0 $04 - Compare Memory and Index Y
	BNE $BA             ; $D729: $D0 $BA - Branch on Result not Zero
	BIT $6F             ; $D72B: $24 $6F - Test Bits in Memory with Accumulator
	BVS $08             ; $D72D: $70 $08 - Branch on Overflow Set
	LDX #$56            ; $D72F: $A2 $56 - Load Index X with Memory
	SEC                 ; $D731: $38 - Set Carry Flag
	LDY #$09            ; $D732: $A0 $09 - Load Index Y with Memory
	JSR $E934           ; $D734: $20 $34 $E9 - Jump to New Location Saving Return Address
	LDA #$20            ; $D737: $A9 $20 - Load Accumulator with Memory
	STA $0589           ; $D739: $8D $89 $05 - Store Accumulator in Memory
	LDA #$00            ; $D73C: $A9 $00 - Load Accumulator with Memory
	STA $058C           ; $D73E: $8D $8C $05 - Store Accumulator in Memory
	STA $058D           ; $D741: $8D $8D $05 - Store Accumulator in Memory
	LDA #$0F            ; $D744: $A9 $0F - Load Accumulator with Memory
	STA $0596           ; $D746: $8D $96 $05 - Store Accumulator in Memory
	STA $0591           ; $D749: $8D $91 $05 - Store Accumulator in Memory
	LDY #$23            ; $D74C: $A0 $23 - Load Index Y with Memory
	LDA #$D8            ; $D74E: $A9 $D8 - Load Accumulator with Memory
	JSR $EEDE           ; $D750: $20 $DE $EE - Jump to New Location Saving Return Address
	LDX $03             ; $D753: $A6 $03 - Load Index X with Memory
	LDA $D76C,X         ; $D755: $BD $6C $D7 - Load Accumulator with Memory
	JSR $D763           ; $D758: $20 $63 $D7 - Jump to New Location Saving Return Address
	LDA $D770,X         ; $D75B: $BD $70 $D7 - Load Accumulator with Memory
	JSR $D763           ; $D75E: $20 $63 $D7 - Jump to New Location Saving Return Address
	LDA #$55            ; $D761: $A9 $55 - Load Accumulator with Memory
	LDY #$08            ; $D763: $A0 $08 - Load Index Y with Memory
	STA $2007           ; $D765: $8D $07 $20 - Store Accumulator in Memory
	DEY                 ; $D768: $88 - Decrement Index Y by One
	BNE $FA             ; $D769: $D0 $FA - Branch on Result not Zero
	RTS                 ; $D76B: $60 - Return from Subroutine
	BVC $00             ; $D76C: $50 $00 - Branch on Overflow Clear
	BRK                 ; $D76E: $00 - Force Break
	BRK                 ; $D76F: $00 - Force Break
	EOR $55,X           ; $D770: $55 $55 - Exclusive-OR Memory with Accumulator
	BVC $00             ; $D772: $50 $00 - Branch on Overflow Clear
	JSR $F2BD           ; $D774: $20 $BD $F2 - Jump to New Location Saving Return Address
	RTS                 ; $D777: $60 - Return from Subroutine
	DEC $A4             ; $D778: $C6 $A4 - Decrement Memory by One
	BEQ $F8             ; $D77A: $F0 $F8 - Branch on Result Zero
	JSR $D7BE           ; $D77C: $20 $BE $D7 - Jump to New Location Saving Return Address
	LDA #$CA            ; $D77F: $A9 $CA - Load Accumulator with Memory
	JSR $F061           ; $D781: $20 $61 $F0 - Jump to New Location Saving Return Address
	LDA #$70            ; $D784: $A9 $70 - Load Accumulator with Memory
	LDY #$40            ; $D786: $A0 $40 - Load Index Y with Memory
	JSR $F040           ; $D788: $20 $40 $F0 - Jump to New Location Saving Return Address
	LDA $02             ; $D78B: $A5 $02 - Load Accumulator with Memory
	BEQ $12             ; $D78D: $F0 $12 - Branch on Result Zero
	LDA #$E9            ; $D78F: $A9 $E9 - Load Accumulator with Memory
	STA $AF             ; $D791: $85 $AF - Store Accumulator in Memory
	LDA #$A8            ; $D793: $A9 $A8 - Load Accumulator with Memory
	BIT $6F             ; $D795: $24 $6F - Test Bits in Memory with Accumulator
	BPL $03             ; $D797: $10 $03 - Branch on Result Plus
	CLC                 ; $D799: $18 - Clear Carry Flag
	ADC #$0B            ; $D79A: $69 $0B - Add Memory to Accumulator with Carry
	LDY #$28            ; $D79C: $A0 $28 - Load Index Y with Memory
	JSR $F040           ; $D79E: $20 $40 $F0 - Jump to New Location Saving Return Address
	LDX $AC             ; $D7A1: $A6 $AC - Load Index X with Memory
	LDA #$FF            ; $D7A3: $A9 $FF - Load Accumulator with Memory
	STA $0700,X         ; $D7A5: $9D $00 $07 - Store Accumulator in Memory
	TXA                 ; $D7A8: $8A - Transfer Index X to Accumulator
	CLC                 ; $D7A9: $18 - Clear Carry Flag
	ADC $AD             ; $D7AA: $65 $AD - Add Memory to Accumulator with Carry
	TAX                 ; $D7AC: $AA - Transfer Accumulator to Index X
	BNE $F4             ; $D7AD: $D0 $F4 - Branch on Result not Zero
	STX $AC             ; $D7AF: $86 $AC - Store Index X in Memory
	RTS                 ; $D7B1: $60 - Return from Subroutine
	LDX #$00            ; $D7B2: $A2 $00 - Load Index X with Memory
	BEQ $ED             ; $D7B4: $F0 $ED - Branch on Result Zero
	ASL $16             ; $D7B7: $06 $16 - Shift Left One Bit
	ASL $10,X           ; $D7B9: $16 $10 - Shift Left One Bit
	BPL $20             ; $D7BB: $10 $20 - Branch on Result Plus
	JSR $E9A5           ; $D7BD: $20 $A5 $E9 - Jump to New Location Saving Return Address
	LSR A               ; $D7C0: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $D7C2: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	BIT $6F             ; $D7C5: $24 $6F - Test Bits in Memory with Accumulator
	BVS $03             ; $D7C7: $70 $03 - Branch on Overflow Set
	CLC                 ; $D7C9: $18 - Clear Carry Flag
	ADC #$04            ; $D7CA: $69 $04 - Add Memory to Accumulator with Carry
	TAY                 ; $D7CC: $A8 - Transfer Accumulator to Index Y
	LDA $D7B6,Y         ; $D7CD: $B9 $B6 $D7 - Load Accumulator with Memory
	STA $0591           ; $D7D0: $8D $91 $05 - Store Accumulator in Memory
	INC $AA             ; $D7D3: $E6 $AA - Increment Memory by One
	JSR $EE6D           ; $D7D5: $20 $6D $EE - Jump to New Location Saving Return Address
	LDA $04FF           ; $D7D8: $AD $FF $04 - Load Accumulator with Memory
	STA $DA             ; $D7DB: $85 $DA - Store Accumulator in Memory
	LDA #$1C            ; $D7DD: $A9 $1C - Load Accumulator with Memory
	STA $DB             ; $D7DF: $85 $DB - Store Accumulator in Memory
	LDX #$03            ; $D7E1: $A2 $03 - Load Index X with Memory
	STX $AE             ; $D7E3: $86 $AE - Store Index X in Memory
	DEC $DB             ; $D7E5: $C6 $DB - Decrement Memory by One
	LSR $DA             ; $D7E7: $46 $DA - Shift One Bit Right (Memory or Accumulator)
	BCC $13             ; $D7E9: $90 $13 - Branch on Carry Clear
	LDA #$AC            ; $D7EB: $A9 $AC - Load Accumulator with Memory
	SBC $CD             ; $D7ED: $E5 $CD - Subtract Memory from Accumulator with Borrow
	TAY                 ; $D7EF: $A8 - Transfer Accumulator to Index Y
	BIT $6F             ; $D7F0: $24 $6F - Test Bits in Memory with Accumulator
	BVS $0A             ; $D7F2: $70 $0A - Branch on Overflow Set
	LDA $DB             ; $D7F4: $A5 $DB - Load Accumulator with Memory
	STA $AF             ; $D7F6: $85 $AF - Store Accumulator in Memory
	LDA $D805,X         ; $D7F8: $BD $05 $D8 - Load Accumulator with Memory
	JSR $F040           ; $D7FB: $20 $40 $F0 - Jump to New Location Saving Return Address
	JSR $A992           ; $D7FE: $20 $92 $A9 - Jump to New Location Saving Return Address
	DEX                 ; $D801: $CA - Decrement Index X by One
	BPL $DF             ; $D802: $10 $DF - Branch on Result Plus
	RTS                 ; $D804: $60 - Return from Subroutine
	CLD                 ; $D809: $D8 - Clear Decimal Mode
	ORA $0ED8,Y         ; $D80A: $19 $D8 $0E - OR Memory with Accumulator
	LDA #$B8            ; $D80F: $A9 $B8 - Load Accumulator with Memory
	STA $02E0           ; $D811: $8D $E0 $02 - Store Accumulator in Memory
	JSR $FB77           ; $D814: $20 $77 $FB - Jump to New Location Saving Return Address
	BRK                 ; $D817: $00 - Force Break
	JSR $D83B           ; $D81A: $20 $3B $D8 - Jump to New Location Saving Return Address
	JSR $87E9           ; $D81D: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $16             ; $D820: $D0 $16 - Branch on Result not Zero
	JSR $EBF4           ; $D822: $20 $F4 $EB - Jump to New Location Saving Return Address
	BCC $11             ; $D825: $90 $11 - Branch on Carry Clear
	JSR $9FC9           ; $D827: $20 $C9 $9F - Jump to New Location Saving Return Address
	ADC $0360,Y         ; $D82A: $79 $60 $03 - Add Memory to Accumulator with Carry
	STA $0360,Y         ; $D82D: $99 $60 $03 - Store Accumulator in Memory
	LDA #$02            ; $D830: $A9 $02 - Load Accumulator with Memory
	STA $0260,Y         ; $D832: $99 $60 $02 - Store Accumulator in Memory
	JSR $8937           ; $D835: $20 $37 $89 - Jump to New Location Saving Return Address
	JMP $D8C9           ; $D838: $4C $C9 $D8 - Jump to New Location
	JSR $8806           ; $D83B: $20 $06 $88 - Jump to New Location Saving Return Address
	BEQ $52             ; $D83E: $F0 $52 - Branch on Result Zero
	JSR $8BE5           ; $D840: $20 $E5 $8B - Jump to New Location Saving Return Address
	SEC                 ; $D843: $38 - Set Carry Flag
	SBC #$09            ; $D844: $E9 $09 - Subtract Memory from Accumulator with Borrow
	STA $DA             ; $D846: $85 $DA - Store Accumulator in Memory
	CLC                 ; $D848: $18 - Clear Carry Flag
	ADC #$13            ; $D849: $69 $13 - Add Memory to Accumulator with Carry
	STA $DB             ; $D84B: $85 $DB - Store Accumulator in Memory
	TXA                 ; $D84D: $8A - Transfer Index X to Accumulator
	TAY                 ; $D84E: $A8 - Transfer Accumulator to Index Y
	LDX #$03            ; $D84F: $A2 $03 - Load Index X with Memory
	LDA $0200,X         ; $D851: $BD $00 $02 - Load Accumulator with Memory
	BEQ $37             ; $D854: $F0 $37 - Branch on Result Zero
	LDA $88,X           ; $D856: $B5 $88 $C9 - Load Accumulator with Memory
	BCS $31             ; $D85A: $B0 $31 - Branch on Carry Set
	LDA $0360,X         ; $D85C: $BD $60 $03 - Load Accumulator with Memory
	SEC                 ; $D85F: $38 - Set Carry Flag
	SBC $CC             ; $D860: $E5 $CC - Subtract Memory from Accumulator with Borrow
	CMP $DA             ; $D862: $C5 $DA - Compare Memory with Accumulator
	BCC $27             ; $D864: $90 $27 - Branch on Carry Clear
	CMP $DB             ; $D866: $C5 $DB - Compare Memory with Accumulator
	BCS $23             ; $D868: $B0 $23 - Branch on Carry Set
	LDA $0380,Y         ; $D86A: $B9 $80 $03 - Load Accumulator with Memory
	CLC #$40            ; $D86D: $29 $40 - Clear Carry Flag
	BEQ $0F             ; $D86F: $F0 $0F - Branch on Result Zero
	LDA $4A,X           ; $D871: $B5 $4A $F9 - Load Accumulator with Memory
	LSR A               ; $D874: $4A $00 - Shift One Bit Right (Memory or Accumulator)
	BCS $15             ; $D876: $B0 $15 - Branch on Carry Set
	CMP #$B8            ; $D878: $C9 $B8 - Compare Memory with Accumulator
	BCC $11             ; $D87A: $90 $11 - Branch on Carry Clear
	DEC $4A,X           ; $D87C: $D6 $4A - Decrement Memory by One
	BNE $0D             ; $D87E: $D0 $0D - Branch on Result not Zero
	LDA $4A,X           ; $D880: $B5 $4A $F9 - Load Accumulator with Memory
	LSR A               ; $D883: $4A $00 - Shift One Bit Right (Memory or Accumulator)
	BCC $06             ; $D885: $90 $06 - Branch on Carry Clear
	CMP #$49            ; $D887: $C9 $49 - Compare Memory with Accumulator
	BCS $02             ; $D889: $B0 $02 - Branch on Carry Set
	INC $4A,X           ; $D88B: $F6 $4A - Increment Memory by One
	DEX                 ; $D88D: $CA - Decrement Index X by One
	BPL $C1             ; $D88E: $10 $C1 - Branch on Result Plus
	TYA                 ; $D890: $98 - Transfer Index Y to Accumulator
	TAX                 ; $D891: $AA - Transfer Accumulator to Index X
	RTS                 ; $D892: $60 - Return from Subroutine
	CLD                 ; $D893: $D8 - Clear Decimal Mode
	LDA ($D8,X)         ; $D894: $A1 $D8 $98 - Load Accumulator with Memory
	INC $0300,X         ; $D899: $FE $00 $03 - Increment Memory by One
	JSR $8C8A           ; $D89C: $20 $8A $8C - Jump to New Location Saving Return Address
	BRK                 ; $D89F: $00 - Force Break
	LDA ($9C,X)         ; $D8A0: $A1 $9C $BD - Load Accumulator with Memory
	CPX #$02            ; $D8A3: $E0 $02 - Compare Memory and Index Y
	BNE $12             ; $D8A5: $D0 $12 - Branch on Result not Zero
	LDA $0380,X         ; $D8A7: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $D8AA: $29 $10 - Clear Carry Flag
	BEQ $08             ; $D8AC: $F0 $08 - Branch on Result Zero
	INC $02E0,X         ; $D8AE: $FE $E0 $02 - Increment Memory by One
	LDA #$FF            ; $D8B1: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $D8B3: $9D $A0 $02 - Store Accumulator in Memory
	JMP $D8C6           ; $D8B6: $4C $C6 $D8 - Jump to New Location
	LDA $0573           ; $D8B9: $AD $73 $05 - Load Accumulator with Memory
	JSR $8960           ; $D8BC: $20 $60 $89 - Jump to New Location Saving Return Address
	BEQ $05             ; $D8BF: $F0 $05 - Branch on Result Zero
	DEC $0300,X         ; $D8C1: $DE $00 $03 - Decrement Memory by One
	BMI $0C             ; $D8C4: $30 $0C - Branch on Result Minus
	JSR $AA08           ; $D8C6: $20 $08 $AA - Jump to New Location Saving Return Address
	JSR $8B60           ; $D8C9: $20 $60 $8B - Jump to New Location Saving Return Address
	JSR $A992           ; $D8CC: $20 $92 $A9 - Jump to New Location Saving Return Address
	JMP $8823           ; $D8CF: $4C $23 $88 - Jump to New Location
	TXA                 ; $D8D2: $8A - Transfer Index X to Accumulator
	TAY                 ; $D8D3: $A8 - Transfer Accumulator to Index Y
	LDA #$FF            ; $D8D4: $A9 $FF - Load Accumulator with Memory
	STA $0A             ; $D8D6: $85 $0A - Store Accumulator in Memory
	LDA #$FF            ; $D8D8: $A9 $FF - Load Accumulator with Memory
	JSR $8A48           ; $D8DA: $20 $48 $8A - Jump to New Location Saving Return Address
	RTS                 ; $D8DD: $60 - Return from Subroutine
	STA $0567           ; $D8DE: $8D $67 $05 - Store Accumulator in Memory
	JSR $9713           ; $D8E1: $20 $13 $97 - Jump to New Location Saving Return Address
	LDA #$00            ; $D8E4: $A9 $00 - Load Accumulator with Memory
	STA $71             ; $D8E6: $85 $71 - Store Accumulator in Memory
	JSR $F437           ; $D8E8: $20 $37 $F4 - Jump to New Location Saving Return Address
	JSR $FF6F           ; $D8EB: $20 $6F $FF - Jump to New Location Saving Return Address
	LDY #$24            ; $D8EE: $A0 $24 - Load Index Y with Memory
	LDA #$00            ; $D8F0: $A9 $00 - Load Accumulator with Memory
	JSR $EEDE           ; $D8F2: $20 $DE $EE - Jump to New Location Saving Return Address
	LDX #$08            ; $D8F5: $A2 $08 - Load Index X with Memory
	LDA #$00            ; $D8F7: $A9 $00 - Load Accumulator with Memory
	TAY                 ; $D8F9: $A8 - Transfer Accumulator to Index Y
	STA $2007           ; $D8FA: $8D $07 $20 - Store Accumulator in Memory
	INY                 ; $D8FD: $C8 - Increment Index Y by One
	BNE $FA             ; $D8FE: $D0 $FA - Branch on Result not Zero
	DEX                 ; $D900: $CA - Decrement Index X by One
	BNE $F6             ; $D901: $D0 $F6 - Branch on Result not Zero
	LDA $FE             ; $D903: $A5 $FE - Load Accumulator with Memory
	CLC #$FC            ; $D905: $29 $FC - Clear Carry Flag
	STA $FE             ; $D907: $85 $FE - Store Accumulator in Memory
	LDA #$00            ; $D909: $A9 $00 - Load Accumulator with Memory
	STA $CF             ; $D90B: $85 $CF - Store Accumulator in Memory
	STA $CD             ; $D90D: $85 $CD - Store Accumulator in Memory
	STA $CC             ; $D90F: $85 $CC - Store Accumulator in Memory
	RTS                 ; $D911: $60 - Return from Subroutine
	TYA                 ; $D915: $98 - Transfer Index Y to Accumulator
	ORA $58B0,Y         ; $D918: $19 $B0 $58 - OR Memory with Accumulator
	LDY $8C,X           ; $D91B: $B4 $8C $98 - Load Index Y with Memory
	PLP                 ; $D91E: $28 - Pull Processor Status from Stack
	RTI                 ; $D921: $40 - Return from Interrupt
	BVS $04             ; $D922: $70 $04 - Branch on Overflow Set
	ASL $2D64,X         ; $D925: $1E $64 $2D - Shift Left One Bit
	TSX                 ; $D92A: $BA - Transfer Stack Pointer to Index X
	RTS                 ; $D92C: $60 - Return from Subroutine
	BRK                 ; $D92D: $00 - Force Break
	JMP $1BA8           ; $D931: $4C $A8 $1B - Jump to New Location
	RTS                 ; $D936: $60 - Return from Subroutine
	PHP                 ; $D938: $08 - Push Processor Status on Stack
	BPL $34             ; $D939: $10 $34 - Branch on Result Plus
	ORA ($42,X)         ; $D93C: $01 $42 $04 - OR Memory with Accumulator
	BRK                 ; $D942: $00 - Force Break
	TAY                 ; $D944: $A8 - Transfer Accumulator to Index Y
	ADC #$4C            ; $D945: $69 $4C - Add Memory to Accumulator with Carry
	BNE $10             ; $D947: $D0 $10 - Branch on Result not Zero
	LSR $B0             ; $D949: $46 $B0 - Shift One Bit Right (Memory or Accumulator)
	BVS $A8             ; $D94B: $70 $A8 - Branch on Overflow Set
	RTS                 ; $D94F: $60 - Return from Subroutine
	LDY #$A9            ; $D950: $A0 $A9 - Load Index Y with Memory
	TAY                 ; $D953: $A8 - Transfer Accumulator to Index Y
	BIT $6F             ; $D954: $24 $6F - Test Bits in Memory with Accumulator
	BVS $06             ; $D956: $70 $06 - Branch on Overflow Set
	BPL $06             ; $D958: $10 $06 - Branch on Result Plus
	LDY #$29            ; $D95A: $A0 $29 - Load Index Y with Memory
	BNE $02             ; $D95C: $D0 $02 - Branch on Result not Zero
	LDY #$3E            ; $D95E: $A0 $3E - Load Index Y with Memory
	TAX                 ; $D960: $AA - Transfer Accumulator to Index X
	LDA $D912,Y         ; $D961: $B9 $12 $D9 - Load Accumulator with Memory
	STA $0568,X         ; $D964: $9D $68 $05 - Store Accumulator in Memory
	DEY                 ; $D967: $88 - Decrement Index Y by One
	DEX                 ; $D968: $CA - Decrement Index X by One
	BPL $F6             ; $D969: $10 $F6 - Branch on Result Plus
	RTS                 ; $D96B: $60 - Return from Subroutine
	CMP $D975,Y         ; $D96C: $D9 $75 $D9 - Compare Memory with Accumulator
	LDA #$07            ; $D970: $A9 $07 - Load Accumulator with Memory
	STA $02E0,X         ; $D972: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $D975: $60 - Return from Subroutine
	LDA $02E0,X         ; $D976: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $D979: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	ORA #$A8            ; $D97B: $09 $A8 - OR Memory with Accumulator
	LDA $D989,Y         ; $D97D: $B9 $89 $D9 - Load Accumulator with Memory
	BEQ $03             ; $D980: $F0 $03 - Branch on Result Zero
	JSR $CD43           ; $D982: $20 $43 $CD - Jump to New Location Saving Return Address
	JSR $8C68           ; $D985: $20 $68 $8C - Jump to New Location Saving Return Address
	RTS                 ; $D988: $60 - Return from Subroutine
	DEC $00DF,X         ; $D989: $DE $DF $00 - Decrement Memory by One
	BRK                 ; $D98C: $00 - Force Break
	LDA #$00            ; $D98D: $A9 $00 - Load Accumulator with Memory
	LDY #$09            ; $D98F: $A0 $09 - Load Index Y with Memory
	STA $009A,Y         ; $D991: $99 $9A $00 - Store Accumulator in Memory
	DEY                 ; $D994: $88 - Decrement Index Y by One
	BPL $FA             ; $D995: $10 $FA - Branch on Result Plus
	STA $057D           ; $D997: $8D $7D $05 - Store Accumulator in Memory
	STA $057E           ; $D99A: $8D $7E $05 - Store Accumulator in Memory
	LDA #$2F            ; $D99D: $A9 $2F - Load Accumulator with Memory
	STA $057F           ; $D99F: $8D $7F $05 - Store Accumulator in Memory
	RTS                 ; $D9A2: $60 - Return from Subroutine
	LDA $057D           ; $D9A3: $AD $7D $05 - Load Accumulator with Memory
	CLC                 ; $D9A6: $18 - Clear Carry Flag
	BPL $1B             ; $D9A7: $10 $1B - Branch on Result Plus
	DEC $057F           ; $D9A9: $CE $7F $05 - Decrement Memory by One
	BEQ $17             ; $D9AC: $F0 $17 - Branch on Result Zero
	LDA $057F           ; $D9AE: $AD $7F $05 - Load Accumulator with Memory
	LSR A               ; $D9B1: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $D9B3: $4A $A8 - Shift One Bit Right (Memory or Accumulator)
	LDA $D9C9,Y         ; $D9B5: $B9 $C9 $D9 - Load Accumulator with Memory
	PHA                 ; $D9B8: $48 - Push Accumulator on Stack
	LDA $057F           ; $D9B9: $AD $7F $05 - Load Accumulator with Memory
	CLC #$07            ; $D9BC: $29 $07 - Clear Carry Flag
	TAY                 ; $D9BE: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $D9BF: $68 - Pull Accumulator from Stack
	ASL A               ; $D9C0: $0A - Shift Left One Bit
	DEY                 ; $D9C1: $88 - Decrement Index Y by One
	BPL $FC             ; $D9C2: $10 $FC - Branch on Result Plus
	RTS                 ; $D9C4: $60 - Return from Subroutine
	INC $A1             ; $D9C5: $E6 $A1 - Increment Memory by One
	SEC                 ; $D9C7: $38 - Set Carry Flag
	RTS                 ; $D9C8: $60 - Return from Subroutine
	DEC $6DEE,X         ; $D9C9: $DE $EE $6D - Decrement Memory by One
	TAX                 ; $D9CC: $AA - Transfer Accumulator to Index X
	EOR #$11            ; $D9CD: $49 $11 - Exclusive-OR Memory with Accumulator
	PHA                 ; $D9CF: $48 - Push Accumulator on Stack
	LDA $A3             ; $D9D0: $A5 $A3 - Load Accumulator with Memory
	BEQ $12             ; $D9D2: $F0 $12 - Branch on Result Zero
	DEC $A3             ; $D9D4: $C6 $A3 - Decrement Memory by One
	BNE $0E             ; $D9D6: $D0 $0E - Branch on Result not Zero
	LDA $A1             ; $D9D8: $A5 $A1 - Load Accumulator with Memory
	CMP #$02            ; $D9DA: $C9 $02 - Compare Memory with Accumulator
	BNE $04             ; $D9DC: $D0 $04 - Branch on Result not Zero
	LDA #$01            ; $D9DE: $A9 $01 - Load Accumulator with Memory
	STA $A1             ; $D9E0: $85 $A1 - Store Accumulator in Memory
	PLA                 ; $D9E2: $68 - Pull Accumulator from Stack
	JMP $F9FE           ; $D9E3: $4C $FE $F9 - Jump to New Location
	PLA                 ; $D9E6: $68 - Pull Accumulator from Stack
	RTS                 ; $D9E7: $60 - Return from Subroutine
	LDA $A1             ; $D9E8: $A5 $A1 - Load Accumulator with Memory
	BEQ $24             ; $D9EA: $F0 $24 - Branch on Result Zero
	LDA $A3             ; $D9EC: $A5 $A3 - Load Accumulator with Memory
	BNE $1C             ; $D9EE: $D0 $1C - Branch on Result not Zero
	LDA $A2             ; $D9F0: $A5 $A2 - Load Accumulator with Memory
	BNE $18             ; $D9F2: $D0 $18 - Branch on Result not Zero
	LDA #$00            ; $D9F4: $A9 $00 - Load Accumulator with Memory
	STA $F9             ; $D9F6: $85 $F9 - Store Accumulator in Memory
	LDA #$02            ; $D9F8: $A9 $02 - Load Accumulator with Memory
	STA $A1             ; $D9FA: $85 $A1 - Store Accumulator in Memory
	LDA #$14            ; $D9FC: $A9 $14 - Load Accumulator with Memory
	STA $A3             ; $D9FE: $85 $A3 - Store Accumulator in Memory
	LDA $F7             ; $DA00: $A5 $F7 - Load Accumulator with Memory
	CMP $0440,X         ; $DA02: $DD $40 $04 - Compare Memory with Accumulator
	BCC $03             ; $DA05: $90 $03 - Branch on Carry Clear
	JSR $DA16           ; $DA07: $20 $16 $DA - Jump to New Location Saving Return Address
	SEC                 ; $DA0A: $38 - Set Carry Flag
	RTS                 ; $DA0B: $60 - Return from Subroutine
	LDA #$01            ; $DA0C: $A9 $01 - Load Accumulator with Memory
	BNE $02             ; $DA0E: $D0 $02 - Branch on Result not Zero
	LDA #$02            ; $DA10: $A9 $02 - Load Accumulator with Memory
	STA $F9             ; $DA12: $85 $F9 - Store Accumulator in Memory
	CLC                 ; $DA14: $18 - Clear Carry Flag
	RTS                 ; $DA15: $60 - Return from Subroutine
	LDA $0200,X         ; $DA16: $BD $00 $02 - Load Accumulator with Memory
	CMP #$03            ; $DA19: $C9 $03 - Compare Memory with Accumulator
	BEQ $15             ; $DA1B: $F0 $15 - Branch on Result Zero
	CMP #$06            ; $DA1D: $C9 $06 - Compare Memory with Accumulator
	BNE $19             ; $DA1F: $D0 $19 - Branch on Result not Zero
	JSR $DA48           ; $DA21: $20 $48 $DA - Jump to New Location Saving Return Address
	LDA #$46            ; $DA24: $A9 $46 - Load Accumulator with Memory
	STA $77             ; $DA26: $85 $77 - Store Accumulator in Memory
	JMP $9713           ; $DA28: $4C $13 $97 - Jump to New Location
	LDA #$12            ; $DA2B: $A9 $12 - Load Accumulator with Memory
	LDY #$BD            ; $DA2D: $A0 $BD - Load Index Y with Memory
	JSR $9860           ; $DA2F: $20 $60 $98 - Jump to New Location Saving Return Address
	JSR $DA21           ; $DA32: $20 $21 $DA - Jump to New Location Saving Return Address
	LDA #$FF            ; $DA35: $A9 $FF - Load Accumulator with Memory
	STA $77             ; $DA37: $85 $77 - Store Accumulator in Memory
	RTS                 ; $DA39: $60 - Return from Subroutine
	LDA $BC             ; $DA3A: $A5 $BC - Load Accumulator with Memory
	CMP #$0B            ; $DA3C: $C9 $0B - Compare Memory with Accumulator
	BEQ $EB             ; $DA3E: $F0 $EB - Branch on Result Zero
	LDA #$06            ; $DA40: $A9 $06 - Load Accumulator with Memory
	JSR $97AA           ; $DA42: $20 $AA $97 - Jump to New Location Saving Return Address
	JSR $DA35           ; $DA45: $20 $35 $DA - Jump to New Location Saving Return Address
	LDA #$40            ; $DA48: $A9 $40 - Load Accumulator with Memory
	JSR $8B2E           ; $DA4A: $20 $2E $8B - Jump to New Location Saving Return Address
	LDA $0200,X         ; $DA4D: $BD $00 $02 - Load Accumulator with Memory
	CMP #$02            ; $DA50: $C9 $02 - Compare Memory with Accumulator
	BNE $14             ; $DA52: $D0 $14 - Branch on Result not Zero
	LDX #$23            ; $DA54: $A2 $23 - Load Index X with Memory
	LDA #$8C            ; $DA56: $A9 $8C - Load Accumulator with Memory
	JSR $E912           ; $DA58: $20 $12 $E9 - Jump to New Location Saving Return Address
	JSR $E9DC           ; $DA5B: $20 $DC $E9 - Jump to New Location Saving Return Address
	LDX #$23            ; $DA5E: $A2 $23 - Load Index X with Memory
	LDA #$92            ; $DA60: $A9 $92 - Load Accumulator with Memory
	JSR $E912           ; $DA62: $20 $12 $E9 - Jump to New Location Saving Return Address
	JSR $E9DC           ; $DA65: $20 $DC $E9 - Jump to New Location Saving Return Address
	LDX #$04            ; $DA68: $A2 $04 - Load Index X with Memory
	LDY $0200,X         ; $DA6A: $BC $00 $02 - Load Index Y with Memory
	BEQ $0C             ; $DA6D: $F0 $0C - Branch on Result Zero
	LDA $BE6D,Y         ; $DA6F: $B9 $6D $BE - Load Accumulator with Memory
	CLC #$08            ; $DA72: $29 $08 - Clear Carry Flag
	BEQ $05             ; $DA74: $F0 $05 - Branch on Result Zero
	LDA #$32            ; $DA76: $A9 $32 - Load Accumulator with Memory
	JSR $A894           ; $DA78: $20 $94 $A8 - Jump to New Location Saving Return Address
	INX                 ; $DA7B: $E8 - Increment Index X by One
	CPX #$13            ; $DA7C: $E0 $13 - Compare Memory and Index Y
	BNE $EA             ; $DA7E: $D0 $EA - Branch on Result not Zero
	RTS                 ; $DA80: $60 - Return from Subroutine
	SEC                 ; $DA81: $38 - Set Carry Flag
	ROL $A2             ; $DA82: $26 $A2 - Rotate One Bit Left
	RTS                 ; $DA84: $60 - Return from Subroutine
	LDA #$00            ; $DA85: $A9 $00 - Load Accumulator with Memory
	STA $A2             ; $DA87: $85 $A2 - Store Accumulator in Memory
	RTS                 ; $DA89: $60 - Return from Subroutine
	LDA #$02            ; $DA90: $A9 $02 - Load Accumulator with Memory
	STA $0380,X         ; $DA92: $9D $80 $03 - Store Accumulator in Memory
	LDA #$08            ; $DA95: $A9 $08 - Load Accumulator with Memory
	STA $02E0,X         ; $DA97: $9D $E0 $02 - Store Accumulator in Memory
	BRK                 ; $DA9A: $00 - Force Break
	STA $209C           ; $DA9B: $8D $9C $20 - Store Accumulator in Memory
	PLA                 ; $DA9E: $68 - Pull Accumulator from Stack
	STY $924C           ; $DA9F: $8C $4C $92 - Sore Index Y in Memory
	LDA #$02            ; $DAA2: $A9 $02 - Load Accumulator with Memory
	ORA ($01,X)         ; $DAA6: $01 $01 $04 - OR Memory with Accumulator
	BRK                 ; $DAA9: $00 - Force Break
	BRK                 ; $DAAA: $00 - Force Break
	PHP                 ; $DAAF: $08 - Push Processor Status on Stack
	ASL $1219           ; $DAB1: $0E $19 $12 - Shift Left One Bit
	ROL $1D04           ; $DAB6: $2E $04 $1D - Rotate One Bit Left
	PLP                 ; $DAB9: $28 - Pull Processor Status from Stack
	CLC                 ; $DABC: $18 - Clear Carry Flag
	ASL A               ; $DABD: $0A - Shift Left One Bit
	BMI $0B             ; $DABE: $30 $0B - Branch on Result Minus
	AND ($07,X)         ; $DAC0: $21 $07 $13 - AND Memory with Accumulator
	AND ($09),Y         ; $DAC5: $31 $09 $1A - AND Memory with Accumulator
	ORA $08             ; $DAC8: $05 $08 - OR Memory with Accumulator
	BIT $06             ; $DACA: $24 $06 - Test Bits in Memory with Accumulator
	ORA ($EC,X)         ; $DACF: $01 $EC $DA - OR Memory with Accumulator
	CPX #$DB            ; $DAD2: $E0 $DB - Compare Memory and Index Y
	CMP $B0DC,Y         ; $DAD4: $D9 $DC $B0 - Compare Memory with Accumulator
	CMP $DEA0,X         ; $DAD7: $DD $A0 $DE - Compare Memory with Accumulator
	STX $73DF           ; $DADA: $8E $DF $73 - Store Index X in Memory
	CPX #$89            ; $DADD: $E0 $89 - Compare Memory and Index Y
	SBC ($73,X)         ; $DADF: $E1 $73 $E2 - Subtract Memory from Accumulator with Borrow
	LSR A               ; $DAE2: $4A $E3 - Shift One Bit Right (Memory or Accumulator)
	CPX $21             ; $DAE5: $E4 $21 - Compare Memory and Index Y
	SBC $EC             ; $DAE7: $E5 $EC - Subtract Memory from Accumulator with Borrow
	SBC $C3             ; $DAE9: $E5 $C3 - Subtract Memory from Accumulator with Borrow
	INC $2C             ; $DAEB: $E6 $2C - Increment Memory by One
	JMP $7C7E           ; $DAEE: $4C $7E $7C - Jump to New Location
	CLI                 ; $DAF2: $58 - Clear Interrupt Disable Bit
	LSR $065C,X         ; $DAF3: $5E $5C $06 - Shift One Bit Right (Memory or Accumulator)
	ASL $1A6C           ; $DAFA: $0E $6C $1A - Shift Left One Bit
	PLP                 ; $DB00: $28 - Pull Processor Status from Stack
	BPL $72             ; $DB03: $10 $72 - Branch on Result Plus
	ROL $8F,X           ; $DB08: $36 $8F - Rotate One Bit Left
	BPL $10             ; $DB0B: $10 $10 - Branch on Result Plus
	ROL $2A             ; $DB0E: $26 $2A - Rotate One Bit Left
	ROR $8455,X         ; $DB10: $7E $55 $84 - Rotate One Bit Right
	RTI                 ; $DB13: $40 - Return from Interrupt
	LSR $344A,X         ; $DB14: $5E $4A $34 - Shift One Bit Right (Memory or Accumulator)
	STX $2C46           ; $DB17: $8E $46 $2C - Store Index X in Memory
	ROL $56             ; $DB1A: $26 $56 - Rotate One Bit Left
	STY $6A62           ; $DB1D: $8C $62 $6A - Sore Index Y in Memory
	DEY                 ; $DB22: $88 - Decrement Index Y by One
	ROL $2A,X           ; $DB23: $36 $2A - Rotate One Bit Left
	ROR $86             ; $DB27: $66 $86 - Rotate One Bit Right
	ORA $8082           ; $DB29: $0D $82 $80 - OR Memory with Accumulator
	STY $8C66           ; $DB2C: $8C $66 $8C - Sore Index Y in Memory
	ROR $10             ; $DB31: $66 $10 - Rotate One Bit Right
	ORA $261A,X         ; $DB33: $1D $1A $26 - OR Memory with Accumulator
	STY $7E53           ; $DB36: $8C $53 $7E - Sore Index Y in Memory
	BPL $0E             ; $DB39: $10 $0E - Branch on Result Plus
	ORA $5E,X           ; $DB3B: $15 $5E - OR Memory with Accumulator
	STX $2982           ; $DB3F: $8E $82 $29 - Store Index X in Memory
	LSR $115C,X         ; $DB43: $5E $5C $11 - Shift One Bit Right (Memory or Accumulator)
	ORA $1270,X         ; $DB46: $1D $70 $12 - OR Memory with Accumulator
	ROL $8F,X           ; $DB4C: $36 $8F - Rotate One Bit Left
	ROR $0D             ; $DB50: $66 $0D - Rotate One Bit Right
	LSR A               ; $DB55: $4A $76 - Shift One Bit Right (Memory or Accumulator)
	STY $62             ; $DB59: $84 $62 - Sore Index Y in Memory
	JSR $172E           ; $DB5F: $20 $2E $17 - Jump to New Location Saving Return Address
	BPL $0E             ; $DB63: $10 $0E - Branch on Result Plus
	ROR $7A7C,X         ; $DB65: $7E $7C $7A - Rotate One Bit Right
	JMP $5C5E           ; $DB68: $4C $5E $5C - Jump to New Location
	CLI                 ; $DB6C: $58 - Clear Interrupt Disable Bit
	ASL $1200           ; $DB6D: $0E $00 $12 - Shift Left One Bit
	STA ($40,X)         ; $DB70: $81 $40 $C2 - Store Accumulator in Memory
	BPL $70             ; $DB75: $10 $70 - Branch on Result Plus
	BIT $42             ; $DB77: $24 $42 - Test Bits in Memory with Accumulator
	BMI $52             ; $DB79: $30 $52 - Branch on Result Minus
	BVS $60             ; $DB7B: $70 $60 - Branch on Overflow Set
	BVS $C0             ; $DB7D: $70 $C0 - Branch on Overflow Set
	CPY #$C0            ; $DB7F: $C0 $C0 - Compare Memory and Index Y
	AND ($20),Y         ; $DB81: $31 $20 $40 - AND Memory with Accumulator
	EOR $20             ; $DB84: $45 $20 - Exclusive-OR Memory with Accumulator
	RTI                 ; $DB87: $40 - Return from Interrupt
	BCS $CA             ; $DB89: $B0 $CA - Branch on Carry Set
	BMI $43             ; $DB8B: $30 $43 - Branch on Result Minus
	RTS                 ; $DB8E: $60 - Return from Subroutine
	CPY #$C0            ; $DB8F: $C0 $C0 - Compare Memory and Index Y
	CPY #$20            ; $DB92: $C0 $20 - Compare Memory and Index Y
	AND ($43,X)         ; $DB94: $21 $43 $50 - AND Memory with Accumulator
	ORA ($38,X)         ; $DB98: $01 $38 $12 - OR Memory with Accumulator
	SEC                 ; $DB9C: $38 - Set Carry Flag
	ORA ($C0,X)         ; $DB9E: $01 $C0 $2A - OR Memory with Accumulator
	BEQ $8D             ; $DBA1: $F0 $8D - Branch on Result Zero
	BMI $00             ; $DBA3: $30 $00 - Branch on Result Minus
	EOR ($C7,X)         ; $DBA7: $41 $C7 $14 - Exclusive-OR Memory with Accumulator
	ORA ($9C,X)         ; $DBAB: $01 $9C $56 - OR Memory with Accumulator
	AND ($0A,X)         ; $DBAE: $21 $0A $A4 - AND Memory with Accumulator
	AND $89,X           ; $DBB1: $35 $89 - AND Memory with Accumulator
	ASL $2A             ; $DBB4: $06 $2A - Shift Left One Bit
	STY $37             ; $DBB6: $84 $37 - Sore Index Y in Memory
	DEY                 ; $DBB8: $88 - Decrement Index Y by One
	EOR $C0,X           ; $DBB9: $55 $C0 - Exclusive-OR Memory with Accumulator
	EOR #$00            ; $DBBB: $49 $00 - Exclusive-OR Memory with Accumulator
	NOP                 ; $DBBD: $EA - No Operation
	BEQ $26             ; $DBBE: $F0 $26 - Branch on Result Zero
	BVS $15             ; $DBC2: $70 $15 - Branch on Overflow Set
	LDY #$1A            ; $DBC4: $A0 $1A - Load Index Y with Memory
	JSR $86C1           ; $DBC6: $20 $C1 $86 - Jump to New Location Saving Return Address
	ROL $81             ; $DBC9: $26 $81 - Rotate One Bit Left
	CPY #$2A            ; $DBCB: $C0 $2A - Compare Memory and Index Y
	BEQ $86             ; $DBCD: $F0 $86 - Branch on Result Zero
	EOR ($53,X)         ; $DBCF: $41 $53 $84 - Exclusive-OR Memory with Accumulator
	LDA #$80            ; $DBD2: $A9 $80 - Load Accumulator with Memory
	ASL $70             ; $DBD4: $06 $70 - Shift Left One Bit
	ORA $0CD1           ; $DBD6: $0D $D1 $0C - OR Memory with Accumulator
	AND ($8A),Y         ; $DBDA: $31 $8A $E4 - AND Memory with Accumulator
	PHA                 ; $DBDE: $48 - Push Accumulator on Stack
	ASL $5C6C           ; $DBE3: $0E $6C $5C - Shift Left One Bit
	ROL A               ; $DBE6: $2A - Rotate One Bit Left
	TXA                 ; $DBE7: $8A - Transfer Index X to Accumulator
	JMP ($3606)         ; $DBE8: $6C $06 $36 - Jump to New Location
	JMP ($0D6C)         ; $DBEB: $6C $6C $0D - Jump to New Location
	ASL $840E,X         ; $DBEE: $1E $0E $84 - Shift Left One Bit
	TXA                 ; $DBF2: $8A - Transfer Index X to Accumulator
	ROR $86             ; $DBF3: $66 $86 - Rotate One Bit Right
	BPL $1C             ; $DBF7: $10 $1C - Branch on Result Plus
	STY $74             ; $DBFA: $84 $74 - Sore Index Y in Memory
	PLP                 ; $DBFC: $28 - Pull Processor Status from Stack
	ASL $1014           ; $DBFF: $0E $14 $10 - Shift Left One Bit
	ASL $5254           ; $DC02: $0E $54 $52 - Shift Left One Bit
	ROR $1D             ; $DC09: $66 $1D - Rotate One Bit Right
	ASL $12,X           ; $DC0B: $16 $12 - Shift Left One Bit
	ROL $1E,X           ; $DC14: $36 $1E - Rotate One Bit Left
	ASL $8425,X         ; $DC16: $1E $25 $84 - Shift Left One Bit
	STY $74             ; $DC19: $84 $74 - Sore Index Y in Memory
	JSR $4A83           ; $DC1B: $20 $83 $4A - Jump to New Location Saving Return Address
	JSR $638C           ; $DC1E: $20 $8C $63 - Jump to New Location Saving Return Address
	ADC ($12),Y         ; $DC21: $71 $12 $10 - Add Memory to Accumulator with Carry
	BPL $6F             ; $DC24: $10 $6F - Branch on Result Plus
	ROR A               ; $DC26: $6A - Rotate One Bit Right
	STA $2A             ; $DC27: $85 $2A - Store Accumulator in Memory
	ASL $106C           ; $DC2B: $0E $6C $10 - Shift Left One Bit
	ASL $2A50           ; $DC2E: $0E $50 $2A - Shift Left One Bit
	TXA                 ; $DC31: $8A - Transfer Index X to Accumulator
	STY $66             ; $DC32: $84 $66 - Sore Index Y in Memory
	STX $1C             ; $DC34: $86 $1C - Store Index X in Memory
	ADC ($37),Y         ; $DC36: $71 $37 $36 - Add Memory to Accumulator with Carry
	CLC #$29            ; $DC39: $29 $29 - Clear Carry Flag
	STY $8462           ; $DC3D: $8C $62 $84 - Sore Index Y in Memory
	BPL $36             ; $DC41: $10 $36 - Branch on Result Plus
	SEI                 ; $DC43: $78 - Set Interrupt Disable Status
	ROL A               ; $DC44: $2A - Rotate One Bit Left
	PLP                 ; $DC45: $28 - Pull Processor Status from Stack
	STY $8C             ; $DC48: $84 $8C - Sore Index Y in Memory
	STX $2622           ; $DC4B: $8E $22 $26 - Store Index X in Memory
	STA ($90),Y         ; $DC4E: $91 $90 $62 - Store Accumulator in Memory
	ASL $1214           ; $DC53: $0E $14 $12 - Shift Left One Bit
	ASL $5284           ; $DC56: $0E $84 $52 - Shift Left One Bit
	JMP $7C7E           ; $DC5A: $4C $7E $7C - Jump to New Location
	CLI                 ; $DC5E: $58 - Clear Interrupt Disable Bit
	LSR $055C,X         ; $DC5F: $5E $5C $05 - Shift One Bit Right (Memory or Accumulator)
	ADC $6036,Y         ; $DC62: $79 $36 $60 - Add Memory to Accumulator with Carry
	ROR $66,X           ; $DC65: $76 $66 - Rotate One Bit Right
	CPY #$40            ; $DC68: $C0 $40 - Compare Memory and Index Y
	JSR $C020           ; $DC6A: $20 $20 $C0 - Jump to New Location Saving Return Address
	RTS                 ; $DC6D: $60 - Return from Subroutine
	ROR $C370           ; $DC71: $6E $70 $C3 - Rotate One Bit Right
	LDY #$C0            ; $DC74: $A0 $C0 - Load Index Y with Memory
	STA ($70),Y         ; $DC76: $91 $70 $12 - Store Accumulator in Memory
	EOR $4F3D           ; $DC7A: $4D $3D $4F - Exclusive-OR Memory with Accumulator
	STA ($60,X)         ; $DC7E: $81 $60 $F0 - Store Accumulator in Memory
	LSR $F6             ; $DC81: $46 $F6 - Shift One Bit Right (Memory or Accumulator)
	SEC                 ; $DC83: $38 - Set Carry Flag
	ADC ($7B,X)         ; $DC84: $61 $7B $9C - Add Memory to Accumulator with Carry
	TXA                 ; $DC88: $8A - Transfer Index X to Accumulator
	STY $22             ; $DC89: $84 $22 - Sore Index Y in Memory
	STA $70E9,Y         ; $DC8B: $99 $E9 $70 - Store Accumulator in Memory
	LSR A               ; $DC8E: $4A $0B - Shift One Bit Right (Memory or Accumulator)
	BVC $12             ; $DC90: $50 $12 - Branch on Overflow Clear
	STA ($C0),Y         ; $DC93: $91 $C0 $AB - Store Accumulator in Memory
	ORA ($C6,X)         ; $DC96: $01 $C6 $8A - OR Memory with Accumulator
	BMI $2C             ; $DC99: $30 $2C - Branch on Result Minus
	BNE $47             ; $DC9C: $D0 $47 - Branch on Result not Zero
	PHA                 ; $DC9E: $48 - Push Accumulator on Stack
	PHP                 ; $DC9F: $08 - Push Processor Status on Stack
	AND $186E,X         ; $DCA1: $3D $6E $18 - AND Memory with Accumulator
	DEX                 ; $DCA4: $CA - Decrement Index X by One
	AND $4905           ; $DCA6: $2D $05 $49 - AND Memory with Accumulator
	ASL $C2             ; $DCA9: $06 $C2 - Shift Left One Bit
	DEC $E0,X           ; $DCAE: $D6 $E0 - Decrement Memory by One
	LSR A               ; $DCB0: $4A $01 - Shift One Bit Right (Memory or Accumulator)
	PHP                 ; $DCB7: $08 - Push Processor Status on Stack
	INC $4A38           ; $DCBA: $EE $38 $4A - Increment Memory by One
	LDX #$14            ; $DCBD: $A2 $14 - Load Index X with Memory
	RTS                 ; $DCBF: $60 - Return from Subroutine
	INY                 ; $DCC3: $C8 - Increment Index Y by One
	AND ($00,X)         ; $DCC4: $21 $00 $1B - AND Memory with Accumulator
	RTI                 ; $DCC9: $40 - Return from Interrupt
	RTS                 ; $DCCA: $60 - Return from Subroutine
	EOR ($A4),Y         ; $DCCB: $51 $A4 $26 - Exclusive-OR Memory with Accumulator
	ORA #$74            ; $DCCE: $09 $74 - OR Memory with Accumulator
	ROR $12,X           ; $DCD0: $76 $12 - Rotate One Bit Right
	BPL $52             ; $DCD2: $10 $52 - Branch on Result Plus
	TAY                 ; $DCD4: $A8 - Transfer Accumulator to Index Y
	LDY #$B0            ; $DCD7: $A0 $B0 - Load Index Y with Memory
	ORA ($7C),Y         ; $DCD9: $11 $7C $1A - OR Memory with Accumulator
	PHA                 ; $DCDF: $48 - Push Accumulator on Stack
	PHA                 ; $DCE0: $48 - Push Accumulator on Stack
	LSR $4E06,X         ; $DCE1: $5E $06 $4E - Shift One Bit Right (Memory or Accumulator)
	LSR $8B6C           ; $DCE4: $4E $6C $8B - Shift One Bit Right (Memory or Accumulator)
	ROR $24             ; $DCE7: $66 $24 - Rotate One Bit Right
	STY $8F             ; $DCE9: $84 $8F - Sore Index Y in Memory
	ASL $8422           ; $DCEC: $0E $22 $84 - Shift Left One Bit
	ADC $5570           ; $DCF4: $6D $70 $55 - Add Memory to Accumulator with Carry
	ORA ($0F),Y         ; $DCFA: $11 $0F $2F - OR Memory with Accumulator
	ORA $4A1A,X         ; $DCFF: $1D $1A $4A - OR Memory with Accumulator
	STY $2E66           ; $DD03: $8C $66 $2E - Sore Index Y in Memory
	ADC ($76),Y         ; $DD06: $71 $76 $62 - Add Memory to Accumulator with Carry
	ORA $220F           ; $DD0B: $0D $0F $22 - OR Memory with Accumulator
	ORA $0C65           ; $DD0F: $0D $65 $0C - OR Memory with Accumulator
	ORA $5E65           ; $DD13: $0D $65 $5E - OR Memory with Accumulator
	ORA $7087           ; $DD17: $0D $87 $70 - OR Memory with Accumulator
	AND ($84,X)         ; $DD1C: $21 $84 $55 - AND Memory with Accumulator
	ROR $10             ; $DD1F: $66 $10 - Rotate One Bit Right
	ROR $23             ; $DD21: $66 $23 - Rotate One Bit Right
	STX $7434           ; $DD23: $8E $34 $74 - Store Index X in Memory
	AND ($54),Y         ; $DD26: $31 $54 $62 - AND Memory with Accumulator
	ROR $01             ; $DD29: $66 $01 - Rotate One Bit Right
	BVS $18             ; $DD2B: $70 $18 - Branch on Overflow Set
	STY $8474           ; $DD2D: $8C $74 $84 - Sore Index Y in Memory
	ROL $0438           ; $DD30: $2E $38 $04 - Rotate One Bit Left
	STX $0030           ; $DD33: $8E $30 $00 - Store Index X in Memory
	STX $8A             ; $DD36: $86 $8A - Store Index X in Memory
	SEC                 ; $DD38: $38 - Set Carry Flag
	LSR $1C             ; $DD39: $46 $1C - Shift One Bit Right (Memory or Accumulator)
	JMP ($545C)         ; $DD3E: $6C $5C $54 - Jump to New Location
	STY $6E             ; $DD41: $84 $6E - Sore Index Y in Memory
	JMP ($5C5E)         ; $DD43: $6C $5E $5C - Jump to New Location
	JSR $8666           ; $DD47: $20 $66 $86 - Jump to New Location Saving Return Address
	ASL $1E30,X         ; $DD4A: $1E $30 $1E - Shift Left One Bit
	BRK                 ; $DD4E: $00 - Force Break
	BRK                 ; $DD4F: $00 - Force Break
	LSR $3C             ; $DD50: $46 $3C - Shift One Bit Right (Memory or Accumulator)
	BMI $44             ; $DD53: $30 $44 - Branch on Result Minus
	ASL $B607           ; $DD5A: $0E $07 $B6 - Shift Left One Bit
	BPL $74             ; $DD5D: $10 $74 - Branch on Result Plus
	STX $2F             ; $DD5F: $86 $2F - Store Index X in Memory
	BVS $40             ; $DD62: $70 $40 - Branch on Overflow Set
	BMI $42             ; $DD65: $30 $42 - Branch on Result Minus
	SEC                 ; $DD6B: $38 - Set Carry Flag
	ORA $8E             ; $DD6E: $05 $8E - OR Memory with Accumulator
	JSR $0C03           ; $DD71: $20 $03 $0C - Jump to New Location Saving Return Address
	EOR $A305,X         ; $DD74: $5D $05 $A3 - Exclusive-OR Memory with Accumulator
	ASL $E004           ; $DD77: $0E $04 $E0 - Shift Left One Bit
	DEY                 ; $DD7B: $88 - Decrement Index Y by One
	ORA ($12),Y         ; $DD7C: $11 $12 $0C - OR Memory with Accumulator
	STA ($30,X)         ; $DD82: $81 $30 $02 - Store Accumulator in Memory
	SEC                 ; $DD87: $38 - Set Carry Flag
	ORA $6E             ; $DD88: $05 $6E - OR Memory with Accumulator
	ORA ($5A),Y         ; $DD8A: $11 $5A $40 - OR Memory with Accumulator
	LDY #$54            ; $DD8D: $A0 $54 - Load Index Y with Memory
	SBC ($0A,X)         ; $DD8F: $E1 $0A $B1 - Subtract Memory from Accumulator with Borrow
	JMP $5231           ; $DD93: $4C $31 $52 - Jump to New Location
	PHP                 ; $DD96: $08 - Push Processor Status on Stack
	RTI                 ; $DD97: $40 - Return from Interrupt
	ASL A               ; $DD99: $0A - Shift Left One Bit
	LDY $8E23,X         ; $DD9A: $BC $23 $8E - Load Index Y with Memory
	BIT $A480           ; $DD9D: $2C $80 $A4 - Test Bits in Memory with Accumulator
	BRK                 ; $DDA0: $00 - Force Break
	CLC                 ; $DDA2: $18 - Clear Carry Flag
	EOR $70             ; $DDA4: $45 $70 - Exclusive-OR Memory with Accumulator
	STA $0E             ; $DDA7: $85 $0E - Store Accumulator in Memory
	AND $1E52,Y         ; $DDAC: $39 $52 $1E - AND Memory with Accumulator
	CPY #$2F            ; $DDAF: $C0 $2F - Compare Memory and Index Y
	RTS                 ; $DDB1: $60 - Return from Subroutine
	RTS                 ; $DDB3: $60 - Return from Subroutine
	SEI                 ; $DDB4: $78 - Set Interrupt Disable Status
	BVS $70             ; $DDB5: $70 $70 - Branch on Overflow Set
	BVS $70             ; $DDB7: $70 $70 - Branch on Overflow Set
	ASL $AA             ; $DDB9: $06 $AA - Shift Left One Bit
	BIT $68             ; $DDBB: $24 $68 - Test Bits in Memory with Accumulator
	BCC $7C             ; $DDBF: $90 $7C - Branch on Carry Clear
	PLP                 ; $DDC3: $28 - Pull Processor Status from Stack
	JMP $888E           ; $DDC4: $4C $8E $88 - Jump to New Location
	JSR $AB4C           ; $DDC7: $20 $4C $AB - Jump to New Location Saving Return Address
	ASL $11B9           ; $DDCA: $0E $B9 $11 - Shift Left One Bit
	BVS $6A             ; $DDD1: $70 $6A - Branch on Overflow Set
	EOR $1121           ; $DDD3: $4D $21 $11 - Exclusive-OR Memory with Accumulator
	ASL $1575           ; $DDD6: $0E $75 $15 - Shift Left One Bit
	BIT $7B             ; $DDD9: $24 $7B - Test Bits in Memory with Accumulator
	TXA                 ; $DDDC: $8A - Transfer Index X to Accumulator
	BPL $0F             ; $DDDD: $10 $0F - Branch on Result Plus
	LDY $57,X           ; $DDDF: $B4 $57 $29 - Load Index Y with Memory
	SEI                 ; $DDE3: $78 - Set Interrupt Disable Status
	EOR $2574           ; $DDE4: $4D $74 $25 - Exclusive-OR Memory with Accumulator
	EOR $56,X           ; $DDE9: $55 $56 - Exclusive-OR Memory with Accumulator
	TAX                 ; $DDEB: $AA - Transfer Accumulator to Index X
	BPL $57             ; $DDEC: $10 $57 - Branch on Result Plus
	JSR $AC82           ; $DDEE: $20 $82 $AC - Jump to New Location Saving Return Address
	TXA                 ; $DDF2: $8A - Transfer Index X to Accumulator
	STX $1782           ; $DDF3: $8E $82 $17 - Store Index X in Memory
	PLP                 ; $DDF6: $28 - Pull Processor Status from Stack
	TXA                 ; $DDF7: $8A - Transfer Index X to Accumulator
	STX $7269           ; $DDF8: $8E $69 $72 - Store Index X in Memory
	LDY $76,X           ; $DDFB: $B4 $76 $7D - Load Index Y with Memory
	JSR $82AC           ; $DE02: $20 $AC $82 - Jump to New Location Saving Return Address
	STA $888A           ; $DE05: $8D $8A $88 - Store Accumulator in Memory
	BPL $AA             ; $DE0B: $10 $AA - Branch on Result Plus
	TXA                 ; $DE0D: $8A - Transfer Index X to Accumulator
	ADC ($62,X)         ; $DE0E: $61 $62 $B2 - Add Memory to Accumulator with Carry
	CLC #$4D            ; $DE11: $29 $4D - Clear Carry Flag
	JMP $0F7A           ; $DE13: $4C $7A $0F - Jump to New Location
	ADC $76,X           ; $DE16: $75 $76 - Add Memory to Accumulator with Carry
	PLA                 ; $DE19: $68 - Pull Accumulator from Stack
	PHA                 ; $DE1B: $48 - Push Accumulator on Stack
	RTS                 ; $DE1C: $60 - Return from Subroutine
	STY $2089           ; $DE1D: $8C $89 $20 - Sore Index Y in Memory
	ASL $9026           ; $DE23: $0E $26 $90 - Shift Left One Bit
	ADC ($62,X)         ; $DE26: $61 $62 $8B - Add Memory to Accumulator with Carry
	ROR $8A62,X         ; $DE2C: $7E $62 $8A - Rotate One Bit Right
	RTS                 ; $DE2F: $60 - Return from Subroutine
	SEI                 ; $DE30: $78 - Set Interrupt Disable Status
	ORA $62             ; $DE31: $05 $62 - OR Memory with Accumulator
	LDY #$C6            ; $DE33: $A0 $C6 - Load Index Y with Memory
	LDA ($20,X)         ; $DE35: $A1 $20 $D0 - Load Accumulator with Memory
	BPL $A0             ; $DE38: $10 $A0 - Branch on Result Plus
	BRK                 ; $DE3B: $00 - Force Break
	LDX #$A0            ; $DE3D: $A2 $A0 - Load Index X with Memory
	LDY #$A0            ; $DE3F: $A0 $A0 - Load Index Y with Memory
	BMI $A0             ; $DE41: $30 $A0 - Branch on Result Minus
	BMI $A0             ; $DE43: $30 $A0 - Branch on Result Minus
	JSR $30E0           ; $DE45: $20 $E0 $30 - Jump to New Location Saving Return Address
	LDY #$A0            ; $DE48: $A0 $A0 - Load Index Y with Memory
	LDY #$A0            ; $DE4A: $A0 $A0 - Load Index Y with Memory
	BNE $E0             ; $DE4C: $D0 $E0 - Branch on Result not Zero
	RTI                 ; $DE4E: $40 - Return from Interrupt
	RTI                 ; $DE50: $40 - Return from Interrupt
	BNE $40             ; $DE52: $D0 $40 - Branch on Result not Zero
	LDA ($80,X)         ; $DE54: $A1 $80 $A0 - Load Accumulator with Memory
	LDX #$20            ; $DE57: $A2 $20 - Load Index X with Memory
	CPX #$43            ; $DE59: $E0 $43 - Compare Memory and Index Y
	CPX #$4F            ; $DE5C: $E0 $4F - Compare Memory and Index Y
	BRK                 ; $DE5F: $00 - Force Break
	SEC                 ; $DE60: $38 - Set Carry Flag
	ORA $226B           ; $DE63: $0D $6B $22 - OR Memory with Accumulator
	BVS $0D             ; $DE68: $70 $0D - Branch on Overflow Set
	CLI                 ; $DE6A: $58 - Clear Interrupt Disable Bit
	STA $0018           ; $DE6C: $8D $18 $00 - Store Accumulator in Memory
	CMP $E9B3,X         ; $DE6F: $DD $B3 $E9 - Compare Memory with Accumulator
	TYA                 ; $DE74: $98 - Transfer Index Y to Accumulator
	SBC ($B1,X)         ; $DE75: $E1 $B1 $6D - Subtract Memory from Accumulator with Borrow
	ORA $1962           ; $DE7B: $0D $62 $19 - OR Memory with Accumulator
	INC $8D,X           ; $DE7E: $F6 $8D - Increment Memory by One
	ROL A               ; $DE80: $2A - Rotate One Bit Left
	ASL A               ; $DE82: $0A - Shift Left One Bit
	BMI $52             ; $DE83: $30 $52 - Branch on Result Minus
	ORA #$E1            ; $DE86: $09 $E1 - OR Memory with Accumulator
	RTS                 ; $DE88: $60 - Return from Subroutine
	LDX $5480           ; $DE89: $AE $80 $54 - Load Index X with Memory
	RTI                 ; $DE8C: $40 - Return from Interrupt
	DEX                 ; $DE8D: $CA - Decrement Index X by One
	STA $2B94,X         ; $DE8E: $9D $94 $2B - Store Accumulator in Memory
	LSR A               ; $DE91: $4A $96 - Shift One Bit Right (Memory or Accumulator)
	RTS                 ; $DE93: $60 - Return from Subroutine
	EOR ($31,X)         ; $DE97: $41 $31 $33 - Exclusive-OR Memory with Accumulator
	LDA ($00,X)         ; $DE9A: $A1 $00 $14 - Load Accumulator with Memory
	LDY $DCA4,X         ; $DE9D: $BC $A4 $DC - Load Index Y with Memory
	TSX                 ; $DEA1: $BA - Transfer Stack Pointer to Index X
	TXS                 ; $DEA5: $9A - Transfer Index X to Stack Register
	STA $7860,Y         ; $DEA6: $99 $60 $78 - Store Accumulator in Memory
	ASL $13             ; $DEA9: $06 $13 - Shift Left One Bit
	BIT $64             ; $DEAB: $24 $64 - Test Bits in Memory with Accumulator
	EOR $125A,X         ; $DEAD: $5D $5A $12 - Exclusive-OR Memory with Accumulator
	PHA                 ; $DEB0: $48 - Push Accumulator on Stack
	LDY $2828           ; $DEB2: $AC $28 $28 - Load Index Y with Memory
	DEY                 ; $DEB6: $88 - Decrement Index Y by One
	JSR $B094           ; $DEBA: $20 $94 $B0 - Jump to New Location Saving Return Address
	LSR $72AC           ; $DEBD: $4E $AC $72 - Shift One Bit Right (Memory or Accumulator)
	PLA                 ; $DEC0: $68 - Pull Accumulator from Stack
	STY $82             ; $DEC1: $84 $82 - Sore Index Y in Memory
	LSR $BA,X           ; $DEC3: $56 $BA - Shift One Bit Right (Memory or Accumulator)
	STX $9A,Y           ; $DEC6: $96 $9A - Store Index X in Memory
	TYA                 ; $DEC8: $98 - Transfer Index Y to Accumulator
	PLP                 ; $DEC9: $28 - Pull Processor Status from Stack
	PLP                 ; $DECA: $28 - Pull Processor Status from Stack
	PLA                 ; $DECC: $68 - Pull Accumulator from Stack
	LSR $52,X           ; $DED1: $56 $52 - Shift One Bit Right (Memory or Accumulator)
	AND $4D             ; $DED5: $25 $4D - AND Memory with Accumulator
	ROL $6012,X         ; $DED7: $3E $12 $60 - Rotate One Bit Left
	ADC $404C,Y         ; $DEDA: $79 $4C $40 - Add Memory to Accumulator with Carry
	ORA ($24),Y         ; $DEDD: $11 $24 $1B - OR Memory with Accumulator
	PLA                 ; $DEE1: $68 - Pull Accumulator from Stack
	AND $60             ; $DEE3: $25 $60 - AND Memory with Accumulator
	LDY $1E29           ; $DEE6: $AC $29 $1E - Load Index Y with Memory
	STY $2788           ; $DEE9: $8C $88 $27 - Sore Index Y in Memory
	ASL $31A0,X         ; $DEEC: $1E $A0 $31 - Shift Left One Bit
	ORA ($B7,X)         ; $DEEF: $01 $B7 $3D - OR Memory with Accumulator
	STY $B0,X           ; $DEF2: $94 $B0 - Sore Index Y in Memory
	LSR $ACA1,X         ; $DEF4: $5E $A1 $AC - Shift One Bit Right (Memory or Accumulator)
	BVC $4E             ; $DEF7: $50 $4E - Branch on Overflow Clear
	BVC $4E             ; $DEFB: $50 $4E - Branch on Overflow Clear
	EOR $86B2           ; $DEFD: $4D $B2 $86 - Exclusive-OR Memory with Accumulator
	STY $9C             ; $DF00: $84 $9C - Sore Index Y in Memory
	LSR $54,X           ; $DF02: $56 $54 - Shift One Bit Right (Memory or Accumulator)
	ASL A               ; $DF04: $0A - Shift Left One Bit
	JMP $5655           ; $DF06: $4C $55 $56 - Jump to New Location
	EOR $13,X           ; $DF09: $55 $13 - Exclusive-OR Memory with Accumulator
	BPL $10             ; $DF0B: $10 $10 - Branch on Result Plus
	LDY $AF,X           ; $DF10: $B4 $AF $7F - Load Index Y with Memory
	JMP ($4918)         ; $DF13: $6C $18 $49 - Jump to New Location
	ORA $627A,X         ; $DF16: $1D $7A $62 - OR Memory with Accumulator
	JMP ($8A12)         ; $DF1B: $6C $12 $8A - Jump to New Location
	TXA                 ; $DF1E: $8A - Transfer Index X to Accumulator
	ADC ($78,X)         ; $DF1F: $61 $78 $08 - Add Memory to Accumulator with Carry
	LDY #$A1            ; $DF22: $A0 $A1 - Load Index Y with Memory
	BPL $A2             ; $DF24: $10 $A2 - Branch on Result Plus
	LDX #$80            ; $DF28: $A2 $80 - Load Index X with Memory
	LDY #$44            ; $DF2A: $A0 $44 - Load Index Y with Memory
	ROR $A4,X           ; $DF2D: $76 $A4 - Rotate One Bit Right
	BIT $A4             ; $DF30: $24 $A4 - Test Bits in Memory with Accumulator
	LDY #$40            ; $DF33: $A0 $40 - Load Index Y with Memory
	LDY #$17            ; $DF38: $A0 $17 - Load Index Y with Memory
	LDY $3826           ; $DF3A: $AC $26 $38 - Load Index Y with Memory
	ASL A               ; $DF3F: $0A - Shift Left One Bit
	JSR $4765           ; $DF40: $20 $65 $47 - Jump to New Location Saving Return Address
	ORA ($24,X)         ; $DF43: $01 $24 $01 - OR Memory with Accumulator
	CPY $8834           ; $DF46: $CC $34 $88 - Compare Memory and Index Y
	SBC #$19            ; $DF49: $E9 $19 - Subtract Memory from Accumulator with Borrow
	STY $6B             ; $DF4B: $84 $6B - Sore Index Y in Memory
	AND ($95),Y         ; $DF4D: $31 $95 $0C - AND Memory with Accumulator
	AND ($AD),Y         ; $DF50: $31 $AD $A0 - AND Memory with Accumulator
	CLC                 ; $DF53: $18 - Clear Carry Flag
	STY $1836           ; $DF54: $8C $36 $18 - Sore Index Y in Memory
	JMP $6129           ; $DF59: $4C $29 $61 - Jump to New Location
	INY                 ; $DF5C: $C8 - Increment Index Y by One
	ADC $8D             ; $DF5D: $65 $8D - Add Memory to Accumulator with Carry
	BMI $DA             ; $DF60: $30 $DA - Branch on Result Minus
	STY $1060           ; $DF63: $8C $60 $10 - Sore Index Y in Memory
	DEC $28B6           ; $DF66: $CE $B6 $28 - Decrement Memory by One
	BVC $F0             ; $DF69: $50 $F0 - Branch on Overflow Clear
	LSR $8A             ; $DF6C: $46 $8A - Shift One Bit Right (Memory or Accumulator)
	CLC                 ; $DF6E: $18 - Clear Carry Flag
	DEC $C3,X           ; $DF6F: $D6 $C3 - Decrement Memory by One
	AND $B806,X         ; $DF71: $3D $06 $B8 - AND Memory with Accumulator
	CLC                 ; $DF74: $18 - Clear Carry Flag
	ASL $94             ; $DF78: $06 $94 - Shift Left One Bit
	AND ($22),Y         ; $DF7A: $31 $22 $34 - AND Memory with Accumulator
	BNE $C3             ; $DF7D: $D0 $C3 - Branch on Result not Zero
	ORA $7485,Y         ; $DF7F: $19 $85 $74 - OR Memory with Accumulator
	BMI $C4             ; $DF82: $30 $C4 - Branch on Result Minus
	JSR $9463           ; $DF86: $20 $63 $94 - Jump to New Location Saving Return Address
	RTI                 ; $DF8C: $40 - Return from Interrupt
	SEI                 ; $DF8D: $78 - Set Interrupt Disable Status
	ASL $0E,X           ; $DF8E: $16 $0E - Shift Left One Bit
	ADC ($78,X)         ; $DF90: $61 $78 $7A - Add Memory to Accumulator with Carry
	RTS                 ; $DF93: $60 - Return from Subroutine
	ADC $AA12,Y         ; $DF94: $79 $12 $AA - Add Memory to Accumulator with Carry
	ASL $13             ; $DF97: $06 $13 - Shift Left One Bit
	ASL $8AB2           ; $DF99: $0E $B2 $8A - Shift Left One Bit
	ADC ($62,X)         ; $DF9C: $61 $62 $20 - Add Memory to Accumulator with Carry
	ADC #$B8            ; $DF9F: $69 $B8 - Add Memory to Accumulator with Carry
	TAX                 ; $DFA1: $AA - Transfer Accumulator to Index X
	PLP                 ; $DFA2: $28 - Pull Processor Status from Stack
	STA $888A           ; $DFA3: $8D $8A $88 - Store Accumulator in Memory
	EOR $B420           ; $DFA7: $4D $20 $B4 - Exclusive-OR Memory with Accumulator
	ASL $1014           ; $DFAD: $0E $14 $10 - Shift Left One Bit
	TAX                 ; $DFB0: $AA - Transfer Accumulator to Index X
	LDA $804C           ; $DFB1: $AD $4C $80 - Load Accumulator with Memory
	SEI                 ; $DFBA: $78 - Set Interrupt Disable Status
	STX $728E           ; $DFBB: $8E $8E $72 - Store Index X in Memory
	JMP $6128           ; $DFBE: $4C $28 $61 - Jump to New Location
	SEI                 ; $DFC1: $78 - Set Interrupt Disable Status
	CLV                 ; $DFC2: $B8 - Clear Overflow Flag
	EOR $B564           ; $DFC3: $4D $64 $B5 - Exclusive-OR Memory with Accumulator
	BPL $4C             ; $DFC6: $10 $4C - Branch on Result Plus
	CLV                 ; $DFCB: $B8 - Clear Overflow Flag
	ADC #$AA            ; $DFCD: $69 $AA - Add Memory to Accumulator with Carry
	RTS                 ; $DFCF: $60 - Return from Subroutine
	ADC $80BB           ; $DFD0: $6D $BB $80 - Add Memory to Accumulator with Carry
	TYA                 ; $DFD3: $98 - Transfer Index Y to Accumulator
	PLP                 ; $DFD8: $28 - Pull Processor Status from Stack
	RTS                 ; $DFD9: $60 - Return from Subroutine
	SEI                 ; $DFDA: $78 - Set Interrupt Disable Status
	ORA ($3E,X)         ; $DFDB: $01 $3E $72 - OR Memory with Accumulator
	RTS                 ; $DFE0: $60 - Return from Subroutine
	SEI                 ; $DFE1: $78 - Set Interrupt Disable Status
	PHP                 ; $DFE2: $08 - Push Processor Status on Stack
	ROR $0878,X         ; $DFE3: $7E $78 $08 - Rotate One Bit Right
	PLA                 ; $DFE8: $68 - Pull Accumulator from Stack
	TAY                 ; $DFED: $A8 - Transfer Accumulator to Index Y
	LDY $1C             ; $DFEE: $A4 $1C - Load Index Y with Memory
	BRK                 ; $DFF2: $00 - Force Break
	ASL A               ; $DFF3: $0A - Shift Left One Bit
	TYA                 ; $DFF4: $98 - Transfer Index Y to Accumulator
	TXS                 ; $DFF5: $9A - Transfer Index X to Stack Register
	TXS                 ; $DFF6: $9A - Transfer Index X to Stack Register
	ROL $28             ; $DFF7: $26 $28 - Rotate One Bit Left
	JMP $B226           ; $DFFA: $4C $26 $B2 - Jump to New Location
	PLP                 ; $DFFD: $28 - Pull Processor Status from Stack
	LSR A               ; $DFFE: $4A $A6 - Shift One Bit Right (Memory or Accumulator)
	LDX #$00            ; $E000: $A2 $00 - Load Index X with Memory
	LDY $A0             ; $E003: $A4 $A0 - Load Index Y with Memory
	BMI $58             ; $E005: $30 $58 - Branch on Result Minus
	LDY $583C,X         ; $E007: $BC $3C $58 - Load Index Y with Memory
	TAY                 ; $E00A: $A8 - Transfer Accumulator to Index Y
	TAY                 ; $E00D: $A8 - Transfer Accumulator to Index Y
	BRK                 ; $E00F: $00 - Force Break
	LDY #$A1            ; $E010: $A0 $A1 - Load Index Y with Memory
	BVS $10             ; $E012: $70 $10 - Branch on Overflow Set
	LDY #$20            ; $E014: $A0 $20 - Load Index Y with Memory
	LDY $42,X           ; $E016: $B4 $42 $A3 - Load Index Y with Memory
	ORA ($4D,X)         ; $E01B: $01 $4D $AF - OR Memory with Accumulator
	ORA $4F             ; $E01E: $05 $4F - OR Memory with Accumulator
	BMI $A3             ; $E021: $30 $A3 - Branch on Result Minus
	BRK                 ; $E024: $00 - Force Break
	SEC                 ; $E025: $38 - Set Carry Flag
	ASL A               ; $E028: $0A - Shift Left One Bit
	ROL $5948           ; $E029: $2E $48 $59 - Rotate One Bit Left
	ORA $30,X           ; $E02C: $15 $30 - OR Memory with Accumulator
	ORA ($A0,X)         ; $E02E: $01 $A0 $E2 - OR Memory with Accumulator
	LSR $61             ; $E032: $46 $61 - Shift One Bit Right (Memory or Accumulator)
	EOR $E300           ; $E034: $4D $00 $E3 - Exclusive-OR Memory with Accumulator
	CPY #$88            ; $E038: $C0 $88 - Compare Memory and Index Y
	PLA                 ; $E03A: $68 - Pull Accumulator from Stack
	STA ($11,X)         ; $E03B: $81 $11 $10 - Store Accumulator in Memory
	LDX $11A1           ; $E03E: $AE $A1 $11 - Load Index X with Memory
	LDA ($E2,X)         ; $E041: $A1 $E2 $74 - Load Accumulator with Memory
	LDA ($86),Y         ; $E044: $B1 $86 $87 - Load Accumulator with Memory
	SBC ($D5,X)         ; $E048: $E1 $D5 $BC - Subtract Memory from Accumulator with Borrow
	STX $5D,Y           ; $E04D: $96 $5D - Store Index X in Memory
	STA ($42),Y         ; $E04F: $91 $42 $96 - Store Accumulator in Memory
	PLP                 ; $E053: $28 - Pull Processor Status from Stack
	AND ($38,X)         ; $E056: $21 $38 $81 - AND Memory with Accumulator
	LDA ($62,X)         ; $E059: $A1 $62 $88 - Load Accumulator with Memory
	ADC ($00,X)         ; $E05D: $61 $00 $5E - Add Memory to Accumulator with Carry
	CLC #$0A            ; $E061: $29 $0A - Clear Carry Flag
	ORA ($09,X)         ; $E063: $01 $09 $15 - OR Memory with Accumulator
	CPX $714E           ; $E066: $EC $4E $71 - Compare Memory and Index X
	ROR $B882           ; $E06A: $6E $82 $B8 - Rotate One Bit Right
	BCC $45             ; $E06D: $90 $45 - Branch on Carry Clear
	LDA $904C,Y         ; $E06F: $B9 $4C $90 - Load Accumulator with Memory
	INC $4840           ; $E072: $EE $40 $48 - Increment Memory by One
	CLV                 ; $E075: $B8 - Clear Overflow Flag
	PHA                 ; $E076: $48 - Push Accumulator on Stack
	CLV                 ; $E077: $B8 - Clear Overflow Flag
	STY $8E             ; $E079: $84 $8E - Sore Index Y in Memory
	STY $BA06           ; $E07B: $8C $06 $BA - Sore Index Y in Memory
	DEY                 ; $E07E: $88 - Decrement Index Y by One
	BVC $96             ; $E07F: $50 $96 - Branch on Overflow Clear
	ROR $52             ; $E081: $66 $52 - Rotate One Bit Right
	ASL A               ; $E083: $0A - Shift Left One Bit
	ROR $B8,X           ; $E084: $76 $B8 - Rotate One Bit Right
	BVC $4C             ; $E087: $50 $4C - Branch on Overflow Clear
	STY $0A6C           ; $E089: $8C $6C $0A - Sore Index Y in Memory
	RTS                 ; $E08C: $60 - Return from Subroutine
	PHA                 ; $E08F: $48 - Push Accumulator on Stack
	LSR A               ; $E091: $4A $88 - Shift One Bit Right (Memory or Accumulator)
	STX $49,Y           ; $E093: $96 $49 - Store Index X in Memory
	LDA $8E,X           ; $E09A: $B5 $8E $BA - Load Accumulator with Memory
	LDA $7649,Y         ; $E09D: $B9 $49 $76 - Load Accumulator with Memory
	TSX                 ; $E0A3: $BA - Transfer Stack Pointer to Index X
	CLV                 ; $E0A9: $B8 - Clear Overflow Flag
	EOR #$A0            ; $E0AA: $49 $A0 - Exclusive-OR Memory with Accumulator
	RTS                 ; $E0AD: $60 - Return from Subroutine
	LDX #$0A            ; $E0B0: $A2 $0A - Load Index X with Memory
	LDX #$88            ; $E0B3: $A2 $88 - Load Index X with Memory
	BCS $77             ; $E0B7: $B0 $77 - Branch on Carry Set
	LDA $546C,Y         ; $E0B9: $B9 $6C $54 - Load Accumulator with Memory
	DEY                 ; $E0BE: $88 - Decrement Index Y by One
	LDY #$55            ; $E0BF: $A0 $55 - Load Index Y with Memory
	LDA $A248,Y         ; $E0C1: $B9 $48 $A2 - Load Accumulator with Memory
	LDA ($89,X)         ; $E0C4: $A1 $89 $72 - Load Accumulator with Memory
	TSX                 ; $E0C7: $BA - Transfer Stack Pointer to Index X
	LDA $56A0,Y         ; $E0C9: $B9 $A0 $56 - Load Accumulator with Memory
	STA $A2AB           ; $E0CC: $8D $AB $A2 - Store Accumulator in Memory
	LDY #$4B            ; $E0CF: $A0 $4B - Load Index Y with Memory
	ROR $A2             ; $E0D2: $66 $A2 - Rotate One Bit Right
	STY $8F             ; $E0D4: $84 $8F - Sore Index Y in Memory
	PHA                 ; $E0D6: $48 - Push Accumulator on Stack
	ADC $89             ; $E0DA: $65 $89 - Add Memory to Accumulator with Carry
	BVS $71             ; $E0DD: $70 $71 - Branch on Overflow Set
	ADC ($63),Y         ; $E0DF: $71 $63 $64 - Add Memory to Accumulator with Carry
	ADC $5C             ; $E0E3: $65 $5C - Add Memory to Accumulator with Carry
	ROR $76,X           ; $E0E5: $76 $76 - Rotate One Bit Right
	ADC $80             ; $E0EB: $65 $80 - Add Memory to Accumulator with Carry
	ROR $80             ; $E0ED: $66 $80 - Rotate One Bit Right
	ASL A               ; $E0EF: $0A - Shift Left One Bit
	PHA                 ; $E0F0: $48 - Push Accumulator on Stack
	CLV                 ; $E0F1: $B8 - Clear Overflow Flag
	PHA                 ; $E0F2: $48 - Push Accumulator on Stack
	CLV                 ; $E0F3: $B8 - Clear Overflow Flag
	BCC $92             ; $E0F5: $90 $92 - Branch on Carry Clear
	BMI $E2             ; $E0F7: $30 $E2 - Branch on Result Minus
	JSR $32C0           ; $E0F9: $20 $C0 $32 - Jump to New Location Saving Return Address
	AND ($30),Y         ; $E0FD: $31 $30 $30 - AND Memory with Accumulator
	BPL $22             ; $E101: $10 $22 - Branch on Result Plus
	BMI $35             ; $E103: $30 $35 - Branch on Result Minus
	BNE $94             ; $E105: $D0 $94 - Branch on Result not Zero
	BMI $B0             ; $E107: $30 $B0 - Branch on Result Minus
	BCS $30             ; $E10A: $B0 $30 - Branch on Carry Set
	BMI $10             ; $E10C: $30 $10 - Branch on Result Minus
	JSR $30F2           ; $E10F: $20 $F2 $30 - Jump to New Location Saving Return Address
	LDA ($D0,X)         ; $E112: $A1 $D0 $60 - Load Accumulator with Memory
	BMI $20             ; $E115: $30 $20 - Branch on Result Minus
	RTI                 ; $E117: $40 - Return from Interrupt
	BCS $31             ; $E118: $B0 $31 - Branch on Carry Set
	BCC $B2             ; $E11A: $90 $B2 - Branch on Carry Clear
	CPY #$50            ; $E11C: $C0 $50 - Compare Memory and Index Y
	LDA ($E0),Y         ; $E11F: $B1 $E0 $30 - Load Accumulator with Memory
	BVC $C0             ; $E122: $50 $C0 - Branch on Overflow Clear
	CPY #$C1            ; $E124: $C0 $C1 - Compare Memory and Index Y
	LDY #$20            ; $E126: $A0 $20 - Load Index Y with Memory
	CPX #$C0            ; $E129: $E0 $C0 - Compare Memory and Index Y
	RTI                 ; $E12B: $40 - Return from Interrupt
	AND ($60,X)         ; $E12C: $21 $60 $D1 - AND Memory with Accumulator
	AND $24             ; $E12F: $25 $24 - AND Memory with Accumulator
	AND ($34,X)         ; $E132: $21 $34 $38 - AND Memory with Accumulator
	STY $0F             ; $E137: $84 $0F - Sore Index Y in Memory
	RTS                 ; $E139: $60 - Return from Subroutine
	ORA #$0C            ; $E13A: $09 $0C - OR Memory with Accumulator
	ORA ($0A),Y         ; $E141: $11 $0A $9C - OR Memory with Accumulator
	DEY                 ; $E144: $88 - Decrement Index Y by One
	ASL $9C             ; $E145: $06 $9C - Shift Left One Bit
	BMI $11             ; $E147: $30 $11 - Branch on Result Minus
	TYA                 ; $E14A: $98 - Transfer Index Y to Accumulator
	TXA                 ; $E14B: $8A - Transfer Index X to Accumulator
	STY $D100           ; $E14C: $8C $00 $D1 - Sore Index Y in Memory
	AND $EB             ; $E150: $25 $EB - AND Memory with Accumulator
	ROL $2E             ; $E152: $26 $2E - Rotate One Bit Left
	STY $78,X           ; $E154: $94 $78 - Sore Index Y in Memory
	CMP $0576,Y         ; $E156: $D9 $76 $05 - Compare Memory with Accumulator
	TXS                 ; $E159: $9A - Transfer Index X to Stack Register
	AND $0502,X         ; $E15B: $3D $02 $05 - AND Memory with Accumulator
	BVS $42             ; $E15F: $70 $42 - Branch on Overflow Set
	LSR $A8,X           ; $E161: $56 $A8 - Shift One Bit Right (Memory or Accumulator)
	AND $5C,X           ; $E164: $35 $5C - AND Memory with Accumulator
	LSR $09             ; $E167: $46 $09 - Shift One Bit Right (Memory or Accumulator)
	PHP                 ; $E169: $08 - Push Processor Status on Stack
	AND ($4F,X)         ; $E16A: $21 $4F $43 - AND Memory with Accumulator
	LDX $97             ; $E16D: $A6 $97 - Load Index X with Memory
	TAX                 ; $E16F: $AA - Transfer Accumulator to Index X
	AND ($42,X)         ; $E171: $21 $42 $5A - AND Memory with Accumulator
	PLP                 ; $E174: $28 - Pull Processor Status from Stack
	ASL A               ; $E175: $0A - Shift Left One Bit
	SBC $41             ; $E176: $E5 $41 - Subtract Memory from Accumulator with Borrow
	PHA                 ; $E179: $48 - Push Accumulator on Stack
	PHP                 ; $E17A: $08 - Push Processor Status on Stack
	ROL A               ; $E17C: $2A - Rotate One Bit Left
	PLA                 ; $E17D: $68 - Pull Accumulator from Stack
	ASL A               ; $E17E: $0A - Shift Left One Bit
	BVC $1D             ; $E17F: $50 $1D - Branch on Overflow Clear
	AND $35,X           ; $E181: $35 $35 - AND Memory with Accumulator
	TSX                 ; $E183: $BA - Transfer Stack Pointer to Index X
	RTI                 ; $E185: $40 - Return from Interrupt
	ROL $1AB8           ; $E189: $2E $B8 $1A - Rotate One Bit Left
	ROR $1B1A,X         ; $E18D: $7E $1A $1B - Rotate One Bit Right
	BVS $8D             ; $E190: $70 $8D - Branch on Overflow Set
	ASL $1B             ; $E192: $06 $1B - Shift Left One Bit
	TSX                 ; $E194: $BA - Transfer Stack Pointer to Index X
	ROR $76,X           ; $E196: $76 $76 - Rotate One Bit Right
	LDA $1A6C,Y         ; $E198: $B9 $6C $1A - Load Accumulator with Memory
	EOR $5553           ; $E19D: $4D $53 $55 - Exclusive-OR Memory with Accumulator
	LDA $891A,Y         ; $E1A0: $B9 $1A $89 - Load Accumulator with Memory
	LDA ($8F,X)         ; $E1A3: $A1 $8F $8C - Load Accumulator with Memory
	EOR #$A3            ; $E1A6: $49 $A3 - Exclusive-OR Memory with Accumulator
	STY $654B           ; $E1A9: $8C $4B $65 - Sore Index Y in Memory
	ADC $18             ; $E1AC: $65 $18 - Add Memory to Accumulator with Carry
	ADC ($71),Y         ; $E1AF: $71 $71 $48 - Add Memory to Accumulator with Carry
	ADC $80             ; $E1B4: $65 $80 - Add Memory to Accumulator with Carry
	ASL A               ; $E1B6: $0A - Shift Left One Bit
	EOR #$B9            ; $E1B7: $49 $B9 - Exclusive-OR Memory with Accumulator
	PHA                 ; $E1B9: $48 - Push Accumulator on Stack
	ASL A               ; $E1BA: $0A - Shift Left One Bit
	LDA $96AE           ; $E1BC: $AD $AE $96 - Load Accumulator with Memory
	DEY                 ; $E1C0: $88 - Decrement Index Y by One
	ASL A               ; $E1C1: $0A - Shift Left One Bit
	CLV                 ; $E1C2: $B8 - Clear Overflow Flag
	STA $6C8D           ; $E1C3: $8D $8D $6C - Store Accumulator in Memory
	TYA                 ; $E1C6: $98 - Transfer Index Y to Accumulator
	TSX                 ; $E1C9: $BA - Transfer Stack Pointer to Index X
	STA ($66,X)         ; $E1CB: $81 $66 $6C - Store Accumulator in Memory
	SEI                 ; $E1CE: $78 - Set Interrupt Disable Status
	LSR $8CB4,X         ; $E1CF: $5E $B4 $8C - Shift One Bit Right (Memory or Accumulator)
	DEY                 ; $E1D2: $88 - Decrement Index Y by One
	STX $9C,Y           ; $E1D3: $96 $9C - Store Index X in Memory
	SEI                 ; $E1D6: $78 - Set Interrupt Disable Status
	ROR A               ; $E1D7: $6A - Rotate One Bit Right
	ADC $9673           ; $E1D9: $6D $73 $96 - Add Memory to Accumulator with Carry
	DEY                 ; $E1DE: $88 - Decrement Index Y by One
	STX $64,Y           ; $E1DF: $96 $64 - Store Index X in Memory
	PHA                 ; $E1E1: $48 - Push Accumulator on Stack
	STA $8D6D           ; $E1E2: $8D $6D $8D - Store Accumulator in Memory
	STY $6080           ; $E1E5: $8C $80 $60 - Sore Index Y in Memory
	CLI                 ; $E1E8: $58 - Clear Interrupt Disable Bit
	TXS                 ; $E1E9: $9A - Transfer Index X to Stack Register
	PHA                 ; $E1EA: $48 - Push Accumulator on Stack
	ASL A               ; $E1EB: $0A - Shift Left One Bit
	SEC                 ; $E1EC: $38 - Set Carry Flag
	LSR A               ; $E1EE: $4A $0A - Shift One Bit Right (Memory or Accumulator)
	ASL A               ; $E1F3: $0A - Shift Left One Bit
	TAX                 ; $E1F4: $AA - Transfer Accumulator to Index X
	ROR $6D,X           ; $E1F5: $76 $6D - Rotate One Bit Right
	JMP ($0A9C)         ; $E1F8: $6C $9C $0A - Jump to New Location
	STA $6248           ; $E1FB: $8D $48 $62 - Store Accumulator in Memory
	DEY                 ; $E200: $88 - Decrement Index Y by One
	ASL A               ; $E201: $0A - Shift Left One Bit
	ROR $80             ; $E203: $66 $80 - Rotate One Bit Right
	ASL A               ; $E205: $0A - Shift Left One Bit
	PHA                 ; $E206: $48 - Push Accumulator on Stack
	CLV                 ; $E207: $B8 - Clear Overflow Flag
	PHA                 ; $E208: $48 - Push Accumulator on Stack
	CLV                 ; $E209: $B8 - Clear Overflow Flag
	BCC $62             ; $E20B: $90 $62 - Branch on Carry Clear
	RTI                 ; $E20E: $40 - Return from Interrupt
	BEQ $30             ; $E20F: $F0 $30 - Branch on Result Zero
	AND ($F0),Y         ; $E211: $31 $F0 $B0 - AND Memory with Accumulator
	BVC $40             ; $E215: $50 $40 - Branch on Overflow Clear
	LDY #$72            ; $E218: $A0 $72 - Load Index Y with Memory
	CPY #$C1            ; $E21A: $C0 $C1 - Compare Memory and Index Y
	CPX #$E2            ; $E21C: $E0 $E2 - Compare Memory and Index Y
	CPY #$15            ; $E21E: $C0 $15 - Compare Memory and Index Y
	AND ($35),Y         ; $E220: $31 $35 $34 - AND Memory with Accumulator
	BMI $16             ; $E223: $30 $16 - Branch on Result Minus
	BMI $35             ; $E225: $30 $35 - Branch on Result Minus
	BMI $33             ; $E229: $30 $33 - Branch on Result Minus
	BCC $22             ; $E22B: $90 $22 - Branch on Carry Clear
	BNE $91             ; $E22F: $D0 $91 - Branch on Result not Zero
	ASL $C1,X           ; $E232: $16 $C1 - Shift Left One Bit
	JSR $2440           ; $E235: $20 $40 $24 - Jump to New Location Saving Return Address
	SEC                 ; $E238: $38 - Set Carry Flag
	SEC                 ; $E23B: $38 - Set Carry Flag
	ADC #$05            ; $E23C: $69 $05 - Add Memory to Accumulator with Carry
	PHA                 ; $E23E: $48 - Push Accumulator on Stack
	CLC #$C0            ; $E241: $29 $C0 - Clear Carry Flag
	BCC $10             ; $E243: $90 $10 - Branch on Carry Clear
	STX $EE,Y           ; $E245: $96 $EE - Store Index X in Memory
	CLC                 ; $E248: $18 - Clear Carry Flag
	LSR $42,X           ; $E24A: $56 $42 - Shift One Bit Right (Memory or Accumulator)
	ASL $00,X           ; $E24C: $16 $00 - Shift Left One Bit
	BIT $53             ; $E24E: $24 $53 - Test Bits in Memory with Accumulator
	STA $08,X           ; $E250: $95 $08 - Store Accumulator in Memory
	RTI                 ; $E253: $40 - Return from Interrupt
	BVS $6E             ; $E255: $70 $6E - Branch on Overflow Set
	AND $14             ; $E259: $25 $14 - AND Memory with Accumulator
	LDA $E471,Y         ; $E25C: $B9 $71 $E4 - Load Accumulator with Memory
	BIT $84             ; $E260: $24 $84 - Test Bits in Memory with Accumulator
	STX $11,Y           ; $E262: $96 $11 - Store Index X in Memory
	ORA $AC,X           ; $E264: $15 $AC - OR Memory with Accumulator
	CLV                 ; $E267: $B8 - Clear Overflow Flag
	CPY $04             ; $E26A: $C4 $04 - Compare Memory and Index Y
	JSR $9084           ; $E26C: $20 $84 $90 - Jump to New Location Saving Return Address
	LDA $2476,X         ; $E271: $BD $76 $24 - Load Accumulator with Memory
	ROR $B8,X           ; $E274: $76 $B8 - Rotate One Bit Right
	PHA                 ; $E276: $48 - Push Accumulator on Stack
	CLV                 ; $E277: $B8 - Clear Overflow Flag
	STY $8C6A           ; $E278: $8C $6A $8C - Sore Index Y in Memory
	SEI                 ; $E27B: $78 - Set Interrupt Disable Status
	ADC $8882           ; $E27C: $6D $82 $88 - Add Memory to Accumulator with Carry
	ROR $76,X           ; $E280: $76 $76 - Rotate One Bit Right
	LDA $4EA7,Y         ; $E282: $B9 $A7 $4E - Load Accumulator with Memory
	STA ($6C),Y         ; $E285: $91 $6C $96 - Store Accumulator in Memory
	ADC $8066           ; $E288: $6D $66 $80 - Add Memory to Accumulator with Carry
	ASL A               ; $E28B: $0A - Shift Left One Bit
	ADC $6C72           ; $E28C: $6D $72 $6C - Add Memory to Accumulator with Carry
	ASL A               ; $E290: $0A - Shift Left One Bit
	EOR #$81            ; $E291: $49 $81 - Exclusive-OR Memory with Accumulator
	DEY                 ; $E293: $88 - Decrement Index Y by One
	ASL A               ; $E294: $0A - Shift Left One Bit
	STA $8C6B           ; $E295: $8D $6B $8C - Store Accumulator in Memory
	DEY                 ; $E29B: $88 - Decrement Index Y by One
	LDY #$76            ; $E29D: $A0 $76 - Load Index Y with Memory
	CLV                 ; $E29F: $B8 - Clear Overflow Flag
	LDX #$A2            ; $E2A0: $A2 $A2 - Load Index X with Memory
	ASL A               ; $E2A3: $0A - Shift Left One Bit
	ASL A               ; $E2A4: $0A - Shift Left One Bit
	STY $7A52           ; $E2A7: $8C $52 $7A - Sore Index Y in Memory
	DEY                 ; $E2AC: $88 - Decrement Index Y by One
	ROR $B9,X           ; $E2AD: $76 $B9 - Rotate One Bit Right
	LDY #$88            ; $E2B0: $A0 $88 - Load Index Y with Memory
	EOR #$76            ; $E2B2: $49 $76 - Exclusive-OR Memory with Accumulator
	BVS $6B             ; $E2B5: $70 $6B - Branch on Overflow Set
	STY $88A2           ; $E2B7: $8C $A2 $88 - Sore Index Y in Memory
	ASL A               ; $E2BB: $0A - Shift Left One Bit
	JMP ($7660)         ; $E2BF: $6C $60 $76 - Jump to New Location
	PHA                 ; $E2C3: $48 - Push Accumulator on Stack
	LDA ($BB),Y         ; $E2C6: $B1 $BB $0A - Load Accumulator with Memory
	PHP                 ; $E2CB: $08 - Push Processor Status on Stack
	PHA                 ; $E2CD: $48 - Push Accumulator on Stack
	CLV                 ; $E2CE: $B8 - Clear Overflow Flag
	LSR $0A             ; $E2CF: $46 $0A - Shift One Bit Right (Memory or Accumulator)
	JMP ($380A)         ; $E2D1: $6C $0A $38 - Jump to New Location
	ASL A               ; $E2D4: $0A - Shift Left One Bit
	PHA                 ; $E2D5: $48 - Push Accumulator on Stack
	CLV                 ; $E2D6: $B8 - Clear Overflow Flag
	ASL A               ; $E2D8: $0A - Shift Left One Bit
	ROR $421A,X         ; $E2D9: $7E $1A $42 - Rotate One Bit Right
	TAY                 ; $E2DC: $A8 - Transfer Accumulator to Index Y
	LDX ($8E),Y         ; $E2DD: $B6 $8E $48 - Load Index X with Memory
	LDY $B2             ; $E2E0: $A4 $B2 - Load Index Y with Memory
	STX $0A,Y           ; $E2E2: $96 $0A - Store Index X in Memory
	STY $9A,X           ; $E2E5: $94 $9A - Sore Index Y in Memory
	LDX $86             ; $E2E7: $A6 $86 - Load Index X with Memory
	BRK                 ; $E2E9: $00 - Force Break
	BRK                 ; $E2EA: $00 - Force Break
	LSR $8A             ; $E2EB: $46 $8A - Shift One Bit Right (Memory or Accumulator)
	LSR $3C             ; $E2ED: $46 $3C - Shift One Bit Right (Memory or Accumulator)
	BNE $92             ; $E2F5: $D0 $92 - Branch on Result not Zero
	BMI $15             ; $E2FA: $30 $15 - Branch on Result Minus
	BPL $24             ; $E2FC: $10 $24 - Branch on Result Plus
	STA ($11),Y         ; $E2FE: $91 $11 $20 - Store Accumulator in Memory
	BMI $C0             ; $E301: $30 $C0 - Branch on Result Minus
	CPY #$20            ; $E303: $C0 $20 - Compare Memory and Index Y
	BMI $70             ; $E306: $30 $70 - Branch on Result Minus
	STX $23,Y           ; $E308: $96 $23 - Store Index X in Memory
	BMI $B3             ; $E30B: $30 $B3 - Branch on Result Minus
	LDA ($20),Y         ; $E30D: $B1 $20 $20 - Load Accumulator with Memory
	ADC ($2F),Y         ; $E311: $71 $2F $0A - Add Memory to Accumulator with Carry
	BNE $93             ; $E314: $D0 $93 - Branch on Result not Zero
	SEC                 ; $E318: $38 - Set Carry Flag
	AND $84             ; $E31B: $25 $84 - AND Memory with Accumulator
	AND $6B             ; $E31D: $25 $6B - AND Memory with Accumulator
	STX $291B           ; $E31F: $8E $1B $29 - Store Index X in Memory
	JSR $AA00           ; $E322: $20 $00 $AA - Jump to New Location Saving Return Address
	PHP                 ; $E326: $08 - Push Processor Status on Stack
	DEY                 ; $E327: $88 - Decrement Index Y by One
	SBC ($2C,X)         ; $E329: $E1 $2C $24 - Subtract Memory from Accumulator with Borrow
	BMI $84             ; $E32C: $30 $84 - Branch on Result Minus
	TSX                 ; $E32E: $BA - Transfer Stack Pointer to Index X
	JMP $A373           ; $E330: $4C $73 $A3 - Jump to New Location
	STA $1C60,X         ; $E333: $9D $60 $1C - Store Accumulator in Memory
	ADC ($75),Y         ; $E336: $71 $75 $60 - Add Memory to Accumulator with Carry
	EOR #$48            ; $E339: $49 $48 - Exclusive-OR Memory with Accumulator
	PHA                 ; $E33B: $48 - Push Accumulator on Stack
	ASL $BA18,X         ; $E33D: $1E $18 $BA - Shift Left One Bit
	BCC $A1             ; $E341: $90 $A1 - Branch on Carry Clear
	DEC $2471           ; $E343: $CE $71 $24 - Decrement Memory by One
	BVS $14             ; $E346: $70 $14 - Branch on Overflow Set
	ROR $70             ; $E348: $66 $70 - Rotate One Bit Right
	ASL $58,X           ; $E34A: $16 $58 - Shift Left One Bit
	CLI                 ; $E34C: $58 - Clear Interrupt Disable Bit
	CLI                 ; $E34D: $58 - Clear Interrupt Disable Bit
	CLI                 ; $E34E: $58 - Clear Interrupt Disable Bit
	ADC $2A2C           ; $E34F: $6D $2C $2A - Add Memory to Accumulator with Carry
	ASL $12             ; $E353: $06 $12 - Shift Left One Bit
	ASL $6074           ; $E355: $0E $74 $60 - Shift Left One Bit
	ROL $26             ; $E358: $26 $26 - Rotate One Bit Left
	PLA                 ; $E35A: $68 - Pull Accumulator from Stack
	ROL $34,X           ; $E35B: $36 $34 - Rotate One Bit Left
	RTS                 ; $E35D: $60 - Return from Subroutine
	ROL $60             ; $E35F: $26 $60 - Rotate One Bit Left
	STX $90,Y           ; $E361: $96 $90 - Store Index X in Memory
	BPL $0E             ; $E363: $10 $0E - Branch on Result Plus
	ORA $1A,X           ; $E365: $15 $1A - OR Memory with Accumulator
	RTS                 ; $E367: $60 - Return from Subroutine
	ROL $0A3E           ; $E368: $2E $3E $0A - Rotate One Bit Left
	BPL $10             ; $E36B: $10 $10 - Branch on Result Plus
	ASL $A90A           ; $E36D: $0E $0A $A9 - Shift Left One Bit
	ADC ($21,X)         ; $E370: $61 $21 $1B - Add Memory to Accumulator with Carry
	RTS                 ; $E373: $60 - Return from Subroutine
	STY $00             ; $E374: $84 $00 - Sore Index Y in Memory
	BMI $0E             ; $E376: $30 $0E - Branch on Result Minus
	RTS                 ; $E378: $60 - Return from Subroutine
	ROL $82             ; $E37B: $26 $82 - Rotate One Bit Left
	ROL A               ; $E380: $2A - Rotate One Bit Left
	RTS                 ; $E381: $60 - Return from Subroutine
	RTS                 ; $E382: $60 - Return from Subroutine
	ASL $921C,X         ; $E383: $1E $1C $92 - Shift Left One Bit
	BCC $0E             ; $E386: $90 $0E - Branch on Carry Clear
	ROL $734D,X         ; $E38A: $3E $4D $73 - Rotate One Bit Left
	RTS                 ; $E38F: $60 - Return from Subroutine
	BVC $62             ; $E391: $50 $62 - Branch on Overflow Clear
	RTS                 ; $E397: $60 - Return from Subroutine
	ADC ($61,X)         ; $E39D: $61 $61 $88 - Add Memory to Accumulator with Carry
	STY $2A             ; $E3A0: $84 $2A - Sore Index Y in Memory
	STY $2084           ; $E3A3: $8C $84 $20 - Sore Index Y in Memory
	ROR $8254,X         ; $E3A6: $7E $54 $82 - Rotate One Bit Right
	JSR $1A96           ; $E3A9: $20 $96 $1A - Jump to New Location Saving Return Address
	AND ($60,X)         ; $E3AD: $21 $60 $1E - AND Memory with Accumulator
	STY $20             ; $E3B0: $84 $20 - Sore Index Y in Memory
	ROR $AA66,X         ; $E3B2: $7E $66 $AA - Rotate One Bit Right
	STX $24,Y           ; $E3B6: $96 $24 - Store Index X in Memory
	ORA $7C1A,X         ; $E3B9: $1D $1A $7C - OR Memory with Accumulator
	ROR $7C             ; $E3BC: $66 $7C - Rotate One Bit Right
	ORA $360C,X         ; $E3C0: $1D $0C $36 - OR Memory with Accumulator
	ADC ($60),Y         ; $E3C3: $71 $60 $60 - Add Memory to Accumulator with Carry
	ROL $921A           ; $E3C7: $2E $1A $92 - Rotate One Bit Left
	BCC $09             ; $E3CA: $90 $09 - Branch on Carry Clear
	BCC $E8             ; $E3CD: $90 $E8 - Branch on Carry Clear
	SBC ($43),Y         ; $E3D1: $F1 $43 $40 - Subtract Memory from Accumulator with Borrow
	BNE $A2             ; $E3D5: $D0 $A2 - Branch on Result not Zero
	BCC $EF             ; $E3D7: $90 $EF - Branch on Carry Clear
	BCC $2F             ; $E3DA: $90 $2F - Branch on Carry Clear
	ASL $70,X           ; $E3DF: $16 $70 - Shift Left One Bit
	ADC #$5A            ; $E3E2: $69 $5A - Add Memory to Accumulator with Carry
	CLI                 ; $E3E4: $58 - Clear Interrupt Disable Bit
	JSR $0F52           ; $E3E6: $20 $52 $0F - Jump to New Location Saving Return Address
	RTI                 ; $E3EA: $40 - Return from Interrupt
	STA $49             ; $E3EB: $85 $49 - Store Accumulator in Memory
	BIT $8CB7           ; $E3ED: $2C $B7 $8C - Test Bits in Memory with Accumulator
	CMP ($44,X)         ; $E3F3: $C1 $44 $CB - Compare Memory with Accumulator
	ROL $B9             ; $E3F6: $26 $B9 - Rotate One Bit Left
	STA ($CC),Y         ; $E3F8: $91 $CC $59 - Store Accumulator in Memory
	BMI $E8             ; $E3FB: $30 $E8 - Branch on Result Minus
	LDA ($A0,X)         ; $E3FD: $A1 $A0 $E2 - Load Accumulator with Memory
	BVS $C6             ; $E401: $70 $C6 - Branch on Overflow Set
	LDA $71,X           ; $E403: $B5 $71 $57 - Load Accumulator with Memory
	TAX                 ; $E406: $AA - Transfer Accumulator to Index X
	ROL A               ; $E407: $2A - Rotate One Bit Left
	PLP                 ; $E408: $28 - Pull Processor Status from Stack
	STA ($BC,X)         ; $E409: $81 $BC $60 - Store Accumulator in Memory
	BPL $D8             ; $E40C: $10 $D8 - Branch on Result Plus
	AND ($88),Y         ; $E40E: $31 $88 $6F - AND Memory with Accumulator
	CLC                 ; $E411: $18 - Clear Carry Flag
	TAY                 ; $E413: $A8 - Transfer Accumulator to Index Y
	CLC                 ; $E414: $18 - Clear Carry Flag
	STA $73             ; $E415: $85 $73 - Store Accumulator in Memory
	PLA                 ; $E417: $68 - Pull Accumulator from Stack
	CLD                 ; $E418: $D8 - Clear Decimal Mode
	CMP ($81,X)         ; $E41B: $C1 $81 $43 - Compare Memory with Accumulator
	CPY #$E5            ; $E41E: $C0 $E5 - Compare Memory and Index Y
	DEC $D4             ; $E421: $C6 $D4 - Decrement Memory by One
	BRK                 ; $E424: $00 - Force Break
	ORA $4C,X           ; $E425: $15 $4C - OR Memory with Accumulator
	ADC #$71            ; $E428: $69 $71 - Add Memory to Accumulator with Carry
	ADC ($A1,X)         ; $E42B: $61 $A1 $98 - Add Memory to Accumulator with Carry
	CPY $C2             ; $E42F: $C4 $C2 - Compare Memory and Index Y
	TXA                 ; $E432: $8A - Transfer Index X to Accumulator
	ASL A               ; $E433: $0A - Shift Left One Bit
	CMP ($48,X)         ; $E434: $C1 $48 $00 - Compare Memory with Accumulator
	AND $49,X           ; $E439: $35 $49 - AND Memory with Accumulator
	ROR $7E9A,X         ; $E43D: $7E $9A $7E - Rotate One Bit Right
	TXS                 ; $E440: $9A - Transfer Index X to Stack Register
	STX $91,Y           ; $E441: $96 $91 - Store Index X in Memory
	STX $90,Y           ; $E443: $96 $90 - Store Index X in Memory
	ASL $67             ; $E445: $06 $67 - Shift Left One Bit
	ASL $14,X           ; $E447: $16 $14 - Shift Left One Bit
	RTS                 ; $E449: $60 - Return from Subroutine
	AND $70,X           ; $E44A: $35 $70 - AND Memory with Accumulator
	LSR $1314,X         ; $E44C: $5E $14 $13 - Shift One Bit Right (Memory or Accumulator)
	ROR $12             ; $E44F: $66 $12 - Rotate One Bit Right
	ADC ($21,X)         ; $E451: $61 $21 $60 - Add Memory to Accumulator with Carry
	ADC ($10,X)         ; $E454: $61 $10 $82 - Add Memory to Accumulator with Carry
	ASL A               ; $E458: $0A - Shift Left One Bit
	AND ($AB,X)         ; $E45B: $21 $AB $82 - AND Memory with Accumulator
	ASL $1A2E           ; $E45F: $0E $2E $1A - Shift Left One Bit
	AND ($A9,X)         ; $E462: $21 $A9 $61 - AND Memory with Accumulator
	ASL $2432           ; $E467: $0E $32 $24 - Shift Left One Bit
	BVS $60             ; $E46A: $70 $60 - Branch on Overflow Set
	ROL $6688           ; $E46C: $2E $88 $66 - Rotate One Bit Left
	BRK                 ; $E46F: $00 - Force Break
	LSR $8C             ; $E470: $46 $8C - Shift One Bit Right (Memory or Accumulator)
	ROL $009E           ; $E472: $2E $9E $00 - Rotate One Bit Left
	JSR $607A           ; $E47A: $20 $7A $60 - Jump to New Location Saving Return Address
	ASL $7260           ; $E47D: $0E $60 $72 - Shift Left One Bit
	STX $1A,Y           ; $E480: $96 $1A - Store Index X in Memory
	ORA $8266           ; $E483: $0D $66 $82 - OR Memory with Accumulator
	JSR $460A           ; $E486: $20 $0A $46 - Jump to New Location Saving Return Address
	TAY                 ; $E489: $A8 - Transfer Accumulator to Index Y
	ASL A               ; $E48B: $0A - Shift Left One Bit
	RTS                 ; $E48C: $60 - Return from Subroutine
	BPL $1D             ; $E48D: $10 $1D - Branch on Result Plus
	LDA $1BAD           ; $E491: $AD $AD $1B - Load Accumulator with Memory
	LSR $5BAD,X         ; $E495: $5E $AD $5B - Shift One Bit Right (Memory or Accumulator)
	ASL $1234           ; $E499: $0E $34 $12 - Shift Left One Bit
	RTS                 ; $E49D: $60 - Return from Subroutine
	PLP                 ; $E4A0: $28 - Pull Processor Status from Stack
	ROR $36             ; $E4A3: $66 $36 - Rotate One Bit Right
	RTS                 ; $E4A5: $60 - Return from Subroutine
	JSR $1A60           ; $E4A6: $20 $60 $1A - Jump to New Location Saving Return Address
	ASL $2F14           ; $E4AB: $0E $14 $2F - Shift Left One Bit
	AND ($1A,X)         ; $E4AE: $21 $1A $71 - AND Memory with Accumulator
	AND $60,X           ; $E4B4: $35 $60 - AND Memory with Accumulator
	TAX                 ; $E4B6: $AA - Transfer Accumulator to Index X
	TAY                 ; $E4B7: $A8 - Transfer Accumulator to Index Y
	BCC $92             ; $E4BA: $90 $92 - Branch on Carry Clear
	BCC $0B             ; $E4BC: $90 $0B - Branch on Carry Clear
	JSR $10F2           ; $E4BE: $20 $F2 $10 - Jump to New Location Saving Return Address
	BCC $A0             ; $E4C1: $90 $A0 - Branch on Carry Clear
	ASL $40             ; $E4C5: $06 $40 - Shift Left One Bit
	RTI                 ; $E4C7: $40 - Return from Interrupt
	CPY #$C0            ; $E4C8: $C0 $C0 - Compare Memory and Index Y
	AND ($F0),Y         ; $E4CC: $31 $F0 $F0 - AND Memory with Accumulator
	ORA #$F0            ; $E4D2: $09 $F0 - OR Memory with Accumulator
	BPL $69             ; $E4D6: $10 $69 - Branch on Result Plus
	STY $38,X           ; $E4D8: $94 $38 - Sore Index Y in Memory
	CLC                 ; $E4DE: $18 - Clear Carry Flag
	LDY #$1A            ; $E4E0: $A0 $1A - Load Index Y with Memory
	PLP                 ; $E4E2: $28 - Pull Processor Status from Stack
	BRK                 ; $E4E3: $00 - Force Break
	ADC #$93            ; $E4E5: $69 $93 - Add Memory to Accumulator with Carry
	EOR $68,X           ; $E4E7: $55 $68 - Exclusive-OR Memory with Accumulator
	EOR #$A6            ; $E4EB: $49 $A6 - Exclusive-OR Memory with Accumulator
	EOR $503A           ; $E4ED: $4D $3A $50 - Exclusive-OR Memory with Accumulator
	AND ($E4),Y         ; $E4F1: $31 $E4 $E5 - AND Memory with Accumulator
	ASL A               ; $E4F6: $0A - Shift Left One Bit
	CMP $6CB6,X         ; $E4F7: $DD $B6 $6C - Compare Memory with Accumulator
	BVS $D4             ; $E4FB: $70 $D4 - Branch on Overflow Set
	LSR $8E,X           ; $E4FE: $56 $8E - Shift One Bit Right (Memory or Accumulator)
	AND $0A6C,X         ; $E501: $3D $6C $0A - AND Memory with Accumulator
	ROR $69             ; $E504: $66 $69 - Rotate One Bit Right
	LSR $5807           ; $E507: $4E $07 $58 - Shift One Bit Right (Memory or Accumulator)
	LDY $ADE3           ; $E50A: $AC $E3 $AD - Load Index Y with Memory
	STX $A8             ; $E50E: $86 $A8 - Store Index X in Memory
	LSR $B0,X           ; $E510: $56 $B0 - Shift One Bit Right (Memory or Accumulator)
	CMP $60             ; $E513: $C5 $60 - Compare Memory with Accumulator
	EOR $6AAC,X         ; $E515: $5D $AC $6A - Exclusive-OR Memory with Accumulator
	CMP $A6             ; $E518: $C5 $A6 - Compare Memory with Accumulator
	LDX $08             ; $E51A: $A6 $08 - Load Index X with Memory
	INC $69             ; $E51C: $E6 $69 - Increment Memory by One
	LDX $9C6E           ; $E51E: $AE $6E $9C - Load Index X with Memory
	JMP ($48AD)         ; $E522: $6C $AD $48 - Jump to New Location
	PLA                 ; $E526: $68 - Pull Accumulator from Stack
	STA ($9C,X)         ; $E527: $81 $9C $4F - Store Accumulator in Memory
	ASL $21             ; $E52A: $06 $21 - Shift Left One Bit
	TYA                 ; $E52C: $98 - Transfer Index Y to Accumulator
	STA $28,X           ; $E52D: $95 $28 - Store Accumulator in Memory
	ROR $6020           ; $E52F: $6E $20 $60 - Rotate One Bit Right
	BPL $0E             ; $E533: $10 $0E - Branch on Result Plus
	ORA $6170,X         ; $E536: $1D $70 $61 - OR Memory with Accumulator
	RTS                 ; $E539: $60 - Return from Subroutine
	ORA $4FAC,X         ; $E53A: $1D $AC $4F - OR Memory with Accumulator
	ORA $9520,X         ; $E53E: $1D $20 $95 - OR Memory with Accumulator
	TYA                 ; $E541: $98 - Transfer Index Y to Accumulator
	ORA $1F34,X         ; $E542: $1D $34 $1F - OR Memory with Accumulator
	LSR $11,X           ; $E545: $56 $11 - Shift One Bit Right (Memory or Accumulator)
	ORA ($0E),Y         ; $E547: $11 $0E $29 - OR Memory with Accumulator
	BIT $61             ; $E54A: $24 $61 - Test Bits in Memory with Accumulator
	RTS                 ; $E54C: $60 - Return from Subroutine
	ADC ($66,X)         ; $E54D: $61 $66 $60 - Add Memory to Accumulator with Carry
	ADC $7F19,X         ; $E550: $7D $19 $7F - Add Memory to Accumulator with Carry
	TXS                 ; $E553: $9A - Transfer Index X to Stack Register
	ROR $60             ; $E556: $66 $60 - Rotate One Bit Right
	STX $90,Y           ; $E558: $96 $90 - Store Index X in Memory
	BIT $48             ; $E55A: $24 $48 - Test Bits in Memory with Accumulator
	LSR A               ; $E55C: $4A $1A - Shift One Bit Right (Memory or Accumulator)
	DEY                 ; $E55E: $88 - Decrement Index Y by One
	TXA                 ; $E55F: $8A - Transfer Index X to Accumulator
	PHA                 ; $E560: $48 - Push Accumulator on Stack
	STY $A08E           ; $E562: $8C $8E $A0 - Sore Index Y in Memory
	LSR $54,X           ; $E567: $56 $54 - Shift One Bit Right (Memory or Accumulator)
	RTS                 ; $E56B: $60 - Return from Subroutine
	ASL A               ; $E56D: $0A - Shift Left One Bit
	ORA ($10),Y         ; $E570: $11 $10 $A8 - OR Memory with Accumulator
	JSR $2E70           ; $E573: $20 $70 $2E - Jump to New Location Saving Return Address
	ROL $7C72,X         ; $E577: $3E $72 $7C - Rotate One Bit Left
	ROR $009A,X         ; $E57B: $7E $9A $00 - Rotate One Bit Right
	STX $90,Y           ; $E57F: $96 $90 - Store Index X in Memory
	ORA ($1A,X)         ; $E582: $01 $1A $58 - OR Memory with Accumulator
	ASL A               ; $E586: $0A - Shift Left One Bit
	ROR $246E           ; $E58A: $6E $6E $24 - Rotate One Bit Right
	BVS $1E             ; $E58D: $70 $1E - Branch on Overflow Set
	BRK                 ; $E58F: $00 - Force Break
	ASL $300A,X         ; $E590: $1E $0A $30 - Shift Left One Bit
	BRK                 ; $E594: $00 - Force Break
	BMI $30             ; $E595: $30 $30 - Branch on Result Minus
	BRK                 ; $E597: $00 - Force Break
	ORA $0EAF           ; $E5A2: $0D $AF $0E - OR Memory with Accumulator
	STA $73A0,Y         ; $E5A5: $99 $A0 $73 - Store Accumulator in Memory
	BRK                 ; $E5AA: $00 - Force Break
	ASL $5122           ; $E5AD: $0E $22 $51 - Shift Left One Bit
	EOR $733C           ; $E5B1: $4D $3C $73 - Exclusive-OR Memory with Accumulator
	ROR $72             ; $E5B5: $66 $72 - Rotate One Bit Right
	DEC $B4,X           ; $E5B8: $D6 $B4 - Decrement Memory by One
	EOR $3A96,X         ; $E5BA: $5D $96 $3A - Exclusive-OR Memory with Accumulator
	LDY $0C,X           ; $E5BE: $B4 $0C $C9 - Load Index Y with Memory
	ROR A               ; $E5C1: $6A - Rotate One Bit Right
	ORA $6334,X         ; $E5C2: $1D $34 $63 - OR Memory with Accumulator
	DEC $2194           ; $E5C5: $CE $94 $21 - Decrement Memory by One
	BPL $55             ; $E5C8: $10 $55 - Branch on Result Plus
	ROL $03             ; $E5CB: $26 $03 - Rotate One Bit Left
	EOR $4A81,X         ; $E5CD: $5D $81 $4A - Exclusive-OR Memory with Accumulator
	ORA ($A0,X)         ; $E5D0: $01 $A0 $E4 - OR Memory with Accumulator
	CLV                 ; $E5D4: $B8 - Clear Overflow Flag
	EOR $8B32           ; $E5D6: $4D $32 $8B - Exclusive-OR Memory with Accumulator
	BCC $21             ; $E5D9: $90 $21 - Branch on Carry Clear
	BNE $D1             ; $E5DC: $D0 $D1 - Branch on Result not Zero
	CMP ($92),Y         ; $E5DE: $D1 $92 $14 - Compare Memory with Accumulator
	AND $482D,Y         ; $E5E1: $39 $2D $48 - AND Memory with Accumulator
	BCC $70             ; $E5E4: $90 $70 - Branch on Carry Clear
	LDA $C8             ; $E5E6: $A5 $C8 - Load Accumulator with Memory
	BVS $24             ; $E5E8: $70 $24 - Branch on Overflow Set
	BRK                 ; $E5EE: $00 - Force Break
	BRK                 ; $E5F0: $00 - Force Break
	PHA                 ; $E5F1: $48 - Push Accumulator on Stack
	PHA                 ; $E5F3: $48 - Push Accumulator on Stack
	BIT $48             ; $E5F5: $24 $48 - Test Bits in Memory with Accumulator
	LSR A               ; $E5F7: $4A $52 - Shift One Bit Right (Memory or Accumulator)
	ROR $22             ; $E5F9: $66 $22 - Rotate One Bit Right
	LDY $7C48           ; $E5FB: $AC $48 $7C - Load Index Y with Memory
	ROR $60             ; $E5FE: $66 $60 - Rotate One Bit Right
	ADC #$3E            ; $E601: $69 $3E - Add Memory to Accumulator with Carry
	BPL $A9             ; $E604: $10 $A9 - Branch on Result Plus
	JSR $4764           ; $E60B: $20 $64 $47 - Jump to New Location Saving Return Address
	ASL $100C           ; $E60E: $0E $0C $10 - Shift Left One Bit
	BRK                 ; $E613: $00 - Force Break
	ADC ($60,X)         ; $E614: $61 $60 $7C - Add Memory to Accumulator with Carry
	JMP ($7C00)         ; $E617: $6C $00 $7C - Jump to New Location
	ASL $9E74           ; $E61A: $0E $74 $9E - Shift Left One Bit
	BIT $AA             ; $E61D: $24 $AA - Test Bits in Memory with Accumulator
	PLA                 ; $E61F: $68 - Pull Accumulator from Stack
	PLP                 ; $E621: $28 - Pull Processor Status from Stack
	CLI                 ; $E623: $58 - Clear Interrupt Disable Bit
	RTS                 ; $E624: $60 - Return from Subroutine
	ADC $1B             ; $E627: $65 $1B - Add Memory to Accumulator with Carry
	ORA $3E1D           ; $E629: $0D $1D $3E - OR Memory with Accumulator
	BRK                 ; $E62C: $00 - Force Break
	BIT $672A           ; $E62F: $2C $2A $67 - Test Bits in Memory with Accumulator
	ADC ($2F,X)         ; $E632: $61 $2F $70 - Add Memory to Accumulator with Carry
	RTS                 ; $E635: $60 - Return from Subroutine
	JSR $5A6C           ; $E636: $20 $6C $5A - Jump to New Location Saving Return Address
	ORA ($74,X)         ; $E639: $01 $74 $20 - OR Memory with Accumulator
	ROL $6853,X         ; $E63C: $3E $53 $68 - Rotate One Bit Left
	JSR $6670           ; $E63F: $20 $70 $66 - Jump to New Location Saving Return Address
	CLC                 ; $E643: $18 - Clear Carry Flag
	LSR $04             ; $E644: $46 $04 - Shift One Bit Right (Memory or Accumulator)
	RTS                 ; $E646: $60 - Return from Subroutine
	BRK                 ; $E648: $00 - Force Break
	LSR $00             ; $E64A: $46 $00 - Shift One Bit Right (Memory or Accumulator)
	RTS                 ; $E650: $60 - Return from Subroutine
	ASL A               ; $E651: $0A - Shift Left One Bit
	BIT $5A6C           ; $E652: $2C $6C $5A - Test Bits in Memory with Accumulator
	STY $72             ; $E655: $84 $72 - Sore Index Y in Memory
	BRK                 ; $E658: $00 - Force Break
	STX $A2             ; $E659: $86 $A2 - Store Index X in Memory
	PLA                 ; $E65B: $68 - Pull Accumulator from Stack
	BRK                 ; $E65D: $00 - Force Break
	LDX $A4             ; $E65E: $A6 $A4 - Load Index X with Memory
	LSR $A6             ; $E660: $46 $A6 - Shift One Bit Right (Memory or Accumulator)
	LDY $52             ; $E662: $A4 $52 - Load Index Y with Memory
	BRK                 ; $E664: $00 - Force Break
	LDY $46             ; $E665: $A4 $46 - Load Index Y with Memory
	BRK                 ; $E667: $00 - Force Break
	BRK                 ; $E66A: $00 - Force Break
	LSR $00             ; $E66B: $46 $00 - Shift One Bit Right (Memory or Accumulator)
	ASL $0F0F           ; $E66D: $0E $0F $0F - Shift Left One Bit
	BNE $10             ; $E671: $D0 $10 - Branch on Result not Zero
	SBC ($9F,X)         ; $E673: $E1 $9F $0F - Subtract Memory from Accumulator with Borrow
	CLC                 ; $E679: $18 - Clear Carry Flag
	STA $0DA2           ; $E67A: $8D $A2 $0D - Store Accumulator in Memory
	STY $46,X           ; $E67D: $94 $46 - Sore Index Y in Memory
	LDA ($00),Y         ; $E67F: $B1 $00 $90 - Load Accumulator with Memory
	SEI                 ; $E682: $78 - Set Interrupt Disable Status
	CPY $61             ; $E684: $C4 $61 - Compare Memory and Index Y
	BPL $E0             ; $E686: $10 $E0 - Branch on Result Plus
	CMP ($07,X)         ; $E689: $C1 $07 $50 - Compare Memory with Accumulator
	EOR #$C5            ; $E68E: $49 $C5 - Exclusive-OR Memory with Accumulator
	ASL A               ; $E690: $0A - Shift Left One Bit
	LDA $91             ; $E692: $A5 $91 - Load Accumulator with Memory
	ORA ($4B),Y         ; $E694: $11 $4B $0D - OR Memory with Accumulator
	SEI                 ; $E697: $78 - Set Interrupt Disable Status
	STA ($A8,X)         ; $E698: $81 $A8 $D2 - Store Accumulator in Memory
	ASL $55             ; $E69B: $06 $55 - Shift Left One Bit
	BIT $4C15           ; $E69D: $2C $15 $4C - Test Bits in Memory with Accumulator
	STY $9099           ; $E6A3: $8C $99 $90 - Sore Index Y in Memory
	INC $9C,X           ; $E6A8: $F6 $9C - Increment Memory by One
	SBC $6B,X           ; $E6AB: $F5 $6B - Subtract Memory from Accumulator with Borrow
	EOR $8D,X           ; $E6AD: $55 $8D - Exclusive-OR Memory with Accumulator
	ADC $01             ; $E6AF: $65 $01 - Add Memory to Accumulator with Carry
	DEC $47A0           ; $E6B1: $CE $A0 $47 - Decrement Memory by One
	INY                 ; $E6B4: $C8 - Increment Index Y by One
	LDA ($92),Y         ; $E6B6: $B1 $92 $14 - Load Accumulator with Memory
	ROL $5D52           ; $E6BA: $2E $52 $5D - Rotate One Bit Left
	EOR $E69C,X         ; $E6BE: $5D $9C $E6 - Exclusive-OR Memory with Accumulator
	PHA                 ; $E6C1: $48 - Push Accumulator on Stack
	BMI $9F             ; $E6C4: $30 $9F - Branch on Result Minus
	BRK                 ; $E6C6: $00 - Force Break
	LSR $00             ; $E6C8: $46 $00 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $E6CA: $00 - Force Break
	LSR $00             ; $E6CB: $46 $00 - Shift One Bit Right (Memory or Accumulator)
	BMI $01             ; $E6CE: $30 $01 - Branch on Result Minus
	BRK                 ; $E6D0: $00 - Force Break
	BMI $46             ; $E6D1: $30 $46 - Branch on Result Minus
	BRK                 ; $E6D3: $00 - Force Break
	AND ($01),Y         ; $E6D4: $31 $01 $30 - AND Memory with Accumulator
	BRK                 ; $E6D7: $00 - Force Break
	ORA ($9F,X)         ; $E6D8: $01 $9F $00 - OR Memory with Accumulator
	LSR $30             ; $E6DC: $46 $30 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $E6DE: $00 - Force Break
	BRK                 ; $E6E1: $00 - Force Break
	ORA ($0E,X)         ; $E6E3: $01 $0E $0F - OR Memory with Accumulator
	BRK                 ; $E6E6: $00 - Force Break
	SEC                 ; $E6E7: $38 - Set Carry Flag
	BPL $CF             ; $E6E8: $10 $CF - Branch on Result Plus
	AND $5AD3,Y         ; $E6EA: $39 $D3 $5A - AND Memory with Accumulator
	CPY #$58            ; $E6ED: $C0 $58 - Compare Memory and Index Y
	PLA                 ; $E6EF: $68 - Pull Accumulator from Stack
	SEI                 ; $E6F0: $78 - Set Interrupt Disable Status
	DEY                 ; $E6F1: $88 - Decrement Index Y by One
	CLI                 ; $E6F2: $58 - Clear Interrupt Disable Bit
	PLA                 ; $E6F3: $68 - Pull Accumulator from Stack
	SEI                 ; $E6F4: $78 - Set Interrupt Disable Status
	DEY                 ; $E6F5: $88 - Decrement Index Y by One
	STA $9D9D,X         ; $E6F6: $9D $9D $9D - Store Accumulator in Memory
	STA $B5B5,X         ; $E6F9: $9D $B5 $B5 - Store Accumulator in Memory
	LDA $B5,X           ; $E6FC: $B5 $B5 $A6 - Load Accumulator with Memory
	LDY $30             ; $E6FF: $A4 $30 - Load Index Y with Memory
	ORA ($A9),Y         ; $E701: $11 $A9 $F6 - OR Memory with Accumulator
	STA $AF             ; $E704: $85 $AF - Store Accumulator in Memory
	LDA #$03            ; $E706: $A9 $03 - Load Accumulator with Memory
	STA $AE             ; $E708: $85 $AE - Store Accumulator in Memory
	LDY $E6F6,X         ; $E70A: $BC $F6 $E6 - Load Index Y with Memory
	LDA $E6EE,X         ; $E70D: $BD $EE $E6 - Load Accumulator with Memory
	JSR $F040           ; $E710: $20 $40 $F0 - Jump to New Location Saving Return Address
	JSR $D7A1           ; $E713: $20 $A1 $D7 - Jump to New Location Saving Return Address
	LDA $E4             ; $E716: $A5 $E4 - Load Accumulator with Memory
	CLC #$90            ; $E718: $29 $90 - Clear Carry Flag
	BEQ $03             ; $E71A: $F0 $03 - Branch on Result Zero
	JMP $E77C           ; $E71C: $4C $7C $E7 - Jump to New Location
	LDA $A4             ; $E71F: $A5 $A4 - Load Accumulator with Memory
	BMI $49             ; $E721: $30 $49 - Branch on Result Minus
	LDA $A4             ; $E723: $A5 $A4 - Load Accumulator with Memory
	CMP #$04            ; $E725: $C9 $04 - Compare Memory with Accumulator
	BCC $26             ; $E727: $90 $26 - Branch on Carry Clear
	LDA $E4             ; $E729: $A5 $E4 - Load Accumulator with Memory
	CLC #$08            ; $E72B: $29 $08 - Clear Carry Flag
	BEQ $0D             ; $E72D: $F0 $0D - Branch on Result Zero
	JSR $E76D           ; $E72F: $20 $6D $E7 - Jump to New Location Saving Return Address
	CMP #$09            ; $E732: $C9 $09 - Compare Memory with Accumulator
	BNE $04             ; $E734: $D0 $04 - Branch on Result not Zero
	LDA #$00            ; $E736: $A9 $00 - Load Accumulator with Memory
	STA $04,X           ; $E738: $95 $04 - Store Accumulator in Memory
	INC $04,X           ; $E73A: $F6 $04 - Increment Memory by One
	LDA $E4             ; $E73C: $A5 $E4 - Load Accumulator with Memory
	CLC #$04            ; $E73E: $29 $04 - Clear Carry Flag
	BEQ $0D             ; $E740: $F0 $0D - Branch on Result Zero
	JSR $E76D           ; $E742: $20 $6D $E7 - Jump to New Location Saving Return Address
	CMP #$02            ; $E745: $C9 $02 - Compare Memory with Accumulator
	BCS $04             ; $E747: $B0 $04 - Branch on Carry Set
	LDA #$0A            ; $E749: $A9 $0A - Load Accumulator with Memory
	STA $04,X           ; $E74B: $95 $04 - Store Accumulator in Memory
	DEC $04,X           ; $E74D: $D6 $04 - Decrement Memory by One
	LDA $E4             ; $E74F: $A5 $E4 - Load Accumulator with Memory
	LSR A               ; $E751: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	ASL A               ; $E753: $0A - Shift Left One Bit
	LDA $A4             ; $E754: $A5 $A4 - Load Accumulator with Memory
	CLC #$03            ; $E756: $29 $03 - Clear Carry Flag
	CMP #$03            ; $E758: $C9 $03 - Compare Memory with Accumulator
	BEQ $02             ; $E75A: $F0 $02 - Branch on Result Zero
	INC $A4             ; $E75C: $E6 $A4 - Increment Memory by One
	LDA $E4             ; $E75E: $A5 $E4 - Load Accumulator with Memory
	CLC #$02            ; $E760: $29 $02 - Clear Carry Flag
	BEQ $08             ; $E762: $F0 $08 - Branch on Result Zero
	LDA $A4             ; $E764: $A5 $A4 - Load Accumulator with Memory
	CLC #$03            ; $E766: $29 $03 - Clear Carry Flag
	BEQ $02             ; $E768: $F0 $02 - Branch on Result Zero
	DEC $A4             ; $E76A: $C6 $A4 - Decrement Memory by One
	RTS                 ; $E76C: $60 - Return from Subroutine
	LDA #$F9            ; $E76D: $A9 $F9 - Load Accumulator with Memory
	LDY #$E7            ; $E76F: $A0 $E7 - Load Index Y with Memory
	JSR $C527           ; $E771: $20 $27 $C5 - Jump to New Location Saving Return Address
	LDA $A4             ; $E774: $A5 $A4 - Load Accumulator with Memory
	CLC #$03            ; $E776: $29 $03 - Clear Carry Flag
	TAX                 ; $E778: $AA - Transfer Accumulator to Index X
	LDA $04,X           ; $E779: $B5 $04 $60 - Load Accumulator with Memory
	LDA $A4             ; $E77C: $A5 $A4 - Load Accumulator with Memory
	BMI $0D             ; $E77E: $30 $0D - Branch on Result Minus
	CMP #$04            ; $E780: $C9 $04 - Compare Memory with Accumulator
	BCS $21             ; $E782: $B0 $21 - Branch on Carry Set
	LDY $A4             ; $E784: $A4 $A4 - Load Index Y with Memory
	STY $03             ; $E786: $84 $03 - Sore Index Y in Memory
	LDA #$04            ; $E788: $A9 $04 - Load Accumulator with Memory
	STA $A4             ; $E78A: $85 $A4 - Store Accumulator in Memory
	RTS                 ; $E78C: $60 - Return from Subroutine
	INC $A4             ; $E78D: $E6 $A4 - Increment Memory by One
	JSR $E7F0           ; $E78F: $20 $F0 $E7 - Jump to New Location Saving Return Address
	LDX #$2A            ; $E792: $A2 $2A - Load Index X with Memory
	LDA #$2A            ; $E794: $A9 $2A - Load Accumulator with Memory
	JSR $E912           ; $E796: $20 $12 $E9 - Jump to New Location Saving Return Address
	LDY #$03            ; $E799: $A0 $03 - Load Index Y with Memory
	JSR $E9DE           ; $E79B: $20 $DE $E9 - Jump to New Location Saving Return Address
	LDA #$F9            ; $E79E: $A9 $F9 - Load Accumulator with Memory
	LDY #$E7            ; $E7A0: $A0 $E7 - Load Index Y with Memory
	JMP $C527           ; $E7A2: $4C $27 $C5 - Jump to New Location
	LDA $03             ; $E7A5: $A5 $03 - Load Accumulator with Memory
	BEQ $08             ; $E7A7: $F0 $08 - Branch on Result Zero
	LDA $E5             ; $E7A9: $A5 $E5 - Load Accumulator with Memory
	CLC #$20            ; $E7AB: $29 $20 - Clear Carry Flag
	CMP #$20            ; $E7AD: $C9 $20 - Compare Memory with Accumulator
	ROL $02             ; $E7AF: $26 $02 - Rotate One Bit Left
	JSR $F2B4           ; $E7B1: $20 $B4 $F2 - Jump to New Location Saving Return Address
	LDY #$00            ; $E7B4: $A0 $00 - Load Index Y with Memory
	LDA #$00            ; $E7B6: $A9 $00 - Load Accumulator with Memory
	STA $DA             ; $E7B8: $85 $DA - Store Accumulator in Memory
	LDX #$03            ; $E7BA: $A2 $03 - Load Index X with Memory
	LDA $04,X           ; $E7BC: $B5 $04 $D9 - Load Accumulator with Memory
	BIT $E8             ; $E7BF: $24 $E8 - Test Bits in Memory with Accumulator
	BEQ $02             ; $E7C1: $F0 $02 - Branch on Result Zero
	INC $DA             ; $E7C3: $E6 $DA - Increment Memory by One
	INY                 ; $E7C5: $C8 - Increment Index Y by One
	DEX                 ; $E7C6: $CA - Decrement Index X by One
	BPL $F3             ; $E7C7: $10 $F3 - Branch on Result Plus
	LDA $DA             ; $E7C9: $A5 $DA - Load Accumulator with Memory
	BNE $0E             ; $E7CB: $D0 $0E - Branch on Result not Zero
	LDA $E824,Y         ; $E7CD: $B9 $24 $E8 - Load Accumulator with Memory
	LSR A               ; $E7D0: $4A $66 - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $E7D3: $4A $66 - Shift One Bit Right (Memory or Accumulator)
	STA $BC             ; $E7D6: $85 $BC - Store Accumulator in Memory
	JMP $B8F0           ; $E7D8: $4C $F0 $B8 - Jump to New Location
	INY                 ; $E7DB: $C8 - Increment Index Y by One
	LDA $E824,Y         ; $E7DC: $B9 $24 $E8 - Load Accumulator with Memory
	BPL $D5             ; $E7DF: $10 $D5 - Branch on Result Plus
	LDA #$07            ; $E7E1: $A9 $07 - Load Accumulator with Memory
	JSR $980F           ; $E7E3: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $E7F0           ; $E7E6: $20 $F0 $E7 - Jump to New Location Saving Return Address
	LDA #$F9            ; $E7E9: $A9 $F9 - Load Accumulator with Memory
	LDY #$E7            ; $E7EB: $A0 $E7 - Load Index Y with Memory
	JMP $C527           ; $E7ED: $4C $27 $C5 - Jump to New Location
	LDA #$00            ; $E7F0: $A9 $00 - Load Accumulator with Memory
	LDX #$03            ; $E7F2: $A2 $03 - Load Index X with Memory
	STA $04,X           ; $E7F4: $95 $04 - Store Accumulator in Memory
	DEX                 ; $E7F6: $CA - Decrement Index X by One
	BPL $FB             ; $E7F7: $10 $FB - Branch on Result Plus
	RTS                 ; $E7F9: $60 - Return from Subroutine
	LDY #$2A            ; $E7FA: $A0 $2A - Load Index Y with Memory
	LDA #$AB            ; $E7FC: $A9 $AB - Load Accumulator with Memory
	JSR $EEDE           ; $E7FE: $20 $DE $EE - Jump to New Location Saving Return Address
	JSR $E807           ; $E801: $20 $07 $E8 - Jump to New Location Saving Return Address
	JMP $C541           ; $E804: $4C $41 $C5 - Jump to New Location
	LDX #$00            ; $E807: $A2 $00 - Load Index X with Memory
	LDA $04,X           ; $E809: $B5 $04 $D0 - Load Accumulator with Memory
	LDA #$EC            ; $E80D: $A9 $EC - Load Accumulator with Memory
	STA $2007           ; $E80F: $8D $07 $20 - Store Accumulator in Memory
	BNE $03             ; $E812: $D0 $03 - Branch on Result not Zero
	JSR $E9CD           ; $E814: $20 $CD $E9 - Jump to New Location Saving Return Address
	LDA #$00            ; $E817: $A9 $00 - Load Accumulator with Memory
	STA $2007           ; $E819: $8D $07 $20 - Store Accumulator in Memory
	INX                 ; $E81C: $E8 - Increment Index X by One
	CPX #$04            ; $E81D: $E0 $04 - Compare Memory and Index Y
	BNE $E8             ; $E81F: $D0 $E8 - Branch on Result not Zero
	JMP $C541           ; $E821: $4C $41 $C5 - Jump to New Location
	BRK                 ; $E824: $00 - Force Break
	BRK                 ; $E825: $00 - Force Break
	BRK                 ; $E826: $00 - Force Break
	BRK                 ; $E827: $00 - Force Break
	BRK                 ; $E828: $00 - Force Break
	ORA ($01,X)         ; $E829: $01 $01 $05 - OR Memory with Accumulator
	ORA ($00,X)         ; $E82C: $01 $00 $09 - OR Memory with Accumulator
	ASL $08             ; $E82F: $06 $08 - Shift Left One Bit
	ORA $04             ; $E833: $05 $04 - OR Memory with Accumulator
	ASL $03             ; $E835: $06 $03 - Shift Left One Bit
	CLC                 ; $E837: $18 - Clear Carry Flag
	ORA ($04,X)         ; $E838: $01 $04 $06 - OR Memory with Accumulator
	BIT $04             ; $E83C: $24 $04 - Test Bits in Memory with Accumulator
	ORA #$03            ; $E83E: $09 $03 - OR Memory with Accumulator
	ORA ($02,X)         ; $E840: $01 $02 $01 - OR Memory with Accumulator
	ORA ($04,X)         ; $E843: $01 $04 $06 - OR Memory with Accumulator
	ASL $0103           ; $E846: $0E $03 $01 - Shift Left One Bit
	ORA #$04            ; $E849: $09 $04 - OR Memory with Accumulator
	ASL $05             ; $E84C: $06 $05 - Shift Left One Bit
	ORA $02             ; $E84E: $05 $02 - OR Memory with Accumulator
	ROL $05             ; $E850: $26 $05 - Rotate One Bit Left
	ORA #$01            ; $E852: $09 $01 - OR Memory with Accumulator
	INX                 ; $E857: $E8 - Increment Index X by One
	ADC $E8             ; $E858: $65 $E8 - Add Memory to Accumulator with Carry
	BIT $057E           ; $E85D: $2C $7E $05 - Test Bits in Memory with Accumulator
	BPL $03             ; $E860: $10 $03 - Branch on Result Plus
	JSR $FB77           ; $E862: $20 $77 $FB - Jump to New Location Saving Return Address
	RTS                 ; $E865: $60 - Return from Subroutine
	LDA $0200,X         ; $E866: $BD $00 $02 - Load Accumulator with Memory
	STA $DB             ; $E869: $85 $DB - Store Accumulator in Memory
	JSR $87F0           ; $E86B: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $74             ; $E86E: $D0 $74 - Branch on Result not Zero
	JSR $A2B8           ; $E870: $20 $B8 $A2 - Jump to New Location Saving Return Address
	JSR $A2D2           ; $E873: $20 $D2 $A2 - Jump to New Location Saving Return Address
	BCS $6C             ; $E876: $B0 $6C - Branch on Carry Set
	LDA $0380,Y         ; $E878: $B9 $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $E87B: $29 $10 - Clear Carry Flag
	BEQ $F4             ; $E87D: $F0 $F4 - Branch on Result Zero
	LDA $BC             ; $E87F: $A5 $BC - Load Accumulator with Memory
	CMP #$05            ; $E881: $C9 $05 - Compare Memory with Accumulator
	BNE $13             ; $E883: $D0 $13 - Branch on Result not Zero
	LDA $CE             ; $E885: $A5 $CE - Load Accumulator with Memory
	CMP #$FC            ; $E887: $C9 $FC - Compare Memory with Accumulator
	BCS $0D             ; $E889: $B0 $0D - Branch on Carry Set
	JSR $E8A7           ; $E88B: $20 $A7 $E8 - Jump to New Location Saving Return Address
	LDA #$80            ; $E88E: $A9 $80 - Load Accumulator with Memory
	LDY #$78            ; $E890: $A0 $78 - Load Index Y with Memory
	LDX #$01            ; $E892: $A2 $01 - Load Index X with Memory
	JSR $8C92           ; $E894: $20 $92 $8C - Jump to New Location Saving Return Address
	RTS                 ; $E897: $60 - Return from Subroutine
	STX $DA             ; $E898: $86 $DA - Store Index X in Memory
	LDX #$04            ; $E89A: $A2 $04 - Load Index X with Memory
	LDA $0200,X         ; $E89C: $BD $00 $02 - Load Accumulator with Memory
	CMP $DB             ; $E89F: $C5 $DB - Compare Memory with Accumulator
	BNE $3B             ; $E8A1: $D0 $3B - Branch on Result not Zero
	CPX $DA             ; $E8A3: $E4 $DA - Compare Memory and Index Y
	BEQ $37             ; $E8A5: $F0 $37 - Branch on Result Zero
	LDA $0088,Y         ; $E8A7: $B9 $88 $00 - Load Accumulator with Memory
	CMP #$07            ; $E8AA: $C9 $07 - Compare Memory with Accumulator
	BEQ $2F             ; $E8AC: $F0 $2F - Branch on Result Zero
	LDA $0360,X         ; $E8AE: $BD $60 $03 - Load Accumulator with Memory
	STA $02E0,Y         ; $E8B1: $99 $E0 $02 - Store Accumulator in Memory
	LDA $4A,X           ; $E8B4: $B5 $4A $99 - Load Accumulator with Memory
	ORA $A9             ; $E8B8: $05 $A9 - OR Memory with Accumulator
	ORA $0F20,X         ; $E8BA: $1D $20 $0F - OR Memory with Accumulator
	TYA                 ; $E8BD: $98 - Transfer Index Y to Accumulator
	LDA #$07            ; $E8BE: $A9 $07 - Load Accumulator with Memory
	STA $0088,Y         ; $E8C0: $99 $88 $00 - Store Accumulator in Memory
	LDA #$10            ; $E8C3: $A9 $10 - Load Accumulator with Memory
	STA $0094,Y         ; $E8C5: $99 $94 $00 - Store Accumulator in Memory
	LDA #$00            ; $E8C8: $A9 $00 - Load Accumulator with Memory
	STA $03A0,X         ; $E8CA: $9D $A0 $03 - Store Accumulator in Memory
	STA $02A0,Y         ; $E8CD: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$80            ; $E8D0: $A9 $80 - Load Accumulator with Memory
	STA $02C0,Y         ; $E8D2: $99 $C0 $02 - Store Accumulator in Memory
	LDA $0380,Y         ; $E8D5: $B9 $80 $03 - Load Accumulator with Memory
	ORA #$20            ; $E8D8: $09 $20 - OR Memory with Accumulator
	STA $0380,Y         ; $E8DA: $99 $80 $03 - Store Accumulator in Memory
	RTS                 ; $E8DD: $60 - Return from Subroutine
	INX                 ; $E8DE: $E8 - Increment Index X by One
	CPX #$14            ; $E8DF: $E0 $14 - Compare Memory and Index Y
	BCC $B9             ; $E8E1: $90 $B9 - Branch on Carry Clear
	RTS                 ; $E8E3: $60 - Return from Subroutine
	JMP $882C           ; $E8E4: $4C $2C $88 - Jump to New Location
	INX                 ; $E8E7: $E8 - Increment Index X by One
	BEQ $E8             ; $E8E8: $F0 $E8 - Branch on Result Zero
	NOP                 ; $E8EA: $EA - No Operation
	LDA #$06            ; $E8EB: $A9 $06 - Load Accumulator with Memory
	STA $02E0,X         ; $E8ED: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $E8F0: $60 - Return from Subroutine
	LDA $02E0,X         ; $E8F1: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $E8F4: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $E8F7: $A8 - Transfer Accumulator to Index Y
	LDA $E902,Y         ; $E8F8: $B9 $02 $E9 - Load Accumulator with Memory
	JSR $CD43           ; $E8FB: $20 $43 $CD - Jump to New Location Saving Return Address
	JSR $8C68           ; $E8FE: $20 $68 $8C - Jump to New Location Saving Return Address
	RTS                 ; $E901: $60 - Return from Subroutine
	INX                 ; $E902: $E8 - Increment Index X by One
	INC $A9,X           ; $E904: $F6 $A9 - Increment Memory by One
	BIT $A2             ; $E906: $24 $A2 - Test Bits in Memory with Accumulator
	BIT $2002           ; $E909: $2C $02 $20 - Test Bits in Memory with Accumulator
	STX $2006           ; $E90C: $8E $06 $20 - Store Index X in Memory
	STA $2006           ; $E90F: $8D $06 $20 - Store Accumulator in Memory
	STX $0581           ; $E912: $8E $81 $05 - Store Index X in Memory
	STA $0580           ; $E915: $8D $80 $05 - Store Accumulator in Memory
	STX $01             ; $E918: $86 $01 - Store Index X in Memory
	STA $00             ; $E91A: $85 $00 - Store Accumulator in Memory
	RTS                 ; $E91C: $60 - Return from Subroutine
	STY $0582           ; $E91D: $8C $82 $05 - Sore Index Y in Memory
	LDA #$67            ; $E920: $A9 $67 - Load Accumulator with Memory
	LDY #$EC            ; $E922: $A0 $EC - Load Index Y with Memory
	JSR $CAA2           ; $E924: $20 $A2 $CA - Jump to New Location Saving Return Address
	JSR $CAB5           ; $E927: $20 $B5 $CA - Jump to New Location Saving Return Address
	CMP #$01            ; $E92A: $C9 $01 - Compare Memory with Accumulator
	BNE $F9             ; $E92C: $D0 $F9 - Branch on Result not Zero
	DEC $0582           ; $E92E: $CE $82 $05 - Decrement Memory by One
	BPL $F4             ; $E931: $10 $F4 - Branch on Result Plus
	RTS                 ; $E933: $60 - Return from Subroutine
	LDA #$08            ; $E934: $A9 $08 - Load Accumulator with Memory
	ROL A               ; $E936: $2A - Rotate One Bit Left
	STA $01             ; $E937: $85 $01 - Store Accumulator in Memory
	TXA                 ; $E939: $8A - Transfer Index X to Accumulator
	ASL A               ; $E93A: $0A - Shift Left One Bit
	ROL $01             ; $E93B: $26 $01 - Rotate One Bit Left
	LDX $01             ; $E93D: $A6 $01 - Load Index X with Memory
	JSR $E909           ; $E93F: $20 $09 $E9 - Jump to New Location Saving Return Address
	JSR $E91D           ; $E942: $20 $1D $E9 - Jump to New Location Saving Return Address
	LDA #$00            ; $E945: $A9 $00 - Load Accumulator with Memory
	STA $0583           ; $E947: $8D $83 $05 - Store Accumulator in Memory
	LDA #$00            ; $E94A: $A9 $00 - Load Accumulator with Memory
	STA $0584           ; $E94C: $8D $84 $05 - Store Accumulator in Memory
	JSR $CAB5           ; $E94F: $20 $B5 $CA - Jump to New Location Saving Return Address
	BEQ $1D             ; $E952: $F0 $1D - Branch on Result Zero
	TAX                 ; $E954: $AA - Transfer Accumulator to Index X
	DEX                 ; $E955: $CA - Decrement Index X by One
	BEQ $3C             ; $E956: $F0 $3C - Branch on Result Zero
	DEX                 ; $E958: $CA - Decrement Index X by One
	BEQ $0D             ; $E959: $F0 $0D - Branch on Result Zero
	DEX                 ; $E95B: $CA - Decrement Index X by One
	BNE $10             ; $E95C: $D0 $10 - Branch on Result not Zero
	JSR $E9B3           ; $E95E: $20 $B3 $E9 - Jump to New Location Saving Return Address
	BIT $04C9           ; $E961: $2C $C9 $04 - Test Bits in Memory with Accumulator
	BMI $29             ; $E964: $30 $29 - Branch on Result Minus
	BPL $E7             ; $E966: $10 $E7 - Branch on Result Plus
	JSR $CAB5           ; $E968: $20 $B5 $CA - Jump to New Location Saving Return Address
	CLC                 ; $E96B: $18 - Clear Carry Flag
	ADC #$1E            ; $E96C: $69 $1E - Add Memory to Accumulator with Carry
	CLC                 ; $E96E: $18 - Clear Carry Flag
	ADC #$D5            ; $E96F: $69 $D5 - Add Memory to Accumulator with Carry
	STA $2007           ; $E971: $8D $07 $20 - Store Accumulator in Memory
	INC $0580           ; $E974: $EE $80 $05 - Increment Memory by One
	BNE $03             ; $E977: $D0 $03 - Branch on Result not Zero
	INC $0581           ; $E979: $EE $81 $05 - Increment Memory by One
	BIT $04C9           ; $E97C: $2C $C9 $04 - Test Bits in Memory with Accumulator
	BPL $07             ; $E97F: $10 $07 - Branch on Result Plus
	TAY                 ; $E981: $A8 - Transfer Accumulator to Index Y
	BEQ $0B             ; $E982: $F0 $0B - Branch on Result Zero
	CPY #$EB            ; $E984: $C0 $EB - Compare Memory and Index Y
	BEQ $07             ; $E986: $F0 $07 - Branch on Result Zero
	DEC $0583           ; $E988: $CE $83 $05 - Decrement Memory by One
	BNE $C2             ; $E98B: $D0 $C2 - Branch on Result not Zero
	CLC                 ; $E98D: $18 - Clear Carry Flag
	RTS                 ; $E98E: $60 - Return from Subroutine
	INC $0584           ; $E98F: $EE $84 $05 - Increment Memory by One
	CLC                 ; $E992: $18 - Clear Carry Flag
	RTS                 ; $E993: $60 - Return from Subroutine
	BIT $04C9           ; $E994: $2C $C9 $04 - Test Bits in Memory with Accumulator
	BPL $0F             ; $E997: $10 $0F - Branch on Result Plus
	JSR $E905           ; $E999: $20 $05 $E9 - Jump to New Location Saving Return Address
	LDA #$00            ; $E99C: $A9 $00 - Load Accumulator with Memory
	LDX #$3C            ; $E99E: $A2 $3C - Load Index X with Memory
	STA $2007           ; $E9A0: $8D $07 $20 - Store Accumulator in Memory
	DEX                 ; $E9A3: $CA - Decrement Index X by One
	BNE $FA             ; $E9A4: $D0 $FA - Branch on Result not Zero
	CLC                 ; $E9A6: $18 - Clear Carry Flag
	RTS                 ; $E9A7: $60 - Return from Subroutine
	SEC                 ; $E9A8: $38 - Set Carry Flag
	RTS                 ; $E9A9: $60 - Return from Subroutine
	JSR $E999           ; $E9AA: $20 $99 $E9 - Jump to New Location Saving Return Address
	JMP $C541           ; $E9AD: $4C $41 $C5 - Jump to New Location
	JSR $E9B3           ; $E9B0: $20 $B3 $E9 - Jump to New Location Saving Return Address
	LDA $00             ; $E9B3: $A5 $00 - Load Accumulator with Memory
	CLC                 ; $E9B5: $18 - Clear Carry Flag
	ADC #$20            ; $E9B6: $69 $20 - Add Memory to Accumulator with Carry
	PHA                 ; $E9B8: $48 - Push Accumulator on Stack
	LDA $01             ; $E9B9: $A5 $01 - Load Accumulator with Memory
	ADC #$00            ; $E9BB: $69 $00 - Add Memory to Accumulator with Carry
	TAX                 ; $E9BD: $AA - Transfer Accumulator to Index X
	PLA                 ; $E9BE: $68 - Pull Accumulator from Stack
	JMP $E909           ; $E9BF: $4C $09 $E9 - Jump to New Location
	PHA                 ; $E9C2: $48 - Push Accumulator on Stack
	LSR A               ; $E9C3: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $E9C5: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	JSR $E9CD           ; $E9C7: $20 $CD $E9 - Jump to New Location Saving Return Address
	PLA                 ; $E9CA: $68 - Pull Accumulator from Stack
	CLC #$0F            ; $E9CB: $29 $0F - Clear Carry Flag
	CMP #$00            ; $E9CD: $C9 $00 - Compare Memory with Accumulator
	BNE $04             ; $E9CF: $D0 $04 - Branch on Result not Zero
	LDA #$DA            ; $E9D1: $A9 $DA - Load Accumulator with Memory
	BNE $03             ; $E9D3: $D0 $03 - Branch on Result not Zero
	CLC                 ; $E9D5: $18 - Clear Carry Flag
	ADC #$F6            ; $E9D6: $69 $F6 - Add Memory to Accumulator with Carry
	STA $2007           ; $E9D8: $8D $07 $20 - Store Accumulator in Memory
	RTS                 ; $E9DB: $60 - Return from Subroutine
	LDY #$01            ; $E9DC: $A0 $01 - Load Index Y with Memory
	LDX #$04            ; $E9DE: $A2 $04 - Load Index X with Memory
	BNE $02             ; $E9E0: $D0 $02 - Branch on Result not Zero
	LDX #$00            ; $E9E2: $A2 $00 - Load Index X with Memory
	STX $0585           ; $E9E4: $8E $85 $05 - Store Index X in Memory
	JSR $E91D           ; $E9E7: $20 $1D $E9 - Jump to New Location Saving Return Address
	LDA #$FD            ; $E9EA: $A9 $FD - Load Accumulator with Memory
	LDY #$E9            ; $E9EC: $A0 $E9 - Load Index Y with Memory
	JSR $C527           ; $E9EE: $20 $27 $C5 - Jump to New Location Saving Return Address
	LDX $0585           ; $E9F1: $AE $85 $05 - Load Index X with Memory
	BEQ $3E             ; $E9F4: $F0 $3E - Branch on Result Zero
	BIT $04C9           ; $E9F6: $2C $C9 $04 - Test Bits in Memory with Accumulator
	BMI $39             ; $E9F9: $30 $39 - Branch on Result Minus
	JMP $C51E           ; $E9FB: $4C $1E $C5 - Jump to New Location
	LDY $0581           ; $E9FE: $AC $81 $05 - Load Index Y with Memory
	LDA $0580           ; $EA01: $AD $80 $05 - Load Accumulator with Memory
	JSR $EEDE           ; $EA04: $20 $DE $EE - Jump to New Location Saving Return Address
	LDX $0585           ; $EA07: $AE $85 $05 - Load Index X with Memory
	BNE $0D             ; $EA0A: $D0 $0D - Branch on Result not Zero
	LDA $E9             ; $EA0C: $A5 $E9 - Load Accumulator with Memory
	CLC #$03            ; $EA0E: $29 $03 - Clear Carry Flag
	BNE $22             ; $EA10: $D0 $22 - Branch on Result not Zero
	LDA #$04            ; $EA12: $A9 $04 - Load Accumulator with Memory
	LDY #$E8            ; $EA14: $A0 $E8 - Load Index Y with Memory
	JSR $980D           ; $EA16: $20 $0D $98 - Jump to New Location Saving Return Address
	INX                 ; $EA19: $E8 - Increment Index X by One
	STX $0583           ; $EA1A: $8E $83 $05 - Store Index X in Memory
	LDA $0584           ; $EA1D: $AD $84 $05 - Load Accumulator with Memory
	BEQ $0A             ; $EA20: $F0 $0A - Branch on Result Zero
	BIT $04C9           ; $EA22: $2C $C9 $04 - Test Bits in Memory with Accumulator
	BPL $05             ; $EA25: $10 $05 - Branch on Result Plus
	LDA $04C5           ; $EA27: $AD $C5 $04 - Load Accumulator with Memory
	BEQ $08             ; $EA2A: $F0 $08 - Branch on Result Zero
	JSR $E94A           ; $EA2C: $20 $4A $E9 - Jump to New Location Saving Return Address
	BCC $03             ; $EA2F: $90 $03 - Branch on Carry Clear
	JMP $C541           ; $EA31: $4C $41 $C5 - Jump to New Location
	RTS                 ; $EA34: $60 - Return from Subroutine
	NOP                 ; $EA35: $EA - No Operation
	EOR ($EA,X)         ; $EA36: $41 $EA $38 - Exclusive-OR Memory with Accumulator
	INC $0380,X         ; $EA39: $FE $80 $03 - Increment Memory by One
	LDA #$02            ; $EA3C: $A9 $02 - Load Accumulator with Memory
	STA $02A0,X         ; $EA3E: $9D $A0 $02 - Store Accumulator in Memory
	RTS                 ; $EA41: $60 - Return from Subroutine
	JSR $A9D9           ; $EA42: $20 $D9 $A9 - Jump to New Location Saving Return Address
	JSR $A114           ; $EA45: $20 $14 $A1 - Jump to New Location Saving Return Address
	CLC #$11            ; $EA48: $29 $11 - Clear Carry Flag
	BEQ $20             ; $EA4A: $F0 $20 - Branch on Result Zero
	CMP #$01            ; $EA4C: $C9 $01 - Compare Memory with Accumulator
	BNE $03             ; $EA4E: $D0 $03 - Branch on Result not Zero
	JMP $8833           ; $EA50: $4C $33 $88 - Jump to New Location
	LDY #$01            ; $EA53: $A0 $01 - Load Index Y with Memory
	LDA $2E             ; $EA55: $A5 $2E - Load Accumulator with Memory
	STA $27             ; $EA57: $85 $27 - Store Accumulator in Memory
	LDA $2F             ; $EA59: $A5 $2F - Load Accumulator with Memory
	JSR $9A6E           ; $EA5B: $20 $6E $9A - Jump to New Location Saving Return Address
	CMP #$02            ; $EA5E: $C9 $02 - Compare Memory with Accumulator
	BNE $03             ; $EA60: $D0 $03 - Branch on Result not Zero
	JMP $CE3F           ; $EA62: $4C $3F $CE - Jump to New Location
	CMP #$03            ; $EA65: $C9 $03 - Compare Memory with Accumulator
	BNE $03             ; $EA67: $D0 $03 - Branch on Result not Zero
	JMP $CE53           ; $EA69: $4C $53 $CE - Jump to New Location
	LDA #$E6            ; $EA6C: $A9 $E6 - Load Accumulator with Memory
	BIT $6F             ; $EA6E: $24 $6F - Test Bits in Memory with Accumulator
	BVC $02             ; $EA70: $50 $02 - Branch on Overflow Clear
	LDA #$91            ; $EA72: $A9 $91 - Load Accumulator with Memory
	JMP $9F17           ; $EA74: $4C $17 $9F - Jump to New Location
	STA $A6             ; $EA77: $85 $A6 - Store Accumulator in Memory
	STY $A7             ; $EA79: $84 $A7 - Sore Index Y in Memory
	RTS                 ; $EA7B: $60 - Return from Subroutine
	LDY #$00            ; $EA7C: $A0 $00 - Load Index Y with Memory
	CLC                 ; $EA7E: $18 - Clear Carry Flag
	ADC $A6             ; $EA7F: $65 $A6 - Add Memory to Accumulator with Carry
	STA $A6             ; $EA81: $85 $A6 - Store Accumulator in Memory
	TYA                 ; $EA83: $98 - Transfer Index Y to Accumulator
	ADC $A7             ; $EA84: $65 $A7 - Add Memory to Accumulator with Carry
	STA $A7             ; $EA86: $85 $A7 - Store Accumulator in Memory
	RTS                 ; $EA88: $60 - Return from Subroutine
	SEC                 ; $EA89: $38 - Set Carry Flag
	STA $A8             ; $EA8A: $85 $A8 - Store Accumulator in Memory
	LDA $A6             ; $EA8C: $A5 $A6 - Load Accumulator with Memory
	SBC $A8             ; $EA8E: $E5 $A8 - Subtract Memory from Accumulator with Borrow
	STA $A6             ; $EA90: $85 $A6 - Store Accumulator in Memory
	BCS $02             ; $EA92: $B0 $02 - Branch on Carry Set
	DEC $A7             ; $EA94: $C6 $A7 - Decrement Memory by One
	RTS                 ; $EA96: $60 - Return from Subroutine
	STY $A8             ; $EA97: $84 $A8 - Sore Index Y in Memory
	PHA                 ; $EA99: $48 - Push Accumulator on Stack
	JSR $EA7C           ; $EA9A: $20 $7C $EA - Jump to New Location Saving Return Address
	PLA                 ; $EA9D: $68 - Pull Accumulator from Stack
	DEC $A8             ; $EA9E: $C6 $A8 - Decrement Memory by One
	BNE $F7             ; $EAA0: $D0 $F7 - Branch on Result not Zero
	RTS                 ; $EAA2: $60 - Return from Subroutine
	LDA $A7             ; $EAA3: $A5 $A7 - Load Accumulator with Memory
	SEC                 ; $EAA5: $38 - Set Carry Flag
	ROR A               ; $EAA6: $6A - Rotate One Bit Right
	STA $A9             ; $EAA7: $85 $A9 - Store Accumulator in Memory
	LDA $A6             ; $EAA9: $A5 $A6 - Load Accumulator with Memory
	ROR A               ; $EAAB: $6A - Rotate One Bit Right
	STA $A8             ; $EAAC: $85 $A8 - Store Accumulator in Memory
	LDY #$00            ; $EAAE: $A0 $00 - Load Index Y with Memory
	LDA ($A8),Y         ; $EAB0: $B1 $A8 $B0 - Load Accumulator with Memory
	ASL $4A             ; $EAB3: $06 $4A - Shift Left One Bit
	LSR A               ; $EAB5: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $EAB7: $4A $10 - Shift One Bit Right (Memory or Accumulator)
	CLC #$0F            ; $EABA: $29 $0F - Clear Carry Flag
	INC $A6             ; $EABC: $E6 $A6 - Increment Memory by One
	BNE $02             ; $EABE: $D0 $02 - Branch on Result not Zero
	INC $A7             ; $EAC0: $E6 $A7 - Increment Memory by One
	CMP #$00            ; $EAC2: $C9 $00 - Compare Memory with Accumulator
	RTS                 ; $EAC4: $60 - Return from Subroutine
	JSR $EAA3           ; $EAC5: $20 $A3 $EA - Jump to New Location Saving Return Address
	PHA                 ; $EAC8: $48 - Push Accumulator on Stack
	JSR $EAA3           ; $EAC9: $20 $A3 $EA - Jump to New Location Saving Return Address
	ASL A               ; $EACC: $0A - Shift Left One Bit
	ASL A               ; $EACD: $0A - Shift Left One Bit
	ASL A               ; $EACE: $0A - Shift Left One Bit
	ASL A               ; $EACF: $0A - Shift Left One Bit
	STA $A8             ; $EAD0: $85 $A8 - Store Accumulator in Memory
	PLA                 ; $EAD2: $68 - Pull Accumulator from Stack
	ORA $A8             ; $EAD3: $05 $A8 - OR Memory with Accumulator
	RTS                 ; $EAD5: $60 - Return from Subroutine
	JSR $EAC5           ; $EAD6: $20 $C5 $EA - Jump to New Location Saving Return Address
	PHA                 ; $EAD9: $48 - Push Accumulator on Stack
	JSR $EAA3           ; $EADA: $20 $A3 $EA - Jump to New Location Saving Return Address
	TAY                 ; $EADD: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $EADE: $68 - Pull Accumulator from Stack
	RTS                 ; $EADF: $60 - Return from Subroutine
	LDA #$91            ; $EAE0: $A9 $91 - Load Accumulator with Memory
	NOP                 ; $EAE2: $EA - No Operation
	SBC $CB             ; $EAE3: $E5 $CB - Subtract Memory from Accumulator with Borrow
	STX $9E             ; $EAE6: $86 $9E - Store Index X in Memory
	JSR $FB77           ; $EAE8: $20 $77 $FB - Jump to New Location Saving Return Address
	BRK                 ; $EAEB: $00 - Force Break
	LDA ($9C),Y         ; $EAEC: $B1 $9C $EB - Load Accumulator with Memory
	NOP                 ; $EAF0: $EA - No Operation
	INC $FC,X           ; $EAF1: $F6 $FC - Increment Memory by One
	DEC $02E0,X         ; $EAF4: $DE $E0 $02 - Decrement Memory by One
	LDA #$23            ; $EAF7: $A9 $23 - Load Accumulator with Memory
	BIT $6F             ; $EAF9: $24 $6F - Test Bits in Memory with Accumulator
	BVC $01             ; $EAFB: $50 $01 - Branch on Overflow Clear
	LSR A               ; $EAFD: $4A $9D - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $EAFF: $00 - Force Break
	BRK                 ; $EB01: $00 - Force Break
	BNE $9D             ; $EB02: $D0 $9D - Branch on Result not Zero
	JSR $8B60           ; $EB04: $20 $60 $8B - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $EB07: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $1C             ; $EB0A: $F0 $1C - Branch on Result Zero
	LDA $03F0,X         ; $EB0C: $BD $F0 $03 - Load Accumulator with Memory
	CMP #$0E            ; $EB0F: $C9 $0E - Compare Memory with Accumulator
	BNE $06             ; $EB11: $D0 $06 - Branch on Result not Zero
	JSR $EAF4           ; $EB13: $20 $F4 $EA - Jump to New Location Saving Return Address
	JMP $EB45           ; $EB16: $4C $45 $EB - Jump to New Location
	CMP #$0A            ; $EB19: $C9 $0A - Compare Memory with Accumulator
	BNE $08             ; $EB1B: $D0 $08 - Branch on Result not Zero
	JSR $8B28           ; $EB1D: $20 $28 $8B - Jump to New Location Saving Return Address
	BCC $03             ; $EB20: $90 $03 - Branch on Carry Clear
	JSR $8937           ; $EB22: $20 $37 $89 - Jump to New Location Saving Return Address
	JMP $EB45           ; $EB25: $4C $45 $EB - Jump to New Location
	LDY #$01            ; $EB28: $A0 $01 - Load Index Y with Memory
	JSR $8811           ; $EB2A: $20 $11 $88 - Jump to New Location Saving Return Address
	BNE $16             ; $EB2D: $D0 $16 - Branch on Result not Zero
	BIT $6F             ; $EB2F: $24 $6F - Test Bits in Memory with Accumulator
	BPL $0F             ; $EB31: $10 $0F - Branch on Result Plus
	DEC $0300,X         ; $EB33: $DE $00 $03 - Decrement Memory by One
	BNE $0A             ; $EB36: $D0 $0A - Branch on Result not Zero
	INC $02E0,X         ; $EB38: $FE $E0 $02 - Increment Memory by One
	LDA #$C1            ; $EB3B: $A9 $C1 - Load Accumulator with Memory
	LDY #$9D            ; $EB3D: $A0 $9D - Load Index Y with Memory
	JSR $F9FE           ; $EB3F: $20 $FE $F9 - Jump to New Location Saving Return Address
	JSR $EB48           ; $EB42: $20 $48 $EB - Jump to New Location Saving Return Address
	JMP $D8C9           ; $EB45: $4C $C9 $D8 - Jump to New Location
	JSR $A884           ; $EB48: $20 $84 $A8 - Jump to New Location Saving Return Address
	BEQ $19             ; $EB4B: $F0 $19 - Branch on Result Zero
	DEC $4A,X           ; $EB4D: $D6 $4A - Decrement Memory by One
	LDA #$FC            ; $EB4F: $A9 $FC - Load Accumulator with Memory
	LDY #$09            ; $EB51: $A0 $09 - Load Index Y with Memory
	JSR $A138           ; $EB53: $20 $38 $A1 - Jump to New Location Saving Return Address
	SEC                 ; $EB56: $38 - Set Carry Flag
	BEQ $0A             ; $EB57: $F0 $0A - Branch on Result Zero
	CLC                 ; $EB59: $18 - Clear Carry Flag
	LDA #$FC            ; $EB5A: $A9 $FC - Load Accumulator with Memory
	LDY #$00            ; $EB5C: $A0 $00 - Load Index Y with Memory
	JSR $A132           ; $EB5E: $20 $32 $A1 - Jump to New Location Saving Return Address
	BEQ $19             ; $EB61: $F0 $19 - Branch on Result Zero
	JMP $A872           ; $EB63: $4C $72 $A8 - Jump to New Location
	INC $4A,X           ; $EB66: $F6 $4A - Increment Memory by One
	LDA #$04            ; $EB68: $A9 $04 - Load Accumulator with Memory
	LDY #$09            ; $EB6A: $A0 $09 - Load Index Y with Memory
	JSR $A138           ; $EB6C: $20 $38 $A1 - Jump to New Location Saving Return Address
	SEC                 ; $EB6F: $38 - Set Carry Flag
	BEQ $F1             ; $EB70: $F0 $F1 - Branch on Result Zero
	CLC                 ; $EB72: $18 - Clear Carry Flag
	LDA #$04            ; $EB73: $A9 $04 - Load Accumulator with Memory
	LDY #$00            ; $EB75: $A0 $00 - Load Index Y with Memory
	JSR $A132           ; $EB77: $20 $32 $A1 - Jump to New Location Saving Return Address
	BNE $E7             ; $EB7A: $D0 $E7 - Branch on Result not Zero
	CLC                 ; $EB7C: $18 - Clear Carry Flag
	RTS                 ; $EB7D: $60 - Return from Subroutine
	LDA #$BB            ; $EB84: $A9 $BB - Load Accumulator with Memory
	STA $02E0,X         ; $EB86: $9D $E0 $02 - Store Accumulator in Memory
	BRK                 ; $EB89: $00 - Force Break
	BIT $05D6           ; $EB8C: $2C $D6 $05 - Test Bits in Memory with Accumulator
	BMI $5D             ; $EB8F: $30 $5D - Branch on Result Minus
	BVS $50             ; $EB91: $70 $50 - Branch on Overflow Set
	JSR $87E9           ; $EB93: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $4B             ; $EB96: $D0 $4B - Branch on Result not Zero
	JSR $EC0D           ; $EB98: $20 $0D $EC - Jump to New Location Saving Return Address
	LDA $DC             ; $EB9B: $A5 $DC - Load Accumulator with Memory
	CMP #$F5            ; $EB9D: $C9 $F5 - Compare Memory with Accumulator
	BCC $13             ; $EB9F: $90 $13 - Branch on Carry Clear
	LDA $0380,X         ; $EBA1: $BD $80 $03 - Load Accumulator with Memory
	BMI $4B             ; $EBA4: $30 $4B - Branch on Result Minus
	INC $02E0,X         ; $EBA6: $FE $E0 $02 - Increment Memory by One
	INC $02E0,X         ; $EBA9: $FE $E0 $02 - Increment Memory by One
	BPL $43             ; $EBAC: $10 $43 - Branch on Result Plus
	DEC $0360,X         ; $EBAE: $DE $60 $03 - Decrement Memory by One
	DEC $0360,X         ; $EBB1: $DE $60 $03 - Decrement Memory by One
	JSR $EBF4           ; $EBB4: $20 $F4 $EB - Jump to New Location Saving Return Address
	BCC $27             ; $EBB7: $90 $27 - Branch on Carry Clear
	LDA $0360,Y         ; $EBB9: $B9 $60 $03 - Load Accumulator with Memory
	SBC #$03            ; $EBBC: $E9 $03 - Subtract Memory from Accumulator with Borrow
	STA $0360,Y         ; $EBBE: $99 $60 $03 - Store Accumulator in Memory
	JSR $9FC9           ; $EBC1: $20 $C9 $9F - Jump to New Location Saving Return Address
	ADC $004A,Y         ; $EBC4: $79 $4A $00 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $EBC7: $99 $4A $00 - Store Accumulator in Memory
	LDA $02E0,X         ; $EBCA: $BD $E0 $02 - Load Accumulator with Memory
	EOR #$FF            ; $EBCD: $49 $FF - Exclusive-OR Memory with Accumulator
	LSR A               ; $EBCF: $4A $99 - Shift One Bit Right (Memory or Accumulator)
	CPX #$02            ; $EBD1: $E0 $02 - Compare Memory and Index Y
	LDA $0380,X         ; $EBD3: $BD $80 $03 - Load Accumulator with Memory
	ASL A               ; $EBD6: $0A - Shift Left One Bit
	LDA #$02            ; $EBD7: $A9 $02 - Load Accumulator with Memory
	BCS $02             ; $EBD9: $B0 $02 - Branch on Carry Set
	LDA #$FE            ; $EBDB: $A9 $FE - Load Accumulator with Memory
	STA $02A0,Y         ; $EBDD: $99 $A0 $02 - Store Accumulator in Memory
	JSR $8B65           ; $EBE0: $20 $65 $8B - Jump to New Location Saving Return Address
	BIT $05D6           ; $EBE3: $2C $D6 $05 - Test Bits in Memory with Accumulator
	BVC $03             ; $EBE6: $50 $03 - Branch on Overflow Clear
	JSR $FA26           ; $EBE8: $20 $26 $FA - Jump to New Location Saving Return Address
	JMP $A992           ; $EBEB: $4C $92 $A9 - Jump to New Location
	JMP $A995           ; $EBEE: $4C $95 $A9 - Jump to New Location
	JMP $8833           ; $EBF1: $4C $33 $88 - Jump to New Location
	TXA                 ; $EBF4: $8A - Transfer Index X to Accumulator
	ASL A               ; $EBF5: $0A - Shift Left One Bit
	ASL A               ; $EBF6: $0A - Shift Left One Bit
	ADC $0C             ; $EBF7: $65 $0C - Add Memory to Accumulator with Carry
	LSR A               ; $EBF9: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	BEQ $08             ; $EBFC: $F0 $08 - Branch on Result Zero
	CMP #$17            ; $EBFE: $C9 $17 - Compare Memory with Accumulator
	BEQ $04             ; $EC00: $F0 $04 - Branch on Result Zero
	CLC #$0F            ; $EC02: $29 $0F - Clear Carry Flag
	BNE $05             ; $EC04: $D0 $05 - Branch on Result not Zero
	LDA #$3C            ; $EC06: $A9 $3C - Load Accumulator with Memory
	JMP $8B2E           ; $EC08: $4C $2E $8B - Jump to New Location
	CLC                 ; $EC0B: $18 - Clear Carry Flag
	RTS                 ; $EC0C: $60 - Return from Subroutine
	JSR $8BE5           ; $EC0D: $20 $E5 $8B - Jump to New Location Saving Return Address
	STA $DC             ; $EC10: $85 $DC - Store Accumulator in Memory
	LDA $4A,X           ; $EC12: $B5 $4A $38 - Load Accumulator with Memory
	SBC #$0B            ; $EC15: $E9 $0B - Subtract Memory from Accumulator with Borrow
	STA $DA             ; $EC17: $85 $DA - Store Accumulator in Memory
	CLC                 ; $EC19: $18 - Clear Carry Flag
	ADC #$17            ; $EC1A: $69 $17 - Add Memory to Accumulator with Carry
	STA $DB             ; $EC1C: $85 $DB - Store Accumulator in Memory
	TXA                 ; $EC1E: $8A - Transfer Index X to Accumulator
	TAY                 ; $EC1F: $A8 - Transfer Accumulator to Index Y
	LDX #$03            ; $EC20: $A2 $03 - Load Index X with Memory
	LDA $0200,X         ; $EC22: $BD $00 $02 - Load Accumulator with Memory
	BEQ $3A             ; $EC25: $F0 $3A - Branch on Result Zero
	LDA $88,X           ; $EC27: $B5 $88 $C9 - Load Accumulator with Memory
	ORA #$B0            ; $EC2A: $09 $B0 - OR Memory with Accumulator
	LDA $4A,X           ; $EC2D: $B5 $4A $C5 - Load Accumulator with Memory
	BCC $2E             ; $EC31: $90 $2E - Branch on Carry Clear
	CMP $DB             ; $EC33: $C5 $DB - Compare Memory with Accumulator
	BCS $2A             ; $EC35: $B0 $2A - Branch on Carry Set
	LDA $0380,Y         ; $EC37: $B9 $80 $03 - Load Accumulator with Memory
	BMI $25             ; $EC3A: $30 $25 - Branch on Result Minus
	JSR $8BE5           ; $EC3C: $20 $E5 $8B - Jump to New Location Saving Return Address
	SBC #$06            ; $EC3F: $E9 $06 - Subtract Memory from Accumulator with Borrow
	SEC                 ; $EC41: $38 - Set Carry Flag
	SBC $DC             ; $EC42: $E5 $DC - Subtract Memory from Accumulator with Borrow
	BCS $1B             ; $EC44: $B0 $1B - Branch on Carry Set
	CMP $02E0,Y         ; $EC46: $D9 $E0 $02 - Compare Memory with Accumulator
	BCC $16             ; $EC49: $90 $16 - Branch on Carry Clear
	LDA #$88            ; $EC4B: $A9 $88 - Load Accumulator with Memory
	JSR $8BD1           ; $EC4D: $20 $D1 $8B - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $EC50: $BD $A0 $02 - Load Accumulator with Memory
	BPL $0C             ; $EC53: $10 $0C - Branch on Result Plus
	CMP #$FE            ; $EC55: $C9 $FE - Compare Memory with Accumulator
	BCS $08             ; $EC57: $B0 $08 - Branch on Carry Set
	LDA #$FE            ; $EC59: $A9 $FE - Load Accumulator with Memory
	STA $02A0,X         ; $EC5B: $9D $A0 $02 - Store Accumulator in Memory
	STA $02C0,X         ; $EC5E: $9D $C0 $02 - Store Accumulator in Memory
	DEX                 ; $EC61: $CA - Decrement Index X by One
	BPL $BE             ; $EC62: $10 $BE - Branch on Result Plus
	TYA                 ; $EC64: $98 - Transfer Index Y to Accumulator
	TAX                 ; $EC65: $AA - Transfer Accumulator to Index X
	RTS                 ; $EC66: $60 - Return from Subroutine
	PHP                 ; $EC67: $08 - Push Processor Status on Stack
	ROL A               ; $EC68: $2A - Rotate One Bit Left
	CLC                 ; $EC6A: $18 - Clear Carry Flag
	CPY #$32            ; $EC6B: $C0 $32 - Compare Memory and Index Y
	BVC $74             ; $EC6D: $50 $74 - Branch on Overflow Clear
	STY $00             ; $EC6F: $84 $00 - Sore Index Y in Memory
	CLC                 ; $EC71: $18 - Clear Carry Flag
	BRK                 ; $EC72: $00 - Force Break
	ORA ($08),Y         ; $EC73: $11 $08 $02 - OR Memory with Accumulator
	CLC #$44            ; $EC76: $29 $44 - Clear Carry Flag
	EOR ($30,X)         ; $EC78: $41 $30 $0C - Exclusive-OR Memory with Accumulator
	CLC #$EA            ; $EC7B: $29 $EA - Clear Carry Flag
	SED                 ; $EC7D: $F8 - Set Decimal Flag
	LDA ($20,X)         ; $EC7E: $A1 $20 $92 - Load Accumulator with Memory
	CLC                 ; $EC81: $18 - Clear Carry Flag
	ASL $AD             ; $EC83: $06 $AD - Shift Left One Bit
	PHP                 ; $EC86: $08 - Push Processor Status on Stack
	BRK                 ; $EC88: $00 - Force Break
	BRK                 ; $EC89: $00 - Force Break
	BRK                 ; $EC8A: $00 - Force Break
	CPY #$22            ; $EC8B: $C0 $22 - Compare Memory and Index Y
	BRK                 ; $EC8D: $00 - Force Break
	EOR $00             ; $EC8E: $45 $00 - Exclusive-OR Memory with Accumulator
	STY $1C01           ; $EC90: $8C $01 $1C - Sore Index Y in Memory
	RTS                 ; $EC93: $60 - Return from Subroutine
	BRK                 ; $EC94: $00 - Force Break
	BRK                 ; $EC95: $00 - Force Break
	BRK                 ; $EC96: $00 - Force Break
	BRK                 ; $EC97: $00 - Force Break
	ADC $41,X           ; $EC98: $75 $41 - Add Memory to Accumulator with Carry
	STA $9D82           ; $EC9A: $8D $82 $9D - Store Accumulator in Memory
	CMP ($71,X)         ; $EC9D: $C1 $71 $57 - Compare Memory with Accumulator
	CPY $81             ; $ECA0: $C4 $81 - Compare Memory and Index Y
	LDY $48             ; $ECA2: $A4 $48 - Load Index Y with Memory
	DEC $00A6,X         ; $ECA4: $DE $A6 $00 - Decrement Memory by One
	STX $8A             ; $ECA7: $86 $8A - Store Index X in Memory
	ROL A               ; $ECA9: $2A - Rotate One Bit Left
	JMP $668E           ; $ECAA: $4C $8E $66 - Jump to New Location
	JSR $0019           ; $ECAD: $20 $19 $00 - Jump to New Location Saving Return Address
	AND ($12),Y         ; $ECB0: $31 $12 $54 - AND Memory with Accumulator
	BIT $30             ; $ECB4: $24 $30 - Test Bits in Memory with Accumulator
	ROL $7088           ; $ECB7: $2E $88 $70 - Rotate One Bit Left
	CPY $AB             ; $ECBA: $C4 $AB - Compare Memory and Index Y
	LSR A               ; $ECBC: $4A $97 - Shift One Bit Right (Memory or Accumulator)
	BVS $40             ; $ECC1: $70 $40 - Branch on Overflow Set
	JSR $14C6           ; $ECC6: $20 $C6 $14 - Jump to New Location Saving Return Address
	SEC                 ; $ECCB: $38 - Set Carry Flag
	CPX #$B8            ; $ECCF: $E0 $B8 - Compare Memory and Index Y
	ROL $BD14           ; $ECD1: $2E $14 $BD - Rotate One Bit Left
	LSR $01             ; $ECD4: $46 $01 - Shift One Bit Right (Memory or Accumulator)
	DEX                 ; $ECD6: $CA - Decrement Index X by One
	LSR $01,X           ; $ECD7: $56 $01 - Shift One Bit Right (Memory or Accumulator)
	LSR $02             ; $ECD9: $46 $02 - Shift One Bit Right (Memory or Accumulator)
	BRK                 ; $ECDB: $00 - Force Break
	STA $30,X           ; $ECDC: $95 $30 - Store Accumulator in Memory
	SBC $2C,X           ; $ECE1: $F5 $2C - Subtract Memory from Accumulator with Borrow
	ADC ($34),Y         ; $ECE4: $71 $34 $A3 - Add Memory to Accumulator with Carry
	ORA ($C0),Y         ; $ECE7: $11 $C0 $EC - OR Memory with Accumulator
	ASL $A6             ; $ECEA: $06 $A6 - Shift Left One Bit
	LDX ($6C),Y         ; $ECEC: $B6 $6C $52 - Load Index X with Memory
	BNE $92             ; $ECEF: $D0 $92 - Branch on Result not Zero
	CPX #$91            ; $ECF2: $E0 $91 - Compare Memory and Index Y
	RTI                 ; $ECF4: $40 - Return from Interrupt
	STA ($0E),Y         ; $ECF6: $91 $0E $1C - Store Accumulator in Memory
	LSR $B486,X         ; $ECF9: $5E $86 $B4 - Shift One Bit Right (Memory or Accumulator)
	STA ($00),Y         ; $ECFD: $91 $00 $F4 - Store Accumulator in Memory
	ORA $61C0,X         ; $ED00: $1D $C0 $61 - OR Memory with Accumulator
	RTI                 ; $ED04: $40 - Return from Interrupt
	CPY #$B3            ; $ED05: $C0 $B3 - Compare Memory and Index Y
	CLD                 ; $ED07: $D8 - Clear Decimal Mode
	ROL A               ; $ED08: $2A - Rotate One Bit Left
	ADC $2E,X           ; $ED09: $75 $2E - Add Memory to Accumulator with Carry
	BIT $31             ; $ED0B: $24 $31 - Test Bits in Memory with Accumulator
	STA ($8C),Y         ; $ED0E: $91 $8C $35 - Store Accumulator in Memory
	CLC                 ; $ED14: $18 - Clear Carry Flag
	JMP $618C           ; $ED18: $4C $8C $61 - Jump to New Location
	STA ($67,X)         ; $ED1B: $81 $67 $B0 - Store Accumulator in Memory
	SBC ($81,X)         ; $ED20: $E1 $81 $22 - Subtract Memory from Accumulator with Borrow
	STA ($E5,X)         ; $ED23: $81 $E5 $61 - Store Accumulator in Memory
	LDY $2280,X         ; $ED28: $BC $80 $22 - Load Index Y with Memory
	ORA ($AD),Y         ; $ED2D: $11 $AD $03 - OR Memory with Accumulator
	TXA                 ; $ED30: $8A - Transfer Index X to Accumulator
	ADC #$3C            ; $ED33: $69 $3C - Add Memory to Accumulator with Carry
	BRK                 ; $ED35: $00 - Force Break
	TAY                 ; $ED37: $A8 - Transfer Accumulator to Index Y
	CPY #$89            ; $ED38: $C0 $89 - Compare Memory and Index Y
	EOR $4A80           ; $ED3B: $4D $80 $4A - Exclusive-OR Memory with Accumulator
	BRK                 ; $ED3E: $00 - Force Break
	DEY                 ; $ED3F: $88 - Decrement Index Y by One
	ORA ($30,X)         ; $ED40: $01 $30 $02 - OR Memory with Accumulator
	RTI                 ; $ED43: $40 - Return from Interrupt
	ROR A               ; $ED44: $6A - Rotate One Bit Right
	ORA $3B             ; $ED47: $05 $3B - OR Memory with Accumulator
	LDX ($00),Y         ; $ED49: $B6 $00 $BC - Load Index X with Memory
	STA $1868           ; $ED4C: $8D $68 $18 - Store Accumulator in Memory
	BPL $2A             ; $ED50: $10 $2A - Branch on Result Plus
	CLI                 ; $ED52: $58 - Clear Interrupt Disable Bit
	EOR $C8,X           ; $ED54: $55 $C8 - Exclusive-OR Memory with Accumulator
	CLC #$E4            ; $ED57: $29 $E4 - Clear Carry Flag
	LDY $8B             ; $ED5A: $A4 $8B - Load Index Y with Memory
	CLV                 ; $ED61: $B8 - Clear Overflow Flag
	CPY $62E0           ; $ED64: $CC $E0 $62 - Compare Memory and Index Y
	BIT $43             ; $ED67: $24 $43 - Test Bits in Memory with Accumulator
	BRK                 ; $ED69: $00 - Force Break
	CPY $48             ; $ED6A: $C4 $48 - Compare Memory and Index Y
	LSR A               ; $ED6D: $4A $01 - Shift One Bit Right (Memory or Accumulator)
	AND $01             ; $ED6F: $25 $01 - AND Memory with Accumulator
	STA ($A2),Y         ; $ED71: $91 $A2 $0C - Store Accumulator in Memory
	ADC #$79            ; $ED74: $69 $79 - Add Memory to Accumulator with Carry
	BVS $74             ; $ED77: $70 $74 - Branch on Overflow Set
	STA $882E           ; $ED79: $8D $2E $88 - Store Accumulator in Memory
	CPX #$54            ; $ED7C: $E0 $54 - Compare Memory and Index Y
	NOP                 ; $ED7E: $EA - No Operation
	PHA                 ; $ED80: $48 - Push Accumulator on Stack
	ASL $34             ; $ED85: $06 $34 - Shift Left One Bit
	LDY $7180,X         ; $ED87: $BC $80 $71 - Load Index Y with Memory
	CLC                 ; $ED8A: $18 - Clear Carry Flag
	EOR $82,X           ; $ED8B: $55 $82 - Exclusive-OR Memory with Accumulator
	STA $3A             ; $ED8D: $85 $3A - Store Accumulator in Memory
	LSR $1843           ; $ED8F: $4E $43 $18 - Shift One Bit Right (Memory or Accumulator)
	CLC #$7A            ; $ED92: $29 $7A - Clear Carry Flag
	STA $38             ; $ED97: $85 $38 - Store Accumulator in Memory
	LSR $5A,X           ; $ED9A: $56 $5A - Shift One Bit Right (Memory or Accumulator)
	LDA $9225           ; $ED9C: $AD $25 $92 - Load Accumulator with Memory
	LDA $C8             ; $ED9F: $A5 $C8 - Load Accumulator with Memory
	PLA                 ; $EDA1: $68 - Pull Accumulator from Stack
	STX $2444           ; $EDA3: $8E $44 $24 - Store Index X in Memory
	PHP                 ; $EDA8: $08 - Push Processor Status on Stack
	BRK                 ; $EDA9: $00 - Force Break
	CPY #$B3            ; $EDAA: $C0 $B3 - Compare Memory and Index Y
	ORA ($C8,X)         ; $EDAC: $01 $C8 $6B - OR Memory with Accumulator
	LSR $64             ; $EDAF: $46 $64 - Shift One Bit Right (Memory or Accumulator)
	BVS $18             ; $EDB1: $70 $18 - Branch on Overflow Set
	RTI                 ; $EDB3: $40 - Return from Interrupt
	RTI                 ; $EDB4: $40 - Return from Interrupt
	ASL $B241           ; $EDB7: $0E $41 $B2 - Shift Left One Bit
	BRK                 ; $EDBA: $00 - Force Break
	ADC $722C,Y         ; $EDBB: $79 $2C $72 - Add Memory to Accumulator with Carry
	CPX $01             ; $EDBE: $E4 $01 - Compare Memory and Index Y
	CMP ($1A,X)         ; $EDC0: $C1 $1A $D0 - Compare Memory with Accumulator
	ROL $4C,X           ; $EDC4: $36 $4C - Rotate One Bit Left
	BNE $DB             ; $EDC6: $D0 $DB - Branch on Result not Zero
	ROL $00,X           ; $EDC8: $36 $00 - Rotate One Bit Left
	BVC $30             ; $EDCA: $50 $30 - Branch on Overflow Clear
	EOR $A4             ; $EDCC: $45 $A4 - Exclusive-OR Memory with Accumulator
	CLC #$C0            ; $EDCF: $29 $C0 - Clear Carry Flag
	ORA $2B27,Y         ; $EDD2: $19 $27 $2B - OR Memory with Accumulator
	LDY $800C           ; $EDD7: $AC $0C $80 - Load Index Y with Memory
	STA $80             ; $EDDB: $85 $80 - Store Accumulator in Memory
	AND ($44),Y         ; $EDDD: $31 $44 $CC - AND Memory with Accumulator
	RTI                 ; $EDE0: $40 - Return from Interrupt
	RTI                 ; $EDE1: $40 - Return from Interrupt
	ORA ($64,X)         ; $EDE6: $01 $64 $B6 - OR Memory with Accumulator
	DEY                 ; $EDE9: $88 - Decrement Index Y by One
	ADC ($A5),Y         ; $EDEA: $71 $A5 $1E - Add Memory to Accumulator with Carry
	JSR $4018           ; $EDED: $20 $18 $40 - Jump to New Location Saving Return Address
	ASL $69,X           ; $EDF0: $16 $69 - Shift Left One Bit
	ORA $0A             ; $EDF2: $05 $0A - OR Memory with Accumulator
	BVS $5E             ; $EDF4: $70 $5E - Branch on Overflow Set
	SBC $2D             ; $EDF6: $E5 $2D - Subtract Memory from Accumulator with Borrow
	BRK                 ; $EDF8: $00 - Force Break
	ORA $3044,X         ; $EDFA: $1D $44 $30 - OR Memory with Accumulator
	BPL $B7             ; $EDFD: $10 $B7 - Branch on Result Plus
	ORA ($51,X)         ; $EDFF: $01 $51 $20 - OR Memory with Accumulator
	AND ($80,X)         ; $EE04: $21 $80 $81 - AND Memory with Accumulator
	BPL $F0             ; $EE07: $10 $F0 - Branch on Result Plus
	ORA $88             ; $EE09: $05 $88 - OR Memory with Accumulator
	SBC $18,X           ; $EE0D: $F5 $18 - Subtract Memory from Accumulator with Borrow
	ASL $21             ; $EE0F: $06 $21 - Shift Left One Bit
	RTI                 ; $EE12: $40 - Return from Interrupt
	JSR $40C0           ; $EE13: $20 $C0 $40 - Jump to New Location Saving Return Address
	INX                 ; $EE16: $E8 - Increment Index X by One
	ADC $11,X           ; $EE17: $75 $11 - Add Memory to Accumulator with Carry
	ROR $60B3           ; $EE19: $6E $B3 $60 - Rotate One Bit Right
	CPY $EC52           ; $EE1E: $CC $52 $EC - Compare Memory and Index Y
	ORA #$7A            ; $EE23: $09 $7A - OR Memory with Accumulator
	BRK                 ; $EE26: $00 - Force Break
	CPY #$B3            ; $EE27: $C0 $B3 - Compare Memory and Index Y
	INY                 ; $EE2A: $C8 - Increment Index Y by One
	ORA ($25,X)         ; $EE2C: $01 $25 $01 - OR Memory with Accumulator
	TAX                 ; $EE2F: $AA - Transfer Accumulator to Index X
	EOR $34,X           ; $EE30: $55 $34 - Exclusive-OR Memory with Accumulator
	BPL $2C             ; $EE32: $10 $2C - Branch on Result Plus
	DEC $913A           ; $EE34: $CE $3A $91 - Decrement Memory by One
	JSR $200B           ; $EE37: $20 $0B $20 - Jump to New Location Saving Return Address
	ASL $AA             ; $EE3A: $06 $AA - Shift Left One Bit
	STY $02             ; $EE3C: $84 $02 - Sore Index Y in Memory
	LDX $0D24,Y         ; $EE3F: $BE $24 $0D - Load Index X with Memory
	ROL A               ; $EE42: $2A - Rotate One Bit Left
	CPX $00             ; $EE43: $E4 $00 - Compare Memory and Index Y
	TYA                 ; $EE45: $98 - Transfer Index Y to Accumulator
	LDY #$91            ; $EE46: $A0 $91 - Load Index Y with Memory
	RTI                 ; $EE48: $40 - Return from Interrupt
	CMP $38C4,Y         ; $EE4A: $D9 $C4 $38 - Compare Memory with Accumulator
	CLC                 ; $EE4D: $18 - Clear Carry Flag
	RTI                 ; $EE4E: $40 - Return from Interrupt
	EOR $5F,X           ; $EE4F: $55 $5F - Exclusive-OR Memory with Accumulator
	BNE $3C             ; $EE52: $D0 $3C - Branch on Result not Zero
	AND $204D,X         ; $EE54: $3D $4D $20 - AND Memory with Accumulator
	LDA $A0             ; $EE5A: $A5 $A0 - Load Accumulator with Memory
	ADC $2E             ; $EE5D: $65 $2E - Add Memory to Accumulator with Carry
	RTI                 ; $EE5F: $40 - Return from Interrupt
	RTS                 ; $EE62: $60 - Return from Subroutine
	CLC                 ; $EE63: $18 - Clear Carry Flag
	BCC $02             ; $EE65: $90 $02 - Branch on Carry Clear
	NOP                 ; $EE67: $EA - No Operation
	CMP $DBE8,X         ; $EE68: $DD $E8 $DB - Compare Memory with Accumulator
	CMP $A501,Y         ; $EE6B: $D9 $01 $A5 - Compare Memory with Accumulator
	TAX                 ; $EE6E: $AA - Transfer Accumulator to Index X
	BEQ $0B             ; $EE6F: $F0 $0B - Branch on Result Zero
	LDA #$00            ; $EE71: $A9 $00 - Load Accumulator with Memory
	STA $AA             ; $EE73: $85 $AA - Store Accumulator in Memory
	LDA #$7C            ; $EE75: $A9 $7C - Load Accumulator with Memory
	LDY #$EE            ; $EE77: $A0 $EE - Load Index Y with Memory
	JMP $C527           ; $EE79: $4C $27 $C5 - Jump to New Location
	RTS                 ; $EE7C: $60 - Return from Subroutine
	JSR $EEDA           ; $EE7D: $20 $DA $EE - Jump to New Location Saving Return Address
	LDX #$00            ; $EE80: $A2 $00 - Load Index X with Memory
	LDA $0586,X         ; $EE82: $BD $86 $05 - Load Accumulator with Memory
	STA $2007           ; $EE85: $8D $07 $20 - Store Accumulator in Memory
	INX                 ; $EE88: $E8 - Increment Index X by One
	CPX #$20            ; $EE89: $E0 $20 - Compare Memory and Index Y
	BNE $F5             ; $EE8B: $D0 $F5 - Branch on Result not Zero
	JMP $C541           ; $EE8D: $4C $41 $C5 - Jump to New Location
	INC $AB             ; $EE90: $E6 $AB - Increment Memory by One
	LDA $AB             ; $EE92: $A5 $AB - Load Accumulator with Memory
	CMP #$04            ; $EE94: $C9 $04 - Compare Memory with Accumulator
	BCS $02             ; $EE96: $B0 $02 - Branch on Carry Set
	BCC $18             ; $EE98: $90 $18 - Branch on Carry Clear
	LDA #$04            ; $EE9A: $A9 $04 - Load Accumulator with Memory
	STA $AB             ; $EE9C: $85 $AB - Store Accumulator in Memory
	JSR $EEB2           ; $EE9E: $20 $B2 $EE - Jump to New Location Saving Return Address
	JMP $C541           ; $EEA1: $4C $41 $C5 - Jump to New Location
	LDA #$00            ; $EEA4: $A9 $00 - Load Accumulator with Memory
	STA $AB             ; $EEA6: $85 $AB - Store Accumulator in Memory
	JSR $EEB2           ; $EEA8: $20 $B2 $EE - Jump to New Location Saving Return Address
	JMP $C541           ; $EEAB: $4C $41 $C5 - Jump to New Location
	DEC $AB             ; $EEAE: $C6 $AB - Decrement Memory by One
	BMI $F2             ; $EEB0: $30 $F2 - Branch on Result Minus
	LDA $AB             ; $EEB2: $A5 $AB - Load Accumulator with Memory
	ASL A               ; $EEB4: $0A - Shift Left One Bit
	ASL A               ; $EEB5: $0A - Shift Left One Bit
	ASL A               ; $EEB6: $0A - Shift Left One Bit
	ASL A               ; $EEB7: $0A - Shift Left One Bit
	STA $EB             ; $EEB8: $85 $EB - Store Accumulator in Memory
	JSR $EEDA           ; $EEBA: $20 $DA $EE - Jump to New Location Saving Return Address
	LDX #$00            ; $EEBD: $A2 $00 - Load Index X with Memory
	LDA $0586,X         ; $EEBF: $BD $86 $05 - Load Accumulator with Memory
	SEC                 ; $EEC2: $38 - Set Carry Flag
	SBC $EB             ; $EEC3: $E5 $EB - Subtract Memory from Accumulator with Borrow
	BMI $08             ; $EEC5: $30 $08 - Branch on Result Minus
	CMP #$1D            ; $EEC7: $C9 $1D - Compare Memory with Accumulator
	BEQ $04             ; $EEC9: $F0 $04 - Branch on Result Zero
	CMP #$0D            ; $EECB: $C9 $0D - Compare Memory with Accumulator
	BNE $02             ; $EECD: $D0 $02 - Branch on Result not Zero
	LDA #$0F            ; $EECF: $A9 $0F - Load Accumulator with Memory
	STA $2007           ; $EED1: $8D $07 $20 - Store Accumulator in Memory
	INX                 ; $EED4: $E8 - Increment Index X by One
	CPX #$20            ; $EED5: $E0 $20 - Compare Memory and Index Y
	BNE $E6             ; $EED7: $D0 $E6 - Branch on Result not Zero
	RTS                 ; $EED9: $60 - Return from Subroutine
	LDY #$3F            ; $EEDA: $A0 $3F - Load Index Y with Memory
	LDA #$00            ; $EEDC: $A9 $00 - Load Accumulator with Memory
	BIT $2002           ; $EEDE: $2C $02 $20 - Test Bits in Memory with Accumulator
	STY $2006           ; $EEE1: $8C $06 $20 - Sore Index Y in Memory
	STA $2006           ; $EEE4: $8D $06 $20 - Store Accumulator in Memory
	RTS                 ; $EEE7: $60 - Return from Subroutine
	EOR ($EF),Y         ; $EEE9: $51 $EF $34 - Exclusive-OR Memory with Accumulator
	BIT $6F             ; $EEEE: $24 $6F - Test Bits in Memory with Accumulator
	BPL $0E             ; $EEF0: $10 $0E - Branch on Result Plus
	JSR $8862           ; $EEF2: $20 $62 $88 - Jump to New Location Saving Return Address
	CMP #$20            ; $EEF5: $C9 $20 - Compare Memory with Accumulator
	BCS $07             ; $EEF7: $B0 $07 - Branch on Carry Set
	LDA $053A,Y         ; $EEF9: $B9 $3A $05 - Load Accumulator with Memory
	CMP #$09            ; $EEFC: $C9 $09 - Compare Memory with Accumulator
	BEQ $3B             ; $EEFE: $F0 $3B - Branch on Result Zero
	JSR $EF06           ; $EF00: $20 $06 $EF - Jump to New Location Saving Return Address
	JSR $EF06           ; $EF03: $20 $06 $EF - Jump to New Location Saving Return Address
	LDY $0300,X         ; $EF06: $BC $00 $03 - Load Index Y with Memory
	JSR $8C80           ; $EF09: $20 $80 $8C - Jump to New Location Saving Return Address
	BEQ $04             ; $EF0C: $F0 $04 - Branch on Result Zero
	CMP #$39            ; $EF0E: $C9 $39 - Compare Memory with Accumulator
	BNE $1D             ; $EF10: $D0 $1D - Branch on Result not Zero
	LDA $0360,X         ; $EF12: $BD $60 $03 - Load Accumulator with Memory
	SBC $0360,Y         ; $EF15: $F9 $60 $03 - Subtract Memory from Accumulator with Borrow
	CLC                 ; $EF18: $18 - Clear Carry Flag
	ADC #$08            ; $EF19: $69 $08 - Add Memory to Accumulator with Carry
	CMP #$11            ; $EF1B: $C9 $11 - Compare Memory with Accumulator
	BCS $10             ; $EF1D: $B0 $10 - Branch on Carry Set
	LDA $4A,X           ; $EF1F: $B5 $4A $38 - Load Accumulator with Memory
	SBC $004A,Y         ; $EF22: $F9 $4A $00 - Subtract Memory from Accumulator with Borrow
	CLC                 ; $EF25: $18 - Clear Carry Flag
	ADC #$20            ; $EF26: $69 $20 - Add Memory to Accumulator with Carry
	CMP #$41            ; $EF28: $C9 $41 - Compare Memory with Accumulator
	BCS $03             ; $EF2A: $B0 $03 - Branch on Carry Set
	JSR $EF3B           ; $EF2C: $20 $3B $EF - Jump to New Location Saving Return Address
	INY                 ; $EF2F: $C8 - Increment Index Y by One
	TYA                 ; $EF30: $98 - Transfer Index Y to Accumulator
	CMP #$20            ; $EF31: $C9 $20 - Compare Memory with Accumulator
	BCC $02             ; $EF33: $90 $02 - Branch on Carry Clear
	LDA #$14            ; $EF35: $A9 $14 - Load Accumulator with Memory
	STA $0300,X         ; $EF37: $9D $00 $03 - Store Accumulator in Memory
	RTS                 ; $EF3A: $60 - Return from Subroutine
	JSR $8BE5           ; $EF3B: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$14            ; $EF3E: $C9 $14 - Compare Memory with Accumulator
	BCC $0F             ; $EF40: $90 $0F - Branch on Carry Clear
	LDA #$FD            ; $EF42: $A9 $FD - Load Accumulator with Memory
	STA $02A0,X         ; $EF44: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$80            ; $EF47: $A9 $80 - Load Accumulator with Memory
	STA $02C0,X         ; $EF49: $9D $C0 $02 - Store Accumulator in Memory
	LDA #$01            ; $EF4C: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $EF4E: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $EF51: $60 - Return from Subroutine
	JSR $8B60           ; $EF52: $20 $60 $8B - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $EF55: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $2B             ; $EF58: $F0 $2B - Branch on Result Zero
	LDA $02A0,X         ; $EF5A: $BD $A0 $02 - Load Accumulator with Memory
	BPL $0A             ; $EF5D: $10 $0A - Branch on Result Plus
	LDA #$37            ; $EF5F: $A9 $37 - Load Accumulator with Memory
	LDY #$9E            ; $EF61: $A0 $9E - Load Index Y with Memory
	JSR $F9FE           ; $EF63: $20 $FE $F9 - Jump to New Location Saving Return Address
	JMP $EF70           ; $EF66: $4C $70 $EF - Jump to New Location
	LDA #$34            ; $EF69: $A9 $34 - Load Accumulator with Memory
	LDY #$9E            ; $EF6B: $A0 $9E - Load Index Y with Memory
	JSR $F9FE           ; $EF6D: $20 $FE $F9 - Jump to New Location Saving Return Address
	JSR $AA08           ; $EF70: $20 $08 $AA - Jump to New Location Saving Return Address
	LDA $0380,X         ; $EF73: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $EF76: $29 $10 - Clear Carry Flag
	BEQ $36             ; $EF78: $F0 $36 - Branch on Result Zero
	DEC $02E0,X         ; $EF7A: $DE $E0 $02 - Decrement Memory by One
	LDA $056E           ; $EF7D: $AD $6E $05 - Load Accumulator with Memory
	STA $03A0,X         ; $EF80: $9D $A0 $03 - Store Accumulator in Memory
	BPL $2B             ; $EF83: $10 $2B - Branch on Result Plus
	LDA $03A0,X         ; $EF85: $BD $A0 $03 - Load Accumulator with Memory
	BEQ $05             ; $EF88: $F0 $05 - Branch on Result Zero
	DEC $03A0,X         ; $EF8A: $DE $A0 $03 - Decrement Memory by One
	BNE $21             ; $EF8D: $D0 $21 - Branch on Result not Zero
	JSR $EEEE           ; $EF8F: $20 $EE $EE - Jump to New Location Saving Return Address
	BIT $6F             ; $EF92: $24 $6F - Test Bits in Memory with Accumulator
	BVS $05             ; $EF94: $70 $05 - Branch on Overflow Set
	JSR $8806           ; $EF96: $20 $06 $88 - Jump to New Location Saving Return Address
	BNE $15             ; $EF99: $D0 $15 - Branch on Result not Zero
	JSR $EB48           ; $EF9B: $20 $48 $EB - Jump to New Location Saving Return Address
	BCC $0A             ; $EF9E: $90 $0A - Branch on Carry Clear
	JSR $AA0B           ; $EFA0: $20 $0B $AA - Jump to New Location Saving Return Address
	LDA $0380,X         ; $EFA3: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $EFA6: $29 $10 - Clear Carry Flag
	BEQ $91             ; $EFA8: $F0 $91 - Branch on Result Zero
	JSR $D8CC           ; $EFAA: $20 $CC $D8 - Jump to New Location Saving Return Address
	BRK                 ; $EFAD: $00 - Force Break
	JMP $D8CC           ; $EFB0: $4C $CC $D8 - Jump to New Location
	SED                 ; $EFB4: $F8 - Set Decimal Flag
	SED                 ; $EFB5: $F8 - Set Decimal Flag
	BRK                 ; $EFB6: $00 - Force Break
	SED                 ; $EFB7: $F8 - Set Decimal Flag
	SED                 ; $EFB8: $F8 - Set Decimal Flag
	BRK                 ; $EFB9: $00 - Force Break
	BRK                 ; $EFBA: $00 - Force Break
	BRK                 ; $EFBB: $00 - Force Break
	BPL $F0             ; $EFBC: $10 $F0 - Branch on Result Plus
	BEQ $F8             ; $EFBE: $F0 $F8 - Branch on Result Zero
	BEQ $00             ; $EFC0: $F0 $00 - Branch on Result Zero
	BEQ $08             ; $EFC2: $F0 $08 - Branch on Result Zero
	BEQ $F0             ; $EFC4: $F0 $F0 - Branch on Result Zero
	SED                 ; $EFC6: $F8 - Set Decimal Flag
	SED                 ; $EFC7: $F8 - Set Decimal Flag
	SED                 ; $EFC8: $F8 - Set Decimal Flag
	BRK                 ; $EFC9: $00 - Force Break
	SED                 ; $EFCA: $F8 - Set Decimal Flag
	PHP                 ; $EFCB: $08 - Push Processor Status on Stack
	SED                 ; $EFCC: $F8 - Set Decimal Flag
	BEQ $00             ; $EFCD: $F0 $00 - Branch on Result Zero
	SED                 ; $EFCF: $F8 - Set Decimal Flag
	BRK                 ; $EFD0: $00 - Force Break
	BRK                 ; $EFD1: $00 - Force Break
	BRK                 ; $EFD2: $00 - Force Break
	PHP                 ; $EFD3: $08 - Push Processor Status on Stack
	BRK                 ; $EFD4: $00 - Force Break
	BEQ $08             ; $EFD5: $F0 $08 - Branch on Result Zero
	SED                 ; $EFD7: $F8 - Set Decimal Flag
	PHP                 ; $EFD8: $08 - Push Processor Status on Stack
	BRK                 ; $EFD9: $00 - Force Break
	PHP                 ; $EFDA: $08 - Push Processor Status on Stack
	PHP                 ; $EFDB: $08 - Push Processor Status on Stack
	PHP                 ; $EFDC: $08 - Push Processor Status on Stack
	SED                 ; $EFDE: $F8 - Set Decimal Flag
	BRK                 ; $EFE0: $00 - Force Break
	SED                 ; $EFE4: $F8 - Set Decimal Flag
	BRK                 ; $EFE6: $00 - Force Break
	BEQ $FC             ; $EFE9: $F0 $FC - Branch on Result Zero
	SED                 ; $EFEB: $F8 - Set Decimal Flag
	BRK                 ; $EFED: $00 - Force Break
	PHP                 ; $EFEF: $08 - Push Processor Status on Stack
	BEQ $EC             ; $EFF1: $F0 $EC - Branch on Result Zero
	SED                 ; $EFF3: $F8 - Set Decimal Flag
	CPX $EC00           ; $EFF4: $EC $00 $EC - Compare Memory and Index X
	PHP                 ; $EFF7: $08 - Push Processor Status on Stack
	CPX $F4F0           ; $EFF8: $EC $F0 $F4 - Compare Memory and Index X
	SED                 ; $EFFB: $F8 - Set Decimal Flag
	BRK                 ; $EFFD: $00 - Force Break
	PHP                 ; $EFFF: $08 - Push Processor Status on Stack
	BEQ $FC             ; $F001: $F0 $FC - Branch on Result Zero
	SED                 ; $F003: $F8 - Set Decimal Flag
	BRK                 ; $F005: $00 - Force Break
	PHP                 ; $F007: $08 - Push Processor Status on Stack
	BEQ $04             ; $F009: $F0 $04 - Branch on Result Zero
	SED                 ; $F00B: $F8 - Set Decimal Flag
	BRK                 ; $F00D: $00 - Force Break
	PHP                 ; $F00F: $08 - Push Processor Status on Stack
	BEQ $0C             ; $F011: $F0 $0C - Branch on Result Zero
	SED                 ; $F013: $F8 - Set Decimal Flag
	BRK                 ; $F015: $00 - Force Break
	PHP                 ; $F017: $08 - Push Processor Status on Stack
	ASL $F8             ; $F019: $06 $F8 - Shift Left One Bit
	BRK                 ; $F01C: $00 - Force Break
	SED                 ; $F01E: $F8 - Set Decimal Flag
	BRK                 ; $F020: $00 - Force Break
	SED                 ; $F022: $F8 - Set Decimal Flag
	BRK                 ; $F024: $00 - Force Break
	PHP                 ; $F026: $08 - Push Processor Status on Stack
	BEQ $F8             ; $F027: $F0 $F8 - Branch on Result Zero
	SED                 ; $F029: $F8 - Set Decimal Flag
	SED                 ; $F02A: $F8 - Set Decimal Flag
	BRK                 ; $F02B: $00 - Force Break
	SED                 ; $F02C: $F8 - Set Decimal Flag
	PHP                 ; $F02D: $08 - Push Processor Status on Stack
	SED                 ; $F02E: $F8 - Set Decimal Flag
	BEQ $00             ; $F02F: $F0 $00 - Branch on Result Zero
	SED                 ; $F031: $F8 - Set Decimal Flag
	BRK                 ; $F032: $00 - Force Break
	BRK                 ; $F033: $00 - Force Break
	BRK                 ; $F034: $00 - Force Break
	PHP                 ; $F035: $08 - Push Processor Status on Stack
	BRK                 ; $F036: $00 - Force Break
	BEQ $F0             ; $F038: $F0 $F0 - Branch on Result Zero
	SED                 ; $F03A: $F8 - Set Decimal Flag
	BEQ $00             ; $F03B: $F0 $00 - Branch on Result Zero
	BEQ $08             ; $F03D: $F0 $08 - Branch on Result Zero
	BEQ $86             ; $F03F: $F0 $86 - Branch on Result Zero
	BCS $A6             ; $F041: $B0 $A6 - Branch on Carry Set
	LDY $039D           ; $F043: $AC $9D $03 - Load Index Y with Memory
	TYA                 ; $F047: $98 - Transfer Index Y to Accumulator
	CLC                 ; $F048: $18 - Clear Carry Flag
	SBC $CC             ; $F049: $E5 $CC - Subtract Memory from Accumulator with Borrow
	STA $0700,X         ; $F04B: $9D $00 $07 - Store Accumulator in Memory
	LDA $AF             ; $F04E: $A5 $AF - Load Accumulator with Memory
	STA $0701,X         ; $F050: $9D $01 $07 - Store Accumulator in Memory
	LDA $AE             ; $F053: $A5 $AE - Load Accumulator with Memory
	STA $0702,X         ; $F055: $9D $02 $07 - Store Accumulator in Memory
	TXA                 ; $F058: $8A - Transfer Index X to Accumulator
	CLC                 ; $F059: $18 - Clear Carry Flag
	ADC $AD             ; $F05A: $65 $AD - Add Memory to Accumulator with Carry
	STA $AC             ; $F05C: $85 $AC - Store Accumulator in Memory
	LDX $B0             ; $F05E: $A6 $B0 - Load Index X with Memory
	RTS                 ; $F060: $60 - Return from Subroutine
	STA $AF             ; $F061: $85 $AF - Store Accumulator in Memory
	LDA #$01            ; $F063: $A9 $01 - Load Accumulator with Memory
	STA $AE             ; $F065: $85 $AE - Store Accumulator in Memory
	RTS                 ; $F067: $60 - Return from Subroutine
	LDY $0200,X         ; $F068: $BC $00 $02 - Load Index Y with Memory
	BNE $01             ; $F06B: $D0 $01 - Branch on Result not Zero
	RTS                 ; $F06D: $60 - Return from Subroutine
	LDA $0380,X         ; $F06E: $BD $80 $03 - Load Accumulator with Memory
	ASL A               ; $F071: $0A - Shift Left One Bit
	ASL A               ; $F072: $0A - Shift Left One Bit
	LDA $0418,X         ; $F073: $BD $18 $04 - Load Accumulator with Memory
	BCC $04             ; $F076: $90 $04 - Branch on Carry Clear
	EOR #$FF            ; $F078: $49 $FF - Exclusive-OR Memory with Accumulator
	ADC #$00            ; $F07A: $69 $00 - Add Memory to Accumulator with Carry
	CLC                 ; $F07C: $18 - Clear Carry Flag
	ADC $4A,X           ; $F07D: $75 $4A - Add Memory to Accumulator with Carry
	STA $B4             ; $F07F: $85 $B4 - Store Accumulator in Memory
	LDA $0360,X         ; $F081: $BD $60 $03 - Load Accumulator with Memory
	CLC                 ; $F084: $18 - Clear Carry Flag
	ADC $042C,X         ; $F085: $7D $2C $04 - Add Memory to Accumulator with Carry
	STA $B5             ; $F088: $85 $B5 - Store Accumulator in Memory
	LDA $0320,X         ; $F08A: $BD $20 $03 - Load Accumulator with Memory
	STY $05A6           ; $F08D: $8C $A6 $05 - Sore Index Y in Memory
	STA $B9             ; $F090: $85 $B9 - Store Accumulator in Memory
	LDA $BD67,Y         ; $F092: $B9 $67 $BD - Load Accumulator with Memory
	BNE $28             ; $F095: $D0 $28 - Branch on Result not Zero
	LDA $B9             ; $F097: $A5 $B9 - Load Accumulator with Memory
	BEQ $D2             ; $F099: $F0 $D2 - Branch on Result Zero
	CLC #$3F            ; $F09B: $29 $3F - Clear Carry Flag
	LDY $05A6           ; $F09D: $AC $A6 $05 - Load Index Y with Memory
	CLC                 ; $F0A0: $18 - Clear Carry Flag
	ADC $BDBB,Y         ; $F0A1: $79 $BB $BD - Add Memory to Accumulator with Carry
	STA $AF             ; $F0A4: $85 $AF - Store Accumulator in Memory
	LDA $B9             ; $F0A6: $A5 $B9 - Load Accumulator with Memory
	CLC #$C0            ; $F0A8: $29 $C0 - Clear Carry Flag
	EOR $0380,X         ; $F0AA: $5D $80 $03 - Exclusive-OR Memory with Accumulator
	CLC #$E3            ; $F0AD: $29 $E3 - Clear Carry Flag
	STA $AE             ; $F0AF: $85 $AE - Store Accumulator in Memory
	LDA $B5             ; $F0B1: $A5 $B5 - Load Accumulator with Memory
	SEC                 ; $F0B3: $38 - Set Carry Flag
	SBC #$04            ; $F0B4: $E9 $04 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $F0B6: $A8 - Transfer Accumulator to Index Y
	LDA $B4             ; $F0B7: $A5 $B4 - Load Accumulator with Memory
	SEC                 ; $F0B9: $38 - Set Carry Flag
	SBC #$04            ; $F0BA: $E9 $04 - Subtract Memory from Accumulator with Borrow
	JMP $F040           ; $F0BC: $4C $40 $F0 - Jump to New Location
	TAY                 ; $F0BF: $A8 - Transfer Accumulator to Index Y
	LDA $F12F,Y         ; $F0C0: $B9 $2F $F1 - Load Accumulator with Memory
	STA $B6             ; $F0C3: $85 $B6 - Store Accumulator in Memory
	LDA $F138,Y         ; $F0C5: $B9 $38 $F1 - Load Accumulator with Memory
	STA $B7             ; $F0C8: $85 $B7 - Store Accumulator in Memory
	LDY $05A6           ; $F0CA: $AC $A6 $05 - Load Index Y with Memory
	LDA $BDBB,Y         ; $F0CD: $B9 $BB $BD - Load Accumulator with Memory
	STA $B1             ; $F0D0: $85 $B1 - Store Accumulator in Memory
	LDA $BDE8,Y         ; $F0D2: $B9 $E8 $BD - Load Accumulator with Memory
	STA $B2             ; $F0D5: $85 $B2 - Store Accumulator in Memory
	LDY #$00            ; $F0D7: $A0 $00 - Load Index Y with Memory
	LDA ($B1),Y         ; $F0D9: $B1 $B1 $85 - Load Accumulator with Memory
	TSX                 ; $F0DC: $BA - Transfer Stack Pointer to Index X
	LDA $0380,X         ; $F0DD: $BD $80 $03 - Load Accumulator with Memory
	STA $B3             ; $F0E0: $85 $B3 - Store Accumulator in Memory
	LDY #$00            ; $F0E2: $A0 $00 - Load Index Y with Memory
	LDA ($B6),Y         ; $F0E4: $B1 $B6 $85 - Load Accumulator with Memory
	CLV                 ; $F0E7: $B8 - Clear Overflow Flag
	INY                 ; $F0E8: $C8 - Increment Index Y by One
	STY $BB             ; $F0E9: $84 $BB - Sore Index Y in Memory
	INC $B9             ; $F0EB: $E6 $B9 - Increment Memory by One
	LDY $B9             ; $F0ED: $A4 $B9 - Load Index Y with Memory
	LDA ($B1),Y         ; $F0EF: $B1 $B1 $29 - Load Accumulator with Memory
	BEQ $32             ; $F0F3: $F0 $32 - Branch on Result Zero
	CLC                 ; $F0F5: $18 - Clear Carry Flag
	ADC $BA             ; $F0F6: $65 $BA - Add Memory to Accumulator with Carry
	STA $AF             ; $F0F8: $85 $AF - Store Accumulator in Memory
	LDA ($B1),Y         ; $F0FA: $B1 $B1 $29 - Load Accumulator with Memory
	CPY #$45            ; $F0FD: $C0 $45 - Compare Memory and Index Y
	STA $AE             ; $F100: $85 $AE - Store Accumulator in Memory
	LDY $BB             ; $F102: $A4 $BB - Load Index Y with Memory
	LDA ($B6),Y         ; $F104: $B1 $B6 $24 - Load Accumulator with Memory
	BVC $05             ; $F108: $50 $05 - Branch on Overflow Clear
	EOR #$FF            ; $F10A: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $F10C: $38 - Set Carry Flag
	ADC #$F8            ; $F10D: $69 $F8 - Add Memory to Accumulator with Carry
	CLC                 ; $F10F: $18 - Clear Carry Flag
	ADC $B4             ; $F110: $65 $B4 - Add Memory to Accumulator with Carry
	PHA                 ; $F112: $48 - Push Accumulator on Stack
	INY                 ; $F113: $C8 - Increment Index Y by One
	LDA ($B6),Y         ; $F114: $B1 $B6 $24 - Load Accumulator with Memory
	BPL $05             ; $F118: $10 $05 - Branch on Result Plus
	EOR #$FF            ; $F11A: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $F11C: $38 - Set Carry Flag
	ADC #$F8            ; $F11D: $69 $F8 - Add Memory to Accumulator with Carry
	CLC                 ; $F11F: $18 - Clear Carry Flag
	ADC $B5             ; $F120: $65 $B5 - Add Memory to Accumulator with Carry
	TAY                 ; $F122: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $F123: $68 - Pull Accumulator from Stack
	JSR $F040           ; $F124: $20 $40 $F0 - Jump to New Location Saving Return Address
	INC $BB             ; $F127: $E6 $BB - Increment Memory by One
	INC $BB             ; $F129: $E6 $BB - Increment Memory by One
	DEC $B8             ; $F12B: $C6 $B8 - Decrement Memory by One
	BNE $BC             ; $F12D: $D0 $BC - Branch on Result not Zero
	RTS                 ; $F12F: $60 - Return from Subroutine
	LDY $E2DD,X         ; $F131: $BC $DD $E2 - Load Index Y with Memory
	BEQ $19             ; $F135: $F0 $19 - Branch on Result Zero
	ROL $37             ; $F137: $26 $37 - Rotate One Bit Left
	BEQ $F0             ; $F13F: $F0 $F0 - Branch on Result Zero
	BEQ $F1             ; $F141: $F0 $F1 - Branch on Result Zero
	SBC ($45),Y         ; $F144: $F1 $45 $A9 - Subtract Memory from Accumulator with Borrow
	ASL $E09D,X         ; $F147: $1E $9D $E0 - Shift Left One Bit
	RTS                 ; $F14B: $60 - Return from Subroutine
	JSR $A9C4           ; $F14C: $20 $C4 $A9 - Jump to New Location Saving Return Address
	LDA $02E0,X         ; $F14F: $BD $E0 $02 - Load Accumulator with Memory
	CMP #$0E            ; $F152: $C9 $0E - Compare Memory with Accumulator
	BCS $03             ; $F154: $B0 $03 - Branch on Carry Set
	LSR A               ; $F156: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	ORA $A9             ; $F158: $05 $A9 - OR Memory with Accumulator
	INC $20,X           ; $F15A: $F6 $20 - Increment Memory by One
	CMP $0BA9           ; $F15D: $CD $A9 $0B - Compare Memory with Accumulator
	JSR $88AE           ; $F160: $20 $AE $88 - Jump to New Location Saving Return Address
	JMP $8C62           ; $F163: $4C $62 $8C - Jump to New Location
	LDA #$03            ; $F166: $A9 $03 - Load Accumulator with Memory
	JSR $D8DE           ; $F168: $20 $DE $D8 - Jump to New Location Saving Return Address
	LDA $6F             ; $F16B: $A5 $6F - Load Accumulator with Memory
	STA $A4             ; $F16D: $85 $A4 - Store Accumulator in Memory
	BPL $47             ; $F16F: $10 $47 - Branch on Result Plus
	LDA #$10            ; $F171: $A9 $10 - Load Accumulator with Memory
	STA $CD             ; $F173: $85 $CD - Store Accumulator in Memory
	JSR $D6DB           ; $F175: $20 $DB $D6 - Jump to New Location Saving Return Address
	LDX #$86            ; $F178: $A2 $86 - Load Index X with Memory
	CLC                 ; $F17A: $18 - Clear Carry Flag
	LDY #$0E            ; $F17B: $A0 $0E - Load Index Y with Memory
	JSR $E934           ; $F17D: $20 $34 $E9 - Jump to New Location Saving Return Address
	LDA $04FF           ; $F180: $AD $FF $04 - Load Accumulator with Memory
	CMP #$0F            ; $F183: $C9 $0F - Compare Memory with Accumulator
	BNE $08             ; $F185: $D0 $08 - Branch on Result not Zero
	LDX #$92            ; $F187: $A2 $92 - Load Index X with Memory
	SEC                 ; $F189: $38 - Set Carry Flag
	LDY #$0F            ; $F18A: $A0 $0F - Load Index Y with Memory
	JSR $E934           ; $F18C: $20 $34 $E9 - Jump to New Location Saving Return Address
	LDA #$03            ; $F18F: $A9 $03 - Load Accumulator with Memory
	JSR $97AA           ; $F191: $20 $AA $97 - Jump to New Location Saving Return Address
	BIT $6F             ; $F194: $24 $6F - Test Bits in Memory with Accumulator
	BVC $1D             ; $F196: $50 $1D - Branch on Overflow Clear
	LDY #$B0            ; $F198: $A0 $B0 - Load Index Y with Memory
	LDA #$0F            ; $F19A: $A9 $0F - Load Accumulator with Memory
	JSR $ADC7           ; $F19C: $20 $C7 $AD - Jump to New Location Saving Return Address
	SEC                 ; $F19F: $38 - Set Carry Flag
	ROR $04C9           ; $F1A0: $6E $C9 $04 - Rotate One Bit Right
	LDX #$06            ; $F1A3: $A2 $06 - Load Index X with Memory
	LDA #$AC            ; $F1A5: $A9 $AC - Load Accumulator with Memory
	STA $6A             ; $F1A7: $85 $6A - Store Accumulator in Memory
	LDY #$80            ; $F1A9: $A0 $80 - Load Index Y with Memory
	LDA #$2D            ; $F1AB: $A9 $2D - Load Accumulator with Memory
	JSR $A88A           ; $F1AD: $20 $8A $A8 - Jump to New Location Saving Return Address
	LDA #$02            ; $F1B0: $A9 $02 - Load Accumulator with Memory
	STA $0300,X         ; $F1B2: $9D $00 $03 - Store Accumulator in Memory
	JMP $FAB5           ; $F1B5: $4C $B5 $FA - Jump to New Location
	JSR $D6DB           ; $F1B8: $20 $DB $D6 - Jump to New Location Saving Return Address
	LDX #$43            ; $F1BB: $A2 $43 - Load Index X with Memory
	CLC                 ; $F1BD: $18 - Clear Carry Flag
	LDY #$0A            ; $F1BE: $A0 $0A - Load Index Y with Memory
	JSR $E934           ; $F1C0: $20 $34 $E9 - Jump to New Location Saving Return Address
	SEC                 ; $F1C3: $38 - Set Carry Flag
	ROR $6F             ; $F1C4: $66 $6F - Rotate One Bit Right
	LDA #$00            ; $F1C6: $A9 $00 - Load Accumulator with Memory
	STA $BC             ; $F1C8: $85 $BC - Store Accumulator in Memory
	STA $BD             ; $F1CA: $85 $BD - Store Accumulator in Memory
	JSR $D686           ; $F1CC: $20 $86 $D6 - Jump to New Location Saving Return Address
	JMP $FAB1           ; $F1CF: $4C $B1 $FA - Jump to New Location
	LDX #$06            ; $F1D2: $A2 $06 - Load Index X with Memory
	LDA $0200,X         ; $F1D4: $BD $00 $02 - Load Accumulator with Memory
	BEQ $03             ; $F1D7: $F0 $03 - Branch on Result Zero
	JSR $FCED           ; $F1D9: $20 $ED $FC - Jump to New Location Saving Return Address
	JSR $D7D8           ; $F1DC: $20 $D8 $D7 - Jump to New Location Saving Return Address
	BIT $A4             ; $F1DF: $24 $A4 - Test Bits in Memory with Accumulator
	BMI $18             ; $F1E1: $30 $18 - Branch on Result Minus
	DEC $9A             ; $F1E3: $C6 $9A - Decrement Memory by One
	BEQ $0D             ; $F1E5: $F0 $0D - Branch on Result Zero
	BPL $18             ; $F1E7: $10 $18 - Branch on Result Plus
	INC $9A             ; $F1E9: $E6 $9A - Increment Memory by One
	LDA $E4             ; $F1EB: $A5 $E4 - Load Accumulator with Memory
	CLC #$90            ; $F1ED: $29 $90 - Clear Carry Flag
	BEQ $10             ; $F1EF: $F0 $10 - Branch on Result Zero
	JMP $B8F4           ; $F1F1: $4C $F4 $B8 - Jump to New Location
	LDA #$0A            ; $F1F4: $A9 $0A - Load Accumulator with Memory
	LDY #$00            ; $F1F6: $A0 $00 - Load Index Y with Memory
	JMP $FB05           ; $F1F8: $4C $05 $FB - Jump to New Location
	DEC $0364           ; $F1FB: $CE $64 $03 - Decrement Memory by One
	JSR $A70A           ; $F1FE: $20 $0A $A7 - Jump to New Location Saving Return Address
	JMP $D7A1           ; $F201: $4C $A1 $D7 - Jump to New Location
	SBC $FBFE,X         ; $F206: $FD $FE $FB - Subtract Memory from Accumulator with Borrow
	PHP                 ; $F20C: $08 - Push Processor Status on Stack
	ORA ($02,X)         ; $F20E: $01 $02 $05 - OR Memory with Accumulator
	ASL A               ; $F211: $0A - Shift Left One Bit
	BRK                 ; $F212: $00 - Force Break
	TAY                 ; $F213: $A8 - Transfer Accumulator to Index Y
	BEQ $2E             ; $F214: $F0 $2E - Branch on Result Zero
	PHA                 ; $F216: $48 - Push Accumulator on Stack
	PLA                 ; $F217: $68 - Pull Accumulator from Stack
	TAY                 ; $F218: $A8 - Transfer Accumulator to Index Y
	LDA $F20D,Y         ; $F219: $B9 $0D $F2 - Load Accumulator with Memory
	PHA                 ; $F21C: $48 - Push Accumulator on Stack
	TAY                 ; $F21D: $A8 - Transfer Accumulator to Index Y
	JSR $F245           ; $F21E: $20 $45 $F2 - Jump to New Location Saving Return Address
	PLA                 ; $F221: $68 - Pull Accumulator from Stack
	TAY                 ; $F222: $A8 - Transfer Accumulator to Index Y
	TXA                 ; $F223: $8A - Transfer Index X to Accumulator
	PHA                 ; $F224: $48 - Push Accumulator on Stack
	LDX #$04            ; $F225: $A2 $04 - Load Index X with Memory
	JSR $F245           ; $F227: $20 $45 $F2 - Jump to New Location Saving Return Address
	EOR $05F5,X         ; $F22A: $5D $F5 $05 - Exclusive-OR Memory with Accumulator
	CLC #$10            ; $F22D: $29 $10 - Clear Carry Flag
	BEQ $11             ; $F22F: $F0 $11 - Branch on Result Zero
	INC $05A7           ; $F231: $EE $A7 $05 - Increment Memory by One
	LDA $05A7           ; $F234: $AD $A7 $05 - Load Accumulator with Memory
	CMP #$10            ; $F237: $C9 $10 - Compare Memory with Accumulator
	BCC $07             ; $F239: $90 $07 - Branch on Carry Clear
	LDA #$00            ; $F23B: $A9 $00 - Load Accumulator with Memory
	STA $05A7           ; $F23D: $8D $A7 $05 - Store Accumulator in Memory
	INC $79             ; $F240: $E6 $79 - Increment Memory by One
	PLA                 ; $F242: $68 - Pull Accumulator from Stack
	TAX                 ; $F243: $AA - Transfer Accumulator to Index X
	RTS                 ; $F244: $60 - Return from Subroutine
	LDA $05F5,X         ; $F245: $BD $F5 $05 - Load Accumulator with Memory
	PHA                 ; $F248: $48 - Push Accumulator on Stack
	CLC                 ; $F249: $18 - Clear Carry Flag
	JSR $8E2F           ; $F24A: $20 $2F $8E - Jump to New Location Saving Return Address
	STA $05F5,X         ; $F24D: $9D $F5 $05 - Store Accumulator in Memory
	LDA $05FA,X         ; $F250: $BD $FA $05 - Load Accumulator with Memory
	JSR $8E2D           ; $F253: $20 $2D $8E - Jump to New Location Saving Return Address
	STA $05FA,X         ; $F256: $9D $FA $05 - Store Accumulator in Memory
	PLA                 ; $F259: $68 - Pull Accumulator from Stack
	RTS                 ; $F25A: $60 - Return from Subroutine
	TAY                 ; $F25B: $A8 - Transfer Accumulator to Index Y
	BEQ $11             ; $F25C: $F0 $11 - Branch on Result Zero
	STY $10             ; $F25E: $84 $10 - Sore Index Y in Memory
	LDA $F208,Y         ; $F260: $B9 $08 $F2 - Load Accumulator with Memory
	STA $11             ; $F263: $85 $11 - Store Accumulator in Memory
	LDY #$07            ; $F265: $A0 $07 - Load Index Y with Memory
	LDA $05A8,Y         ; $F267: $B9 $A8 $05 - Load Accumulator with Memory
	BEQ $04             ; $F26A: $F0 $04 - Branch on Result Zero
	DEY                 ; $F26C: $88 - Decrement Index Y by One
	BPL $F8             ; $F26D: $10 $F8 - Branch on Result Plus
	RTS                 ; $F26F: $60 - Return from Subroutine
	LDA $4A,X           ; $F270: $B5 $4A $E5 - Load Accumulator with Memory
	ORA ($99),Y         ; $F273: $11 $99 $A8 - OR Memory with Accumulator
	ORA $BD             ; $F276: $05 $BD - OR Memory with Accumulator
	RTS                 ; $F278: $60 - Return from Subroutine
	SBC #$04            ; $F27A: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $05B0,Y         ; $F27C: $99 $B0 $05 - Store Accumulator in Memory
	LDA $10             ; $F27F: $A5 $10 - Load Accumulator with Memory
	STA $05B8,Y         ; $F281: $99 $B8 $05 - Store Accumulator in Memory
	LDA #$2C            ; $F284: $A9 $2C - Load Accumulator with Memory
	STA $05C0,Y         ; $F286: $99 $C0 $05 - Store Accumulator in Memory
	LDA #$00            ; $F289: $A9 $00 - Load Accumulator with Memory
	RTS                 ; $F28B: $60 - Return from Subroutine
	CPX $70             ; $F28C: $E4 $70 - Compare Memory and Index Y
	BEQ $21             ; $F28E: $F0 $21 - Branch on Result Zero
	LDY #$03            ; $F290: $A0 $03 - Load Index Y with Memory
	LDA $05FA,X         ; $F292: $BD $FA $05 - Load Accumulator with Memory
	BNE $05             ; $F295: $D0 $05 - Branch on Result not Zero
	CMP $05F5,X         ; $F297: $DD $F5 $05 - Compare Memory with Accumulator
	BEQ $EF             ; $F29A: $F0 $EF - Branch on Result Zero
	CMP $05FA,Y         ; $F29C: $D9 $FA $05 - Compare Memory with Accumulator
	BCC $EA             ; $F29F: $90 $EA - Branch on Carry Clear
	BNE $08             ; $F2A1: $D0 $08 - Branch on Result not Zero
	LDA $05F5,X         ; $F2A3: $BD $F5 $05 - Load Accumulator with Memory
	CMP $05F5,Y         ; $F2A6: $D9 $F5 $05 - Compare Memory with Accumulator
	BCC $E0             ; $F2A9: $90 $E0 - Branch on Carry Clear
	DEY                 ; $F2AB: $88 - Decrement Index Y by One
	BPL $E4             ; $F2AC: $10 $E4 - Branch on Result Plus
	BRK                 ; $F2AE: $00 - Force Break
	STA $FA00,X         ; $F2B0: $9D $00 $FA - Store Accumulator in Memory
	LDA #$FF            ; $F2B4: $A9 $FF - Load Accumulator with Memory
	STA $BF             ; $F2B6: $85 $BF - Store Accumulator in Memory
	LDA #$01            ; $F2B8: $A9 $01 - Load Accumulator with Memory
	STA $BE             ; $F2BA: $85 $BE - Store Accumulator in Memory
	RTS                 ; $F2BC: $60 - Return from Subroutine
	LDA #$00            ; $F2BD: $A9 $00 - Load Accumulator with Memory
	STA $7A             ; $F2BF: $85 $7A - Store Accumulator in Memory
	LDA #$03            ; $F2C1: $A9 $03 - Load Accumulator with Memory
	STA $71             ; $F2C3: $85 $71 - Store Accumulator in Memory
	RTS                 ; $F2C5: $60 - Return from Subroutine
	LDY #$00            ; $F2C6: $A0 $00 - Load Index Y with Memory
	LDA $BC             ; $F2C8: $A5 $BC - Load Accumulator with Memory
	CMP #$0C            ; $F2CA: $C9 $0C - Compare Memory with Accumulator
	BEQ $14             ; $F2CC: $F0 $14 - Branch on Result Zero
	CMP #$0D            ; $F2CE: $C9 $0D - Compare Memory with Accumulator
	BEQ $0A             ; $F2D0: $F0 $0A - Branch on Result Zero
	CMP #$03            ; $F2D2: $C9 $03 - Compare Memory with Accumulator
	BCC $0F             ; $F2D4: $90 $0F - Branch on Carry Clear
	SEC                 ; $F2D6: $38 - Set Carry Flag
	SBC #$03            ; $F2D7: $E9 $03 - Subtract Memory from Accumulator with Borrow
	INY                 ; $F2D9: $C8 - Increment Index Y by One
	BNE $F6             ; $F2DA: $D0 $F6 - Branch on Result not Zero
	BIT $6F             ; $F2DC: $24 $6F - Test Bits in Memory with Accumulator
	BPL $F2             ; $F2DE: $10 $F2 - Branch on Result Plus
	DEC $D1             ; $F2E0: $C6 $D1 - Decrement Memory by One
	LDA #$03            ; $F2E2: $A9 $03 - Load Accumulator with Memory
	TAY                 ; $F2E4: $A8 - Transfer Accumulator to Index Y
	STY $BD             ; $F2E5: $84 $BD - Sore Index Y in Memory
	STA $05C8           ; $F2E7: $8D $C8 $05 - Store Accumulator in Memory
	RTS                 ; $F2EA: $60 - Return from Subroutine
	PHP                 ; $F2EB: $08 - Push Processor Status on Stack
	PHP                 ; $F2EC: $08 - Push Processor Status on Stack
	CLC                 ; $F2ED: $18 - Clear Carry Flag
	PLP                 ; $F2EE: $28 - Pull Processor Status from Stack
	SEC                 ; $F2EF: $38 - Set Carry Flag
	JSR $C51E           ; $F2F0: $20 $1E $C5 - Jump to New Location Saving Return Address
	LDA $E9             ; $F2F3: $A5 $E9 - Load Accumulator with Memory
	JSR $9FD3           ; $F2F5: $20 $D3 $9F - Jump to New Location Saving Return Address
	LDA #$00            ; $F2F8: $A9 $00 - Load Accumulator with Memory
	LDX #$09            ; $F2FA: $A2 $09 - Load Index X with Memory
	STA $05CD,X         ; $F2FC: $9D $CD $05 - Store Accumulator in Memory
	STA $CB,X           ; $F2FF: $95 $CB - Store Accumulator in Memory
	DEX                 ; $F301: $CA - Decrement Index X by One
	BNE $F8             ; $F302: $D0 $F8 - Branch on Result not Zero
	STA $0600,X         ; $F304: $9D $00 $06 - Store Accumulator in Memory
	DEX                 ; $F307: $CA - Decrement Index X by One
	BNE $FA             ; $F308: $D0 $FA - Branch on Result not Zero
	JSR $F2C6           ; $F30A: $20 $C6 $F2 - Jump to New Location Saving Return Address
	LDA $BC             ; $F30D: $A5 $BC - Load Accumulator with Memory
	ASL A               ; $F30F: $0A - Shift Left One Bit
	TAY                 ; $F310: $A8 - Transfer Accumulator to Index Y
	LDA $DAD0,Y         ; $F311: $B9 $D0 $DA - Load Accumulator with Memory
	STA $C0             ; $F314: $85 $C0 - Store Accumulator in Memory
	LDA $DAD1,Y         ; $F316: $B9 $D1 $DA - Load Accumulator with Memory
	STA $C1             ; $F319: $85 $C1 - Store Accumulator in Memory
	JSR $D98D           ; $F31B: $20 $8D $D9 - Jump to New Location Saving Return Address
	LDA #$93            ; $F31E: $A9 $93 - Load Accumulator with Memory
	STA $0E             ; $F320: $85 $0E - Store Accumulator in Memory
	STA $0F             ; $F322: $85 $0F - Store Accumulator in Memory
	LDA #$FF            ; $F324: $A9 $FF - Load Accumulator with Memory
	STA $70             ; $F326: $85 $70 - Store Accumulator in Memory
	STA $D2             ; $F328: $85 $D2 - Store Accumulator in Memory
	STA $D3             ; $F32A: $85 $D3 - Store Accumulator in Memory
	LDA #$FB            ; $F32C: $A9 $FB - Load Accumulator with Memory
	STA $C7             ; $F32E: $85 $C7 - Store Accumulator in Memory
	LDY $05C8           ; $F330: $AC $C8 $05 - Load Index Y with Memory
	CPY #$02            ; $F333: $C0 $02 - Compare Memory and Index Y
	BCC $02             ; $F335: $90 $02 - Branch on Carry Clear
	INC $C7             ; $F337: $E6 $C7 - Increment Memory by One
	LDA #$B1            ; $F339: $A9 $B1 - Load Accumulator with Memory
	STA $C6             ; $F33B: $85 $C6 - Store Accumulator in Memory
	LDY $D1             ; $F33D: $A4 $D1 - Load Index Y with Memory
	BPL $05             ; $F33F: $10 $05 - Branch on Result Plus
	STY $C6             ; $F341: $84 $C6 - Sore Index Y in Memory
	DEY                 ; $F343: $88 - Decrement Index Y by One
	STY $C7             ; $F344: $84 $C7 - Sore Index Y in Memory
	LDA #$F0            ; $F346: $A9 $F0 - Load Accumulator with Memory
	STA $D4             ; $F348: $85 $D4 - Store Accumulator in Memory
	LDA #$23            ; $F34A: $A9 $23 - Load Accumulator with Memory
	STA $C3             ; $F34C: $85 $C3 - Store Accumulator in Memory
	STA $C5             ; $F34E: $85 $C5 - Store Accumulator in Memory
	LDA #$A0            ; $F350: $A9 $A0 - Load Accumulator with Memory
	STA $C2             ; $F352: $85 $C2 - Store Accumulator in Memory
	LDA #$F8            ; $F354: $A9 $F8 - Load Accumulator with Memory
	STA $C4             ; $F356: $85 $C4 - Store Accumulator in Memory
	LDY #$20            ; $F358: $A0 $20 - Load Index Y with Memory
	LDA #$00            ; $F35A: $A9 $00 - Load Accumulator with Memory
	STA $22             ; $F35C: $85 $22 - Store Accumulator in Memory
	STA $23             ; $F35E: $85 $23 - Store Accumulator in Memory
	STA $04D1,Y         ; $F360: $99 $D1 $04 - Store Accumulator in Memory
	DEY                 ; $F363: $88 - Decrement Index Y by One
	BPL $FA             ; $F364: $10 $FA - Branch on Result Plus
	JSR $F4B0           ; $F366: $20 $B0 $F4 - Jump to New Location Saving Return Address
	LDA #$00            ; $F369: $A9 $00 - Load Accumulator with Memory
	LDX #$07            ; $F36B: $A2 $07 - Load Index X with Memory
	STA $0509,X         ; $F36D: $9D $09 $05 - Store Accumulator in Memory
	DEX                 ; $F370: $CA - Decrement Index X by One
	BPL $FA             ; $F371: $10 $FA - Branch on Result Plus
	JSR $F437           ; $F373: $20 $37 $F4 - Jump to New Location Saving Return Address
	LDA $BD             ; $F376: $A5 $BD - Load Accumulator with Memory
	JSR $A5A1           ; $F378: $20 $A1 $A5 - Jump to New Location Saving Return Address
	BIT $6F             ; $F37B: $24 $6F - Test Bits in Memory with Accumulator
	BPL $31             ; $F37D: $10 $31 - Branch on Result Plus
	LDY $BC             ; $F37F: $A4 $BC - Load Index Y with Memory
	CPY #$09            ; $F381: $C0 $09 - Compare Memory and Index Y
	BNE $09             ; $F383: $D0 $09 - Branch on Result not Zero
	LDA $E5             ; $F385: $A5 $E5 - Load Accumulator with Memory
	CMP #$E2            ; $F387: $C9 $E2 - Compare Memory with Accumulator
	BNE $03             ; $F389: $D0 $03 - Branch on Result not Zero
	ROR $0500           ; $F38B: $6E $00 $05 - Rotate One Bit Right
	BIT $0500           ; $F38E: $2C $00 $05 - Test Bits in Memory with Accumulator
	BPL $1D             ; $F391: $10 $1D - Branch on Result Plus
	CPY #$0D            ; $F393: $C0 $0D - Compare Memory and Index Y
	BCS $19             ; $F395: $B0 $19 - Branch on Carry Set
	LDX #$1F            ; $F397: $A2 $1F - Load Index X with Memory
	TXA                 ; $F399: $8A - Transfer Index X to Accumulator
	CLC #$03            ; $F39A: $29 $03 - Clear Carry Flag
	TAY                 ; $F39C: $A8 - Transfer Accumulator to Index Y
	INY                 ; $F39D: $C8 - Increment Index Y by One
	CPX #$08            ; $F39E: $E0 $08 - Compare Memory and Index Y
	BCC $05             ; $F3A0: $90 $05 - Branch on Carry Clear
	CPX #$0C            ; $F3A2: $E0 $0C - Compare Memory and Index Y
	BCS $01             ; $F3A4: $B0 $01 - Branch on Carry Set
	DEY                 ; $F3A6: $88 - Decrement Index Y by One
	LDA $F2EB,Y         ; $F3A7: $B9 $EB $F2 - Load Accumulator with Memory
	STA $0586,X         ; $F3AA: $9D $86 $05 - Store Accumulator in Memory
	DEX                 ; $F3AD: $CA - Decrement Index X by One
	BPL $E9             ; $F3AE: $10 $E9 - Branch on Result Plus
	JSR $F462           ; $F3B0: $20 $62 $F4 - Jump to New Location Saving Return Address
	LDY #$00            ; $F3B3: $A0 $00 - Load Index Y with Memory
	LDA ($C0),Y         ; $F3B5: $B1 $C0 $48 - Load Accumulator with Memory
	INC $C0             ; $F3B8: $E6 $C0 - Increment Memory by One
	BNE $02             ; $F3BA: $D0 $02 - Branch on Result not Zero
	INC $C1             ; $F3BC: $E6 $C1 - Increment Memory by One
	LDA #$80            ; $F3BE: $A9 $80 - Load Accumulator with Memory
	BIT $D1             ; $F3C0: $24 $D1 - Test Bits in Memory with Accumulator
	BPL $02             ; $F3C2: $10 $02 - Branch on Result Plus
	LDA #$20            ; $F3C4: $A9 $20 - Load Accumulator with Memory
	CLC                 ; $F3C6: $18 - Clear Carry Flag
	ADC $C0             ; $F3C7: $65 $C0 - Add Memory to Accumulator with Carry
	STA $CA             ; $F3C9: $85 $CA - Store Accumulator in Memory
	LDA $C1             ; $F3CB: $A5 $C1 - Load Accumulator with Memory
	ADC #$00            ; $F3CD: $69 $00 - Add Memory to Accumulator with Carry
	STA $CB             ; $F3CF: $85 $CB - Store Accumulator in Memory
	PLA                 ; $F3D1: $68 - Pull Accumulator from Stack
	CLC                 ; $F3D2: $18 - Clear Carry Flag
	ADC $CA             ; $F3D3: $65 $CA - Add Memory to Accumulator with Carry
	PHA                 ; $F3D5: $48 - Push Accumulator on Stack
	LDA $CB             ; $F3D6: $A5 $CB - Load Accumulator with Memory
	ADC #$00            ; $F3D8: $69 $00 - Add Memory to Accumulator with Carry
	TAY                 ; $F3DA: $A8 - Transfer Accumulator to Index Y
	PLA                 ; $F3DB: $68 - Pull Accumulator from Stack
	JSR $CAA2           ; $F3DC: $20 $A2 $CA - Jump to New Location Saving Return Address
	JSR $C17B           ; $F3DF: $20 $7B $C1 - Jump to New Location Saving Return Address
	LDA #$08            ; $F3E2: $A9 $08 - Load Accumulator with Memory
	JSR $F501           ; $F3E4: $20 $01 $F5 - Jump to New Location Saving Return Address
	JSR $C51E           ; $F3E7: $20 $1E $C5 - Jump to New Location Saving Return Address
	LDA $CD             ; $F3EA: $A5 $CD - Load Accumulator with Memory
	SEC                 ; $F3EC: $38 - Set Carry Flag
	SBC #$E0            ; $F3ED: $E9 $E0 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $F3EF: $A8 - Transfer Accumulator to Index Y
	LDA $CE             ; $F3F0: $A5 $CE - Load Accumulator with Memory
	SBC #$00            ; $F3F2: $E9 $00 - Subtract Memory from Accumulator with Borrow
	JSR $F42F           ; $F3F4: $20 $2F $F4 - Jump to New Location Saving Return Address
	BCS $05             ; $F3F7: $B0 $05 - Branch on Carry Set
	LDA #$01            ; $F3F9: $A9 $01 - Load Accumulator with Memory
	STA $05D2           ; $F3FB: $8D $D2 $05 - Store Accumulator in Memory
	LDA $CE             ; $F3FE: $A5 $CE - Load Accumulator with Memory
	LDY $CD             ; $F400: $A4 $CD - Load Index Y with Memory
	JSR $F42F           ; $F402: $20 $2F $F4 - Jump to New Location Saving Return Address
	BCS $D8             ; $F405: $B0 $D8 - Branch on Carry Set
	LDA #$04            ; $F407: $A9 $04 - Load Accumulator with Memory
	JSR $AA1B           ; $F409: $20 $1B $AA - Jump to New Location Saving Return Address
	BNE $13             ; $F40C: $D0 $13 - Branch on Result not Zero
	LDA $4A,X           ; $F40E: $B5 $4A $38 - Load Accumulator with Memory
	SBC #$0A            ; $F411: $E9 $0A - Subtract Memory from Accumulator with Borrow
	STA $DC             ; $F413: $85 $DC - Store Accumulator in Memory
	LDA $0360,X         ; $F415: $BD $60 $03 - Load Accumulator with Memory
	STA $D5             ; $F418: $85 $D5 - Store Accumulator in Memory
	LDA #$00            ; $F41A: $A9 $00 - Load Accumulator with Memory
	STA $DE             ; $F41C: $85 $DE - Store Accumulator in Memory
	JSR $F869           ; $F41E: $20 $69 $F8 - Jump to New Location Saving Return Address
	INC $05D0           ; $F421: $EE $D0 $05 - Increment Memory by One
	LDY $BC             ; $F424: $A4 $BC - Load Index Y with Memory
	LDA $DAA3,Y         ; $F426: $B9 $A3 $DA - Load Accumulator with Memory
	JSR $97AA           ; $F429: $20 $AA $97 - Jump to New Location Saving Return Address
	JMP $FABC           ; $F42C: $4C $BC $FA - Jump to New Location
	CMP $BF             ; $F42F: $C5 $BF - Compare Memory with Accumulator
	BEQ $01             ; $F431: $F0 $01 - Branch on Result Zero
	RTS                 ; $F433: $60 - Return from Subroutine
	CPY $BE             ; $F434: $C4 $BE - Compare Memory and Index Y
	RTS                 ; $F436: $60 - Return from Subroutine
	LDA #$00            ; $F437: $A9 $00 - Load Accumulator with Memory
	STA $AB             ; $F439: $85 $AB - Store Accumulator in Memory
	LDA #$8F            ; $F43B: $A9 $8F - Load Accumulator with Memory
	LDY #$EE            ; $F43D: $A0 $EE - Load Index Y with Memory
	JSR $C527           ; $F43F: $20 $27 $C5 - Jump to New Location Saving Return Address
	JSR $C51E           ; $F442: $20 $1E $C5 - Jump to New Location Saving Return Address
	LDA #$00            ; $F445: $A9 $00 - Load Accumulator with Memory
	LDY #$07            ; $F447: $A0 $07 - Load Index Y with Memory
	STA $05A8,Y         ; $F449: $99 $A8 $05 - Store Accumulator in Memory
	DEY                 ; $F44C: $88 - Decrement Index Y by One
	BPL $FA             ; $F44D: $10 $FA - Branch on Result Plus
	LDA #$00            ; $F44F: $A9 $00 - Load Accumulator with Memory
	LDY #$04            ; $F451: $A0 $04 - Load Index Y with Memory
	STA $05DB,Y         ; $F453: $99 $DB $05 - Store Accumulator in Memory
	DEY                 ; $F456: $88 - Decrement Index Y by One
	BPL $FA             ; $F457: $10 $FA - Branch on Result Plus
	JSR $A93B           ; $F459: $20 $3B $A9 - Jump to New Location Saving Return Address
	JSR $A944           ; $F45C: $20 $44 $A9 - Jump to New Location Saving Return Address
	JMP $D7B2           ; $F45F: $4C $B2 $D7 - Jump to New Location
	BIT $6F             ; $F462: $24 $6F - Test Bits in Memory with Accumulator
	BPL $2D             ; $F464: $10 $2D - Branch on Result Plus
	LDA $BD             ; $F466: $A5 $BD - Load Accumulator with Memory
	BNE $14             ; $F468: $D0 $14 - Branch on Result not Zero
	LDX #$61            ; $F46A: $A2 $61 - Load Index X with Memory
	LDY $0132,X         ; $F46C: $BC $32 $01 - Load Index Y with Memory
	DEY                 ; $F46F: $88 - Decrement Index Y by One
	CPY #$02            ; $F470: $C0 $02 - Compare Memory and Index Y
	BEQ $03             ; $F472: $F0 $03 - Branch on Result Zero
	DEY                 ; $F474: $88 - Decrement Index Y by One
	BNE $04             ; $F475: $D0 $04 - Branch on Result not Zero
	TYA                 ; $F477: $98 - Transfer Index Y to Accumulator
	STA $0132,X         ; $F478: $9D $32 $01 - Store Accumulator in Memory
	DEX                 ; $F47B: $CA - Decrement Index X by One
	BPL $EE             ; $F47C: $10 $EE - Branch on Result Plus
	LDY $BD             ; $F47E: $A4 $BD - Load Index Y with Memory
	CPY #$01            ; $F480: $C0 $01 - Compare Memory and Index Y
	BNE $03             ; $F482: $D0 $03 - Branch on Result not Zero
	DEC $05D4           ; $F484: $CE $D4 $05 - Decrement Memory by One
	CPY #$02            ; $F487: $C0 $02 - Compare Memory and Index Y
	BNE $07             ; $F489: $D0 $07 - Branch on Result not Zero
	LDX #$4F            ; $F48B: $A2 $4F - Load Index X with Memory
	JSR $F4A3           ; $F48D: $20 $A3 $F4 - Jump to New Location Saving Return Address
	BPL $FB             ; $F490: $10 $FB - Branch on Result Plus
	RTS                 ; $F492: $60 - Return from Subroutine
	LDY $BD             ; $F493: $A4 $BD - Load Index Y with Memory
	CPY #$02            ; $F495: $C0 $02 - Compare Memory and Index Y
	BNE $09             ; $F497: $D0 $09 - Branch on Result not Zero
	LDX #$7B            ; $F499: $A2 $7B - Load Index X with Memory
	JSR $F4A3           ; $F49B: $20 $A3 $F4 - Jump to New Location Saving Return Address
	CPX #$55            ; $F49E: $E0 $55 - Compare Memory and Index Y
	BCS $F9             ; $F4A0: $B0 $F9 - Branch on Carry Set
	RTS                 ; $F4A2: $60 - Return from Subroutine
	TYA                 ; $F4A3: $98 - Transfer Index Y to Accumulator
	CMP $0132,X         ; $F4A4: $DD $32 $01 - Compare Memory with Accumulator
	BNE $05             ; $F4A7: $D0 $05 - Branch on Result not Zero
	LDA #$00            ; $F4A9: $A9 $00 - Load Accumulator with Memory
	STA $0132,X         ; $F4AB: $9D $32 $01 - Store Accumulator in Memory
	DEX                 ; $F4AE: $CA - Decrement Index X by One
	RTS                 ; $F4AF: $60 - Return from Subroutine
	LDY #$07            ; $F4B0: $A0 $07 - Load Index Y with Memory
	LDA #$00            ; $F4B2: $A9 $00 - Load Accumulator with Memory
	STA $012A,Y         ; $F4B4: $99 $2A $01 - Store Accumulator in Memory
	DEY                 ; $F4B7: $88 - Decrement Index Y by One
	BPL $FA             ; $F4B8: $10 $FA - Branch on Result Plus
	RTS                 ; $F4BA: $60 - Return from Subroutine
	BIT $D1             ; $F4BB: $24 $D1 - Test Bits in Memory with Accumulator
	BMI $16             ; $F4BD: $30 $16 - Branch on Result Minus
	LDA #$00            ; $F4BF: $A9 $00 - Load Accumulator with Memory
	STA $CF             ; $F4C1: $85 $CF - Store Accumulator in Memory
	LDA $05CF           ; $F4C3: $AD $CF $05 - Load Accumulator with Memory
	BEQ $0D             ; $F4C6: $F0 $0D - Branch on Result Zero
	JSR $9FDE           ; $F4C8: $20 $DE $9F - Jump to New Location Saving Return Address
	CLC #$03            ; $F4CB: $29 $03 - Clear Carry Flag
	SEC                 ; $F4CD: $38 - Set Carry Flag
	SBC #$02            ; $F4CE: $E9 $02 - Subtract Memory from Accumulator with Borrow
	STA $CF             ; $F4D0: $85 $CF - Store Accumulator in Memory
	DEC $05CF           ; $F4D2: $CE $CF $05 - Decrement Memory by One
	JSR $8D19           ; $F4D5: $20 $19 $8D - Jump to New Location Saving Return Address
	LDA $05CE           ; $F4D8: $AD $CE $05 - Load Accumulator with Memory
	SEC                 ; $F4DB: $38 - Set Carry Flag
	SBC $D0             ; $F4DC: $E5 $D0 - Subtract Memory from Accumulator with Borrow
	STA $05CE           ; $F4DE: $8D $CE $05 - Store Accumulator in Memory
	LDA $CC             ; $F4E1: $A5 $CC - Load Accumulator with Memory
	TAY                 ; $F4E3: $A8 - Transfer Accumulator to Index Y
	SBC #$00            ; $F4E4: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $DA             ; $F4E6: $85 $DA - Store Accumulator in Memory
	TYA                 ; $F4E8: $98 - Transfer Index Y to Accumulator
	SEC                 ; $F4E9: $38 - Set Carry Flag
	SBC $DA             ; $F4EA: $E5 $DA - Subtract Memory from Accumulator with Borrow
	BNE $13             ; $F4EC: $D0 $13 - Branch on Result not Zero
	RTS                 ; $F4EE: $60 - Return from Subroutine
	LDA $CE             ; $F4EF: $A5 $CE - Load Accumulator with Memory
	BEQ $0C             ; $F4F1: $F0 $0C - Branch on Result Zero
	CMP $C7             ; $F4F3: $C5 $C7 - Compare Memory with Accumulator
	BNE $08             ; $F4F5: $D0 $08 - Branch on Result not Zero
	LDA $CD             ; $F4F7: $A5 $CD - Load Accumulator with Memory
	CMP $C6             ; $F4F9: $C5 $C6 - Compare Memory with Accumulator
	BCS $02             ; $F4FB: $B0 $02 - Branch on Carry Set
	SEC                 ; $F4FD: $38 - Set Carry Flag
	RTS                 ; $F4FE: $60 - Return from Subroutine
	CLC                 ; $F4FF: $18 - Clear Carry Flag
	RTS                 ; $F500: $60 - Return from Subroutine
	STA $DB             ; $F501: $85 $DB - Store Accumulator in Memory
	JSR $F4EF           ; $F503: $20 $EF $F4 - Jump to New Location Saving Return Address
	BCS $34             ; $F506: $B0 $34 - Branch on Carry Set
	LDA $CD             ; $F508: $A5 $CD - Load Accumulator with Memory
	CLC #$08            ; $F50A: $29 $08 - Clear Carry Flag
	STA $DA             ; $F50C: $85 $DA - Store Accumulator in Memory
	LDA $CC             ; $F50E: $A5 $CC - Load Accumulator with Memory
	STA $05C9           ; $F510: $8D $C9 $05 - Store Accumulator in Memory
	SEC                 ; $F513: $38 - Set Carry Flag
	SBC $DB             ; $F514: $E5 $DB - Subtract Memory from Accumulator with Borrow
	STA $CC             ; $F516: $85 $CC - Store Accumulator in Memory
	LDA $CD             ; $F518: $A5 $CD - Load Accumulator with Memory
	SEC                 ; $F51A: $38 - Set Carry Flag
	SBC $DB             ; $F51B: $E5 $DB - Subtract Memory from Accumulator with Borrow
	CMP #$F0            ; $F51D: $C9 $F0 - Compare Memory with Accumulator
	BCC $13             ; $F51F: $90 $13 - Branch on Carry Clear
	SBC #$10            ; $F521: $E9 $10 - Subtract Memory from Accumulator with Borrow
	PHA                 ; $F523: $48 - Push Accumulator on Stack
	LDA $CE             ; $F524: $A5 $CE - Load Accumulator with Memory
	LSR A               ; $F526: $4A $08 - Shift One Bit Right (Memory or Accumulator)
	LDA $FE             ; $F528: $A5 $FE - Load Accumulator with Memory
	LSR A               ; $F52A: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	PLP                 ; $F52C: $28 - Pull Processor Status from Stack
	ROL A               ; $F52D: $2A - Rotate One Bit Left
	ASL A               ; $F52E: $0A - Shift Left One Bit
	STA $FE             ; $F52F: $85 $FE - Store Accumulator in Memory
	DEC $CE             ; $F531: $C6 $CE - Decrement Memory by One
	PLA                 ; $F533: $68 - Pull Accumulator from Stack
	STA $CD             ; $F534: $85 $CD - Store Accumulator in Memory
	CLC #$08            ; $F536: $29 $08 - Clear Carry Flag
	CMP $DA             ; $F538: $C5 $DA - Compare Memory with Accumulator
	BNE $01             ; $F53A: $D0 $01 - Branch on Result not Zero
	RTS                 ; $F53C: $60 - Return from Subroutine
	JSR $F7CE           ; $F53D: $20 $CE $F7 - Jump to New Location Saving Return Address
	LDA $D2             ; $F540: $A5 $D2 - Load Accumulator with Memory
	LSR A               ; $F542: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	JSR $F552           ; $F545: $20 $52 $F5 - Jump to New Location Saving Return Address
	JSR $F673           ; $F548: $20 $73 $F6 - Jump to New Location Saving Return Address
	LDA #$D6            ; $F54B: $A9 $D6 - Load Accumulator with Memory
	LDY #$F6            ; $F54D: $A0 $F6 - Load Index Y with Memory
	JMP $C527           ; $F54F: $4C $27 $C5 - Jump to New Location
	LDA #$04            ; $F552: $A9 $04 - Load Accumulator with Memory
	STA $E2             ; $F554: $85 $E2 - Store Accumulator in Memory
	LDA $D2             ; $F556: $A5 $D2 - Load Accumulator with Memory
	CLC #$02            ; $F558: $29 $02 - Clear Carry Flag
	ASL A               ; $F55A: $0A - Shift Left One Bit
	TAY                 ; $F55B: $A8 - Transfer Accumulator to Index Y
	LDX #$00            ; $F55C: $A2 $00 - Load Index X with Memory
	STX $E3             ; $F55E: $86 $E3 - Store Index X in Memory
	LDA $F88B,Y         ; $F560: $B9 $8B $F8 - Load Accumulator with Memory
	STA $DE,X           ; $F563: $95 $DE - Store Accumulator in Memory
	LDA $F88C,Y         ; $F565: $B9 $8C $F8 - Load Accumulator with Memory
	STA $DF,X           ; $F568: $95 $DF - Store Accumulator in Memory
	LDA $0042,Y         ; $F56A: $B9 $42 $00 - Load Accumulator with Memory
	SEC                 ; $F56D: $38 - Set Carry Flag
	SBC #$24            ; $F56E: $E9 $24 - Subtract Memory from Accumulator with Borrow
	STA $DA,X           ; $F570: $95 $DA - Store Accumulator in Memory
	LDA $0043,Y         ; $F572: $B9 $43 $00 - Load Accumulator with Memory
	SBC #$00            ; $F575: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $DB,X           ; $F577: $95 $DB - Store Accumulator in Memory
	INY                 ; $F579: $C8 - Increment Index Y by One
	INY                 ; $F57A: $C8 - Increment Index Y by One
	INX                 ; $F57B: $E8 - Increment Index X by One
	INX                 ; $F57C: $E8 - Increment Index X by One
	CPX #$04            ; $F57D: $E0 $04 - Compare Memory and Index Y
	BNE $DF             ; $F57F: $D0 $DF - Branch on Result not Zero
	LDA $D2             ; $F581: $A5 $D2 - Load Accumulator with Memory
	CLC #$03            ; $F583: $29 $03 - Clear Carry Flag
	CMP #$03            ; $F585: $C9 $03 - Compare Memory with Accumulator
	BNE $2D             ; $F587: $D0 $2D - Branch on Result not Zero
	LDX #$00            ; $F589: $A2 $00 - Load Index X with Memory
	DEC $05D3           ; $F58B: $CE $D3 $05 - Decrement Memory by One
	BPL $1C             ; $F58E: $10 $1C - Branch on Result Plus
	LDY #$00            ; $F590: $A0 $00 - Load Index Y with Memory
	LDA ($CA),Y         ; $F592: $B1 $CA $29 - Load Accumulator with Memory
	STA $05D3           ; $F596: $8D $D3 $05 - Store Accumulator in Memory
	LDA ($CA),Y         ; $F599: $B1 $CA $E6 - Load Accumulator with Memory
	DEX                 ; $F59C: $CA - Decrement Index X by One
	BNE $02             ; $F59D: $D0 $02 - Branch on Result not Zero
	INC $CB             ; $F59F: $E6 $CB - Increment Memory by One
	LSR A               ; $F5A1: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $F5A3: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	BEQ $05             ; $F5A5: $F0 $05 - Branch on Result Zero
	CLC                 ; $F5A7: $18 - Clear Carry Flag
	ADC #$2F            ; $F5A8: $69 $2F - Add Memory to Accumulator with Carry
	BNE $02             ; $F5AA: $D0 $02 - Branch on Result not Zero
	LDA #$FF            ; $F5AC: $A9 $FF - Load Accumulator with Memory
	STA $05CA,X         ; $F5AE: $9D $CA $05 - Store Accumulator in Memory
	INX                 ; $F5B1: $E8 - Increment Index X by One
	CPX #$04            ; $F5B2: $E0 $04 - Compare Memory and Index Y
	BNE $D5             ; $F5B4: $D0 $D5 - Branch on Result not Zero
	LDY #$00            ; $F5B6: $A0 $00 - Load Index Y with Memory
	LDA ($C0),Y         ; $F5B8: $B1 $C0 $4A - Load Accumulator with Memory
	ROL $E3             ; $F5BB: $26 $E3 - Rotate One Bit Left
	BIT $6F             ; $F5BD: $24 $6F - Test Bits in Memory with Accumulator
	BPL $08             ; $F5BF: $10 $08 - Branch on Result Plus
	LDX $E2             ; $F5C1: $A6 $E2 - Load Index X with Memory
	LDY $05C9,X         ; $F5C3: $BC $C9 $05 - Load Index Y with Memory
	BMI $01             ; $F5C6: $30 $01 - Branch on Result Minus
	TYA                 ; $F5C8: $98 - Transfer Index Y to Accumulator
	TAY                 ; $F5C9: $A8 - Transfer Accumulator to Index Y
	TAX                 ; $F5CA: $AA - Transfer Accumulator to Index X
	INC $C0             ; $F5CB: $E6 $C0 - Increment Memory by One
	BNE $02             ; $F5CD: $D0 $02 - Branch on Result not Zero
	INC $C1             ; $F5CF: $E6 $C1 - Increment Memory by One
	CPY #$24            ; $F5D1: $C0 $24 - Compare Memory and Index Y
	BCS $04             ; $F5D3: $B0 $04 - Branch on Carry Set
	LDA ($E0),Y         ; $F5D5: $B1 $E0 $90 - Load Accumulator with Memory
	LDA ($DC),Y         ; $F5D9: $B1 $DC $48 - Load Accumulator with Memory
	TXA                 ; $F5DC: $8A - Transfer Index X to Accumulator
	TAY                 ; $F5DD: $A8 - Transfer Accumulator to Index Y
	CPY #$24            ; $F5DE: $C0 $24 - Compare Memory and Index Y
	BCS $04             ; $F5E0: $B0 $04 - Branch on Carry Set
	LDA ($DE),Y         ; $F5E2: $B1 $DE $90 - Load Accumulator with Memory
	LDA ($DA),Y         ; $F5E6: $B1 $DA $48 - Load Accumulator with Memory
	DEC $E2             ; $F5E9: $C6 $E2 - Decrement Memory by One
	BNE $C9             ; $F5EB: $D0 $C9 - Branch on Result not Zero
	LDA $D4             ; $F5ED: $A5 $D4 - Load Accumulator with Memory
	CLC                 ; $F5EF: $18 - Clear Carry Flag
	ADC $E3             ; $F5F0: $65 $E3 - Add Memory to Accumulator with Carry
	TAX                 ; $F5F2: $AA - Transfer Accumulator to Index X
	LDA #$08            ; $F5F3: $A9 $08 - Load Accumulator with Memory
	STA $E2             ; $F5F5: $85 $E2 - Store Accumulator in Memory
	PLA                 ; $F5F7: $68 - Pull Accumulator from Stack
	STA $0600,X         ; $F5F8: $9D $00 $06 - Store Accumulator in Memory
	JSR $F634           ; $F5FB: $20 $34 $F6 - Jump to New Location Saving Return Address
	BNE $F7             ; $F5FE: $D0 $F7 - Branch on Result not Zero
	LDA #$08            ; $F600: $A9 $08 - Load Accumulator with Memory
	STA $E2             ; $F602: $85 $E2 - Store Accumulator in Memory
	TXA                 ; $F604: $8A - Transfer Index X to Accumulator
	TAY                 ; $F605: $A8 - Transfer Accumulator to Index Y
	DEY                 ; $F606: $88 - Decrement Index Y by One
	TYA                 ; $F607: $98 - Transfer Index Y to Accumulator
	CLC #$0F            ; $F608: $29 $0F - Clear Carry Flag
	CLC                 ; $F60A: $18 - Clear Carry Flag
	ADC $D4             ; $F60B: $65 $D4 - Add Memory to Accumulator with Carry
	TAY                 ; $F60D: $A8 - Transfer Accumulator to Index Y
	LDA $0600,Y         ; $F60E: $B9 $00 $06 - Load Accumulator with Memory
	STY $E3             ; $F611: $84 $E3 - Sore Index Y in Memory
	JSR $F63F           ; $F613: $20 $3F $F6 - Jump to New Location Saving Return Address
	LDY $E3             ; $F616: $A4 $E3 - Load Index Y with Memory
	STA $0600,X         ; $F618: $9D $00 $06 - Store Accumulator in Memory
	JSR $F634           ; $F61B: $20 $34 $F6 - Jump to New Location Saving Return Address
	BNE $E6             ; $F61E: $D0 $E6 - Branch on Result not Zero
	LDA $D2             ; $F620: $A5 $D2 - Load Accumulator with Memory
	CLC #$03            ; $F622: $29 $03 - Clear Carry Flag
	CMP #$01            ; $F624: $C9 $01 - Compare Memory with Accumulator
	BEQ $0B             ; $F626: $F0 $0B - Branch on Result Zero
	SEC                 ; $F628: $38 - Set Carry Flag
	LDA $C0             ; $F629: $A5 $C0 - Load Accumulator with Memory
	SBC #$04            ; $F62B: $E9 $04 - Subtract Memory from Accumulator with Borrow
	STA $C0             ; $F62D: $85 $C0 - Store Accumulator in Memory
	BCS $02             ; $F62F: $B0 $02 - Branch on Carry Set
	DEC $C1             ; $F631: $C6 $C1 - Decrement Memory by One
	RTS                 ; $F633: $60 - Return from Subroutine
	INX                 ; $F634: $E8 - Increment Index X by One
	TXA                 ; $F635: $8A - Transfer Index X to Accumulator
	CLC #$0F            ; $F636: $29 $0F - Clear Carry Flag
	BNE $02             ; $F638: $D0 $02 - Branch on Result not Zero
	LDX $D4             ; $F63A: $A6 $D4 - Load Index X with Memory
	DEC $E2             ; $F63C: $C6 $E2 - Decrement Memory by One
	RTS                 ; $F63E: $60 - Return from Subroutine
	CMP #$1E            ; $F63F: $C9 $1E - Compare Memory with Accumulator
	BCC $11             ; $F641: $90 $11 - Branch on Carry Clear
	LDY $BD             ; $F643: $A4 $BD - Load Index Y with Memory
	CMP $AF0C,Y         ; $F645: $D9 $0C $AF - Compare Memory with Accumulator
	BCS $0A             ; $F648: $B0 $0A - Branch on Carry Set
	TAY                 ; $F64A: $A8 - Transfer Accumulator to Index Y
	LSR A               ; $F64B: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	DEY                 ; $F64E: $88 - Decrement Index Y by One
	TYA                 ; $F64F: $98 - Transfer Index Y to Accumulator
	RTS                 ; $F650: $60 - Return from Subroutine
	INY                 ; $F651: $C8 - Increment Index Y by One
	TYA                 ; $F652: $98 - Transfer Index Y to Accumulator
	RTS                 ; $F653: $60 - Return from Subroutine
	CMP #$11            ; $F654: $C9 $11 - Compare Memory with Accumulator
	BEQ $10             ; $F656: $F0 $10 - Branch on Result Zero
	LDY #$05            ; $F658: $A0 $05 - Load Index Y with Memory
	CMP $AF00,Y         ; $F65A: $D9 $00 $AF - Compare Memory with Accumulator
	BEQ $0C             ; $F65D: $F0 $0C - Branch on Result Zero
	CMP $AF06,Y         ; $F65F: $D9 $06 $AF - Compare Memory with Accumulator
	BEQ $0B             ; $F662: $F0 $0B - Branch on Result Zero
	DEY                 ; $F664: $88 - Decrement Index Y by One
	BPL $F3             ; $F665: $10 $F3 - Branch on Result Plus
	RTS                 ; $F667: $60 - Return from Subroutine
	LDA #$00            ; $F668: $A9 $00 - Load Accumulator with Memory
	RTS                 ; $F66A: $60 - Return from Subroutine
	LDA $AF06,Y         ; $F66B: $B9 $06 $AF - Load Accumulator with Memory
	RTS                 ; $F66E: $60 - Return from Subroutine
	LDA $AF00,Y         ; $F66F: $B9 $00 $AF - Load Accumulator with Memory
	RTS                 ; $F672: $60 - Return from Subroutine
	LDX $D4             ; $F673: $A6 $D4 - Load Index X with Memory
	LDA $D3             ; $F675: $A5 $D3 - Load Accumulator with Memory
	CLC #$03            ; $F677: $29 $03 - Clear Carry Flag
	CMP #$03            ; $F679: $C9 $03 - Compare Memory with Accumulator
	BEQ $28             ; $F67B: $F0 $28 - Branch on Result Zero
	CMP #$01            ; $F67D: $C9 $01 - Compare Memory with Accumulator
	BEQ $01             ; $F67F: $F0 $01 - Branch on Result Zero
	RTS                 ; $F681: $60 - Return from Subroutine
	LDY #$00            ; $F682: $A0 $00 - Load Index Y with Memory
	STY $DA             ; $F684: $84 $DA - Sore Index Y in Memory
	LDY $0601,X         ; $F686: $BC $01 $06 - Load Index Y with Memory
	JSR $F6CD           ; $F689: $20 $CD $F6 - Jump to New Location Saving Return Address
	LDY $0600,X         ; $F68C: $BC $00 $06 - Load Index Y with Memory
	JSR $F6CD           ; $F68F: $20 $CD $F6 - Jump to New Location Saving Return Address
	INX                 ; $F692: $E8 - Increment Index X by One
	INX                 ; $F693: $E8 - Increment Index X by One
	LDY $DA             ; $F694: $A4 $DA - Load Index Y with Memory
	LDA $DE             ; $F696: $A5 $DE - Load Accumulator with Memory
	ASL A               ; $F698: $0A - Shift Left One Bit
	ASL A               ; $F699: $0A - Shift Left One Bit
	ASL A               ; $F69A: $0A - Shift Left One Bit
	ASL A               ; $F69B: $0A - Shift Left One Bit
	STA $012A,Y         ; $F69C: $99 $2A $01 - Store Accumulator in Memory
	INY                 ; $F69F: $C8 - Increment Index Y by One
	CPY #$08            ; $F6A0: $C0 $08 - Compare Memory and Index Y
	BNE $E0             ; $F6A2: $D0 $E0 - Branch on Result not Zero
	RTS                 ; $F6A4: $60 - Return from Subroutine
	LDY #$00            ; $F6A5: $A0 $00 - Load Index Y with Memory
	STY $DE             ; $F6A7: $84 $DE - Sore Index Y in Memory
	STY $DA             ; $F6A9: $84 $DA - Sore Index Y in Memory
	LDY $0601,X         ; $F6AB: $BC $01 $06 - Load Index Y with Memory
	JSR $F6CD           ; $F6AE: $20 $CD $F6 - Jump to New Location Saving Return Address
	LDY $0600,X         ; $F6B1: $BC $00 $06 - Load Index Y with Memory
	JSR $F6CD           ; $F6B4: $20 $CD $F6 - Jump to New Location Saving Return Address
	INX                 ; $F6B7: $E8 - Increment Index X by One
	INX                 ; $F6B8: $E8 - Increment Index X by One
	LDY $DA             ; $F6B9: $A4 $DA - Load Index Y with Memory
	LDA $DE             ; $F6BB: $A5 $DE - Load Accumulator with Memory
	ORA $012A,Y         ; $F6BD: $19 $2A $01 - OR Memory with Accumulator
	STA $012A,Y         ; $F6C0: $99 $2A $01 - Store Accumulator in Memory
	LDA #$00            ; $F6C3: $A9 $00 - Load Accumulator with Memory
	STA $DE             ; $F6C5: $85 $DE - Store Accumulator in Memory
	INY                 ; $F6C7: $C8 - Increment Index Y by One
	CPY #$08            ; $F6C8: $C0 $08 - Compare Memory and Index Y
	BNE $DD             ; $F6CA: $D0 $DD - Branch on Result not Zero
	RTS                 ; $F6CC: $60 - Return from Subroutine
	LDA $DE             ; $F6CD: $A5 $DE - Load Accumulator with Memory
	ASL A               ; $F6CF: $0A - Shift Left One Bit
	ASL A               ; $F6D0: $0A - Shift Left One Bit
	ORA $0132,Y         ; $F6D1: $19 $32 $01 - OR Memory with Accumulator
	STA $DE             ; $F6D4: $85 $DE - Store Accumulator in Memory
	RTS                 ; $F6D6: $60 - Return from Subroutine
	LDY $C3             ; $F6D7: $A4 $C3 - Load Index Y with Memory
	LDA $C2             ; $F6D9: $A5 $C2 - Load Accumulator with Memory
	JSR $EEDE           ; $F6DB: $20 $DE $EE - Jump to New Location Saving Return Address
	LDA $D2             ; $F6DE: $A5 $D2 - Load Accumulator with Memory
	CLC #$01            ; $F6E0: $29 $01 - Clear Carry Flag
	ASL A               ; $F6E2: $0A - Shift Left One Bit
	ASL A               ; $F6E3: $0A - Shift Left One Bit
	TAY                 ; $F6E4: $A8 - Transfer Accumulator to Index Y
	LDX #$00            ; $F6E5: $A2 $00 - Load Index X with Memory
	LDA $F883,Y         ; $F6E7: $B9 $83 $F8 - Load Accumulator with Memory
	STA $EF,X           ; $F6EA: $95 $EF - Store Accumulator in Memory
	LDA $F884,Y         ; $F6EC: $B9 $84 $F8 - Load Accumulator with Memory
	STA $F0,X           ; $F6EF: $95 $F0 - Store Accumulator in Memory
	LDA $003A,Y         ; $F6F1: $B9 $3A $00 - Load Accumulator with Memory
	SEC                 ; $F6F4: $38 - Set Carry Flag
	SBC #$4C            ; $F6F5: $E9 $4C - Subtract Memory from Accumulator with Borrow
	STA $EB,X           ; $F6F7: $95 $EB - Store Accumulator in Memory
	LDA $003B,Y         ; $F6F9: $B9 $3B $00 - Load Accumulator with Memory
	SBC #$00            ; $F6FC: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $EC,X           ; $F6FE: $95 $EC - Store Accumulator in Memory
	INY                 ; $F700: $C8 - Increment Index Y by One
	INY                 ; $F701: $C8 - Increment Index Y by One
	INX                 ; $F702: $E8 - Increment Index X by One
	INX                 ; $F703: $E8 - Increment Index X by One
	CPX #$04            ; $F704: $E0 $04 - Compare Memory and Index Y
	BNE $DF             ; $F706: $D0 $DF - Branch on Result not Zero
	TSX                 ; $F708: $BA - Transfer Stack Pointer to Index X
	STX $F3             ; $F709: $86 $F3 - Store Index X in Memory
	LDX #$29            ; $F70B: $A2 $29 - Load Index X with Memory
	TXS                 ; $F70D: $9A - Transfer Index X to Stack Register
	LDA $D4             ; $F70E: $A5 $D4 - Load Accumulator with Memory
	TAX                 ; $F710: $AA - Transfer Accumulator to Index X
	CLC                 ; $F711: $18 - Clear Carry Flag
	ADC #$10            ; $F712: $69 $10 - Add Memory to Accumulator with Carry
	STA $EA             ; $F714: $85 $EA - Store Accumulator in Memory
	LDY $0600,X         ; $F716: $BC $00 $06 - Load Index Y with Memory
	CPY #$4C            ; $F719: $C0 $4C - Compare Memory and Index Y
	BCS $04             ; $F71B: $B0 $04 - Branch on Carry Set
	LDA ($EF),Y         ; $F71D: $B1 $EF $90 - Load Accumulator with Memory
	LDA ($EB),Y         ; $F721: $B1 $EB $2C - Load Accumulator with Memory
	ORA $10             ; $F725: $05 $10 - OR Memory with Accumulator
	CMP #$12            ; $F728: $C9 $12 - Compare Memory with Accumulator
	BCC $10             ; $F72A: $90 $10 - Branch on Carry Clear
	CMP #$18            ; $F72C: $C9 $18 - Compare Memory with Accumulator
	BCS $0C             ; $F72E: $B0 $0C - Branch on Carry Set
	LDA #$10            ; $F730: $A9 $10 - Load Accumulator with Memory
	STA $2007           ; $F732: $8D $07 $20 - Store Accumulator in Memory
	PHA                 ; $F735: $48 - Push Accumulator on Stack
	STA $2007           ; $F736: $8D $07 $20 - Store Accumulator in Memory
	PHA                 ; $F739: $48 - Push Accumulator on Stack
	BNE $15             ; $F73A: $D0 $15 - Branch on Result not Zero
	STA $2007           ; $F73C: $8D $07 $20 - Store Accumulator in Memory
	PHA                 ; $F73F: $48 - Push Accumulator on Stack
	LDY $0600,X         ; $F740: $BC $00 $06 - Load Index Y with Memory
	CPY #$4C            ; $F743: $C0 $4C - Compare Memory and Index Y
	BCS $04             ; $F745: $B0 $04 - Branch on Carry Set
	LDA ($F1),Y         ; $F747: $B1 $F1 $90 - Load Accumulator with Memory
	LDA ($ED),Y         ; $F74B: $B1 $ED $8D - Load Accumulator with Memory
	JSR $E848           ; $F74F: $20 $48 $E8 - Jump to New Location Saving Return Address
	CPX $EA             ; $F752: $E4 $EA - Compare Memory and Index Y
	BNE $C0             ; $F754: $D0 $C0 - Branch on Result not Zero
	LDX $F3             ; $F756: $A6 $F3 - Load Index X with Memory
	TXS                 ; $F758: $9A - Transfer Index X to Stack Register
	LDY $C5             ; $F759: $A4 $C5 - Load Index Y with Memory
	LDA $C4             ; $F75B: $A5 $C4 - Load Accumulator with Memory
	JSR $EEDE           ; $F75D: $20 $DE $EE - Jump to New Location Saving Return Address
	LDY #$00            ; $F760: $A0 $00 - Load Index Y with Memory
	LDA $012A,Y         ; $F762: $B9 $2A $01 - Load Accumulator with Memory
	STA $2007           ; $F765: $8D $07 $20 - Store Accumulator in Memory
	INY                 ; $F768: $C8 - Increment Index Y by One
	CPY #$08            ; $F769: $C0 $08 - Compare Memory and Index Y
	BNE $F5             ; $F76B: $D0 $F5 - Branch on Result not Zero
	INC $7B             ; $F76D: $E6 $7B - Increment Memory by One
	LDA $D2             ; $F76F: $A5 $D2 - Load Accumulator with Memory
	LSR A               ; $F771: $4A $B0 - Shift One Bit Right (Memory or Accumulator)
	LDA $D4             ; $F774: $A5 $D4 - Load Accumulator with Memory
	SEC                 ; $F776: $38 - Set Carry Flag
	SBC #$10            ; $F777: $E9 $10 - Subtract Memory from Accumulator with Borrow
	STA $D4             ; $F779: $85 $D4 - Store Accumulator in Memory
	LDA $D3             ; $F77B: $A5 $D3 - Load Accumulator with Memory
	CLC #$03            ; $F77D: $29 $03 - Clear Carry Flag
	BNE $0E             ; $F77F: $D0 $0E - Branch on Result not Zero
	SEC                 ; $F781: $38 - Set Carry Flag
	LDA $C4             ; $F782: $A5 $C4 - Load Accumulator with Memory
	SBC #$08            ; $F784: $E9 $08 - Subtract Memory from Accumulator with Borrow
	STA $C4             ; $F786: $85 $C4 - Store Accumulator in Memory
	BCS $02             ; $F788: $B0 $02 - Branch on Carry Set
	DEC $C5             ; $F78A: $C6 $C5 - Decrement Memory by One
	JSR $F4B0           ; $F78C: $20 $B0 $F4 - Jump to New Location Saving Return Address
	LDA $C2             ; $F78F: $A5 $C2 - Load Accumulator with Memory
	STA $C8             ; $F791: $85 $C8 - Store Accumulator in Memory
	SEC                 ; $F793: $38 - Set Carry Flag
	SBC #$20            ; $F794: $E9 $20 - Subtract Memory from Accumulator with Borrow
	STA $C2             ; $F796: $85 $C2 - Store Accumulator in Memory
	LDA $C3             ; $F798: $A5 $C3 - Load Accumulator with Memory
	STA $C9             ; $F79A: $85 $C9 - Store Accumulator in Memory
	SBC #$00            ; $F79C: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $C3             ; $F79E: $85 $C3 - Store Accumulator in Memory
	CMP #$24            ; $F7A0: $C9 $24 - Compare Memory with Accumulator
	BCS $0D             ; $F7A2: $B0 $0D - Branch on Carry Set
	CMP #$20            ; $F7A4: $C9 $20 - Compare Memory with Accumulator
	BCS $1F             ; $F7A6: $B0 $1F - Branch on Carry Set
	LDA #$2B            ; $F7A8: $A9 $2B - Load Accumulator with Memory
	STA $C3             ; $F7AA: $85 $C3 - Store Accumulator in Memory
	STA $C5             ; $F7AC: $85 $C5 - Store Accumulator in Memory
	JMP $F7BB           ; $F7AE: $4C $BB $F7 - Jump to New Location
	CMP #$28            ; $F7B1: $C9 $28 - Compare Memory with Accumulator
	BCS $12             ; $F7B3: $B0 $12 - Branch on Carry Set
	LDA #$23            ; $F7B5: $A9 $23 - Load Accumulator with Memory
	STA $C3             ; $F7B7: $85 $C3 - Store Accumulator in Memory
	STA $C5             ; $F7B9: $85 $C5 - Store Accumulator in Memory
	LDA #$A0            ; $F7BB: $A9 $A0 - Load Accumulator with Memory
	STA $C2             ; $F7BD: $85 $C2 - Store Accumulator in Memory
	LDA #$F8            ; $F7BF: $A9 $F8 - Load Accumulator with Memory
	STA $C4             ; $F7C1: $85 $C4 - Store Accumulator in Memory
	DEC $D3             ; $F7C3: $C6 $D3 - Decrement Memory by One
	DEC $D3             ; $F7C5: $C6 $D3 - Decrement Memory by One
	INC $D2             ; $F7C7: $E6 $D2 - Increment Memory by One
	INC $D3             ; $F7C9: $E6 $D3 - Increment Memory by One
	JMP $C541           ; $F7CB: $4C $41 $C5 - Jump to New Location
	DEC $05D1           ; $F7CE: $CE $D1 $05 - Decrement Memory by One
	BPL $1A             ; $F7D1: $10 $1A - Branch on Result Plus
	LDY #$02            ; $F7D3: $A0 $02 - Load Index Y with Memory
	JSR $CAB7           ; $F7D5: $20 $B7 $CA - Jump to New Location Saving Return Address
	TAY                 ; $F7D8: $A8 - Transfer Accumulator to Index Y
	BEQ $0A             ; $F7D9: $F0 $0A - Branch on Result Zero
	DEY                 ; $F7DB: $88 - Decrement Index Y by One
	BEQ $10             ; $F7DC: $F0 $10 - Branch on Result Zero
	DEY                 ; $F7DE: $88 - Decrement Index Y by One
	BEQ $4E             ; $F7DF: $F0 $4E - Branch on Result Zero
	LDA #$7F            ; $F7E1: $A9 $7F - Load Accumulator with Memory
	BNE $05             ; $F7E3: $D0 $05 - Branch on Result not Zero
	LDY #$03            ; $F7E5: $A0 $03 - Load Index Y with Memory
	JSR $CAB7           ; $F7E7: $20 $B7 $CA - Jump to New Location Saving Return Address
	STA $05D1           ; $F7EA: $8D $D1 $05 - Store Accumulator in Memory
	RTS                 ; $F7ED: $60 - Return from Subroutine
	LDY #$02            ; $F7EE: $A0 $02 - Load Index Y with Memory
	JSR $CAB7           ; $F7F0: $20 $B7 $CA - Jump to New Location Saving Return Address
	LSR A               ; $F7F3: $4A $6A - Shift One Bit Right (Memory or Accumulator)
	ROR A               ; $F7F5: $6A - Rotate One Bit Right
	STA $DE             ; $F7F6: $85 $DE - Store Accumulator in Memory
	JSR $CAB5           ; $F7F8: $20 $B5 $CA - Jump to New Location Saving Return Address
	ASL A               ; $F7FB: $0A - Shift Left One Bit
	ASL A               ; $F7FC: $0A - Shift Left One Bit
	ASL A               ; $F7FD: $0A - Shift Left One Bit
	STA $DC             ; $F7FE: $85 $DC - Store Accumulator in Memory
	JSR $CAB5           ; $F800: $20 $B5 $CA - Jump to New Location Saving Return Address
	TAY                 ; $F803: $A8 - Transfer Accumulator to Index Y
	LDA $DAB1,Y         ; $F804: $B9 $B1 $DA - Load Accumulator with Memory
	TAX                 ; $F807: $AA - Transfer Accumulator to Index X
	LDA $05D2           ; $F808: $AD $D2 $05 - Load Accumulator with Memory
	BEQ $1F             ; $F80B: $F0 $1F - Branch on Result Zero
	CPX #$21            ; $F80D: $E0 $21 - Compare Memory and Index Y
	BEQ $34             ; $F80F: $F0 $34 - Branch on Result Zero
	LDA $BD67,X         ; $F811: $BD $67 $BD - Load Accumulator with Memory
	TAY                 ; $F814: $A8 - Transfer Accumulator to Index Y
	LDA $05C9           ; $F815: $AD $C9 $05 - Load Accumulator with Memory
	CLC                 ; $F818: $18 - Clear Carry Flag
	ADC $BD4D,Y         ; $F819: $79 $4D $BD - Add Memory to Accumulator with Carry
	TAY                 ; $F81C: $A8 - Transfer Accumulator to Index Y
	LDA $DC             ; $F81D: $A5 $DC - Load Accumulator with Memory
	JSR $A8E3           ; $F81F: $20 $E3 $A8 - Jump to New Location Saving Return Address
	BCC $08             ; $F822: $90 $08 - Branch on Carry Clear
	LDA $0380,X         ; $F824: $BD $80 $03 - Load Accumulator with Memory
	ORA $DE             ; $F827: $05 $DE - OR Memory with Accumulator
	STA $0380,X         ; $F829: $9D $80 $03 - Store Accumulator in Memory
	JMP $F7D3           ; $F82C: $4C $D3 $F7 - Jump to New Location
	LDA #$00            ; $F82F: $A9 $00 - Load Accumulator with Memory
	STA $DE             ; $F831: $85 $DE - Store Accumulator in Memory
	JSR $CAAD           ; $F833: $20 $AD $CA - Jump to New Location Saving Return Address
	ASL A               ; $F836: $0A - Shift Left One Bit
	ASL A               ; $F837: $0A - Shift Left One Bit
	ASL A               ; $F838: $0A - Shift Left One Bit
	ASL A               ; $F839: $0A - Shift Left One Bit
	CLC                 ; $F83A: $18 - Clear Carry Flag
	ADC #$08            ; $F83B: $69 $08 - Add Memory to Accumulator with Carry
	STA $DC             ; $F83D: $85 $DC - Store Accumulator in Memory
	JSR $CAAD           ; $F83F: $20 $AD $CA - Jump to New Location Saving Return Address
	JMP $F803           ; $F842: $4C $03 $F8 - Jump to New Location
	LDA $05C9           ; $F845: $AD $C9 $05 - Load Accumulator with Memory
	CLC                 ; $F848: $18 - Clear Carry Flag
	ADC #$04            ; $F849: $69 $04 - Add Memory to Accumulator with Carry
	STA $D5             ; $F84B: $85 $D5 - Store Accumulator in Memory
	JSR $F869           ; $F84D: $20 $69 $F8 - Jump to New Location Saving Return Address
	JMP $F7D3           ; $F850: $4C $D3 $F7 - Jump to New Location
	LDA $0440,X         ; $F853: $BD $40 $04 - Load Accumulator with Memory
	PHA                 ; $F856: $48 - Push Accumulator on Stack
	LDA $D5             ; $F857: $A5 $D5 - Load Accumulator with Memory
	STA $6A             ; $F859: $85 $6A - Store Accumulator in Memory
	LDY $DC             ; $F85B: $A4 $DC - Load Index Y with Memory
	LDA #$21            ; $F85D: $A9 $21 - Load Accumulator with Memory
	JSR $A88A           ; $F85F: $20 $8A $A8 - Jump to New Location Saving Return Address
	PLA                 ; $F862: $68 - Pull Accumulator from Stack
	BEQ $03             ; $F863: $F0 $03 - Branch on Result Zero
	STA $0440,X         ; $F865: $9D $40 $04 - Store Accumulator in Memory
	RTS                 ; $F868: $60 - Return from Subroutine
	LDX #$03            ; $F869: $A2 $03 - Load Index X with Memory
	LDA $73,X           ; $F86B: $B5 $73 $F0 - Load Accumulator with Memory
	BPL $20             ; $F86E: $10 $20 - Branch on Result Plus
	SED                 ; $F871: $F8 - Set Decimal Flag
	LDA $DC             ; $F872: $A5 $DC - Load Accumulator with Memory
	CLC                 ; $F874: $18 - Clear Carry Flag
	ADC #$08            ; $F875: $69 $08 - Add Memory to Accumulator with Carry
	STA $DC             ; $F877: $85 $DC - Store Accumulator in Memory
	TXA                 ; $F879: $8A - Transfer Index X to Accumulator
	ORA $DE             ; $F87A: $05 $DE - OR Memory with Accumulator
	STA $0380,X         ; $F87C: $9D $80 $03 - Store Accumulator in Memory
	DEX                 ; $F87F: $CA - Decrement Index X by One
	BPL $E9             ; $F880: $10 $E9 - Branch on Result Plus
	RTS                 ; $F882: $60 - Return from Subroutine
	BMI $AF             ; $F883: $30 $AF - Branch on Result Minus
	INY                 ; $F887: $C8 - Increment Index Y by One
	BCS $60             ; $F88A: $B0 $60 - Branch on Carry Set
	BCS $84             ; $F88C: $B0 $84 - Branch on Carry Set
	BCS $A8             ; $F88E: $B0 $A8 - Branch on Carry Set
	BCS $CC             ; $F890: $B0 $CC - Branch on Carry Set
	BCS $60             ; $F892: $B0 $60 - Branch on Carry Set
	CMP #$00            ; $F894: $C9 $00 - Compare Memory with Accumulator
	BPL $05             ; $F896: $10 $05 - Branch on Result Plus
	EOR #$FF            ; $F898: $49 $FF - Exclusive-OR Memory with Accumulator
	SEC                 ; $F89A: $38 - Set Carry Flag
	ADC #$00            ; $F89B: $69 $00 - Add Memory to Accumulator with Carry
	RTS                 ; $F89D: $60 - Return from Subroutine
	STX $D6             ; $F89E: $86 $D6 - Store Index X in Memory
	TYA                 ; $F8A0: $98 - Transfer Index Y to Accumulator
	TAX                 ; $F8A1: $AA - Transfer Accumulator to Index X
	LDY $D6             ; $F8A2: $A4 $D6 - Load Index Y with Memory
	RTS                 ; $F8A4: $60 - Return from Subroutine
	SED                 ; $F8A5: $F8 - Set Decimal Flag
	TAY                 ; $F8A6: $A8 - Transfer Accumulator to Index Y
	LDA $02E0,X         ; $F8A9: $BD $E0 $02 - Load Accumulator with Memory
	LSR A               ; $F8AC: $4A $A8 - Shift One Bit Right (Memory or Accumulator)
	LDA $F8C5,Y         ; $F8AE: $B9 $C5 $F8 - Load Accumulator with Memory
	BMI $0E             ; $F8B1: $30 $0E - Branch on Result Minus
	LDY $4A,X           ; $F8B3: $B4 $4A $84 - Load Index Y with Memory
	LDY $BC,X           ; $F8B6: $B4 $BC $60 - Load Index Y with Memory
	STY $B5             ; $F8BA: $84 $B5 - Sore Index Y in Memory
	LDY #$23            ; $F8BC: $A0 $23 - Load Index Y with Memory
	JSR $F08D           ; $F8BE: $20 $8D $F0 - Jump to New Location Saving Return Address
	JSR $8C68           ; $F8C1: $20 $68 $8C - Jump to New Location Saving Return Address
	RTS                 ; $F8C4: $60 - Return from Subroutine
	PHP                 ; $F8C7: $08 - Push Processor Status on Stack
	BRK                 ; $F8CB: $00 - Force Break
	SED                 ; $F8CC: $F8 - Set Decimal Flag
	SED                 ; $F8CE: $F8 - Set Decimal Flag
	CMP ($FC),Y         ; $F8CF: $D1 $FC $D7 - Compare Memory with Accumulator
	LDA #$DA            ; $F8D2: $A9 $DA - Load Accumulator with Memory
	LDY #$9B            ; $F8D4: $A0 $9B - Load Index Y with Memory
	JSR $F9FE           ; $F8D6: $20 $FE $F9 - Jump to New Location Saving Return Address
	JSR $888A           ; $F8D9: $20 $8A $88 - Jump to New Location Saving Return Address
	BCS $14             ; $F8DC: $B0 $14 - Branch on Carry Set
	TYA                 ; $F8DE: $98 - Transfer Index Y to Accumulator
	STA $0300,X         ; $F8DF: $9D $00 $03 - Store Accumulator in Memory
	LDA #$00            ; $F8E2: $A9 $00 - Load Accumulator with Memory
	STA $03A0,X         ; $F8E4: $9D $A0 $03 - Store Accumulator in Memory
	RTS                 ; $F8E7: $60 - Return from Subroutine
	JSR $F8F2           ; $F8E8: $20 $F2 $F8 - Jump to New Location Saving Return Address
	LDA $A1             ; $F8EB: $A5 $A1 - Load Accumulator with Memory
	BEQ $08             ; $F8ED: $F0 $08 - Branch on Result Zero
	JMP $C32D           ; $F8EF: $4C $2D $C3 - Jump to New Location
	LDA #$01            ; $F8F2: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $F8F4: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $F8F7: $60 - Return from Subroutine
	LDA #$0C            ; $F8F8: $A9 $0C - Load Accumulator with Memory
	LDY $0570           ; $F8FA: $AC $70 $05 - Load Index Y with Memory
	JSR $F913           ; $F8FD: $20 $13 $F9 - Jump to New Location Saving Return Address
	LDA $0200,X         ; $F900: $BD $00 $02 - Load Accumulator with Memory
	BEQ $4F             ; $F903: $F0 $4F - Branch on Result Zero
	JSR $A9C4           ; $F905: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $8806           ; $F908: $20 $06 $88 - Jump to New Location Saving Return Address
	BEQ $47             ; $F90B: $F0 $47 - Branch on Result Zero
	JSR $8B65           ; $F90D: $20 $65 $8B - Jump to New Location Saving Return Address
	JMP $D8CC           ; $F910: $4C $CC $D8 - Jump to New Location
	STA $DA             ; $F913: $85 $DA - Store Accumulator in Memory
	STY $DB             ; $F915: $84 $DB - Sore Index Y in Memory
	JSR $87F0           ; $F917: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $38             ; $F91A: $D0 $38 - Branch on Result not Zero
	LDA $02E0,X         ; $F91C: $BD $E0 $02 - Load Accumulator with Memory
	BNE $34             ; $F91F: $D0 $34 - Branch on Result not Zero
	DEC $03A0,X         ; $F921: $DE $A0 $03 - Decrement Memory by One
	BEQ $C2             ; $F924: $F0 $C2 - Branch on Result Zero
	LDY $0300,X         ; $F926: $BC $00 $03 - Load Index Y with Memory
	JSR $CFA8           ; $F929: $20 $A8 $CF - Jump to New Location Saving Return Address
	BCS $BA             ; $F92C: $B0 $BA - Branch on Carry Set
	LDA $4A,X           ; $F92E: $B5 $4A $D9 - Load Accumulator with Memory
	LSR A               ; $F931: $4A $00 - Shift One Bit Right (Memory or Accumulator)
	LDA $0380,X         ; $F933: $BD $80 $03 - Load Accumulator with Memory
	CLC #$BF            ; $F936: $29 $BF - Clear Carry Flag
	BCC $02             ; $F938: $90 $02 - Branch on Carry Clear
	ORA #$40            ; $F93A: $09 $40 - OR Memory with Accumulator
	STA $0380,X         ; $F93C: $9D $80 $03 - Store Accumulator in Memory
	LDA $004A,Y         ; $F93F: $B9 $4A $00 - Load Accumulator with Memory
	STA $0A             ; $F942: $85 $0A - Store Accumulator in Memory
	LDA $0360,Y         ; $F944: $B9 $60 $03 - Load Accumulator with Memory
	TAY                 ; $F947: $A8 - Transfer Accumulator to Index Y
	LDA $DA             ; $F948: $A5 $DA - Load Accumulator with Memory
	JSR $88F6           ; $F94A: $20 $F6 $88 - Jump to New Location Saving Return Address
	LDA #$00            ; $F94D: $A9 $00 - Load Accumulator with Memory
	LDY $DB             ; $F94F: $A4 $DB - Load Index Y with Memory
	JSR $89F4           ; $F951: $20 $F4 $89 - Jump to New Location Saving Return Address
	RTS                 ; $F954: $60 - Return from Subroutine
	LDA #$06            ; $F955: $A9 $06 - Load Accumulator with Memory
	JSR $8BC1           ; $F957: $20 $C1 $8B - Jump to New Location Saving Return Address
	LDA $4A,X           ; $F95A: $B5 $4A $30 - Load Accumulator with Memory
	PHP                 ; $F95D: $08 - Push Processor Status on Stack
	LDA #$0C            ; $F95E: $A9 $0C - Load Accumulator with Memory
	JSR $8BAD           ; $F960: $20 $AD $8B - Jump to New Location Saving Return Address
	JMP $AB1A           ; $F963: $4C $1A $AB - Jump to New Location
	LDA #$0C            ; $F966: $A9 $0C - Load Accumulator with Memory
	JSR $8B9D           ; $F968: $20 $9D $8B - Jump to New Location Saving Return Address
	JMP $A87B           ; $F96B: $4C $7B $A8 - Jump to New Location
	SBC $F973,Y         ; $F96E: $F9 $73 $F9 - Subtract Memory from Accumulator with Borrow
	JSR $D8C6           ; $F974: $20 $C6 $D8 - Jump to New Location Saving Return Address
	LDY $0300,X         ; $F977: $BC $00 $03 - Load Index Y with Memory
	BEQ $4F             ; $F97A: $F0 $4F - Branch on Result Zero
	DEY                 ; $F97C: $88 - Decrement Index Y by One
	BEQ $61             ; $F97D: $F0 $61 - Branch on Result Zero
	LDY $18             ; $F97F: $A4 $18 - Load Index Y with Memory
	DEY                 ; $F981: $88 - Decrement Index Y by One
	BNE $0D             ; $F982: $D0 $0D - Branch on Result not Zero
	DEC $02E0,X         ; $F984: $DE $E0 $02 - Decrement Memory by One
	BNE $08             ; $F987: $D0 $08 - Branch on Result not Zero
	LDA #$08            ; $F989: $A9 $08 - Load Accumulator with Memory
	STA $02E0,X         ; $F98B: $9D $E0 $02 - Store Accumulator in Memory
	DEC $02A0,X         ; $F98E: $DE $A0 $02 - Decrement Memory by One
	LDA $04C5           ; $F991: $AD $C5 $04 - Load Accumulator with Memory
	BEQ $34             ; $F994: $F0 $34 - Branch on Result Zero
	DEC $03A0,X         ; $F996: $DE $A0 $03 - Decrement Memory by One
	BPL $24             ; $F999: $10 $24 - Branch on Result Plus
	LDA #$4D            ; $F99B: $A9 $4D - Load Accumulator with Memory
	STA $03A0,X         ; $F99D: $9D $A0 $03 - Store Accumulator in Memory
	TXA                 ; $F9A0: $8A - Transfer Index X to Accumulator
	PHA                 ; $F9A1: $48 - Push Accumulator on Stack
	JSR $C541           ; $F9A2: $20 $41 $C5 - Jump to New Location Saving Return Address
	LDA #$00            ; $F9A5: $A9 $00 - Load Accumulator with Memory
	STA $0584           ; $F9A7: $8D $84 $05 - Store Accumulator in Memory
	LDX #$23            ; $F9AA: $A2 $23 - Load Index X with Memory
	LDA #$24            ; $F9AC: $A9 $24 - Load Accumulator with Memory
	JSR $E912           ; $F9AE: $20 $12 $E9 - Jump to New Location Saving Return Address
	LDY #$13            ; $F9B1: $A0 $13 - Load Index Y with Memory
	JSR $E9DE           ; $F9B3: $20 $DE $E9 - Jump to New Location Saving Return Address
	LDA #$A9            ; $F9B6: $A9 $A9 - Load Accumulator with Memory
	LDY #$E9            ; $F9B8: $A0 $E9 - Load Index Y with Memory
	JSR $C527           ; $F9BA: $20 $27 $C5 - Jump to New Location Saving Return Address
	PLA                 ; $F9BD: $68 - Pull Accumulator from Stack
	TAX                 ; $F9BE: $AA - Transfer Accumulator to Index X
	JSR $A872           ; $F9BF: $20 $72 $A8 - Jump to New Location Saving Return Address
	LDA #$00            ; $F9C2: $A9 $00 - Load Accumulator with Memory
	STA $03DC,X         ; $F9C4: $9D $DC $03 - Store Accumulator in Memory
	BRK                 ; $F9C7: $00 - Force Break
	JMP $609E           ; $F9C8: $4C $9E $60 - Jump to New Location
	JSR $A851           ; $F9CB: $20 $51 $A8 - Jump to New Location Saving Return Address
	LDA $0380,X         ; $F9CE: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $F9D1: $29 $10 - Clear Carry Flag
	BEQ $03             ; $F9D3: $F0 $03 - Branch on Result Zero
	DEC $02A0,X         ; $F9D5: $DE $A0 $02 - Decrement Memory by One
	LDA #$04            ; $F9D8: $A9 $04 - Load Accumulator with Memory
	STA $02E0,X         ; $F9DA: $9D $E0 $02 - Store Accumulator in Memory
	BRK                 ; $F9DD: $00 - Force Break
	JSR $A860           ; $F9E0: $20 $60 $A8 - Jump to New Location Saving Return Address
	BRK                 ; $F9E3: $00 - Force Break
	EOR ($9E),Y         ; $F9E4: $51 $9E $68 - Exclusive-OR Memory with Accumulator
	PLA                 ; $F9E7: $68 - Pull Accumulator from Stack
	SEC                 ; $F9E8: $38 - Set Carry Flag
	SBC #$02            ; $F9E9: $E9 $02 - Subtract Memory from Accumulator with Borrow
	STA $D6             ; $F9EB: $85 $D6 - Store Accumulator in Memory
	PLA                 ; $F9ED: $68 - Pull Accumulator from Stack
	SBC #$00            ; $F9EE: $E9 $00 - Subtract Memory from Accumulator with Borrow
	STA $D7             ; $F9F0: $85 $D7 - Store Accumulator in Memory
	LDY #$01            ; $F9F2: $A0 $01 - Load Index Y with Memory
	LDA ($D6),Y         ; $F9F4: $B1 $D6 $85 - Load Accumulator with Memory
	SBC $C8,X           ; $F9F7: $F5 $C8 - Subtract Memory from Accumulator with Borrow
	LDA ($D6),Y         ; $F9F9: $B1 $D6 $A8 - Load Accumulator with Memory
	LDA $F5             ; $F9FC: $A5 $F5 - Load Accumulator with Memory
	STA $F5             ; $F9FE: $85 $F5 - Store Accumulator in Memory
	CMP $03C8,X         ; $FA00: $DD $C8 $03 - Compare Memory with Accumulator
	BNE $06             ; $FA03: $D0 $06 - Branch on Result not Zero
	TYA                 ; $FA05: $98 - Transfer Index Y to Accumulator
	CMP $03DC,X         ; $FA06: $DD $DC $03 - Compare Memory with Accumulator
	BEQ $1A             ; $FA09: $F0 $1A - Branch on Result Zero
	TYA                 ; $FA0B: $98 - Transfer Index Y to Accumulator
	STA $03DC,X         ; $FA0C: $9D $DC $03 - Store Accumulator in Memory
	STA $F6             ; $FA0F: $85 $F6 - Store Accumulator in Memory
	LDA $F5             ; $FA11: $A5 $F5 - Load Accumulator with Memory
	STA $03C8,X         ; $FA13: $9D $C8 $03 - Store Accumulator in Memory
	LDA #$00            ; $FA16: $A9 $00 - Load Accumulator with Memory
	STA $03F0,X         ; $FA18: $9D $F0 $03 - Store Accumulator in Memory
	CPX #$04            ; $FA1B: $E0 $04 - Compare Memory and Index Y
	BCS $03             ; $FA1D: $B0 $03 - Branch on Carry Set
	STA $0454,X         ; $FA1F: $9D $54 $04 - Store Accumulator in Memory
	JMP $FA37           ; $FA22: $4C $37 $FA - Jump to New Location
	RTS                 ; $FA25: $60 - Return from Subroutine
	LDA $03DC,X         ; $FA26: $BD $DC $03 - Load Accumulator with Memory
	BEQ $56             ; $FA29: $F0 $56 - Branch on Result Zero
	DEC $0404,X         ; $FA2B: $DE $04 $04 - Decrement Memory by One
	BNE $51             ; $FA2E: $D0 $51 - Branch on Result not Zero
	STA $F6             ; $FA30: $85 $F6 - Store Accumulator in Memory
	LDA $03C8,X         ; $FA32: $BD $C8 $03 - Load Accumulator with Memory
	STA $F5             ; $FA35: $85 $F5 - Store Accumulator in Memory
	LDA #$00            ; $FA37: $A9 $00 - Load Accumulator with Memory
	STA $0418,X         ; $FA39: $9D $18 $04 - Store Accumulator in Memory
	STA $042C,X         ; $FA3C: $9D $2C $04 - Store Accumulator in Memory
	LDY $03F0,X         ; $FA3F: $BC $F0 $03 - Load Index Y with Memory
	LDA ($F5),Y         ; $FA42: $B1 $F5 $10 - Load Accumulator with Memory
	ORA #$18            ; $FA45: $09 $18 - OR Memory with Accumulator
	ADC $03F0,X         ; $FA47: $7D $F0 $03 - Add Memory to Accumulator with Carry
	STA $03F0,X         ; $FA4A: $9D $F0 $03 - Store Accumulator in Memory
	BCS $F0             ; $FA4D: $B0 $F0 - Branch on Carry Set
	LSR A               ; $FA4F: $4A $9D - Shift One Bit Right (Memory or Accumulator)
	INY                 ; $FA53: $C8 - Increment Index Y by One
	LDA ($F5),Y         ; $FA54: $B1 $F5 $9D - Load Accumulator with Memory
	JSR $C803           ; $FA57: $20 $03 $C8 - Jump to New Location Saving Return Address
	BCC $0B             ; $FA5A: $90 $0B - Branch on Carry Clear
	JSR $FA82           ; $FA5C: $20 $82 $FA - Jump to New Location Saving Return Address
	STA $042C,X         ; $FA5F: $9D $2C $04 - Store Accumulator in Memory
	LDA $F4             ; $FA62: $A5 $F4 - Load Accumulator with Memory
	STA $0418,X         ; $FA64: $9D $18 $04 - Store Accumulator in Memory
	LSR $0404,X         ; $FA67: $5E $04 $04 - Shift One Bit Right (Memory or Accumulator)
	BCC $11             ; $FA6A: $90 $11 - Branch on Carry Clear
	LDA ($F5),Y         ; $FA6C: $B1 $F5 $9D - Load Accumulator with Memory
	INY                 ; $FA71: $C8 - Increment Index Y by One
	JSR $FA82           ; $FA72: $20 $82 $FA - Jump to New Location Saving Return Address
	STA $045C,X         ; $FA75: $9D $5C $04 - Store Accumulator in Memory
	LDA $F4             ; $FA78: $A5 $F4 - Load Accumulator with Memory
	STA $0458,X         ; $FA7A: $9D $58 $04 - Store Accumulator in Memory
	TYA                 ; $FA7D: $98 - Transfer Index Y to Accumulator
	STA $03F0,X         ; $FA7E: $9D $F0 $03 - Store Accumulator in Memory
	RTS                 ; $FA81: $60 - Return from Subroutine
	LDA ($F5),Y         ; $FA82: $B1 $F5 $29 - Load Accumulator with Memory
	SEC                 ; $FA86: $38 - Set Carry Flag
	SBC #$08            ; $FA87: $E9 $08 - Subtract Memory from Accumulator with Borrow
	STA $F4             ; $FA89: $85 $F4 - Store Accumulator in Memory
	LDA ($F5),Y         ; $FA8B: $B1 $F5 $4A - Load Accumulator with Memory
	LSR A               ; $FA8E: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $FA90: $4A $38 - Shift One Bit Right (Memory or Accumulator)
	SBC #$08            ; $FA92: $E9 $08 - Subtract Memory from Accumulator with Borrow
	INY                 ; $FA94: $C8 - Increment Index Y by One
	RTS                 ; $FA95: $60 - Return from Subroutine
	LDA #$01            ; $FA96: $A9 $01 - Load Accumulator with Memory
	JSR $D8DE           ; $FA98: $20 $DE $D8 - Jump to New Location Saving Return Address
	LDA #$20            ; $FA9B: $A9 $20 - Load Accumulator with Memory
	STA $CD             ; $FA9D: $85 $CD - Store Accumulator in Memory
	LDA #$08            ; $FA9F: $A9 $08 - Load Accumulator with Memory
	STA $A4             ; $FAA1: $85 $A4 - Store Accumulator in Memory
	LDX #$86            ; $FAA3: $A2 $86 - Load Index X with Memory
	CLC                 ; $FAA5: $18 - Clear Carry Flag
	LDY #$05            ; $FAA6: $A0 $05 - Load Index Y with Memory
	JSR $E934           ; $FAA8: $20 $34 $E9 - Jump to New Location Saving Return Address
	JSR $D6DB           ; $FAAB: $20 $DB $D6 - Jump to New Location Saving Return Address
	JSR $D6AC           ; $FAAE: $20 $AC $D6 - Jump to New Location Saving Return Address
	LDA #$78            ; $FAB1: $A9 $78 - Load Accumulator with Memory
	STA $9A             ; $FAB3: $85 $9A - Store Accumulator in Memory
	JSR $FF65           ; $FAB5: $20 $65 $FF - Jump to New Location Saving Return Address
	LDA #$00            ; $FAB8: $A9 $00 - Load Accumulator with Memory
	STA $81             ; $FABA: $85 $81 - Store Accumulator in Memory
	LDA #$04            ; $FABC: $A9 $04 - Load Accumulator with Memory
	STA $AB             ; $FABE: $85 $AB - Store Accumulator in Memory
	LDA #$AD            ; $FAC0: $A9 $AD - Load Accumulator with Memory
	LDY #$EE            ; $FAC2: $A0 $EE - Load Index Y with Memory
	JSR $C527           ; $FAC4: $20 $27 $C5 - Jump to New Location Saving Return Address
	JMP $C51E           ; $FAC7: $4C $1E $C5 - Jump to New Location
	JSR $D7BE           ; $FACA: $20 $BE $D7 - Jump to New Location Saving Return Address
	DEC $9A             ; $FACD: $C6 $9A - Decrement Memory by One
	BEQ $30             ; $FACF: $F0 $30 - Branch on Result Zero
	BPL $1E             ; $FAD1: $10 $1E - Branch on Result Plus
	INC $9A             ; $FAD3: $E6 $9A - Increment Memory by One
	LDA $E4             ; $FAD5: $A5 $E4 - Load Accumulator with Memory
	BMI $1B             ; $FAD7: $30 $1B - Branch on Result Minus
	CLC #$0C            ; $FAD9: $29 $0C - Clear Carry Flag
	BEQ $04             ; $FADB: $F0 $04 - Branch on Result Zero
	CLC #$08            ; $FADD: $29 $08 - Clear Carry Flag
	STA $A4             ; $FADF: $85 $A4 - Store Accumulator in Memory
	LDA #$CA            ; $FAE1: $A9 $CA - Load Accumulator with Memory
	JSR $F061           ; $FAE3: $20 $61 $F0 - Jump to New Location Saving Return Address
	LDA #$C8            ; $FAE6: $A9 $C8 - Load Accumulator with Memory
	SEC                 ; $FAE8: $38 - Set Carry Flag
	SBC $A4             ; $FAE9: $E5 $A4 - Subtract Memory from Accumulator with Borrow
	TAY                 ; $FAEB: $A8 - Transfer Accumulator to Index Y
	LDA #$54            ; $FAEC: $A9 $54 - Load Accumulator with Memory
	JSR $F040           ; $FAEE: $20 $40 $F0 - Jump to New Location Saving Return Address
	JMP $D7A1           ; $FAF1: $4C $A1 $D7 - Jump to New Location
	LDA $A4             ; $FAF4: $A5 $A4 - Load Accumulator with Memory
	BNE $06             ; $FAF6: $D0 $06 - Branch on Result not Zero
	JSR $9540           ; $FAF8: $20 $40 $95 - Jump to New Location Saving Return Address
	JMP $9557           ; $FAFB: $4C $57 $95 - Jump to New Location
	JMP $9551           ; $FAFE: $4C $51 $95 - Jump to New Location
	LDA #$8C            ; $FB01: $A9 $8C - Load Accumulator with Memory
	LDY #$06            ; $FB03: $A0 $06 - Load Index Y with Memory
	LDX #$23            ; $FB05: $A2 $23 - Load Index X with Memory
	JSR $E912           ; $FB07: $20 $12 $E9 - Jump to New Location Saving Return Address
	JSR $E9E2           ; $FB0A: $20 $E2 $E9 - Jump to New Location Saving Return Address
	JSR $C51E           ; $FB0D: $20 $1E $C5 - Jump to New Location Saving Return Address
	JMP $FAF1           ; $FB10: $4C $F1 $FA - Jump to New Location
	CLC                 ; $FB16: $18 - Clear Carry Flag
	BRK                 ; $FB19: $00 - Force Break
	BRK                 ; $FB1A: $00 - Force Break
	LDA #$FF            ; $FB1C: $A9 $FF - Load Accumulator with Memory
	STA $02A0,X         ; $FB1E: $9D $A0 $02 - Store Accumulator in Memory
	LDA #$D8            ; $FB21: $A9 $D8 - Load Accumulator with Memory
	SEC                 ; $FB23: $38 - Set Carry Flag
	SBC $D0             ; $FB24: $E5 $D0 - Subtract Memory from Accumulator with Borrow
	STA $02C0,X         ; $FB26: $9D $C0 $02 - Store Accumulator in Memory
	JSR $87F0           ; $FB29: $20 $F0 $87 - Jump to New Location Saving Return Address
	BNE $30             ; $FB2C: $D0 $30 - Branch on Result not Zero
	JSR $A2CF           ; $FB2E: $20 $CF $A2 - Jump to New Location Saving Return Address
	BCS $13             ; $FB31: $B0 $13 - Branch on Carry Set
	LDA #$05            ; $FB33: $A9 $05 - Load Accumulator with Memory
	JSR $F25B           ; $FB35: $20 $5B $F2 - Jump to New Location Saving Return Address
	JSR $9805           ; $FB38: $20 $05 $98 - Jump to New Location Saving Return Address
	LDA $72             ; $FB3B: $A5 $72 - Load Accumulator with Memory
	SEC                 ; $FB3D: $38 - Set Carry Flag
	JSR $8E2D           ; $FB3E: $20 $2D $8E - Jump to New Location Saving Return Address
	STA $72             ; $FB41: $85 $72 - Store Accumulator in Memory
	JMP $8833           ; $FB43: $4C $33 $88 - Jump to New Location
	LDA #$00            ; $FB46: $A9 $00 - Load Accumulator with Memory
	STA $0260,X         ; $FB48: $9D $60 $02 - Store Accumulator in Memory
	LDA $0C             ; $FB4B: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $FB4D: $4A $4A - Shift One Bit Right (Memory or Accumulator)
	LSR A               ; $FB4F: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $FB52: $A8 - Transfer Accumulator to Index Y
	LDA $FB64,Y         ; $FB53: $B9 $64 $FB - Load Accumulator with Memory
	BPL $03             ; $FB56: $10 $03 - Branch on Result Plus
	DEC $0260,X         ; $FB58: $DE $60 $02 - Decrement Memory by One
	STA $0280,X         ; $FB5B: $9D $80 $02 - Store Accumulator in Memory
	JSR $A9C4           ; $FB5E: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JMP $D8CC           ; $FB61: $4C $CC $D8 - Jump to New Location
	SEI                 ; $FB65: $78 - Set Interrupt Disable Status
	ASL $88C4,X         ; $FB67: $1E $C4 $88 - Shift Left One Bit
	CPY $FF             ; $FB6A: $C4 $FF - Compare Memory and Index Y
	ROR $71FB,X         ; $FB6D: $7E $FB $71 - Rotate One Bit Right
	LDA #$20            ; $FB72: $A9 $20 - Load Accumulator with Memory
	JSR $AB1C           ; $FB74: $20 $1C $AB - Jump to New Location Saving Return Address
	LDA $4A,X           ; $FB77: $B5 $4A $18 - Load Accumulator with Memory
	ADC #$04            ; $FB7A: $69 $04 - Add Memory to Accumulator with Carry
	STA $4A,X           ; $FB7C: $95 $4A - Store Accumulator in Memory
	RTS                 ; $FB7E: $60 - Return from Subroutine
	LDA $02E0,X         ; $FB7F: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $57             ; $FB82: $F0 $57 - Branch on Result Zero
	CMP #$01            ; $FB84: $C9 $01 - Compare Memory with Accumulator
	BEQ $12             ; $FB86: $F0 $12 - Branch on Result Zero
	LDA #$1E            ; $FB88: $A9 $1E - Load Accumulator with Memory
	LDY #$9E            ; $FB8A: $A0 $9E - Load Index Y with Memory
	JSR $F9FE           ; $FB8C: $20 $FE $F9 - Jump to New Location Saving Return Address
	DEC $0300,X         ; $FB8F: $DE $00 $03 - Decrement Memory by One
	BNE $03             ; $FB92: $D0 $03 - Branch on Result not Zero
	JSR $FBFC           ; $FB94: $20 $FC $FB - Jump to New Location Saving Return Address
	JMP $FBF9           ; $FB97: $4C $F9 $FB - Jump to New Location
	LDA #$B1            ; $FB9A: $A9 $B1 - Load Accumulator with Memory
	LDY #$9C            ; $FB9C: $A0 $9C - Load Index Y with Memory
	JSR $F9FE           ; $FB9E: $20 $FE $F9 - Jump to New Location Saving Return Address
	JSR $87E9           ; $FBA1: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $32             ; $FBA4: $D0 $32 - Branch on Result not Zero
	DEC $0300,X         ; $FBA6: $DE $00 $03 - Decrement Memory by One
	BNE $2D             ; $FBA9: $D0 $2D - Branch on Result not Zero
	LDA #$10            ; $FBAB: $A9 $10 - Load Accumulator with Memory
	JSR $8B4D           ; $FBAD: $20 $4D $8B - Jump to New Location Saving Return Address
	BCC $1C             ; $FBB0: $90 $1C - Branch on Carry Clear
	LDA $0380,X         ; $FBB2: $BD $80 $03 - Load Accumulator with Memory
	CLC #$DC            ; $FBB5: $29 $DC - Clear Carry Flag
	ORA #$01            ; $FBB7: $09 $01 - OR Memory with Accumulator
	STA $0380,Y         ; $FBB9: $99 $80 $03 - Store Accumulator in Memory
	JSR $A884           ; $FBBC: $20 $84 $A8 - Jump to New Location Saving Return Address
	BNE $04             ; $FBBF: $D0 $04 - Branch on Result not Zero
	LDA #$10            ; $FBC1: $A9 $10 - Load Accumulator with Memory
	BNE $02             ; $FBC3: $D0 $02 - Branch on Result not Zero
	LDA #$F0            ; $FBC5: $A9 $F0 - Load Accumulator with Memory
	CLC                 ; $FBC7: $18 - Clear Carry Flag
	ADC $004A,Y         ; $FBC8: $79 $4A $00 - Add Memory to Accumulator with Carry
	STA $004A,Y         ; $FBCB: $99 $4A $00 - Store Accumulator in Memory
	LDA #$10            ; $FBCE: $A9 $10 - Load Accumulator with Memory
	STA $0300,X         ; $FBD0: $9D $00 $03 - Store Accumulator in Memory
	LDA #$02            ; $FBD3: $A9 $02 - Load Accumulator with Memory
	STA $02E0,X         ; $FBD5: $9D $E0 $02 - Store Accumulator in Memory
	JMP $FBF9           ; $FBD8: $4C $F9 $FB - Jump to New Location
	JSR $87E9           ; $FBDB: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $19             ; $FBDE: $D0 $19 - Branch on Result not Zero
	LDA $A1             ; $FBE0: $A5 $A1 - Load Accumulator with Memory
	BEQ $15             ; $FBE2: $F0 $15 - Branch on Result Zero
	DEC $0360,X         ; $FBE4: $DE $60 $03 - Decrement Memory by One
	LDA $0360,X         ; $FBE7: $BD $60 $03 - Load Accumulator with Memory
	CMP #$5D            ; $FBEA: $C9 $5D - Compare Memory with Accumulator
	BCS $0B             ; $FBEC: $B0 $0B - Branch on Carry Set
	JSR $FBFC           ; $FBEE: $20 $FC $FB - Jump to New Location Saving Return Address
	LDA $4A,X           ; $FBF1: $B5 $4A $4A - Load Accumulator with Memory
	ADC #$37            ; $FBF4: $69 $37 - Add Memory to Accumulator with Carry
	STA $0300,X         ; $FBF6: $9D $00 $03 - Store Accumulator in Memory
	JMP $D8C9           ; $FBF9: $4C $C9 $D8 - Jump to New Location
	LDA $9A             ; $FBFC: $A5 $9A - Load Accumulator with Memory
	STA $0300,X         ; $FBFE: $9D $00 $03 - Store Accumulator in Memory
	LDA #$01            ; $FC01: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $FC03: $9D $E0 $02 - Store Accumulator in Memory
	RTS                 ; $FC06: $60 - Return from Subroutine
	ASL $FC,X           ; $FC08: $16 $FC - Shift Left One Bit
	ASL A               ; $FC0A: $0A - Shift Left One Bit
	LDA #$14            ; $FC0B: $A9 $14 - Load Accumulator with Memory
	STA $02E0,X         ; $FC0D: $9D $E0 $02 - Store Accumulator in Memory
	LDA #$04            ; $FC10: $A9 $04 - Load Accumulator with Memory
	LDY #$03            ; $FC12: $A0 $03 - Load Index Y with Memory
	JMP $980D           ; $FC14: $4C $0D $98 - Jump to New Location
	DEC $02E0,X         ; $FC17: $DE $E0 $02 - Decrement Memory by One
	BNE $03             ; $FC1A: $D0 $03 - Branch on Result not Zero
	JMP $CD74           ; $FC1C: $4C $74 $CD - Jump to New Location
	JSR $A9D9           ; $FC1F: $20 $D9 $A9 - Jump to New Location Saving Return Address
	SEC                 ; $FC22: $38 - Set Carry Flag
	JSR $CDA5           ; $FC23: $20 $A5 $CD - Jump to New Location Saving Return Address
	BCS $60             ; $FC26: $B0 $60 - Branch on Carry Set
	JSR $87E9           ; $FC28: $20 $E9 $87 - Jump to New Location Saving Return Address
	BNE $19             ; $FC2B: $D0 $19 - Branch on Result not Zero
	JSR $FC4D           ; $FC2D: $20 $4D $FC - Jump to New Location Saving Return Address
	BCS $56             ; $FC30: $B0 $56 - Branch on Carry Set
	LDA $0C             ; $FC32: $A5 $0C - Load Accumulator with Memory
	LSR A               ; $FC34: $4A $29 - Shift One Bit Right (Memory or Accumulator)
	TAY                 ; $FC37: $A8 - Transfer Accumulator to Index Y
	LDA $FC49,Y         ; $FC38: $B9 $49 $FC - Load Accumulator with Memory
	ORA $0300,X         ; $FC3B: $1D $00 $03 - OR Memory with Accumulator
	STA $0380,X         ; $FC3E: $9D $80 $03 - Store Accumulator in Memory
	LDA #$E7            ; $FC41: $A9 $E7 - Load Accumulator with Memory
	JMP $CD43           ; $FC43: $4C $43 $CD - Jump to New Location
	JMP $CD6B           ; $FC46: $4C $6B $CD - Jump to New Location
	BRK                 ; $FC49: $00 - Force Break
	RTI                 ; $FC4A: $40 - Return from Interrupt
	CPY #$20            ; $FC4C: $C0 $20 - Compare Memory and Index Y
	JMP $B0A2           ; $FC4E: $4C $A2 $B0 - Jump to New Location
	AND $A9,X           ; $FC51: $35 $A9 - AND Memory with Accumulator
	BRK                 ; $FC53: $00 - Force Break
	STA $F7             ; $FC54: $85 $F7 - Store Accumulator in Memory
	JSR $FCD9           ; $FC56: $20 $D9 $FC - Jump to New Location Saving Return Address
	LDA $F9             ; $FC59: $A5 $F9 - Load Accumulator with Memory
	CMP #$02            ; $FC5B: $C9 $02 - Compare Memory with Accumulator
	BEQ $28             ; $FC5D: $F0 $28 - Branch on Result Zero
	CMP #$00            ; $FC5F: $C9 $00 - Compare Memory with Accumulator
	BNE $1F             ; $FC61: $D0 $1F - Branch on Result not Zero
	LDA $0340,Y         ; $FC63: $B9 $40 $03 - Load Accumulator with Memory
	BNE $1A             ; $FC66: $D0 $1A - Branch on Result not Zero
	LDA $0200,Y         ; $FC68: $B9 $00 $02 - Load Accumulator with Memory
	CMP #$0A            ; $FC6B: $C9 $0A - Compare Memory with Accumulator
	BEQ $08             ; $FC6D: $F0 $08 - Branch on Result Zero
	CMP #$09            ; $FC6F: $C9 $09 - Compare Memory with Accumulator
	BEQ $04             ; $FC71: $F0 $04 - Branch on Result Zero
	LDA #$BE            ; $FC73: $A9 $BE - Load Accumulator with Memory
	BNE $02             ; $FC75: $D0 $02 - Branch on Result not Zero
	LDA #$69            ; $FC77: $A9 $69 - Load Accumulator with Memory
	STA $0340,Y         ; $FC79: $99 $40 $03 - Store Accumulator in Memory
	SEC                 ; $FC7C: $38 - Set Carry Flag
	SBC #$34            ; $FC7D: $E9 $34 - Subtract Memory from Accumulator with Borrow
	STA $03B4,Y         ; $FC7F: $99 $B4 $03 - Store Accumulator in Memory
	JSR $CD74           ; $FC82: $20 $74 $CD - Jump to New Location Saving Return Address
	SEC                 ; $FC85: $38 - Set Carry Flag
	RTS                 ; $FC86: $60 - Return from Subroutine
	CLC                 ; $FC87: $18 - Clear Carry Flag
	RTS                 ; $FC88: $60 - Return from Subroutine
	STA ($8C),Y         ; $FC8A: $91 $8C $89 - Store Accumulator in Memory
	JSR $A926           ; $FC8F: $20 $26 $A9 - Jump to New Location Saving Return Address
	JSR $FC98           ; $FC92: $20 $98 $FC - Jump to New Location Saving Return Address
	JMP $D8C6           ; $FC95: $4C $C6 $D8 - Jump to New Location
	JSR $8BE5           ; $FC98: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$17            ; $FC9B: $C9 $17 - Compare Memory with Accumulator
	BCC $2C             ; $FC9D: $90 $2C - Branch on Carry Clear
	LDA $0380,X         ; $FC9F: $BD $80 $03 - Load Accumulator with Memory
	CLC #$10            ; $FCA2: $29 $10 - Clear Carry Flag
	BEQ $1B             ; $FCA4: $F0 $1B - Branch on Result Zero
	JSR $A860           ; $FCA6: $20 $60 $A8 - Jump to New Location Saving Return Address
	LDA #$F1            ; $FCA9: $A9 $F1 - Load Accumulator with Memory
	LDY #$9B            ; $FCAB: $A0 $9B - Load Index Y with Memory
	JSR $F9FE           ; $FCAD: $20 $FE $F9 - Jump to New Location Saving Return Address
	LDA $03F0,X         ; $FCB0: $BD $F0 $03 - Load Accumulator with Memory
	CMP #$0E            ; $FCB3: $C9 $0E - Compare Memory with Accumulator
	BNE $09             ; $FCB5: $D0 $09 - Branch on Result not Zero
	LDA #$FD            ; $FCB7: $A9 $FD - Load Accumulator with Memory
	STA $02A0,X         ; $FCB9: $9D $A0 $02 - Store Accumulator in Memory
	SEC                 ; $FCBC: $38 - Set Carry Flag
	ROR $02C0,X         ; $FCBD: $7E $C0 $02 - Rotate One Bit Right
	RTS                 ; $FCC0: $60 - Return from Subroutine
	LDA #$A0            ; $FCC1: $A9 $A0 - Load Accumulator with Memory
	JSR $8960           ; $FCC3: $20 $60 $89 - Jump to New Location Saving Return Address
	LDA $02A0,X         ; $FCC6: $BD $A0 $02 - Load Accumulator with Memory
	BPL $03             ; $FCC9: $10 $03 - Branch on Result Plus
	BRK                 ; $FCCB: $00 - Force Break
	SBC $9B             ; $FCCC: $E5 $9B - Subtract Memory from Accumulator with Borrow
	CMP #$03            ; $FCCE: $C9 $03 - Compare Memory with Accumulator
	BCC $03             ; $FCD0: $90 $03 - Branch on Carry Clear
	DEC $02A0,X         ; $FCD2: $DE $A0 $02 - Decrement Memory by One
	BRK                 ; $FCD5: $00 - Force Break
	INC $609B           ; $FCD6: $EE $9B $60 - Increment Memory by One
	TXA                 ; $FCD9: $8A - Transfer Index X to Accumulator
	PHA                 ; $FCDA: $48 - Push Accumulator on Stack
	LDA #$00            ; $FCDB: $A9 $00 - Load Accumulator with Memory
	STA $F9             ; $FCDD: $85 $F9 - Store Accumulator in Memory
	STY $FA             ; $FCDF: $84 $FA - Sore Index Y in Memory
	LDX $FA             ; $FCE1: $A6 $FA - Load Index X with Memory
	LDY #$04            ; $FCE3: $A0 $04 - Load Index Y with Memory
	JSR $FCEF           ; $FCE5: $20 $EF $FC - Jump to New Location Saving Return Address
	PLA                 ; $FCE8: $68 - Pull Accumulator from Stack
	TAX                 ; $FCE9: $AA - Transfer Accumulator to Index X
	LDY $FA             ; $FCEA: $A4 $FA - Load Index Y with Memory
	RTS                 ; $FCEC: $60 - Return from Subroutine
	LDY #$00            ; $FCED: $A0 $00 - Load Index Y with Memory
	TXA                 ; $FCEF: $8A - Transfer Index X to Accumulator
	PHA                 ; $FCF0: $48 - Push Accumulator on Stack
	JSR $FCF7           ; $FCF1: $20 $F7 $FC - Jump to New Location Saving Return Address
	PLA                 ; $FCF4: $68 - Pull Accumulator from Stack
	TAX                 ; $FCF5: $AA - Transfer Accumulator to Index X
	RTS                 ; $FCF6: $60 - Return from Subroutine
	STY $FB             ; $FCF7: $84 $FB - Sore Index Y in Memory
	LDY $0200,X         ; $FCF9: $BC $00 $02 - Load Index Y with Memory
	LDA $BEB3,Y         ; $FCFC: $B9 $B3 $BE - Load Accumulator with Memory
	STA $FD             ; $FCFF: $85 $FD - Store Accumulator in Memory
	LDA $BE0F,Y         ; $FD01: $B9 $0F $BE - Load Accumulator with Memory
	STA $FC             ; $FD04: $85 $FC - Store Accumulator in Memory
	LDY $FB             ; $FD06: $A4 $FB - Load Index Y with Memory
	LDA ($FC),Y         ; $FD08: $B1 $FC $C8 - Load Accumulator with Memory
	PHA                 ; $FD0B: $48 - Push Accumulator on Stack
	LDA ($FC),Y         ; $FD0C: $B1 $FC $48 - Load Accumulator with Memory
	RTS                 ; $FD0F: $60 - Return from Subroutine
	LDY #$04            ; $FD10: $A0 $04 - Load Index Y with Memory
	LDA $05DB,Y         ; $FD12: $B9 $DB $05 - Load Accumulator with Memory
	BEQ $04             ; $FD15: $F0 $04 - Branch on Result Zero
	DEY                 ; $FD17: $88 - Decrement Index Y by One
	BPL $F8             ; $FD18: $10 $F8 - Branch on Result Plus
	RTS                 ; $FD1A: $60 - Return from Subroutine
	LDA #$B4            ; $FD1B: $A9 $B4 - Load Accumulator with Memory
	STA $05EF,Y         ; $FD1D: $99 $EF $05 - Store Accumulator in Memory
	LDA #$01            ; $FD20: $A9 $01 - Load Accumulator with Memory
	STA $05EA,Y         ; $FD22: $99 $EA $05 - Store Accumulator in Memory
	RTS                 ; $FD25: $60 - Return from Subroutine
	LDX #$04            ; $FD26: $A2 $04 - Load Index X with Memory
	LDA $05DB,X         ; $FD28: $BD $DB $05 - Load Accumulator with Memory
	BEQ $3B             ; $FD2B: $F0 $3B - Branch on Result Zero
	LDA $05EF,X         ; $FD2D: $BD $EF $05 - Load Accumulator with Memory
	CMP #$20            ; $FD30: $C9 $20 - Compare Memory with Accumulator
	BCS $03             ; $FD32: $B0 $03 - Branch on Carry Set
	LSR A               ; $FD34: $4A $90 - Shift One Bit Right (Memory or Accumulator)
	LDY $AC             ; $FD37: $A4 $AC - Load Index Y with Memory
	LDA $05E5,X         ; $FD39: $BD $E5 $05 - Load Accumulator with Memory
	STA $0701,Y         ; $FD3C: $99 $01 $07 - Store Accumulator in Memory
	LDA $05E0,X         ; $FD3F: $BD $E0 $05 - Load Accumulator with Memory
	CLC                 ; $FD42: $18 - Clear Carry Flag
	SBC $CC             ; $FD43: $E5 $CC - Subtract Memory from Accumulator with Borrow
	CMP #$F0            ; $FD45: $C9 $F0 - Compare Memory with Accumulator
	BCS $1A             ; $FD47: $B0 $1A - Branch on Carry Set
	STA $0700,Y         ; $FD49: $99 $00 $07 - Store Accumulator in Memory
	LDA $05EA,X         ; $FD4C: $BD $EA $05 - Load Accumulator with Memory
	STA $0702,Y         ; $FD4F: $99 $02 $07 - Store Accumulator in Memory
	LDA $05DB,X         ; $FD52: $BD $DB $05 - Load Accumulator with Memory
	STA $0703,Y         ; $FD55: $99 $03 $07 - Store Accumulator in Memory
	TYA                 ; $FD58: $98 - Transfer Index Y to Accumulator
	CLC                 ; $FD59: $18 - Clear Carry Flag
	ADC $AD             ; $FD5A: $65 $AD - Add Memory to Accumulator with Carry
	STA $AC             ; $FD5C: $85 $AC - Store Accumulator in Memory
	DEC $05EF,X         ; $FD5E: $DE $EF $05 - Decrement Memory by One
	BNE $05             ; $FD61: $D0 $05 - Branch on Result not Zero
	LDA #$00            ; $FD63: $A9 $00 - Load Accumulator with Memory
	STA $05DB,X         ; $FD65: $9D $DB $05 - Store Accumulator in Memory
	DEX                 ; $FD68: $CA - Decrement Index X by One
	BPL $BD             ; $FD69: $10 $BD - Branch on Result Plus
	RTS                 ; $FD6B: $60 - Return from Subroutine
	JSR $FD8A           ; $FD6C: $20 $8A $FD - Jump to New Location Saving Return Address
	LDA #$FD            ; $FD6F: $A9 $FD - Load Accumulator with Memory
	STA $02A0,Y         ; $FD71: $99 $A0 $02 - Store Accumulator in Memory
	JSR $FD8A           ; $FD74: $20 $8A $FD - Jump to New Location Saving Return Address
	LDA #$FF            ; $FD77: $A9 $FF - Load Accumulator with Memory
	STA $0260,Y         ; $FD79: $99 $60 $02 - Store Accumulator in Memory
	JSR $FD8A           ; $FD7C: $20 $8A $FD - Jump to New Location Saving Return Address
	LDA #$01            ; $FD7F: $A9 $01 - Load Accumulator with Memory
	STA $0260,Y         ; $FD81: $99 $60 $02 - Store Accumulator in Memory
	LDA #$41            ; $FD84: $A9 $41 - Load Accumulator with Memory
	STA $0380,Y         ; $FD86: $99 $80 $03 - Store Accumulator in Memory
	RTS                 ; $FD89: $60 - Return from Subroutine
	LDA #$42            ; $FD8A: $A9 $42 - Load Accumulator with Memory
	JSR $8B2E           ; $FD8C: $20 $2E $8B - Jump to New Location Saving Return Address
	BCC $06             ; $FD8F: $90 $06 - Branch on Carry Clear
	LDA #$FE            ; $FD91: $A9 $FE - Load Accumulator with Memory
	STA $02A0,Y         ; $FD93: $99 $A0 $02 - Store Accumulator in Memory
	RTS                 ; $FD96: $60 - Return from Subroutine
	PLA                 ; $FD97: $68 - Pull Accumulator from Stack
	PLA                 ; $FD98: $68 - Pull Accumulator from Stack
	RTS                 ; $FD99: $60 - Return from Subroutine
	SBC $FDC6,X         ; $FD9A: $FD $C6 $FD - Subtract Memory from Accumulator with Borrow
	SBC $20BD,X         ; $FD9E: $FD $BD $20 - Subtract Memory from Accumulator with Borrow
	STA $E6D9           ; $FDA1: $8D $D9 $E6 - Store Accumulator in Memory
	LDA ($A0,X)         ; $FDA4: $A1 $A0 $03 - Load Accumulator with Memory
	LDA #$00            ; $FDA7: $A9 $00 - Load Accumulator with Memory
	STA $008C,Y         ; $FDA9: $99 $8C $00 - Store Accumulator in Memory
	LDA #$02            ; $FDAC: $A9 $02 - Load Accumulator with Memory
	STA $0440,Y         ; $FDAE: $99 $40 $04 - Store Accumulator in Memory
	DEY                 ; $FDB1: $88 - Decrement Index Y by One
	BPL $F3             ; $FDB2: $10 $F3 - Branch on Result Plus
	LDA #$12            ; $FDB4: $A9 $12 - Load Accumulator with Memory
	LDY #$FE            ; $FDB6: $A0 $FE - Load Index Y with Memory
	JSR $9860           ; $FDB8: $20 $60 $98 - Jump to New Location Saving Return Address
	BRK                 ; $FDBB: $00 - Force Break
	LDA ($9C),Y         ; $FDBC: $B1 $9C $20 - Load Accumulator with Memory
	INX                 ; $FDBF: $E8 - Increment Index X by One
	CMP $0390,Y         ; $FDC0: $D9 $90 $03 - Compare Memory with Accumulator
	BRK                 ; $FDC3: $00 - Force Break
	STA $2060,X         ; $FDC5: $9D $60 $20 - Store Accumulator in Memory
	ADC ($98),Y         ; $FDC8: $71 $98 $A9 - Add Memory to Accumulator with Carry
	LDA ($A0),Y         ; $FDCB: $B1 $A0 $9C - Load Accumulator with Memory
	JSR $D9CF           ; $FDCE: $20 $CF $D9 - Jump to New Location Saving Return Address
	JSR $FEE3           ; $FDD1: $20 $E3 $FE - Jump to New Location Saving Return Address
	LDY $A1             ; $FDD4: $A4 $A1 - Load Index Y with Memory
	LDA $FDE4,Y         ; $FDD6: $B9 $E4 $FD - Load Accumulator with Memory
	PHA                 ; $FDD9: $48 - Push Accumulator on Stack
	LDA $FDDF,Y         ; $FDDA: $B9 $DF $FD - Load Accumulator with Memory
	PHA                 ; $FDDD: $48 - Push Accumulator on Stack
	RTS                 ; $FDDE: $60 - Return from Subroutine
	ASL $06             ; $FDDF: $06 $06 - Shift Left One Bit
	INX                 ; $FDE1: $E8 - Increment Index X by One
	SBC $FEFF           ; $FDE2: $ED $FF $FE - Subtract Memory from Accumulator with Borrow
	INC $FDFD,X         ; $FDE5: $FE $FD $FD - Increment Memory by One
	JSR $A455           ; $FDE9: $20 $55 $A4 - Jump to New Location Saving Return Address
	BNE $19             ; $FDEC: $D0 $19 - Branch on Result not Zero
	LDY $9B             ; $FDEE: $A4 $9B - Load Index Y with Memory
	LDA $0360,Y         ; $FDF0: $B9 $60 $03 - Load Accumulator with Memory
	JSR $A58D           ; $FDF3: $20 $8D $A5 - Jump to New Location Saving Return Address
	STA $A0             ; $FDF6: $85 $A0 - Store Accumulator in Memory
	LDA $FDFF,Y         ; $FDF8: $B9 $FF $FD - Load Accumulator with Memory
	STA $9F             ; $FDFB: $85 $9F - Store Accumulator in Memory
	BNE $08             ; $FDFD: $D0 $08 - Branch on Result not Zero
	SBC $FFFE,X         ; $FE04: $FD $FE $FF - Subtract Memory from Accumulator with Borrow
	JSR $A9C4           ; $FE07: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JSR $8B60           ; $FE0A: $20 $60 $8B - Jump to New Location Saving Return Address
	JSR $A45F           ; $FE0D: $20 $5F $A4 - Jump to New Location Saving Return Address
	JMP $A41B           ; $FE10: $4C $1B $A4 - Jump to New Location
	JSR $FE60           ; $FE13: $20 $60 $FE - Jump to New Location Saving Return Address
	JSR $9898           ; $FE16: $20 $98 $98 - Jump to New Location Saving Return Address
	LDA #$FE            ; $FE19: $A9 $FE - Load Accumulator with Memory
	STA $1E             ; $FE1B: $85 $1E - Store Accumulator in Memory
	LDA $1E             ; $FE1D: $A5 $1E - Load Accumulator with Memory
	BMI $0B             ; $FE1F: $30 $0B - Branch on Result Minus
	BNE $06             ; $FE21: $D0 $06 - Branch on Result not Zero
	JSR $FE60           ; $FE23: $20 $60 $FE - Jump to New Location Saving Return Address
	JSR $9898           ; $FE26: $20 $98 $98 - Jump to New Location Saving Return Address
	JSR $FE8D           ; $FE29: $20 $8D $FE - Jump to New Location Saving Return Address
	JSR $A4BB           ; $FE2C: $20 $BB $A4 - Jump to New Location Saving Return Address
	JSR $A493           ; $FE2F: $20 $93 $A4 - Jump to New Location Saving Return Address
	JSR $9898           ; $FE32: $20 $98 $98 - Jump to New Location Saving Return Address
	LDY #$C8            ; $FE35: $A0 $C8 - Load Index Y with Memory
	LDA #$B0            ; $FE37: $A9 $B0 - Load Accumulator with Memory
	STY $9C             ; $FE39: $84 $9C - Sore Index Y in Memory
	STA $9D             ; $FE3B: $85 $9D - Store Accumulator in Memory
	JSR $FE68           ; $FE3D: $20 $68 $FE - Jump to New Location Saving Return Address
	JSR $FE76           ; $FE40: $20 $76 $FE - Jump to New Location Saving Return Address
	LDA $1E             ; $FE43: $A5 $1E - Load Accumulator with Memory
	BMI $06             ; $FE45: $30 $06 - Branch on Result Minus
	JSR $FE60           ; $FE47: $20 $60 $FE - Jump to New Location Saving Return Address
	JSR $FE76           ; $FE4A: $20 $76 $FE - Jump to New Location Saving Return Address
	LDY #$C8            ; $FE4D: $A0 $C8 - Load Index Y with Memory
	LDA #$50            ; $FE4F: $A9 $50 - Load Accumulator with Memory
	STY $9C             ; $FE51: $84 $9C - Sore Index Y in Memory
	STA $9D             ; $FE53: $85 $9D - Store Accumulator in Memory
	JSR $9894           ; $FE55: $20 $94 $98 - Jump to New Location Saving Return Address
	JSR $FE76           ; $FE58: $20 $76 $FE - Jump to New Location Saving Return Address
	INC $1E             ; $FE5B: $E6 $1E - Increment Memory by One
	JMP $FE1D           ; $FE5D: $4C $1D $FE - Jump to New Location
	LDY #$C8            ; $FE60: $A0 $C8 - Load Index Y with Memory
	LDA #$80            ; $FE62: $A9 $80 - Load Accumulator with Memory
	STY $9C             ; $FE64: $84 $9C - Sore Index Y in Memory
	STA $9D             ; $FE66: $85 $9D - Store Accumulator in Memory
	JSR $98C2           ; $FE68: $20 $C2 $98 - Jump to New Location Saving Return Address
	JSR $FED7           ; $FE6B: $20 $D7 $FE - Jump to New Location Saving Return Address
	BCS $F8             ; $FE6E: $B0 $F8 - Branch on Carry Set
	LDA #$14            ; $FE70: $A9 $14 - Load Accumulator with Memory
	JSR $98C4           ; $FE72: $20 $C4 $98 - Jump to New Location Saving Return Address
	RTS                 ; $FE75: $60 - Return from Subroutine
	JSR $A493           ; $FE76: $20 $93 $A4 - Jump to New Location Saving Return Address
	JSR $A49B           ; $FE79: $20 $9B $A4 - Jump to New Location Saving Return Address
	JSR $98BE           ; $FE7C: $20 $BE $98 - Jump to New Location Saving Return Address
	JSR $8BEC           ; $FE7F: $20 $EC $8B - Jump to New Location Saving Return Address
	JSR $A49F           ; $FE82: $20 $9F $A4 - Jump to New Location Saving Return Address
	LDA #$00            ; $FE85: $A9 $00 - Load Accumulator with Memory
	STA $03DC,X         ; $FE87: $9D $DC $03 - Store Accumulator in Memory
	BRK                 ; $FE8A: $00 - Force Break
	STA $20A9,X         ; $FE8C: $9D $A9 $20 - Store Accumulator in Memory
	JSR $980F           ; $FE8F: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $A493           ; $FE92: $20 $93 $A4 - Jump to New Location Saving Return Address
	JSR $A49B           ; $FE95: $20 $9B $A4 - Jump to New Location Saving Return Address
	LDA #$00            ; $FE98: $A9 $00 - Load Accumulator with Memory
	STA $9C             ; $FE9A: $85 $9C - Store Accumulator in Memory
	LDA #$00            ; $FE9C: $A9 $00 - Load Accumulator with Memory
	LDY #$D8            ; $FE9E: $A0 $D8 - Load Index Y with Memory
	JSR $A855           ; $FEA0: $20 $55 $A8 - Jump to New Location Saving Return Address
	JSR $98BE           ; $FEA3: $20 $BE $98 - Jump to New Location Saving Return Address
	LDA #$FA            ; $FEA6: $A9 $FA - Load Accumulator with Memory
	STA $0260,X         ; $FEA8: $9D $60 $02 - Store Accumulator in Memory
	STA $0280,X         ; $FEAB: $9D $80 $02 - Store Accumulator in Memory
	JSR $A49F           ; $FEAE: $20 $9F $A4 - Jump to New Location Saving Return Address
	LDA #$0E            ; $FEB1: $A9 $0E - Load Accumulator with Memory
	JSR $980F           ; $FEB3: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$32            ; $FEB6: $A9 $32 - Load Accumulator with Memory
	STA $1D             ; $FEB8: $85 $1D - Store Accumulator in Memory
	JSR $98C2           ; $FEBA: $20 $C2 $98 - Jump to New Location Saving Return Address
	JSR $8B7F           ; $FEBD: $20 $7F $8B - Jump to New Location Saving Return Address
	LDA #$0C            ; $FEC0: $A9 $0C - Load Accumulator with Memory
	JSR $88B4           ; $FEC2: $20 $B4 $88 - Jump to New Location Saving Return Address
	DEC $1D             ; $FEC5: $C6 $1D - Decrement Memory by One
	BNE $F1             ; $FEC7: $D0 $F1 - Branch on Result not Zero
	LDY #$C8            ; $FEC9: $A0 $C8 - Load Index Y with Memory
	LDA $9D             ; $FECB: $A5 $9D - Load Accumulator with Memory
	STY $9C             ; $FECD: $84 $9C - Sore Index Y in Memory
	STA $9D             ; $FECF: $85 $9D - Store Accumulator in Memory
	LDA #$3C            ; $FED1: $A9 $3C - Load Accumulator with Memory
	JSR $98C4           ; $FED3: $20 $C4 $98 - Jump to New Location Saving Return Address
	RTS                 ; $FED6: $60 - Return from Subroutine
	LDA $9C             ; $FED7: $A5 $9C - Load Accumulator with Memory
	STA $09             ; $FED9: $85 $09 - Store Accumulator in Memory
	LDA $9D             ; $FEDB: $A5 $9D - Load Accumulator with Memory
	JSR $8839           ; $FEDD: $20 $39 $88 - Jump to New Location Saving Return Address
	CMP #$18            ; $FEE0: $C9 $18 - Compare Memory with Accumulator
	RTS                 ; $FEE2: $60 - Return from Subroutine
	JSR $8BE5           ; $FEE3: $20 $E5 $8B - Jump to New Location Saving Return Address
	CMP #$14            ; $FEE6: $C9 $14 - Compare Memory with Accumulator
	BCS $03             ; $FEE8: $B0 $03 - Branch on Carry Set
	INC $0360,X         ; $FEEA: $FE $60 $03 - Increment Memory by One
	CMP #$DC            ; $FEED: $C9 $DC - Compare Memory with Accumulator
	BCC $03             ; $FEEF: $90 $03 - Branch on Carry Clear
	DEC $0360,X         ; $FEF1: $DE $60 $03 - Decrement Memory by One
	LDA $9C             ; $FEF4: $A5 $9C - Load Accumulator with Memory
	BEQ $17             ; $FEF6: $F0 $17 - Branch on Result Zero
	JSR $FED7           ; $FEF8: $20 $D7 $FE - Jump to New Location Saving Return Address
	BCC $13             ; $FEFB: $90 $13 - Branch on Carry Clear
	LDA $9C             ; $FEFD: $A5 $9C - Load Accumulator with Memory
	STA $0A             ; $FEFF: $85 $0A - Store Accumulator in Memory
	LDA #$20            ; $FF01: $A9 $20 - Load Accumulator with Memory
	LDY $9D             ; $FF03: $A4 $9D - Load Index Y with Memory
	JSR $88F6           ; $FF05: $20 $F6 $88 - Jump to New Location Saving Return Address
	LDA #$02            ; $FF08: $A9 $02 - Load Accumulator with Memory
	LDY #$00            ; $FF0A: $A0 $00 - Load Index Y with Memory
	JSR $89F4           ; $FF0C: $20 $F4 $89 - Jump to New Location Saving Return Address
	RTS                 ; $FF0F: $60 - Return from Subroutine
	LDA #$08            ; $FF10: $A9 $08 - Load Accumulator with Memory
	JMP $88AE           ; $FF12: $4C $AE $88 - Jump to New Location
	ASL $1BFF,X         ; $FF16: $1E $FF $1B - Shift Left One Bit
	RTS                 ; $FF1B: $60 - Return from Subroutine
	BRK                 ; $FF1C: $00 - Force Break
	LDA ($9C),Y         ; $FF1D: $B1 $9C $20 - Load Accumulator with Memory
	SBC #$87            ; $FF20: $E9 $87 - Subtract Memory from Accumulator with Borrow
	BNE $23             ; $FF22: $D0 $23 - Branch on Result not Zero
	JSR $A2BE           ; $FF24: $20 $BE $A2 - Jump to New Location Saving Return Address
	BCS $1E             ; $FF27: $B0 $1E - Branch on Carry Set
	LDA #$00            ; $FF29: $A9 $00 - Load Accumulator with Memory
	STA $0090,Y         ; $FF2B: $99 $90 $00 - Store Accumulator in Memory
	STA $053A,Y         ; $FF2E: $99 $3A $05 - Store Accumulator in Memory
	STA $02C0,Y         ; $FF31: $99 $C0 $02 - Store Accumulator in Memory
	STA $03DC,X         ; $FF34: $9D $DC $03 - Store Accumulator in Memory
	LDA #$FC            ; $FF37: $A9 $FC - Load Accumulator with Memory
	STA $02A0,Y         ; $FF39: $99 $A0 $02 - Store Accumulator in Memory
	LDA #$01            ; $FF3C: $A9 $01 - Load Accumulator with Memory
	JSR $980F           ; $FF3E: $20 $0F $98 - Jump to New Location Saving Return Address
	JSR $D8CC           ; $FF41: $20 $CC $D8 - Jump to New Location Saving Return Address
	BRK                 ; $FF44: $00 - Force Break
	LSR $9E,X           ; $FF45: $56 $9E - Shift One Bit Right (Memory or Accumulator)
	JMP $D8CC           ; $FF47: $4C $CC $D8 - Jump to New Location
	BRK                 ; $FF50: $00 - Force Break
	TYA                 ; $FF51: $98 - Transfer Index Y to Accumulator
	JSR $A926           ; $FF53: $20 $26 $A9 - Jump to New Location Saving Return Address
	JSR $A9C4           ; $FF56: $20 $C4 $A9 - Jump to New Location Saving Return Address
	JMP $D8C9           ; $FF59: $4C $C9 $D8 - Jump to New Location
	JSR $FF5F           ; $FF5C: $20 $5F $FF - Jump to New Location Saving Return Address
	LDA $2002           ; $FF5F: $AD $02 $20 - Load Accumulator with Memory
	BPL $FB             ; $FF62: $10 $FB - Branch on Result Plus
	RTS                 ; $FF64: $60 - Return from Subroutine
	LDA $FF             ; $FF65: $A5 $FF - Load Accumulator with Memory
	ORA #$1E            ; $FF67: $09 $1E - OR Memory with Accumulator
	STA $FF             ; $FF69: $85 $FF - Store Accumulator in Memory
	STA $2001           ; $FF6B: $8D $01 $20 - Store Accumulator in Memory
	RTS                 ; $FF6E: $60 - Return from Subroutine
	LDA #$C0            ; $FF6F: $A9 $C0 - Load Accumulator with Memory
	STA $81             ; $FF71: $85 $81 - Store Accumulator in Memory
	LDA $FF             ; $FF73: $A5 $FF - Load Accumulator with Memory
	CLC #$E7            ; $FF75: $29 $E7 - Clear Carry Flag
	STA $FF             ; $FF77: $85 $FF - Store Accumulator in Memory
	STA $2001           ; $FF79: $8D $01 $20 - Store Accumulator in Memory
	RTS                 ; $FF7C: $60 - Return from Subroutine
	STA $FF             ; $FF7E: $85 $FF - Store Accumulator in Memory
	BRK                 ; $FF83: $00 - Force Break
	LDA $02E0,X         ; $FF86: $BD $E0 $02 - Load Accumulator with Memory
	BEQ $31             ; $FF89: $F0 $31 - Branch on Result Zero
	DEC $03A0,X         ; $FF8B: $DE $A0 $03 - Decrement Memory by One
	BNE $26             ; $FF8E: $D0 $26 - Branch on Result not Zero
	JSR $8B28           ; $FF90: $20 $28 $8B - Jump to New Location Saving Return Address
	BCC $08             ; $FF93: $90 $08 - Branch on Carry Clear
	JSR $8B28           ; $FF95: $20 $28 $8B - Jump to New Location Saving Return Address
	BCC $03             ; $FF98: $90 $03 - Branch on Carry Clear
	JSR $893C           ; $FF9A: $20 $3C $89 - Jump to New Location Saving Return Address
	TXA                 ; $FF9D: $8A - Transfer Index X to Accumulator
	TAY                 ; $FF9E: $A8 - Transfer Accumulator to Index Y
	LDA $0300,X         ; $FF9F: $BD $00 $03 - Load Accumulator with Memory
	STA $0A             ; $FFA2: $85 $0A - Store Accumulator in Memory
	LDA #$FF            ; $FFA4: $A9 $FF - Load Accumulator with Memory
	JSR $8A48           ; $FFA6: $20 $48 $8A - Jump to New Location Saving Return Address
	LDA #$08            ; $FFA9: $A9 $08 - Load Accumulator with Memory
	JSR $980F           ; $FFAB: $20 $0F $98 - Jump to New Location Saving Return Address
	LDA #$0F            ; $FFAE: $A9 $0F - Load Accumulator with Memory
	STA $05CF           ; $FFB0: $8D $CF $05 - Store Accumulator in Memory
	JMP $8833           ; $FFB3: $4C $33 $88 - Jump to New Location
	JSR $A926           ; $FFB6: $20 $26 $A9 - Jump to New Location Saving Return Address
	JMP $FFC9           ; $FFB9: $4C $C9 $FF - Jump to New Location
	JSR $8B60           ; $FFBC: $20 $60 $8B - Jump to New Location Saving Return Address
	LDY #$02            ; $FFBF: $A0 $02 - Load Index Y with Memory
	JSR $8811           ; $FFC1: $20 $11 $88 - Jump to New Location Saving Return Address
	BNE $03             ; $FFC4: $D0 $03 - Branch on Result not Zero
	JSR $EB48           ; $FFC6: $20 $48 $EB - Jump to New Location Saving Return Address
	JMP $D8CC           ; $FFC9: $4C $CC $D8 - Jump to New Location
	LDA $F7             ; $FFCC: $A5 $F7 - Load Accumulator with Memory
	CMP $0440,X         ; $FFCE: $DD $40 $04 - Compare Memory with Accumulator
	BCC $24             ; $FFD1: $90 $24 - Branch on Carry Clear
	LDA $02E0,X         ; $FFD3: $BD $E0 $02 - Load Accumulator with Memory
	BNE $1B             ; $FFD6: $D0 $1B - Branch on Result not Zero
	LDA $F8             ; $FFD8: $A5 $F8 - Load Accumulator with Memory
	STA $0300,X         ; $FFDA: $9D $00 $03 - Store Accumulator in Memory
	LDA #$01            ; $FFDD: $A9 $01 - Load Accumulator with Memory
	STA $02E0,X         ; $FFDF: $9D $E0 $02 - Store Accumulator in Memory
	LDA #$3C            ; $FFE2: $A9 $3C - Load Accumulator with Memory
	STA $03A0,X         ; $FFE4: $9D $A0 $03 - Store Accumulator in Memory
	LDA #$01            ; $FFE7: $A9 $01 - Load Accumulator with Memory
	STA $F9             ; $FFE9: $85 $F9 - Store Accumulator in Memory
	LDA #$07            ; $FFEB: $A9 $07 - Load Accumulator with Memory
	JSR $980F           ; $FFED: $20 $0F $98 - Jump to New Location Saving Return Address
	BRK                 ; $FFF0: $00 - Force Break
	JMP $A99C           ; $FFF1: $4C $9C $A9 - Jump to New Location
	STA $F9             ; $FFF5: $85 $F9 - Store Accumulator in Memory
	RTS                 ; $FFF7: $60 - Return from Subroutine
	BRK                 ; $FFF8: $00 - Force Break
	BRK                 ; $FFF9: $00 - Force Break
	CMP $57             ; $FFFB: $C5 $57 - Compare Memory with Accumulator
	STA $E6,X           ; $FFFD: $95 $E6 - Store Accumulator in Memory
	SBC $0000,Y         ; $FFFF: $F9 $00 $00 - Subtract Memory from Accumulator with Borrow
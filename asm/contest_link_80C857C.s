	.include "constants/gba_constants.inc"
	.include "include/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_80C89DC
sub_80C89DC: @ 80C89DC
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, _080C8A04 @ =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080C8A08
	cmp r0, 0x1
	beq _080C8A20
	movs r0, 0
	strh r0, [r4, 0x8]
	adds r0, r2, 0
	bl SwitchTaskToFollowupFunc
	b _080C8A30
	.align 2, 0
_080C8A04: .4byte gTasks
_080C8A08:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8A30
	ldr r0, _080C8A1C @ =gContestPlayerMonIndex
	movs r1, 0x1
	bl sub_80C857C
	b _080C8A2A
	.align 2, 0
_080C8A1C: .4byte gContestPlayerMonIndex
_080C8A20:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8A30
_080C8A2A:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_080C8A30:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80C89DC

	thumb_func_start sub_80C8A38
sub_80C8A38: @ 80C8A38
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r7, _080C8A60 @ =gTasks
	lsls r6, r5, 2
	adds r0, r6, r5
	lsls r0, 3
	adds r4, r0, r7
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080C8A64
	cmp r0, 0x1
	beq _080C8A94
	movs r0, 0
	strh r0, [r4, 0x8]
	adds r0, r5, 0
	bl SwitchTaskToFollowupFunc
	b _080C8AC2
	.align 2, 0
_080C8A60: .4byte gTasks
_080C8A64:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8AC2
	ldr r0, _080C8A8C @ =gContestPlayerMonIndex
	ldrb r1, [r0]
	lsls r0, r1, 3
	subs r0, r1
	lsls r0, 2
	ldr r1, _080C8A90 @ =gSharedMem + 0x19266
	adds r0, r1
	movs r1, 0x2
	bl sub_80C857C
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _080C8AC2
	.align 2, 0
_080C8A8C: .4byte gContestPlayerMonIndex
_080C8A90: .4byte gSharedMem + 0x19266
_080C8A94:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8AC2
	ldr r1, _080C8AC8 @ =gBlockRecvBuffer
	ldr r3, _080C8ACC @ =gSharedMem + 0x19266
	movs r4, 0x80
	lsls r4, 1
	movs r2, 0x3
_080C8AA8:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, r4
	adds r3, 0x1C
	subs r2, 0x1
	cmp r2, 0
	bge _080C8AA8
	adds r1, r6, r5
	lsls r1, 3
	adds r1, r7
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_080C8AC2:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C8AC8: .4byte gBlockRecvBuffer
_080C8ACC: .4byte gSharedMem + 0x19266
	thumb_func_end sub_80C8A38

	thumb_func_start sub_80C8AD0
sub_80C8AD0: @ 80C8AD0
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080C8AF8 @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	movs r3, 0x8
	ldrsh r0, [r2, r3]
	adds r3, r1, 0
	cmp r0, 0xB
	bls _080C8AEC
	b _080C8C70
_080C8AEC:
	lsls r0, 2
	ldr r1, _080C8AFC @ =_080C8B00
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C8AF8: .4byte gTasks
_080C8AFC: .4byte _080C8B00
	.align 2, 0
_080C8B00:
	.4byte _080C8B30
	.4byte _080C8B4C
	.4byte _080C8B74
	.4byte _080C8B98
	.4byte _080C8BB0
	.4byte _080C8B74
	.4byte _080C8BD8
	.4byte _080C8BF0
	.4byte _080C8B74
	.4byte _080C8C18
	.4byte _080C8C30
	.4byte _080C8B74
_080C8B30:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _080C8B3C
	b _080C8C7A
_080C8B3C:
	ldr r0, _080C8B48 @ =gUnknown_02038678
	movs r1, 0x8
	bl sub_80C857C
	b _080C8C4C
	.align 2, 0
_080C8B48: .4byte gUnknown_02038678
_080C8B4C:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	bne _080C8B58
	b _080C8C7A
_080C8B58:
	ldr r0, _080C8B68 @ =gUnknown_02038678
	ldr r1, _080C8B6C @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8B70 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x8
	b _080C8C48
	.align 2, 0
_080C8B68: .4byte gUnknown_02038678
_080C8B6C: .4byte gUnknown_0203869B
_080C8B70: .4byte gBlockRecvBuffer
_080C8B74:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r3
	ldrh r0, [r2, 0xA]
	adds r1, r0, 0x1
	strh r1, [r2, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xA
	bgt _080C8B8C
	b _080C8C7A
_080C8B8C:
	movs r0, 0
	strh r0, [r2, 0xA]
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	b _080C8C7A
_080C8B98:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8C7A
	ldr r0, _080C8BAC @ =gUnknown_02038680
	movs r1, 0x8
	bl sub_80C857C
	b _080C8C4C
	.align 2, 0
_080C8BAC: .4byte gUnknown_02038680
_080C8BB0:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8C7A
	ldr r0, _080C8BCC @ =gUnknown_02038680
	ldr r1, _080C8BD0 @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8BD4 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x8
	b _080C8C48
	.align 2, 0
_080C8BCC: .4byte gUnknown_02038680
_080C8BD0: .4byte gUnknown_0203869B
_080C8BD4: .4byte gBlockRecvBuffer
_080C8BD8:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8C7A
	ldr r0, _080C8BEC @ =gUnknown_02038688
	movs r1, 0x8
	bl sub_80C857C
	b _080C8C4C
	.align 2, 0
_080C8BEC: .4byte gUnknown_02038688
_080C8BF0:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8C7A
	ldr r0, _080C8C0C @ =gUnknown_02038688
	ldr r1, _080C8C10 @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8C14 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x8
	b _080C8C48
	.align 2, 0
_080C8C0C: .4byte gUnknown_02038688
_080C8C10: .4byte gUnknown_0203869B
_080C8C14: .4byte gBlockRecvBuffer
_080C8C18:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8C7A
	ldr r0, _080C8C2C @ =gContestFinalStandings
	movs r1, 0x4
	bl sub_80C857C
	b _080C8C4C
	.align 2, 0
_080C8C2C: .4byte gContestFinalStandings
_080C8C30:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8C7A
	ldr r0, _080C8C60 @ =gContestFinalStandings
	ldr r1, _080C8C64 @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8C68 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x4
_080C8C48:
	bl memcpy
_080C8C4C:
	ldr r1, _080C8C6C @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _080C8C7A
	.align 2, 0
_080C8C60: .4byte gContestFinalStandings
_080C8C64: .4byte gUnknown_0203869B
_080C8C68: .4byte gBlockRecvBuffer
_080C8C6C: .4byte gTasks
_080C8C70:
	movs r0, 0
	strh r0, [r2, 0x8]
	adds r0, r4, 0
	bl SwitchTaskToFollowupFunc
_080C8C7A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80C8AD0

	thumb_func_start sub_80C8C80
sub_80C8C80: @ 80C8C80
	push {r4,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _080C8CA8 @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r1
	movs r3, 0x8
	ldrsh r0, [r2, r3]
	adds r3, r1, 0
	cmp r0, 0xB
	bls _080C8C9C
	b _080C8E0C
_080C8C9C:
	lsls r0, 2
	ldr r1, _080C8CAC @ =_080C8CB0
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C8CA8: .4byte gTasks
_080C8CAC: .4byte _080C8CB0
	.align 2, 0
_080C8CB0:
	.4byte _080C8CE0
	.4byte _080C8CFC
	.4byte _080C8D24
	.4byte _080C8D46
	.4byte _080C8D60
	.4byte _080C8D24
	.4byte _080C8D88
	.4byte _080C8DA0
	.4byte _080C8D24
	.4byte _080C8DB4
	.4byte _080C8DCC
	.4byte _080C8D24
_080C8CE0:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	bne _080C8CEC
	b _080C8E16
_080C8CEC:
	ldr r0, _080C8CF8 @ =gSharedMem + 0x19260
	movs r1, 0x70
	bl sub_80C857C
	b _080C8DE8
	.align 2, 0
_080C8CF8: .4byte gSharedMem + 0x19260
_080C8CFC:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	bne _080C8D08
	b _080C8E16
_080C8D08:
	ldr r0, _080C8D18 @ =gSharedMem + 0x19260
	ldr r1, _080C8D1C @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8D20 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x70
	b _080C8DE4
	.align 2, 0
_080C8D18: .4byte gSharedMem + 0x19260
_080C8D1C: .4byte gUnknown_0203869B
_080C8D20: .4byte gBlockRecvBuffer
_080C8D24:
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r2, r0, r3
	ldrh r0, [r2, 0xA]
	adds r1, r0, 0x1
	strh r1, [r2, 0xA]
	lsls r0, 16
	asrs r0, 16
	cmp r0, 0xA
	ble _080C8E16
	movs r0, 0
	strh r0, [r2, 0xA]
	ldrh r0, [r2, 0x8]
	adds r0, 0x1
	strh r0, [r2, 0x8]
	b _080C8E16
_080C8D46:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8E16
	ldr r0, _080C8D5C @ =gSharedMem + 0x192D0
	movs r1, 0x14
	bl sub_80C857C
	b _080C8DE8
	.align 2, 0
_080C8D5C: .4byte gSharedMem + 0x192D0
_080C8D60:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8E16
	ldr r0, _080C8D7C @ =gSharedMem + 0x192D0
	ldr r1, _080C8D80 @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8D84 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x14
	b _080C8DE4
	.align 2, 0
_080C8D7C: .4byte gSharedMem + 0x192D0
_080C8D80: .4byte gUnknown_0203869B
_080C8D84: .4byte gBlockRecvBuffer
_080C8D88:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8E16
	ldr r0, _080C8D9C @ =gSharedMem + 0x19328
	movs r1, 0x4
	bl sub_80C857C
	b _080C8DE8
	.align 2, 0
_080C8D9C: .4byte gSharedMem + 0x19328
_080C8DA0:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8E16
	ldr r0, _080C8DB0 @ =gSharedMem + 0x19328
	b _080C8DD8
	.align 2, 0
_080C8DB0: .4byte gSharedMem + 0x19328
_080C8DB4:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8E16
	ldr r0, _080C8DC8 @ =gUnknown_02038696
	movs r1, 0x4
	bl sub_80C857C
	b _080C8DE8
	.align 2, 0
_080C8DC8: .4byte gUnknown_02038696
_080C8DCC:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8E16
	ldr r0, _080C8DFC @ =gUnknown_02038696
_080C8DD8:
	ldr r1, _080C8E00 @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8E04 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x4
_080C8DE4:
	bl memcpy
_080C8DE8:
	ldr r1, _080C8E08 @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
	b _080C8E16
	.align 2, 0
_080C8DFC: .4byte gUnknown_02038696
_080C8E00: .4byte gUnknown_0203869B
_080C8E04: .4byte gBlockRecvBuffer
_080C8E08: .4byte gTasks
_080C8E0C:
	movs r0, 0
	strh r0, [r2, 0x8]
	adds r0, r4, 0
	bl SwitchTaskToFollowupFunc
_080C8E16:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_80C8C80

.ifdef ENGLISH
	thumb_func_start sub_80C8E1C
sub_80C8E1C: @ 80C8E1C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _080C8E4C @ =gTasks
	mov r8, r0
	lsls r6, r5, 2
	adds r0, r6, r5
	lsls r7, r0, 3
	mov r1, r8
	adds r4, r7, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080C8E50
	cmp r0, 0x1
	beq _080C8E7C
	movs r0, 0
	strh r0, [r4, 0x8]
	adds r0, r5, 0
	bl SwitchTaskToFollowupFunc
	b _080C8EAE
	.align 2, 0
_080C8E4C: .4byte gTasks
_080C8E50:
	ldr r1, _080C8E78 @ =gBlockSendBuffer
	movs r0, 0x64
	strb r0, [r1]
	bl GetMultiplayerId
	lsls r0, 24
	cmp r0, 0
	bne _080C8E70
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8EAE
	movs r0, 0x2
	bl sub_8007E9C
_080C8E70:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
	b _080C8EAE
	.align 2, 0
_080C8E78: .4byte gBlockSendBuffer
_080C8E7C:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8EAE
	ldr r1, _080C8EB8 @ =gBlockRecvBuffer
	mov r0, r8
	adds r0, 0x12
	adds r2, r7, r0
	movs r4, 0x80
	lsls r4, 1
	movs r3, 0x3
_080C8E94:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, r4
	adds r2, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _080C8E94
	adds r1, r6, r5
	lsls r1, 3
	add r1, r8
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
_080C8EAE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C8EB8: .4byte gBlockRecvBuffer
	thumb_func_end sub_80C8E1C
.else
	thumb_func_start sub_80C8E1C
sub_80C8E1C: @ 80C8E1C
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r1, _080C8E40 @ =gTasks
	lsls r4, r5, 2
	adds r0, r4, r5
	lsls r6, r0, 3
	adds r2, r6, r1
	movs r3, 0x8
	ldrsh r0, [r2, r3]
	adds r7, r1, 0
	cmp r0, 0x1
	beq _080C8EB0
	cmp r0, 0x1
	bgt _080C8E44
	cmp r0, 0
	beq _080C8E4C
	b _080C8EF8
	.align 2, 0
_080C8E40: .4byte gTasks
_080C8E44:
	cmp r0, 0x2
	beq _080C8EEC
	cmp r0, 0x8
	bne _080C8EF8
_080C8E4C:
	ldr r1, _080C8E80 @ =gBlockSendBuffer
	movs r0, 0x64
	strb r0, [r1]
	bl GetMultiplayerId
	lsls r0, 24
	cmp r0, 0
	bne _080C8E9A
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8F06
	ldr r0, _080C8E84 @ =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r4, r1, r0
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	bne _080C8E88
	movs r0, 0x3
	strh r0, [r4, 0x8]
	b _080C8F06
	.align 2, 0
_080C8E80: .4byte gBlockSendBuffer
_080C8E84: .4byte gTasks
_080C8E88:
	movs r0, 0
	bl de_sub_80C9274
	movs r0, 0x2
	bl sub_8007E9C
	movs r0, 0x1
	strh r0, [r4, 0x8]
	b _080C8F06
_080C8E9A:
	movs r0, 0
	bl de_sub_80C9294
	ldr r0, _080C8EAC @ =gTasks
	lsls r1, r5, 2
	adds r1, r5
	lsls r1, 3
	adds r1, r0
	b _080C8EDE
	.align 2, 0
_080C8EAC: .4byte gTasks
_080C8EB0:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8F06
	adds r1, r4, 0
	ldr r4, _080C8EE8 @ =gBlockRecvBuffer
	adds r0, r7, 0
	adds r0, 0x12
	adds r2, r6, r0
	movs r6, 0x80
	lsls r6, 1
	movs r3, 0x3
_080C8ECA:
	ldrh r0, [r4]
	strh r0, [r2]
	adds r4, r6
	adds r2, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _080C8ECA
	adds r1, r5
	lsls r1, 3
	adds r1, r7
_080C8EDE:
	ldrh r0, [r1, 0x8]
	adds r0, 0x1
	strh r0, [r1, 0x8]
	b _080C8F06
	.align 2, 0
_080C8EE8: .4byte gBlockRecvBuffer
_080C8EEC:
	movs r0, 0
	strh r0, [r2, 0x8]
	adds r0, r5, 0
	bl SwitchTaskToFollowupFunc
	b _080C8F06
_080C8EF8:
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	adds r0, r7
	ldrh r1, [r0, 0x8]
	adds r1, 0x1
	strh r1, [r0, 0x8]
_080C8F06:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_80C8E1C
.endif

	thumb_func_start sub_80C8EBC
sub_80C8EBC: @ 80C8EBC
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, _080C8EE4 @ =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080C8EE8_B
	cmp r0, 0x1
	beq _080C8F00
	movs r0, 0
	strh r0, [r4, 0x8]
	adds r0, r2, 0
	bl SwitchTaskToFollowupFunc
	b _080C8F22
	.align 2, 0
_080C8EE4: .4byte gTasks
_080C8EE8_B:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8F22
	ldr r0, _080C8EFC @ =gUnknown_02038670
	movs r1, 0x8
	bl sub_80C857C
	b _080C8F1C
	.align 2, 0
_080C8EFC: .4byte gUnknown_02038670
_080C8F00:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8F22
	ldr r0, _080C8F28 @ =gUnknown_02038670
	ldr r1, _080C8F2C @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8F30 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x8
	bl memcpy
_080C8F1C:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_080C8F22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C8F28: .4byte gUnknown_02038670
_080C8F2C: .4byte gUnknown_0203869B
_080C8F30: .4byte gBlockRecvBuffer
	thumb_func_end sub_80C8EBC

	thumb_func_start sub_80C8F34
sub_80C8F34: @ 80C8F34
	push {r4,lr}
	lsls r0, 24
	lsrs r2, r0, 24
	ldr r1, _080C8F5C @ =gTasks
	lsls r0, r2, 2
	adds r0, r2
	lsls r0, 3
	adds r4, r0, r1
	movs r1, 0x8
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _080C8F60
	cmp r0, 0x1
	beq _080C8F78
	movs r0, 0
	strh r0, [r4, 0x8]
	adds r0, r2, 0
	bl SwitchTaskToFollowupFunc
	b _080C8F9A
	.align 2, 0
_080C8F5C: .4byte gTasks
_080C8F60:
	bl sub_8007ECC
	lsls r0, 24
	cmp r0, 0
	beq _080C8F9A
	ldr r0, _080C8F74 @ =gUnknown_02038696
	movs r1, 0x4
	bl sub_80C857C
	b _080C8F94
	.align 2, 0
_080C8F74: .4byte gUnknown_02038696
_080C8F78:
	bl sub_80C85D8
	lsls r0, 24
	cmp r0, 0
	beq _080C8F9A
	ldr r0, _080C8FA0 @ =gUnknown_02038696
	ldr r1, _080C8FA4 @ =gUnknown_0203869B
	ldrb r1, [r1]
	lsls r1, 8
	ldr r2, _080C8FA8 @ =gBlockRecvBuffer
	adds r1, r2
	movs r2, 0x4
	bl memcpy
_080C8F94:
	ldrh r0, [r4, 0x8]
	adds r0, 0x1
	strh r0, [r4, 0x8]
_080C8F9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C8FA0: .4byte gUnknown_02038696
_080C8FA4: .4byte gUnknown_0203869B
_080C8FA8: .4byte gBlockRecvBuffer
	thumb_func_end sub_80C8F34

	.align 2, 0 @ Don't pad with nop.

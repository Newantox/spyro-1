.include "macro.inc"

.set noat
.set noreorder

.section .text, "ax"

/* Generated by spimdisasm 1.27.0 */

/* Handwritten function */
glabel func_80053570
/* 43D70 80053570 0780053C */  lui        $a1, %hi(D_80075824)
/* 43D74 80053574 2458A524 */  addiu      $a1, $a1, %lo(D_80075824)
/* 43D78 80053578 0000A58C */  lw         $a1, 0x0($a1)
/* 43D7C 8005357C 0780013C */  lui        $at, %hi(D_80075738)
/* 43D80 80053580 38572124 */  addiu      $at, $at, %lo(D_80075738)
/* 43D84 80053584 0000228C */  lw         $v0, 0x0($at)
/* 43D88 80053588 0020A520 */  addi       $a1, $a1, 0x2000 /* handwritten instruction */
/* 43D8C 8005358C 0C004514 */  bne        $v0, $a1, .L800535C0
/* 43D90 80053590 00000000 */   nop
/* 43D94 80053594 0000E723 */  addi       $a3, $ra, 0x0 /* handwritten instruction */
/* 43D98 80053598 CB89010C */  jal        rand
/* 43D9C 8005359C 00008620 */   addi      $a2, $a0, 0x0 /* handwritten instruction */
/* 43DA0 800535A0 FF004230 */  andi       $v0, $v0, 0xFF
/* 43DA4 800535A4 01004220 */  addi       $v0, $v0, 0x1 /* handwritten instruction */
/* 43DA8 800535A8 20000320 */  addi       $v1, $zero, 0x20 /* handwritten instruction */
/* 43DAC 800535AC 18004300 */  mult       $v0, $v1
/* 43DB0 800535B0 12100000 */  mflo       $v0
/* 43DB4 800535B4 2210A200 */  sub        $v0, $a1, $v0 /* handwritten instruction */
/* 43DB8 800535B8 0800E000 */  jr         $a3
/* 43DBC 800535BC 010046A0 */   sb        $a2, 0x1($v0)
.L800535C0:
/* 43DC0 800535C0 01004380 */  lb         $v1, 0x1($v0)
/* 43DC4 800535C4 010044A0 */  sb         $a0, 0x1($v0)
/* 43DC8 800535C8 FFFF0420 */  addi       $a0, $zero, -0x1 /* handwritten instruction */
/* 43DCC 800535CC 06006414 */  bne        $v1, $a0, .L800535E8
/* 43DD0 800535D0 20004320 */   addi      $v1, $v0, 0x20 /* handwritten instruction */
/* 43DD4 800535D4 02006510 */  beq        $v1, $a1, .L800535E0
/* 43DD8 800535D8 00000000 */   nop
/* 43DDC 800535DC 010064A0 */  sb         $a0, 0x1($v1)
.L800535E0:
/* 43DE0 800535E0 0800E003 */  jr         $ra
/* 43DE4 800535E4 000023AC */   sw        $v1, 0x0($at)
.L800535E8:
/* 43DE8 800535E8 01006480 */  lb         $a0, 0x1($v1)
/* 43DEC 800535EC 04006510 */  beq        $v1, $a1, .L80053600
/* 43DF0 800535F0 00000000 */   nop
/* 43DF4 800535F4 FCFF8104 */  bgez       $a0, .L800535E8
/* 43DF8 800535F8 20006320 */   addi      $v1, $v1, 0x20 /* handwritten instruction */
/* 43DFC 800535FC E0FF6320 */  addi       $v1, $v1, -0x20 /* handwritten instruction */
.L80053600:
/* 43E00 80053600 0800E003 */  jr         $ra
/* 43E04 80053604 000023AC */   sw        $v1, 0x0($at)
.size func_80053570, . - func_80053570

/* Handwritten function */
glabel func_80053608
/* 43E08 80053608 0780053C */  lui        $a1, %hi(D_80075824)
/* 43E0C 8005360C 2458A524 */  addiu      $a1, $a1, %lo(D_80075824)
/* 43E10 80053610 0000A58C */  lw         $a1, 0x0($a1)
/* 43E14 80053614 20008120 */  addi       $at, $a0, 0x20 /* handwritten instruction */
/* 43E18 80053618 0020A220 */  addi       $v0, $a1, 0x2000 /* handwritten instruction */
/* 43E1C 8005361C 0F002210 */  beq        $at, $v0, .L8005365C
/* 43E20 80053620 01002280 */   lb        $v0, 0x1($at)
/* 43E24 80053624 FFFF0320 */  addi       $v1, $zero, -0x1 /* handwritten instruction */
/* 43E28 80053628 0C004310 */  beq        $v0, $v1, .L8005365C
/* 43E2C 8005362C 00000000 */   nop
/* 43E30 80053630 FEFF0320 */  addi       $v1, $zero, -0x2 /* handwritten instruction */
/* 43E34 80053634 0780013C */  lui        $at, %hi(D_80075738)
/* 43E38 80053638 38572124 */  addiu      $at, $at, %lo(D_80075738)
/* 43E3C 8005363C 0000228C */  lw         $v0, 0x0($at)
/* 43E40 80053640 010083A0 */  sb         $v1, 0x1($a0)
/* 43E44 80053644 22104400 */  sub        $v0, $v0, $a0 /* handwritten instruction */
/* 43E48 80053648 02004004 */  bltz       $v0, .L80053654
/* 43E4C 8005364C 00000000 */   nop
/* 43E50 80053650 000024AC */  sw         $a0, 0x0($at)
.L80053654:
/* 43E54 80053654 0800E003 */  jr         $ra
/* 43E58 80053658 00000000 */   nop
.L8005365C:
/* 43E5C 8005365C 07008510 */  beq        $a0, $a1, .L8005367C
/* 43E60 80053660 E0FF8120 */   addi      $at, $a0, -0x20 /* handwritten instruction */
.L80053664:
/* 43E64 80053664 01002280 */  lb         $v0, 0x1($at)
/* 43E68 80053668 00000000 */  nop
/* 43E6C 8005366C 03004104 */  bgez       $v0, .L8005367C
/* 43E70 80053670 00000000 */   nop
/* 43E74 80053674 FBFF2514 */  bne        $at, $a1, .L80053664
/* 43E78 80053678 E0FF2120 */   addi      $at, $at, -0x20 /* handwritten instruction */
.L8005367C:
/* 43E7C 8005367C 0780023C */  lui        $v0, %hi(D_80075738)
/* 43E80 80053680 38574224 */  addiu      $v0, $v0, %lo(D_80075738)
/* 43E84 80053684 0000438C */  lw         $v1, 0x0($v0)
/* 43E88 80053688 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
/* 43E8C 8005368C 22186100 */  sub        $v1, $v1, $at /* handwritten instruction */
/* 43E90 80053690 02006004 */  bltz       $v1, .L8005369C
/* 43E94 80053694 FFFF0320 */   addi      $v1, $zero, -0x1 /* handwritten instruction */
/* 43E98 80053698 000041AC */  sw         $at, 0x0($v0)
.L8005369C:
/* 43E9C 8005369C 0800E003 */  jr         $ra
/* 43EA0 800536A0 010023A0 */   sb        $v1, 0x1($at)
.size func_80053608, . - func_80053608

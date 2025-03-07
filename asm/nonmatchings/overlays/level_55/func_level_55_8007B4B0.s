.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

.section .rodata
.align 2
dlabel D_level_55_8007AA3C
/* 502F804 8007AA3C */ .asciz "......"
.align 2
.size D_level_55_8007AA3C, . - D_level_55_8007AA3C

.align 2
dlabel D_level_55_8007AA44
/* 502F80C 8007AA44 */ .asciz "%d %02d.%02d"
.align 2
.size D_level_55_8007AA44, . - D_level_55_8007AA44

.align 2
dlabel D_level_55_8007AA54
/* 502F81C 8007AA54 */ .asciz "%d.%02d"
.align 2
.size D_level_55_8007AA54, . - D_level_55_8007AA54

.align 2
dlabel D_level_55_8007AA5C
/* 502F824 8007AA5C */ .asciz "."
.align 2
.size D_level_55_8007AA5C, . - D_level_55_8007AA5C


.section .text
/* Generated by spimdisasm 1.27.0 */

glabel func_level_55_8007B4B0
/* 5030278 8007B4B0 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 503027C 8007B4B4 2C00B1AF */  sw         $s1, 0x2C($sp)
/* 5030280 8007B4B8 2188A000 */  addu       $s1, $a1, $zero
/* 5030284 8007B4BC 3400B3AF */  sw         $s3, 0x34($sp)
/* 5030288 8007B4C0 2198C000 */  addu       $s3, $a2, $zero
/* 503028C 8007B4C4 3800BFAF */  sw         $ra, 0x38($sp)
/* 5030290 8007B4C8 3000B2AF */  sw         $s2, 0x30($sp)
/* 5030294 8007B4CC 0E008104 */  bgez       $a0, .Llevel_55_8007B508
/* 5030298 8007B4D0 2800B0AF */   sw        $s0, 0x28($sp)
/* 503029C 8007B4D4 0880043C */  lui        $a0, %hi(D_level_55_8007AA3C)
/* 50302A0 8007B4D8 3CAA8424 */  addiu      $a0, $a0, %lo(D_level_55_8007AA3C)
/* 50302A4 8007B4DC 12000624 */  addiu      $a2, $zero, 0x12
/* 50302A8 8007B4E0 21386002 */  addu       $a3, $s3, $zero
/* 50302AC 8007B4E4 0000A28C */  lw         $v0, 0x0($a1)
/* 50302B0 8007B4E8 0400A38C */  lw         $v1, 0x4($a1)
/* 50302B4 8007B4EC CAFF4224 */  addiu      $v0, $v0, -0x36
/* 50302B8 8007B4F0 FBFF6324 */  addiu      $v1, $v1, -0x5
/* 50302BC 8007B4F4 0000A2AC */  sw         $v0, 0x0($a1)
/* 50302C0 8007B4F8 F95F000C */  jal        func_80017FE4
/* 50302C4 8007B4FC 0400A3AC */   sw        $v1, 0x4($a1)
/* 50302C8 8007B500 9BED0108 */  j          .Llevel_55_8007B66C
/* 50302CC 8007B504 06000224 */   addiu     $v0, $zero, 0x6
.Llevel_55_8007B508:
/* 50302D0 8007B508 4E1B023C */  lui        $v0, (0x1B4E81B5 >> 16)
/* 50302D4 8007B50C B5814234 */  ori        $v0, $v0, (0x1B4E81B5 & 0xFFFF)
/* 50302D8 8007B510 18008200 */  mult       $a0, $v0
/* 50302DC 8007B514 10480000 */  mfhi       $t1
/* 50302E0 8007B518 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
/* 50302E4 8007B51C ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
/* 50302E8 8007B520 18008200 */  mult       $a0, $v0
/* 50302EC 8007B524 10280000 */  mfhi       $a1
/* 50302F0 8007B528 8274023C */  lui        $v0, (0x7482296B >> 16)
/* 50302F4 8007B52C 6B294234 */  ori        $v0, $v0, (0x7482296B & 0xFFFF)
/* 50302F8 8007B530 18008200 */  mult       $a0, $v0
/* 50302FC 8007B534 C31F0400 */  sra        $v1, $a0, 31
/* 5030300 8007B538 83210900 */  sra        $a0, $t1, 6
/* 5030304 8007B53C 23208300 */  subu       $a0, $a0, $v1
/* 5030308 8007B540 21388000 */  addu       $a3, $a0, $zero
/* 503030C 8007B544 2328A300 */  subu       $a1, $a1, $v1
/* 5030310 8007B548 40100700 */  sll        $v0, $a3, 1
/* 5030314 8007B54C 21104700 */  addu       $v0, $v0, $a3
/* 5030318 8007B550 C0100200 */  sll        $v0, $v0, 3
/* 503031C 8007B554 21104700 */  addu       $v0, $v0, $a3
/* 5030320 8007B558 80100200 */  sll        $v0, $v0, 2
/* 5030324 8007B55C 2338A200 */  subu       $a3, $a1, $v0
/* 5030328 8007B560 10300000 */  mfhi       $a2
/* 503032C 8007B564 83130600 */  sra        $v0, $a2, 14
/* 5030330 8007B568 23804300 */  subu       $s0, $v0, $v1
/* 5030334 8007B56C 00111000 */  sll        $v0, $s0, 4
/* 5030338 8007B570 23105000 */  subu       $v0, $v0, $s0
/* 503033C 8007B574 80100200 */  sll        $v0, $v0, 2
/* 5030340 8007B578 0A000012 */  beqz       $s0, .Llevel_55_8007B5A4
/* 5030344 8007B57C 23108200 */   subu      $v0, $a0, $v0
/* 5030348 8007B580 1000A7AF */  sw         $a3, 0x10($sp)
/* 503034C 8007B584 1800A427 */  addiu      $a0, $sp, 0x18
/* 5030350 8007B588 0880053C */  lui        $a1, %hi(D_level_55_8007AA44)
/* 5030354 8007B58C 44AAA524 */  addiu      $a1, $a1, %lo(D_level_55_8007AA44)
/* 5030358 8007B590 21300002 */  addu       $a2, $s0, $zero
/* 503035C 8007B594 F58B010C */  jal        sprintf
/* 5030360 8007B598 21384000 */   addu      $a3, $v0, $zero
/* 5030364 8007B59C 6EED0108 */  j          .Llevel_55_8007B5B8
/* 5030368 8007B5A0 00000000 */   nop
.Llevel_55_8007B5A4:
/* 503036C 8007B5A4 1800A427 */  addiu      $a0, $sp, 0x18
/* 5030370 8007B5A8 0880053C */  lui        $a1, %hi(D_level_55_8007AA54)
/* 5030374 8007B5AC 54AAA524 */  addiu      $a1, $a1, %lo(D_level_55_8007AA54)
/* 5030378 8007B5B0 F58B010C */  jal        sprintf
/* 503037C 8007B5B4 21304000 */   addu      $a2, $v0, $zero
.Llevel_55_8007B5B8:
/* 5030380 8007B5B8 DB89010C */  jal        strlen
/* 5030384 8007B5BC 1800A427 */   addiu     $a0, $sp, 0x18
/* 5030388 8007B5C0 21904000 */  addu       $s2, $v0, $zero
/* 503038C 8007B5C4 1800A427 */  addiu      $a0, $sp, 0x18
/* 5030390 8007B5C8 21282002 */  addu       $a1, $s1, $zero
/* 5030394 8007B5CC 12000624 */  addiu      $a2, $zero, 0x12
/* 5030398 8007B5D0 21386002 */  addu       $a3, $s3, $zero
/* 503039C 8007B5D4 C0101200 */  sll        $v0, $s2, 3
/* 50303A0 8007B5D8 0000238E */  lw         $v1, 0x0($s1)
/* 50303A4 8007B5DC 21105200 */  addu       $v0, $v0, $s2
/* 50303A8 8007B5E0 23186200 */  subu       $v1, $v1, $v0
/* 50303AC 8007B5E4 F95F000C */  jal        func_80017FE4
/* 50303B0 8007B5E8 000023AE */   sw        $v1, 0x0($s1)
/* 50303B4 8007B5EC 1E000012 */  beqz       $s0, .Llevel_55_8007B668
/* 50303B8 8007B5F0 21282002 */   addu      $a1, $s1, $zero
/* 50303BC 8007B5F4 0880103C */  lui        $s0, %hi(D_level_55_8007AA5C)
/* 50303C0 8007B5F8 5CAA1026 */  addiu      $s0, $s0, %lo(D_level_55_8007AA5C)
/* 50303C4 8007B5FC 21200002 */  addu       $a0, $s0, $zero
/* 50303C8 8007B600 12000624 */  addiu      $a2, $zero, 0x12
/* 50303CC 8007B604 21386002 */  addu       $a3, $s3, $zero
/* 50303D0 8007B608 0000228E */  lw         $v0, 0x0($s1)
/* 50303D4 8007B60C 01005226 */  addiu      $s2, $s2, 0x1
/* 50303D8 8007B610 94FF4224 */  addiu      $v0, $v0, -0x6C
/* 50303DC 8007B614 000022AE */  sw         $v0, 0x0($s1)
/* 50303E0 8007B618 0400228E */  lw         $v0, 0x4($s1)
/* 50303E4 8007B61C 0800238E */  lw         $v1, 0x8($s1)
/* 50303E8 8007B620 01004224 */  addiu      $v0, $v0, 0x1
/* 50303EC 8007B624 040022AE */  sw         $v0, 0x4($s1)
/* 50303F0 8007B628 40100300 */  sll        $v0, $v1, 1
/* 50303F4 8007B62C 21104300 */  addu       $v0, $v0, $v1
/* 50303F8 8007B630 43100200 */  sra        $v0, $v0, 1
/* 50303FC 8007B634 F95F000C */  jal        func_80017FE4
/* 5030400 8007B638 080022AE */   sw        $v0, 0x8($s1)
/* 5030404 8007B63C 21200002 */  addu       $a0, $s0, $zero
/* 5030408 8007B640 21282002 */  addu       $a1, $s1, $zero
/* 503040C 8007B644 12000624 */  addiu      $a2, $zero, 0x12
/* 5030410 8007B648 21386002 */  addu       $a3, $s3, $zero
/* 5030414 8007B64C 0000A28C */  lw         $v0, 0x0($a1)
/* 5030418 8007B650 0400A38C */  lw         $v1, 0x4($a1)
/* 503041C 8007B654 EEFF4224 */  addiu      $v0, $v0, -0x12
/* 5030420 8007B658 F8FF6324 */  addiu      $v1, $v1, -0x8
/* 5030424 8007B65C 0000A2AC */  sw         $v0, 0x0($a1)
/* 5030428 8007B660 F95F000C */  jal        func_80017FE4
/* 503042C 8007B664 0400A3AC */   sw        $v1, 0x4($a1)
.Llevel_55_8007B668:
/* 5030430 8007B668 21104002 */  addu       $v0, $s2, $zero
.Llevel_55_8007B66C:
/* 5030434 8007B66C 3800BF8F */  lw         $ra, 0x38($sp)
/* 5030438 8007B670 3400B38F */  lw         $s3, 0x34($sp)
/* 503043C 8007B674 3000B28F */  lw         $s2, 0x30($sp)
/* 5030440 8007B678 2C00B18F */  lw         $s1, 0x2C($sp)
/* 5030444 8007B67C 2800B08F */  lw         $s0, 0x28($sp)
/* 5030448 8007B680 4000BD27 */  addiu      $sp, $sp, 0x40
/* 503044C 8007B684 0800E003 */  jr         $ra
/* 5030450 8007B688 00000000 */   nop
.size func_level_55_8007B4B0, . - func_level_55_8007B4B0

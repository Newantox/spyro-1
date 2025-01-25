.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039E94
/* 2A694 80039E94 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 2A698 80039E98 3000B6AF */  sw         $s6, 0x30($sp)
/* 2A69C 80039E9C 5400B68F */  lw         $s6, 0x54($sp)
/* 2A6A0 80039EA0 2C00B5AF */  sw         $s5, 0x2C($sp)
/* 2A6A4 80039EA4 5800B58F */  lw         $s5, 0x58($sp)
/* 2A6A8 80039EA8 2000B2AF */  sw         $s2, 0x20($sp)
/* 2A6AC 80039EAC 21908000 */  addu       $s2, $a0, $zero
/* 2A6B0 80039EB0 1800B0AF */  sw         $s0, 0x18($sp)
/* 2A6B4 80039EB4 2180A000 */  addu       $s0, $a1, $zero
/* 2A6B8 80039EB8 2800B4AF */  sw         $s4, 0x28($sp)
/* 2A6BC 80039EBC 21A0C000 */  addu       $s4, $a2, $zero
/* 2A6C0 80039EC0 2400B3AF */  sw         $s3, 0x24($sp)
/* 2A6C4 80039EC4 2198E000 */  addu       $s3, $a3, $zero
/* 2A6C8 80039EC8 3400B7AF */  sw         $s7, 0x34($sp)
/* 2A6CC 80039ECC 5C00B78F */  lw         $s7, 0x5C($sp)
/* 2A6D0 80039ED0 0780033C */  lui        $v1, %hi(D_800756C4)
/* 2A6D4 80039ED4 C456638C */  lw         $v1, %lo(D_800756C4)($v1)
/* 2A6D8 80039ED8 03000224 */  addiu      $v0, $zero, 0x3
/* 2A6DC 80039EDC 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 2A6E0 80039EE0 3800BEAF */  sw         $fp, 0x38($sp)
/* 2A6E4 80039EE4 04006214 */  bne        $v1, $v0, .L80039EF8
/* 2A6E8 80039EE8 1C00B1AF */   sw        $s1, 0x1C($sp)
/* 2A6EC 80039EEC 43101300 */  sra        $v0, $s3, 1
/* 2A6F0 80039EF0 C2E70008 */  j          .L80039F08
/* 2A6F4 80039EF4 21986202 */   addu      $s3, $s3, $v0
.L80039EF8:
/* 2A6F8 80039EF8 04000224 */  addiu      $v0, $zero, 0x4
/* 2A6FC 80039EFC 02006214 */  bne        $v1, $v0, .L80039F08
/* 2A700 80039F00 00000000 */   nop
/* 2A704 80039F04 40981300 */  sll        $s3, $s3, 1
.L80039F08:
/* 2A708 80039F08 6000A88F */  lw         $t0, 0x60($sp)
/* 2A70C 80039F0C 00000000 */  nop
/* 2A710 80039F10 00010231 */  andi       $v0, $t0, 0x100
/* 2A714 80039F14 0D004010 */  beqz       $v0, .L80039F4C
/* 2A718 80039F18 21F00000 */   addu      $fp, $zero, $zero
/* 2A71C 80039F1C 01000292 */  lbu        $v0, 0x1($s0)
/* 2A720 80039F20 1400438E */  lw         $v1, 0x14($s2)
/* 2A724 80039F24 00110200 */  sll        $v0, $v0, 4
/* 2A728 80039F28 21100202 */  addu       $v0, $s0, $v0
/* 2A72C 80039F2C 1000428C */  lw         $v0, 0x10($v0)
/* 2A730 80039F30 00000000 */  nop
/* 2A734 80039F34 23186200 */  subu       $v1, $v1, $v0
/* 2A738 80039F38 02006104 */  bgez       $v1, .L80039F44
/* 2A73C 80039F3C 21886000 */   addu      $s1, $v1, $zero
/* 2A740 80039F40 23881100 */  negu       $s1, $s1
.L80039F44:
/* 2A744 80039F44 D4E70008 */  j          .L80039F50
/* 2A748 80039F48 2A883402 */   slt       $s1, $s1, $s4
.L80039F4C:
/* 2A74C 80039F4C 01001124 */  addiu      $s1, $zero, 0x1
.L80039F50:
/* 2A750 80039F50 01000592 */  lbu        $a1, 0x1($s0)
/* 2A754 80039F54 0C004426 */  addiu      $a0, $s2, 0xC
/* 2A758 80039F58 00290500 */  sll        $a1, $a1, 4
/* 2A75C 80039F5C 0800A524 */  addiu      $a1, $a1, 0x8
/* 2A760 80039F60 645E000C */  jal        OctDistance
/* 2A764 80039F64 21280502 */   addu      $a1, $s0, $a1
/* 2A768 80039F68 2A105400 */  slt        $v0, $v0, $s4
/* 2A76C 80039F6C 20004010 */  beqz       $v0, .L80039FF0
/* 2A770 80039F70 21300000 */   addu      $a2, $zero, $zero
/* 2A774 80039F74 1E002012 */  beqz       $s1, .L80039FF0
/* 2A778 80039F78 FFFF0224 */   addiu     $v0, $zero, -0x1
/* 2A77C 80039F7C 490040A2 */  sb         $zero, 0x49($s2)
/* 2A780 80039F80 06000386 */  lh         $v1, 0x6($s0)
/* 2A784 80039F84 00000000 */  nop
/* 2A788 80039F88 0A006214 */  bne        $v1, $v0, .L80039FB4
/* 2A78C 80039F8C FF000324 */   addiu     $v1, $zero, 0xFF
/* 2A790 80039F90 01000292 */  lbu        $v0, 0x1($s0)
/* 2A794 80039F94 00000392 */  lbu        $v1, 0x0($s0)
/* 2A798 80039F98 01004224 */  addiu      $v0, $v0, 0x1
/* 2A79C 80039F9C 010002A2 */  sb         $v0, 0x1($s0)
/* 2A7A0 80039FA0 FF004230 */  andi       $v0, $v0, 0xFF
/* 2A7A4 80039FA4 0E004314 */  bne        $v0, $v1, .L80039FE0
/* 2A7A8 80039FA8 00000000 */   nop
/* 2A7AC 80039FAC F8E70008 */  j          .L80039FE0
/* 2A7B0 80039FB0 010000A2 */   sb        $zero, 0x1($s0)
.L80039FB4:
/* 2A7B4 80039FB4 01000292 */  lbu        $v0, 0x1($s0)
/* 2A7B8 80039FB8 00000000 */  nop
/* 2A7BC 80039FBC FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2A7C0 80039FC0 010002A2 */  sb         $v0, 0x1($s0)
/* 2A7C4 80039FC4 FF004230 */  andi       $v0, $v0, 0xFF
/* 2A7C8 80039FC8 05004314 */  bne        $v0, $v1, .L80039FE0
/* 2A7CC 80039FCC 00000000 */   nop
/* 2A7D0 80039FD0 00000292 */  lbu        $v0, 0x0($s0)
/* 2A7D4 80039FD4 00000000 */  nop
/* 2A7D8 80039FD8 FFFF4224 */  addiu      $v0, $v0, -0x1
/* 2A7DC 80039FDC 010002A2 */  sb         $v0, 0x1($s0)
.L80039FE0:
/* 2A7E0 80039FE0 01000292 */  lbu        $v0, 0x1($s0)
/* 2A7E4 80039FE4 00000000 */  nop
/* 2A7E8 80039FE8 00015E24 */  addiu      $fp, $v0, 0x100
/* 2A7EC 80039FEC 21300000 */  addu       $a2, $zero, $zero
.L80039FF0:
/* 2A7F0 80039FF0 01000292 */  lbu        $v0, 0x1($s0)
/* 2A7F4 80039FF4 0C00448E */  lw         $a0, 0xC($s2)
/* 2A7F8 80039FF8 1000458E */  lw         $a1, 0x10($s2)
/* 2A7FC 80039FFC 00110200 */  sll        $v0, $v0, 4
/* 2A800 8003A000 21100202 */  addu       $v0, $s0, $v0
/* 2A804 8003A004 0800438C */  lw         $v1, 0x8($v0)
/* 2A808 8003A008 0C00428C */  lw         $v0, 0xC($v0)
/* 2A80C 8003A00C 23206400 */  subu       $a0, $v1, $a0
/* 2A810 8003A010 AD5A000C */  jal        func_80016AB4
/* 2A814 8003A014 23284500 */   subu      $a1, $v0, $a1
/* 2A818 8003A018 21804000 */  addu       $s0, $v0, $zero
/* 2A81C 8003A01C 46004592 */  lbu        $a1, 0x46($s2)
/* 2A820 8003A020 425E000C */  jal        func_80017908
/* 2A824 8003A024 21200002 */   addu      $a0, $s0, $zero
/* 2A828 8003A028 2A10A202 */  slt        $v0, $s5, $v0
/* 2A82C 8003A02C 12004014 */  bnez       $v0, .L8003A078
/* 2A830 8003A030 21204002 */   addu      $a0, $s2, $zero
/* 2A834 8003A034 21280002 */  addu       $a1, $s0, $zero
/* 2A838 8003A038 2130C002 */  addu       $a2, $s6, $zero
/* 2A83C 8003A03C 2138A002 */  addu       $a3, $s5, $zero
/* 2A840 8003A040 01000224 */  addiu      $v0, $zero, 0x1
/* 2A844 8003A044 490042A2 */  sb         $v0, 0x49($s2)
/* 2A848 8003A048 01000224 */  addiu      $v0, $zero, 0x1
/* 2A84C 8003A04C B8E3000C */  jal        func_80038EE0
/* 2A850 8003A050 1000A2AF */   sw        $v0, 0x10($sp)
/* 2A854 8003A054 21204002 */  addu       $a0, $s2, $zero
/* 2A858 8003A058 21286002 */  addu       $a1, $s3, $zero
/* 2A85C 8003A05C 5000A68F */  lw         $a2, 0x50($sp)
/* 2A860 8003A060 6000A88F */  lw         $t0, 0x60($sp)
/* 2A864 8003A064 21380000 */  addu       $a3, $zero, $zero
/* 2A868 8003A068 E6E4000C */  jal        func_80039398
/* 2A86C 8003A06C 1000A8AF */   sw        $t0, 0x10($sp)
/* 2A870 8003A070 4EE80008 */  j          .L8003A138
/* 2A874 8003A074 2110C003 */   addu      $v0, $fp, $zero
.L8003A078:
/* 2A878 8003A078 49004292 */  lbu        $v0, 0x49($s2)
/* 2A87C 8003A07C 00000000 */  nop
/* 2A880 8003A080 27004014 */  bnez       $v0, .L8003A120
/* 2A884 8003A084 21200002 */   addu      $a0, $s0, $zero
/* 2A888 8003A088 FF000224 */  addiu      $v0, $zero, 0xFF
/* 2A88C 8003A08C 2500E212 */  beq        $s7, $v0, .L8003A124
/* 2A890 8003A090 2130C002 */   addu      $a2, $s6, $zero
/* 2A894 8003A094 0780043C */  lui        $a0, %hi(D_8006FCF4 + 0x400)
/* 2A898 8003A098 F4008424 */  addiu      $a0, $a0, %lo(D_8006FCF4 + 0x400)
/* 2A89C 8003A09C 0000838C */  lw         $v1, 0x0($a0)
/* 2A8A0 8003A0A0 00000000 */  nop
/* 2A8A4 8003A0A4 15006010 */  beqz       $v1, .L8003A0FC
/* 2A8A8 8003A0A8 04008424 */   addiu     $a0, $a0, 0x4
/* 2A8AC 8003A0AC 01000524 */  addiu      $a1, $zero, 0x1
.L8003A0B0:
/* 2A8B0 8003A0B0 43006290 */  lbu        $v0, 0x43($v1)
/* 2A8B4 8003A0B4 00000000 */  nop
/* 2A8B8 8003A0B8 0A005714 */  bne        $v0, $s7, .L8003A0E4
/* 2A8BC 8003A0BC 00000000 */   nop
/* 2A8C0 8003A0C0 48006290 */  lbu        $v0, 0x48($v1)
/* 2A8C4 8003A0C4 00000000 */  nop
/* 2A8C8 8003A0C8 8000422C */  sltiu      $v0, $v0, 0x80
/* 2A8CC 8003A0CC 05004010 */  beqz       $v0, .L8003A0E4
/* 2A8D0 8003A0D0 00000000 */   nop
/* 2A8D4 8003A0D4 49006290 */  lbu        $v0, 0x49($v1)
/* 2A8D8 8003A0D8 00000000 */  nop
/* 2A8DC 8003A0DC 05004510 */  beq        $v0, $a1, .L8003A0F4
/* 2A8E0 8003A0E0 00000000 */   nop
.L8003A0E4:
/* 2A8E4 8003A0E4 0000838C */  lw         $v1, 0x0($a0)
/* 2A8E8 8003A0E8 00000000 */  nop
/* 2A8EC 8003A0EC F0FF6014 */  bnez       $v1, .L8003A0B0
/* 2A8F0 8003A0F0 04008424 */   addiu     $a0, $a0, 0x4
.L8003A0F4:
/* 2A8F4 8003A0F4 10006014 */  bnez       $v1, .L8003A138
/* 2A8F8 8003A0F8 2110C003 */   addu      $v0, $fp, $zero
.L8003A0FC:
/* 2A8FC 8003A0FC 21200002 */  addu       $a0, $s0, $zero
/* 2A900 8003A100 2130C002 */  addu       $a2, $s6, $zero
/* 2A904 8003A104 46004592 */  lbu        $a1, 0x46($s2)
/* 2A908 8003A108 7C5E000C */  jal        func_800179F0
/* 2A90C 8003A10C 2138A002 */   addu      $a3, $s5, $zero
/* 2A910 8003A110 460042A2 */  sb         $v0, 0x46($s2)
/* 2A914 8003A114 02000224 */  addiu      $v0, $zero, 0x2
/* 2A918 8003A118 4DE80008 */  j          .L8003A134
/* 2A91C 8003A11C 490042A2 */   sb        $v0, 0x49($s2)
.L8003A120:
/* 2A920 8003A120 2130C002 */  addu       $a2, $s6, $zero
.L8003A124:
/* 2A924 8003A124 46004592 */  lbu        $a1, 0x46($s2)
/* 2A928 8003A128 7C5E000C */  jal        func_800179F0
/* 2A92C 8003A12C 2138A002 */   addu      $a3, $s5, $zero
/* 2A930 8003A130 460042A2 */  sb         $v0, 0x46($s2)
.L8003A134:
/* 2A934 8003A134 2110C003 */  addu       $v0, $fp, $zero
.L8003A138:
/* 2A938 8003A138 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 2A93C 8003A13C 3800BE8F */  lw         $fp, 0x38($sp)
/* 2A940 8003A140 3400B78F */  lw         $s7, 0x34($sp)
/* 2A944 8003A144 3000B68F */  lw         $s6, 0x30($sp)
/* 2A948 8003A148 2C00B58F */  lw         $s5, 0x2C($sp)
/* 2A94C 8003A14C 2800B48F */  lw         $s4, 0x28($sp)
/* 2A950 8003A150 2400B38F */  lw         $s3, 0x24($sp)
/* 2A954 8003A154 2000B28F */  lw         $s2, 0x20($sp)
/* 2A958 8003A158 1C00B18F */  lw         $s1, 0x1C($sp)
/* 2A95C 8003A15C 1800B08F */  lw         $s0, 0x18($sp)
/* 2A960 8003A160 4000BD27 */  addiu      $sp, $sp, 0x40
/* 2A964 8003A164 0800E003 */  jr         $ra
/* 2A968 8003A168 00000000 */   nop
.size func_80039E94, . - func_80039E94

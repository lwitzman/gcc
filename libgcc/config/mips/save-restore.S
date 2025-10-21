/* Callee-saved register spill and fill routines for MIPS u64.
   Copyright (C) 2025 Free Software Foundation, Inc.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3, or (at your option) any later
version.

GCC is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.

You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */

	.set	nomips16
	.set	noreorder
	.set	noat

#define STARTFN(NAME)	.globl NAME; .ent NAME; NAME:
#define ENDFN(NAME)	.end NAME

#if defined(__mips64) && (!defined(__mips_u64) || _MIPS_SZLONG == 64)
#define REG_S		sd
#define REG_L		ld
#define FPREG_S		sdc1
#define FPREG_L		ldc1
#else
#define REG_S		sw
#define REG_L		lw
#define FPREG_S		swc1
#define FPREG_L		lwc1
#endif

STARTFN (__mips_gpr_save_8)
	REG_S	$30,-36($1)
STARTFN (__mips_gpr_save_7)
	REG_S	$23,-32($1)
STARTFN (__mips_gpr_save_6)
	REG_S	$22,-28($1)
STARTFN (__mips_gpr_save_5)
	REG_S	$21,-24($1)
STARTFN (__mips_gpr_save_4)
	REG_S	$20,-20($1)
STARTFN (__mips_gpr_save_3)
	REG_S	$19,-16($1)
STARTFN (__mips_gpr_save_2)
	REG_S	$18,-12($1)
STARTFN (__mips_gpr_save_1)
	REG_S	$17,-8($1)
STARTFN (__mips_gpr_save_0)
	j	$31
	REG_S	$16,-4($1)
	ENDFN (__mips_gpr_save_8)
	ENDFN (__mips_gpr_save_7)
	ENDFN (__mips_gpr_save_6)
	ENDFN (__mips_gpr_save_5)
	ENDFN (__mips_gpr_save_4)
	ENDFN (__mips_gpr_save_3)
	ENDFN (__mips_gpr_save_2)
	ENDFN (__mips_gpr_save_1)
	ENDFN (__mips_gpr_save_0)

STARTFN (__mips_gpr_restore_8)
	REG_L	$30,-36($1)
STARTFN (__mips_gpr_restore_7)
	REG_L	$23,-32($1)
STARTFN (__mips_gpr_restore_6)
	REG_L	$22,-28($1)
STARTFN (__mips_gpr_restore_5)
	REG_L	$21,-24($1)
STARTFN (__mips_gpr_restore_4)
	REG_L	$20,-20($1)
STARTFN (__mips_gpr_restore_3)
	REG_L	$19,-16($1)
STARTFN (__mips_gpr_restore_2)
	REG_L	$18,-12($1)
STARTFN (__mips_gpr_restore_1)
	REG_L	$17,-8($1)
STARTFN (__mips_gpr_restore_0)
	j	$31
	REG_L	$16,-4($1)
	ENDFN (__mips_gpr_restore_8)
	ENDFN (__mips_gpr_restore_7)
	ENDFN (__mips_gpr_restore_6)
	ENDFN (__mips_gpr_restore_5)
	ENDFN (__mips_gpr_restore_4)
	ENDFN (__mips_gpr_restore_3)
	ENDFN (__mips_gpr_restore_2)
	ENDFN (__mips_gpr_restore_1)
	ENDFN (__mips_gpr_restore_0)

STARTFN (__mips_gpr_tail_restore_8)
	REG_L	$30,-32($1)
STARTFN (__mips_gpr_tail_restore_7)
	REG_L	$23,-32($1)
STARTFN (__mips_gpr_tail_restore_6)
	REG_L	$22,-28($1)
STARTFN (__mips_gpr_tail_restore_5)
	REG_L	$21,-24($1)
STARTFN (__mips_gpr_tail_restore_4)
	REG_L	$20,-20($1)
STARTFN (__mips_gpr_tail_restore_3)
	REG_L	$19,-16($1)
STARTFN (__mips_gpr_tail_restore_2)
	REG_L	$18,-12($1)
STARTFN (__mips_gpr_tail_restore_1)
	REG_L	$17,-8($1)
STARTFN (__mips_gpr_tail_restore_0)
	REG_L	$16,-4($1)
	j	$31
	move	$29,$1
	ENDFN (__mips_gpr_tail_restore_8)
	ENDFN (__mips_gpr_tail_restore_7)
	ENDFN (__mips_gpr_tail_restore_6)
	ENDFN (__mips_gpr_tail_restore_5)
	ENDFN (__mips_gpr_tail_restore_4)
	ENDFN (__mips_gpr_tail_restore_3)
	ENDFN (__mips_gpr_tail_restore_2)
	ENDFN (__mips_gpr_tail_restore_1)
	ENDFN (__mips_gpr_tail_restore_0)

#ifdef __mips_hard_float

STARTFN (__mips_fpr_save_11)
	FPREG_S	$f31,-48($1)
STARTFN (__mips_fpr_save_10)
	FPREG_S	$f30,-44($1)
STARTFN (__mips_fpr_save_9)
	FPREG_S	$f29,-40($1)
STARTFN (__mips_fpr_save_8)
	FPREG_S	$f28,-36($1)
STARTFN (__mips_fpr_save_7)
	FPREG_S	$f27,-32($1)
STARTFN (__mips_fpr_save_6)
	FPREG_S	$f26,-28($1)
STARTFN (__mips_fpr_save_5)
	FPREG_S	$f25,-24($1)
STARTFN (__mips_fpr_save_4)
	FPREG_S	$f24,-20($1)
STARTFN (__mips_fpr_save_3)
	FPREG_S	$f23,-16($1)
STARTFN (__mips_fpr_save_2)
	FPREG_S	$f22,-12($1)
STARTFN (__mips_fpr_save_1)
	FPREG_S	$f21,-8($1)
STARTFN (__mips_fpr_save_0)
	j	$31
	FPREG_S	$f20,-4($1)
	ENDFN (__mips_fpr_save_11)
	ENDFN (__mips_fpr_save_10)
	ENDFN (__mips_fpr_save_9)
	ENDFN (__mips_fpr_save_8)
	ENDFN (__mips_fpr_save_7)
	ENDFN (__mips_fpr_save_6)
	ENDFN (__mips_fpr_save_5)
	ENDFN (__mips_fpr_save_4)
	ENDFN (__mips_fpr_save_3)
	ENDFN (__mips_fpr_save_2)
	ENDFN (__mips_fpr_save_1)
	ENDFN (__mips_fpr_save_0)

STARTFN (__mips_fpr_restore_11)
	FPREG_L	$f31,-48($1)
STARTFN (__mips_fpr_restore_10)
	FPREG_L	$f30,-44($1)
STARTFN (__mips_fpr_restore_9)
	FPREG_L	$f29,-40($1)
STARTFN (__mips_fpr_restore_8)
	FPREG_L	$f28,-36($1)
STARTFN (__mips_fpr_restore_7)
	FPREG_L	$f27,-32($1)
STARTFN (__mips_fpr_restore_6)
	FPREG_L	$f26,-28($1)
STARTFN (__mips_fpr_restore_5)
	FPREG_L	$f25,-24($1)
STARTFN (__mips_fpr_restore_4)
	FPREG_L	$f24,-20($1)
STARTFN (__mips_fpr_restore_3)
	FPREG_L	$f23,-16($1)
STARTFN (__mips_fpr_restore_2)
	FPREG_L	$f22,-12($1)
STARTFN (__mips_fpr_restore_1)
	FPREG_L	$f21,-8($1)
STARTFN (__mips_fpr_restore_0)
	j	$31
	FPREG_L	$f20,-4($1)
	ENDFN (__mips_fpr_restore_11)
	ENDFN (__mips_fpr_restore_10)
	ENDFN (__mips_fpr_restore_9)
	ENDFN (__mips_fpr_restore_8)
	ENDFN (__mips_fpr_restore_7)
	ENDFN (__mips_fpr_restore_6)
	ENDFN (__mips_fpr_restore_5)
	ENDFN (__mips_fpr_restore_4)
	ENDFN (__mips_fpr_restore_3)
	ENDFN (__mips_fpr_restore_2)
	ENDFN (__mips_fpr_restore_1)
	ENDFN (__mips_fpr_restore_0)

STARTFN (__mips_fpr_tail_restore_11)
	FPREG_L	$f31,-48($1)
STARTFN (__mips_fpr_tail_restore_10)
	FPREG_L	$f30,-44($1)
STARTFN (__mips_fpr_tail_restore_9)
	FPREG_L	$f29,-40($1)
STARTFN (__mips_fpr_tail_restore_8)
	FPREG_L	$f28,-36($1)
STARTFN (__mips_fpr_tail_restore_7)
	FPREG_L	$f27,-32($1)
STARTFN (__mips_fpr_tail_restore_6)
	FPREG_L	$f26,-28($1)
STARTFN (__mips_fpr_tail_restore_5)
	FPREG_L	$f25,-24($1)
STARTFN (__mips_fpr_tail_restore_4)
	FPREG_L	$f24,-20($1)
STARTFN (__mips_fpr_tail_restore_3)
	FPREG_L	$f23,-16($1)
STARTFN (__mips_fpr_tail_restore_2)
	FPREG_L	$f22,-12($1)
STARTFN (__mips_fpr_tail_restore_1)
	FPREG_L	$f21,-8($1)
STARTFN (__mips_fpr_tail_restore_0)
	FPREG_L	$f20,-4($1)
	j	$31
	move	$29,$1
	ENDFN (__mips_fpr_tail_restore_11)
	ENDFN (__mips_fpr_tail_restore_10)
	ENDFN (__mips_fpr_tail_restore_9)
	ENDFN (__mips_fpr_tail_restore_8)
	ENDFN (__mips_fpr_tail_restore_7)
	ENDFN (__mips_fpr_tail_restore_6)
	ENDFN (__mips_fpr_tail_restore_5)
	ENDFN (__mips_fpr_tail_restore_4)
	ENDFN (__mips_fpr_tail_restore_3)
	ENDFN (__mips_fpr_tail_restore_2)
	ENDFN (__mips_fpr_tail_restore_1)
	ENDFN (__mips_fpr_tail_restore_0)

#endif

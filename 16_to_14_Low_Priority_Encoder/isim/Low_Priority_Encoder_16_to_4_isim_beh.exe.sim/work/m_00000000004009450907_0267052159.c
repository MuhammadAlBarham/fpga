/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Phantom/Desktop/16_to_14_Low_Priority_Encoder/Low_Priority_Encoder_16_to_4.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {65535U, 65534U};
static unsigned int ng3[] = {65534U, 65532U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {65532U, 65528U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {65528U, 65520U};
static int ng8[] = {3, 0};
static unsigned int ng9[] = {65520U, 65504U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {65504U, 65472U};
static int ng12[] = {5, 0};
static unsigned int ng13[] = {65472U, 65408U};
static int ng14[] = {6, 0};
static unsigned int ng15[] = {65408U, 65280U};
static int ng16[] = {7, 0};
static unsigned int ng17[] = {65280U, 65024U};
static int ng18[] = {8, 0};
static unsigned int ng19[] = {65024U, 64512U};
static int ng20[] = {9, 0};
static unsigned int ng21[] = {64512U, 63488U};
static int ng22[] = {10, 0};
static unsigned int ng23[] = {63488U, 61440U};
static int ng24[] = {11, 0};
static unsigned int ng25[] = {61440U, 57344U};
static int ng26[] = {12, 0};
static unsigned int ng27[] = {57344U, 49152U};
static int ng28[] = {13, 0};
static unsigned int ng29[] = {49152U, 32768U};
static int ng30[] = {14, 0};
static unsigned int ng31[] = {32768U, 0U};
static int ng32[] = {15, 0};



static void NetDecl_27_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB5;

LAB4:    if (t16 != 0)
        goto LAB6;

LAB7:    t20 = (t0 + 3192);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memset(t24, 0, 8);
    t25 = 1U;
    t26 = t25;
    t27 = (t4 + 4);
    t28 = *((unsigned int *)t4);
    t25 = (t25 & t28);
    t29 = *((unsigned int *)t27);
    t26 = (t26 & t29);
    t30 = (t24 + 4);
    t31 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t31 | t25);
    t32 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t32 | t26);
    xsi_driver_vfirst_trans(t20, 0, 0U);
    t33 = (t0 + 3096);
    *((int *)t33) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

}

static void Always_30_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3112);
    *((int *)t2) = 1;
    t3 = (t0 + 2808);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t4, 16);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng31)));
    t6 = xsi_vlog_unsigned_case_xcompare(t5, 16, t2, 16);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);
    t7 = ((char*)((ng1)));
    t8 = (t0 + 1608);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB41;

LAB9:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB11:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB15:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB17:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB19:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB21:    xsi_set_current_line(42, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB23:    xsi_set_current_line(43, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB25:    xsi_set_current_line(44, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB27:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB29:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB31:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB33:    xsi_set_current_line(48, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB35:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB37:    xsi_set_current_line(50, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

}


extern void work_m_00000000004009450907_0267052159_init()
{
	static char *pe[] = {(void *)NetDecl_27_0,(void *)Always_30_1};
	xsi_register_didat("work_m_00000000004009450907_0267052159", "isim/Low_Priority_Encoder_16_to_4_isim_beh.exe.sim/work/m_00000000004009450907_0267052159.didat");
	xsi_register_executes(pe);
}

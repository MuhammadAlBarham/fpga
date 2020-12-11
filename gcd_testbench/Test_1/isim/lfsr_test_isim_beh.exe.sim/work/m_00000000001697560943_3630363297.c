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
static const char *ng0 = "q=%b , shift = %b";
static const char *ng1 = "C:/Users/Phantom/Desktop/Assignment_6/Test_1/lfsr_test.v";
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};

void Monitor_73_2(char *);
void Monitor_73_2(char *);


static void Monitor_73_2_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 4932);
    t2 = *((char **)t1);
    t3 = ((((char*)(t2))) + 40U);
    t4 = *((char **)t3);
    t3 = (t0 + 4956);
    t5 = *((char **)t3);
    t6 = ((((char*)(t5))) + 56U);
    t7 = *((char **)t6);
    xsi_vlogfile_write(1, 0, 3, ng0, 3, t0, (char)118, t4, 1, (char)118, t7, 6);

LAB1:    return;
}

static void Initial_41_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng1);

LAB4:    xsi_set_current_line(43, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(48, ng1);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(49, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(54, ng1);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(54, ng1);
    t2 = (t0 + 1448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t5, 0, 8);
    t6 = (t4 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t6) == 0)
        goto LAB7;

LAB9:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;

LAB10:    t13 = (t5 + 4);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = (~(t15));
    *((unsigned int *)t5) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB12;

LAB11:    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 1448);
    xsi_vlogvar_assign_value(t23, t5, 0, 0, 1);
    xsi_set_current_line(56, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB7:    *((unsigned int *)t5) = 1;
    goto LAB10;

LAB12:    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t5) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB11;

LAB13:    xsi_set_current_line(56, ng1);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t12) == 0)
        goto LAB14;

LAB16:    t13 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t13) = 1;

LAB17:    t14 = (t5 + 4);
    t23 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t5) = t16;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB19;

LAB18:    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 1U);
    t24 = (t0 + 1448);
    xsi_vlogvar_assign_value(t24, t5, 0, 0, 1);
    xsi_set_current_line(61, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB14:    *((unsigned int *)t5) = 1;
    goto LAB17;

LAB19:    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t23);
    *((unsigned int *)t5) = (t17 | t18);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t23);
    *((unsigned int *)t14) = (t19 | t20);
    goto LAB18;

LAB20:    xsi_set_current_line(61, ng1);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t12) == 0)
        goto LAB21;

LAB23:    t13 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t13) = 1;

LAB24:    t14 = (t5 + 4);
    t23 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t5) = t16;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB26;

LAB25:    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 1U);
    t24 = (t0 + 1448);
    xsi_vlogvar_assign_value(t24, t5, 0, 0, 1);
    xsi_set_current_line(63, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    *((unsigned int *)t5) = 1;
    goto LAB24;

LAB26:    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t23);
    *((unsigned int *)t5) = (t17 | t18);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t23);
    *((unsigned int *)t14) = (t19 | t20);
    goto LAB25;

LAB27:    xsi_set_current_line(63, ng1);
    t3 = (t0 + 1448);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    memset(t5, 0, 8);
    t12 = (t6 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t12) == 0)
        goto LAB28;

LAB30:    t13 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t13) = 1;

LAB31:    t14 = (t5 + 4);
    t23 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t5) = t16;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t23) != 0)
        goto LAB33;

LAB32:    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 1U);
    t24 = (t0 + 1448);
    xsi_vlogvar_assign_value(t24, t5, 0, 0, 1);
    goto LAB1;

LAB28:    *((unsigned int *)t5) = 1;
    goto LAB31;

LAB33:    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t23);
    *((unsigned int *)t5) = (t17 | t18);
    t19 = *((unsigned int *)t14);
    t20 = *((unsigned int *)t23);
    *((unsigned int *)t14) = (t19 | t20);
    goto LAB32;

}

static void Initial_69_1(char *t0)
{

LAB0:    xsi_set_current_line(73, ng1);
    Monitor_73_2(t0);

LAB1:    return;
}

void Monitor_73_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2832);
    t2 = (t0 + 3344);
    xsi_vlogfile_monitor((void *)Monitor_73_2_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000001697560943_3630363297_init()
{
	static char *pe[] = {(void *)Initial_41_0,(void *)Initial_69_1,(void *)Monitor_73_2};
	xsi_register_didat("work_m_00000000001697560943_3630363297", "isim/lfsr_test_isim_beh.exe.sim/work/m_00000000001697560943_3630363297.didat");
	xsi_register_executes(pe);
}

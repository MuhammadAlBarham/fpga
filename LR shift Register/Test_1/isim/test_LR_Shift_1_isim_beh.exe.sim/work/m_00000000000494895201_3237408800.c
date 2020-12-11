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
static const char *ng0 = "C:/Users/Phantom/Desktop/Assignment_6/Test_1/LRShift_1.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};



static void Always_27_0(char *t0)
{
    char t4[8];
    char t9[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    t5 = (t0 + 1368U);
    t7 = *((char **)t5);
    xsi_vlogtype_concat(t4, 2, 2, 2U, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t8 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 8);

LAB13:    goto LAB2;

LAB7:    xsi_set_current_line(31, ng0);
    t10 = (t0 + 1048U);
    t11 = *((char **)t10);
    t10 = (t0 + 1528U);
    t13 = *((char **)t10);
    memset(t12, 0, 8);
    t10 = (t12 + 4);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t13);
    t16 = (t15 >> 0);
    *((unsigned int *)t12) = t16;
    t17 = *((unsigned int *)t14);
    t18 = (t17 >> 0);
    *((unsigned int *)t10) = t18;
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t19 & 127U);
    t20 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t20 & 127U);
    xsi_vlogtype_concat(t9, 8, 8, 2U, t12, 7, t11, 1);
    t21 = (t0 + 1928);
    xsi_vlogvar_assign_value(t21, t9, 0, 0, 8);
    goto LAB13;

LAB9:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    memset(t12, 0, 8);
    t3 = (t12 + 4);
    t6 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (t15 >> 1);
    *((unsigned int *)t12) = t16;
    t17 = *((unsigned int *)t6);
    t18 = (t17 >> 1);
    *((unsigned int *)t3) = t18;
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t19 & 127U);
    t20 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t20 & 127U);
    t7 = (t0 + 1048U);
    t10 = *((char **)t7);
    xsi_vlogtype_concat(t9, 8, 8, 2U, t10, 1, t12, 7);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 8);
    goto LAB13;

}


extern void work_m_00000000000494895201_3237408800_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000000494895201_3237408800", "isim/test_LR_Shift_1_isim_beh.exe.sim/work/m_00000000000494895201_3237408800.didat");
	xsi_register_executes(pe);
}

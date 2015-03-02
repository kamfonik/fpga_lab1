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
static const char *ng0 = "C:/Users/kamfonik/Documents/Git_Repos/fpga_lab1/halt_handler.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Initial_45_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(45, ng0);

LAB2:    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_49_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;

LAB0:    t1 = (t0 + 3416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4232);
    *((int *)t2) = 1;
    t3 = (t0 + 3448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(50, ng0);

LAB5:    xsi_set_current_line(51, ng0);
    t5 = (t0 + 2248);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t8) == 0)
        goto LAB6;

LAB8:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB9:    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t4, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

}

static void Always_54_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 3664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4248);
    *((int *)t2) = 1;
    t3 = (t0 + 3696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 2088);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB2;

}

static void Always_59_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4264);
    *((int *)t2) = 1;
    t3 = (t0 + 3944);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(60, ng0);

LAB5:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 2248);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(65, ng0);

LAB14:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB15;

LAB16:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(61, ng0);

LAB9:    xsi_set_current_line(62, ng0);
    t13 = (t0 + 1688U);
    t14 = *((char **)t13);
    t13 = (t14 + 4);
    t15 = *((unsigned int *)t13);
    t16 = (~(t15));
    t17 = *((unsigned int *)t14);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(62, ng0);

LAB13:    xsi_set_current_line(63, ng0);
    t20 = ((char*)((ng1)));
    t21 = (t0 + 2248);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 1);
    goto LAB12;

LAB15:    xsi_set_current_line(66, ng0);

LAB18:    xsi_set_current_line(67, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB17;

}


extern void work_m_00000000002783680512_1583825777_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_49_1,(void *)Always_54_2,(void *)Always_59_3};
	xsi_register_didat("work_m_00000000002783680512_1583825777", "isim/t_datapath_isim_beh.exe.sim/work/m_00000000002783680512_1583825777.didat");
	xsi_register_executes(pe);
}

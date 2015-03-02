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
static const char *ng0 = "C:/Users/kamfonik/Documents/Git_Repos/fpga_lab1/t_halt_handler.v";
static int ng1[] = {0, 0};
static int ng2[] = {3, 0};
static int ng3[] = {1, 0};
static int ng4[] = {10, 0};



static void Initial_39_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);

LAB4:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4876);
    *((int *)t8) = t7;

LAB6:    t9 = (t0 + 4876);
    if (*((int *)t9) > 0)
        goto LAB7;

LAB8:    goto LAB1;

LAB7:    xsi_set_current_line(50, ng0);

LAB9:    xsi_set_current_line(51, ng0);
    t10 = (t0 + 2496);
    xsi_process_wait(t10, 300000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(51, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 1608);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(52, ng0);
    t3 = ((char*)((ng1)));
    t8 = (t0 + 1608);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 300000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4880);
    *((int *)t8) = t7;

LAB13:    t9 = (t0 + 4880);
    if (*((int *)t9) > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 400000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    xsi_set_current_line(55, ng0);

LAB16:    xsi_set_current_line(56, ng0);
    t10 = (t0 + 2496);
    xsi_process_wait(t10, 5000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(56, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng1)));
    t8 = (t0 + 1768);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);
    t2 = (t0 + 4880);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB13;

LAB19:    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4884);
    *((int *)t8) = t7;

LAB20:    t9 = (t0 + 4884);
    if (*((int *)t9) > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB21:    xsi_set_current_line(62, ng0);

LAB23:    xsi_set_current_line(63, ng0);
    t10 = (t0 + 2496);
    xsi_process_wait(t10, 5000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(63, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1768);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng3)));
    t8 = (t0 + 1768);
    xsi_vlogvar_assign_value(t8, t3, 0, 0, 1);
    t2 = (t0 + 4884);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB20;

LAB26:    t2 = (t0 + 4876);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB6;

}

static void Always_71_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
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

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2744);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 1448);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t0 + 1448);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

}


extern void work_m_00000000001815385605_1305445738_init()
{
	static char *pe[] = {(void *)Initial_39_0,(void *)Always_71_1};
	xsi_register_didat("work_m_00000000001815385605_1305445738", "isim/t_halt_handler_isim_beh.exe.sim/work/m_00000000001815385605_1305445738.didat");
	xsi_register_executes(pe);
}

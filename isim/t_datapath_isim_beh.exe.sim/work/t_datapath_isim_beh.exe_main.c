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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001878628062_3598138731_init();
    work_m_00000000002783680512_1583825777_init();
    work_m_00000000000673691355_3829830718_init();
    work_m_00000000001151897467_3027548060_init();
    work_m_00000000002828029877_0586848165_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002828029877_0586848165");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

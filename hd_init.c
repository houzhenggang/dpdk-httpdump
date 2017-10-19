/*
 * @Author: JesseMK
 * @Date: 2017-10-19 19:57:53
 * @Last Modified by: JesseMK
 * @Last Modified time: 2017-10-19 20:58:16
 */

#include <rte_eal.h>
#include <rte_common.h>

void init_dpdk_eal()
{
    int diag;
    int argv = 3;

    char prgo_name[] = "dpdk-httpdump";
    char l_flag[] = "-l0-3";
    // char c_flag[] = "-c1";
    char n_flag[] = "-n6";
    char *argp[argv];

    argp[0] = prgo_name;
    argp[1] = l_flag;
    // argp[2] = c_flag;
    argp[2] = n_flag;

    diag = rte_eal_init(argv, argp);

    if (diag < 0)
        rte_panic("Cannot init EAL\n");
}
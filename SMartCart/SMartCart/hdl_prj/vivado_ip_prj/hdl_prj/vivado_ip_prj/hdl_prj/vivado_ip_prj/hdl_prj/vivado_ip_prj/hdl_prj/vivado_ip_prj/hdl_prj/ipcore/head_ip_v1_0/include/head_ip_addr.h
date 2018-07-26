/*
 * File Name:         hdl_prj\ipcore\head_ip_v1_0\include\head_ip_addr.h
 * Description:       C Header File
 * Created:           2016-07-11 16:24:43
*/

#ifndef HEAD_IP_H_
#define HEAD_IP_H_

#define  IPCore_Reset_head_ip    0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_head_ip   0x4  //enabled (by default) when bit 0 is 0x1
#define  START_Data_head_ip      0x100  //data register for port START
#define  adrRDIN_Data_head_ip    0x104  //data register for port adrRDIN
#define  RD_Data_head_ip         0x108  //data register for port RD
#define  adrIN_Data_head_ip      0x10C  //data register for port adrIN
#define  dataIN_Data_head_ip     0x110  //data register for port dataIN
#define  STOP_Data_head_ip       0x114  //data register for port STOP
#define  adrOUT_Data_head_ip     0x118  //data register for port adrOUT
#define  STATUS_Data_head_ip     0x11C  //data register for port STATUS
#define  DataOut_Data_head_ip    0x120  //data register for port DataOut

#endif /* HEAD_IP_H_ */

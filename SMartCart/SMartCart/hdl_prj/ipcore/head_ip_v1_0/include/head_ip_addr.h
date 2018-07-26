/*
 * File Name:         D:\Matlab_Vhd\smartCart\OTLADKA\ipcore\head_ip_v1_0\include\head_ip_addr.h
 * Description:       C Header File
 * Created:           2016-07-21 09:50:09
*/

#ifndef HEAD_IP_H_
#define HEAD_IP_H_

#define  IPCore_Reset_head_ip     0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_head_ip    0x4  //enabled (by default) when bit 0 is 0x1
#define  comanda_Data_head_ip     0x100  //data register for port comanda
#define  data_in_1_Data_head_ip   0x104  //data register for port data_in_1
#define  data_in_2_Data_head_ip   0x108  //data register for port data_in_2
#define  data_in_3_Data_head_ip   0x10C  //data register for port data_in_3
#define  data_in_4_Data_head_ip   0x110  //data register for port data_in_4
#define  data_in_5_Data_head_ip   0x114  //data register for port data_in_5
#define  data_in_6_Data_head_ip   0x118  //data register for port data_in_6
#define  data_in_7_Data_head_ip   0x11C  //data register for port data_in_7
#define  data_in_8_Data_head_ip   0x120  //data register for port data_in_8
#define  Out1_Data_head_ip        0x124  //data register for port Out1
#define  Out2_Data_head_ip        0x128  //data register for port Out2
#define  Out3_Data_head_ip        0x12C  //data register for port Out3
#define  Out4_Data_head_ip        0x130  //data register for port Out4
#define  Out5_Data_head_ip        0x134  //data register for port Out5
#define  Out6_Data_head_ip        0x138  //data register for port Out6
#define  Out7_Data_head_ip        0x13C  //data register for port Out7
#define  Out8_Data_head_ip        0x140  //data register for port Out8
#define  status_Data_head_ip      0x148  //data register for port status

#endif /* HEAD_IP_H_ */

/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "smartCard.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
  //  init_platform();
    int a =0 ,status =0 , i =0;
    int sim_number = 0;
    Ccomanda ccomanda;
    status=intcial(0);//инициализация  начальных настроек смарт карты  №1
    start(&ccomanda,&cinterfacesmartcard,0);// инициализация смарт карты
    cinterfacesmartcard.ok =0;
    while(cinterfacesmartcard.ok==0){}// ожидание окончания инициализации
    cinterfacesmartcard.ok=0;
    //------------------------------------------
    status=intcial(1);//инициализация  начальных настроек смарт карты №2
    start(&ccomanda,&cinterfacesmartcard,1);// инициализация смарт карты
    cinterfacesmartcard.ok =0;
    while(cinterfacesmartcard.ok==0){}// ожидание окончания инициализации
    cinterfacesmartcard.ok=0;


    // РАБОТАЕТ СИМКА !

  //  verify_tk(0x21,0x21,0x21,0x21,1);
  //  verify_tk(0x21,0x21,0x21,0x21,0);

   select(0x3F,0x00,0);


///////
  //  select(0x00,0x00);

 //   char AC_ef_kod = 0x00;
 //   char id_ef_kod[2];
//    id_ef_kod[0] = 0x00;
 //   id_ef_kod[1] = 0x02;
//    char size_ef_kod[2];
//    size_ef_kod[0]=0x00;
//    size_ef_kod[1]=0x0e;

 //   select(0x00,0x02);
    //printf("Создаем файл EF id = 0x00 0x02 \n");
   //create_ef(size_ef_kod,id_ef_kod,AC_ef_kod,0x01);

 //   char data[2];

 //   data[0]= 0x10;
 //   data[1]= 0x11;

    //update_binary(data,0x01,0);

 //   select(0x00,0x002);

   // read_binary(0x02,1);


 //   AC_ef_kod = 0x00;

 //   id_ef_kod[0] = 0x00;
 //   id_ef_kod[1] = 0x03;

 //   size_ef_kod[0]=0x00;
 //   size_ef_kod[1]=0x0e; //2+12

 //   select(0x00,0x00);
//   select(0x00,0x03);
   // printf("Создаем файл EF id = 0x00 0x03 \n");
   // create_ef(size_ef_kod,id_ef_kod,AC_ef_kod,0x02);

/*    char password_key2[32];

    password_key2[0] = 0x8E;
    password_key2[1] = 0xD5;
    password_key2[2] = 0xD6;
    password_key2[3] = 0x3D;
    password_key2[4] = 0xBB;
    password_key2[5] = 0xA2;
    password_key2[6] = 0x21;
    password_key2[7] = 0x36;


    password_key2[8] = 0x8E;
    password_key2[9] = 0xD5;
    password_key2[10] = 0xD6;
    password_key2[11] = 0x3D;
    password_key2[12] = 0xBB;
    password_key2[13] = 0xA2;
    password_key2[14] = 0x21;
    password_key2[15] = 0x36;


    password_key2[16] = 0x8E;
    password_key2[17] = 0xD5;
    password_key2[18] = 0xD6;
    password_key2[19] = 0x3D;
    password_key2[20] = 0xBB;
    password_key2[21] = 0xA2;
    password_key2[22] = 0x21;
    password_key2[23] = 0x36;


    password_key2[24] = 0x8E;
    password_key2[25] = 0xD5;
    password_key2[26] = 0xD6;
    password_key2[27] = 0x3D;
    password_key2[28] = 0xBB;
    password_key2[29] = 0xA2;
    password_key2[30] = 0x21;
    password_key2[31] = 0x36;



    char* check = get_response(check_rom(password_key2));

    char data_2[14];

    data_2[0] = 0x60;
    data_2[1] = 0x60;
    data_2[2] = 0x60;
    data_2[3] = 0x60;
    data_2[4] = 0x60;
    data_2[5] = 0x60;
    data_2[6] = 0x60;
    data_2[7] = 0x60;

    data_2[8] = 0x10;
    data_2[9] = 0x11;

    data_2[10] = check[0];
    data_2[11] = check[1];
    data_2[12] = check[2];
    data_2[13] = check[3];


    update_binary(data_2,0x02,1);

    read_binary(0x02,0);
*/
    ///////


//    Load_FileSystem(0);
//    Load_FileSystem(1);
//
   char* serial_numer = malloc(4);

   Start_ayntificate(serial_numer);



  // деинициализация смарт карты

//    cleanup_platform();

  return 0;
}
/*
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr) //инициализация контроллера прерываний
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	(Xil_ExceptionHandler) XScuGic_InterruptHandler,
	XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}


int ScuGicInterrupt_Init(u16 DeviceId,ProgSmartCart *pProgSmartCart) //функция инициализации прерывания № 61
{
	int Status;
	XScuGic_Config *GicConfig;
	GicConfig = XScuGic_LookupConfig(DeviceId);
	if (NULL == GicConfig) {
	return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
	return XST_FAILURE;
	}
	Status = SetUpInterruptSystem(&InterruptController);
	if (Status != XST_SUCCESS) {
	return XST_FAILURE;
	}
	//---схема управления
	Status = XScuGic_Connect(&InterruptController,61,SetSmartCart,pProgSmartCart);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	XScuGic_Enable(&InterruptController, 61);

	Status = XScuGic_Connect(&InterruptController,62,DetectSmartCart,pProgSmartCart);
    if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	XScuGic_Enable(&InterruptController, 62);


 	return XST_SUCCESS;


}
*/


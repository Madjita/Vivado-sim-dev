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

int main()
{
    init_platform();
    int a,status,i;
    char sim_number = 1;
    unsigned serial_numer;
    int somo_test,err;
    Ccomanda ccomanda;
    status=intcial(sim_number);//инициализация  начальных настроек смарт карты
    start(&ccomanda,&cinterfacesmartcard,sim_number);// инициализация смарт карты
    while(cinterfacesmartcard.ok==0){}// ожидание окончания инициализации
    cinterfacesmartcard.ok=0;
    serial_numer=read_serial_number(serial_numer);// считываение серийного номера смарт карты
   // somo_test=Test_Result();// считывание состояния системы
   // verifyTK();
   // writeTK_ESPZU();
   // writeTK_ESPZU();
    //writeTK_PL();

   // writeTK_ESPZU();
   // get_Response();
   //
   // create_MF();
  // get_challenge();
  // read_serial_number(sim_number);
 //  check_rom(sim_number);
 //  internal_auth(sim_number);
   create_kf(sim_number);
   //check_rom();
 //   verifyTK(0xAB, 0x49, 0xB8, 0xFB, 0xAB, 0x49, 0xB8, 0xFB);
  //  writeTK_ESPZU();
    // create_MF();
  //  read_serial_number();
  //  get_CHALLENGE();
   // printf("CardSelf TEst: \n");
  //  printf("%d\n",somo_test);
  //  printf("card serial num: \n");
  //  printf("%d\n",serial_numer);
    // деинициализация смарт карты

    while(1)
    {
    	a++;
    }
    cleanup_platform();
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


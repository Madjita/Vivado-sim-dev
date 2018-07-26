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
	int a,status;
	int i =0;
	char sim_number = 1;
	int somo_test,err;
	Ccomanda ccomanda;
	status=intcial(0);//инициализация  начальных настроек смарт карты
	start(&ccomanda,&cinterfacesmartcard,0);// инициализация смарт карты
	while(cinterfacesmartcard.ok==0){}// ожидание окончания инициализации
	cinterfacesmartcard.ok=0;
	clean_cInterfaceSmartcard(&cinterfacesmartcard);// обнуление структуры cInterfaceSmartcard
	start(&ccomanda,&cinterfacesmartcard,1);// инициализация смарт карты
	while(cinterfacesmartcard.ok==0){}// ожидание окончания инициализации
	cinterfacesmartcard.ok=0;



    // РАБОТАЕТ СИМКА !

	verify_tk(0x21,0x21,0x21,0x21,0);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	verify_tk(0x21,0x21,0x21,0x21,1);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);





	char* serial_numer = malloc(4);
	serial_numer = read_serial_number(1); //Взля серийник с первой симки (клиент)
	clean_cInterfaceSmartcard(&cinterfacesmartcard);


	printf("Выдал серийник  : \n");
	for(i=0; i < 4;i++)
	{
		printf("0x%02hhx \n",serial_numer[i]);
	}

	//////////

	char fight[56];

	for(i = 0 ; i < 56;i++)
	{
		fight[i] = 0x0a;
	}

	printf("LOL = %d \n", strlen(fight));

	Start_ayntificate(serial_numer);

	transmit_crypt(fight,56,1);

	/*
	printf("Переход на Мастер файл базовой станции: \n");
		select(0x3F,0x00,0);

		printf("Переход на Мастер файл клиента: \n");
		select(0x3F,0x00,1);


		char id[2];
			 id[0] = 	0x00;
			 id[1] =	0x04;// 0x08;

			 printf("Переход на DF файл клиента: \n");
			 select(id[0],id[1],0);
			 clean_cInterfaceSmartcard(&cinterfacesmartcard);
			 printf("Переход на KF файл клиента: \n");
			 select(0xFF,0x12,0);
			 clean_cInterfaceSmartcard(&cinterfacesmartcard);

			 char password[8];
			 password[0] = 0x8E;
			 password[1] = 0xD5;
			 password[2] = 0xD6;
			 password[3] = 0x3D;
			 password[4] = 0xBB;
			 password[5] = 0xA2;
			 password[6] = 0x21;
			 password[7] = 0x36;

			 for(i=0; i < 8;i++)
			 {
				 printf("0x%02hhx\n",password[i]);
			 }

			 printf("Проходим верификацию на клиенте: \n");
			 verify(password,0,0);
			 clean_cInterfaceSmartcard(&cinterfacesmartcard);

	int numer_sim = 0;
	 char AC_kf_13[4];
		   	 	 	AC_kf_13[0] = 0x02;
		   		    AC_kf_13[1] = 0x00;
		   		    AC_kf_13[2] = 0xF0;
		   		    AC_kf_13[3] = 0xF0;

		   		    select(0xFF,0x013,numer_sim);
		   		    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
		   		    {
		   		    	printf("Создаем файл KF id = 0xFF 0x13 \n");
		   		    	create_kf(0x13,AC_kf_13,0xF0,0x0D,numer_sim);
		   		    	printf("Перешли на файл DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
		   		    	select(id[0],id[1],0);//переход обратно на DF 0x00 0x08
		   		    }
		   		    else
		   		    {
		   		    	printf("Файл  KF с id = 0xFF 0x13 существует \n");
		   		    	printf("Перешли на файл DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
		   		    	select(id[0],id[1],numer_sim);//переход обратно на DF 0x00 0x08
		   		    }

		   		    //////////////////////////////
		   		        char AC_ef1 = 0x03;
		   		   	    char id_ef1[2];
		   		   	    id_ef1[0] = 0x00;
		   		   	    id_ef1[1] = 0x06;
		   		   	    char size_ef1[2];
		   		   	    size_ef1[0]=0x00;
		   		   	    size_ef1[1]=0x10; //16 байт



		   		   	    select(id_ef1[0],id_ef1[1],numer_sim);
		   		   	    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
		   		   	    {
		   		   	    	printf("Создаем файл EF id = 0x%02hhx 0x%02hhx \n",id_ef1[0],id_ef1[1]);
		   		   	    	create_ef(size_ef1,id_ef1,AC_ef1,0x00,numer_sim);
		   		   	    	printf("Перешли на файл DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
		   		   	    	select(id[0],id[1],0);//переход обратно на DF 0x00 0x08
		   		   	    }
		   		   	    else
		   		   	    {
		   		   	    	printf("Файл  EF с id = 0x00 0x06 существует \n");
		   		   	    	printf("Перешли на файл DF id = 0x00 0x08 \n");
		   		   	    	select(id[0],id[1],numer_sim);//переход обратно на DF 0x00 0x08
		   		   	    }

		   		   	    //////////////////////////////////////


		   		   	 printf("Переход на KF файл клиента: \n");
		   		   	 	 select(0xFF,0x12,numer_sim);
		   		   	 	 clean_cInterfaceSmartcard(&cinterfacesmartcard);


		   		   	 	 password[0] = 0x8E;
		   		   	 	 password[1] = 0xD5;
		   		   	 	 password[2] = 0xD6;
		   		   	 	 password[3] = 0x3D;
		   		   	 	 password[4] = 0xBB;
		   		   	 	 password[5] = 0xA2;
		   		   	 	 password[6] = 0x21;
		   		   	 	 password[7] = 0x36;

		   		   	 	 for(i=0; i < 8;i++)
		   		   	 	 {
		   		   	 		 printf("0x%02hhx\n",password[i]);
		   		   	 	 }

		   		   	 	 printf("Проходим верификацию на клиенте: \n");
		   		   	 	 verify(password,0,numer_sim);
		   		   	 	 clean_cInterfaceSmartcard(&cinterfacesmartcard);


		   		   	 	 select(0xFF,0x13,numer_sim);


		   		   	 	 char k[32];

		   		   	 	 for(i=0; i < 32; i++)
		   		   	 	 {
		   		   	 		 k[i]=0x00;
		   		   	 	 }

		   		   	 	 load_key(k,1,numer_sim);

		   		   	 	 */

	//////////

	/*
	Start_ayntificate(serial_numer);



		   		   		select(0x00,0x06,0);
		   		   		clean_cInterfaceSmartcard(&cinterfacesmartcard);

		   		   		char* data_read_binary = malloc(16);


		   		   		data_read_binary = read_binary(0x10,0,0);

		   		   		char data_read_binary_part1[8];

		   		   		char data_read_binary_part2[4];

		   		   		char data_read_binary_part3[12];


		   		   		printf("data_read_binary  : \n");
		   		   		for(i=0; i < 12;i++)
		   		   		{
		   		   			data_read_binary_part3[i] = data_read_binary[i];

		   		   			if(i < 8)
		   		   			{
		   		   				data_read_binary_part1[i] = data_read_binary[i];
		   		   			}
		   		   			else
		   		   			{
		   		   				data_read_binary_part2[i-8] = data_read_binary[i];
		   		   			}
		   		   			printf("0x%02hhx \n",data_read_binary[i]);
		   		   		}




		   		   		select(0xFF,0x13,0);
		   		   		clean_cInterfaceSmartcard(&cinterfacesmartcard);


	printf("Переход на KF файл базовой станции: \n");
	select(0xFF,0x13,0);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	char* get_data = malloc(1);


	get_data = Crypt(get_data,0x00,0x02,0x08,0); // открытие сеанса зашифрования
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	char* data = malloc(8);

	printf("Data = %d \n",data);

	data = get_response(0x08,0); // получить синхропассылку для расшифрования
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	printf("data  : \n");
	for(i=0; i < 8;i++)
	{
		printf("0x%02hhx \n",data[i]);
	}

	printf("Переход на KF файл клиента: \n");
	select(0xFF,0x13,1);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	data = Crypt(data,0x00,0x00,0x08,1); // открытие сеанса расшифрования



	char* get_data_1 = malloc(1);

	//printf("data_read_binary  : \n");
	//for(i=0; i < 8;i++)
	//{
	//	printf("0x%02hhx \n",data_read_binary_part1[i]);
	//}

	//get_data_1 = Crypt(data_read_binary_part1,0x01,0x02,0x08,0); // зашифрования порции данных от EF
	//clean_cInterfaceSmartcard(&cinterfacesmartcard);

	//char* data1 = malloc(0x08);

	//data1 = get_response(0x08,0);
	//clean_cInterfaceSmartcard(&cinterfacesmartcard);

	//printf("data1  : \n");
	//for(i=0; i < 8;i++)
	//{
	//	printf("0x%02hhx \n",data1[i]);
	//}


	//get_data_1 = Crypt(data1,0x01,0x00,0x08,1);
	//clean_cInterfaceSmartcard(&cinterfacesmartcard);

	//char* data2 = malloc(8);
	//data2 = get_response(0x08,1);
	//clean_cInterfaceSmartcard(&cinterfacesmartcard);

	//printf("data2  : \n");
	//for(i=0; i < 8;i++)
	//{
	//	printf("0x%02hhx \n",data2[i]);
	//}

	//printf("data_read_binary part 2  : \n");
	//for(i=0; i < 4;i++)
	//{
	//	printf("0x%02hhx \n",data_read_binary_part2[i]);
	//}

	printf("data_read_binary part 3  : \n");
	for(i=0; i < 12;i++)
	{
			printf("0x%02hhx \n",data_read_binary_part3[i]);
	}

	get_data_1 = Crypt(data_read_binary_part3,0x0F,0x02,0x0C,0);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	char* data3 = malloc(12);
	data3 = get_response(0x0C,0);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	printf("data3  : \n");
	for(i=0; i < 12;i++)
	{
		printf("0x%02hhx \n",data3[i]);
	}

	get_data_1 = Crypt(data3,0x0F,0x00,0x0C,1);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	char* data4 = malloc(12);
	data4 = get_response(0x0C,1);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);

	printf("data4  : \n");
	for(i=0; i < 12;i++)
	{
		printf("0x%02hhx \n",data4[i]);
	}

	*/


  return 0;
}

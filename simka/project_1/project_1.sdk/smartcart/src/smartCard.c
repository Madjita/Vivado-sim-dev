/*
 * smartCard.c
 *
 *  Created on: 14 ����. 2016 �.
 *      Author: Admin
 */

#include "smartCard.h"

#include <stdlib.h>

unsigned intcial()
{

	int statusReg;
	u32 address;
	ProgSmartCart pProgSmartCart;
	ProgSmartCart_1 pProgSmartCart_1;
	statusReg=ScuGicInterrupt_Init(0,&pProgSmartCart,&pProgSmartCart_1);
	clean_cInterfaceSmartcard(&cinterfacesmartcard);// ��������� ��������� cInterfaceSmartcard

	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x4,0x1);
	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x4,0x1);

	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x100,0x4);
	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x100,0x4);

	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x228,250000000);
	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x228,250000000);

	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x230,2604);
	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x230,2604);

	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x22C, 5208);
	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x22C, 5208);

	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x234,5208*2-100);
	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x234,5208*2-100);

	Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x204,130);
	Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x204,130);

	return statusReg;
}

/**
 * param sim_number - ����� ����� ����� 0 - �������, 1 - ���������.
 * */
char*  read_serial_number(int numer_sim)// ������� ������� ��������� ������
{
	printf("=========================\n");
	printf("Start \"read_serial_number\": \n");

	Ccomanda ccomanda;
	char* byt;

	//APDU �����
	cinterfacesmartcard.transmit_buffer[0]=0x80; // ����� ������
	cinterfacesmartcard.transmit_buffer[1]=0xCA; // ����� ����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; // �������� 1
	cinterfacesmartcard.transmit_buffer[3]=0x00; // �������� 2
	cinterfacesmartcard.transmit_buffer[4]=0x04; // �������� 3

	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
    cinterfacesmartcard.ok=0;

    if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
    {
       printf("Loading comand \"read_serial_number\"... \n");

       if(cinterfacesmartcard.reciver_buffer[5] == 0x90)
       {
    	   if(cinterfacesmartcard.reciver_buffer[6] == 0x00)
    	   {
    		   printf("card serial num: \n");

    		   int i =0;

    		   for(i=1; i < 5;i++)
    		   {
    		      printf("0x%02hhx\n",cinterfacesmartcard.reciver_buffer[i]);
    		   }

    		   printf("End comand \"read_serial_number\" : Good = 90 00 \n");
    	   }
       }


    }
    else
    {
    	if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
    	{
    	   if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
    	   {
    	    	printf("Error comand \"read_serial_number\" : 6D 00 (����������� �������) \n");
    	    }
    	}
    }

    printf("=========================\n");


	byt[0]=cinterfacesmartcard.reciver_buffer[1];
	byt[1]=cinterfacesmartcard.reciver_buffer[2];
	byt[2]=cinterfacesmartcard.reciver_buffer[3];
	byt[3]=cinterfacesmartcard.reciver_buffer[4];

	return byt;
}


unsigned save_div_key(char tk_1, char tk_2, int numer_sim)
{
	printf("=========================\n");
		printf("Start \"save_div_key\": \n");
		printf("Go id: 0x%02hhx 0x%02hhx \n",tk_1,tk_2);

		int somo_test,i;
			Ccomanda ccomanda;
			char byt[4];
			unsigned *qwd_byt;
			qwd_byt=(unsigned*)(byt);


			cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
			cinterfacesmartcard.transmit_buffer[1]=0x56; //�������� ����� �����������
			cinterfacesmartcard.transmit_buffer[2]=0x00; //��
			cinterfacesmartcard.transmit_buffer[3]=0x00;

			write_byte(&ccomanda,4,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			cinterfacesmartcard.transmit_buffer[0]=0x02;
			write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;


			if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
			{
			   printf("Loading comand \"save_div_key\"... \n");
			}
			else
			{
				if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
				{
				   if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				   {
				    	printf("Error comand \"save_div_key\" : 6D 00 (����������� �������) \n");
				    }
				}
			}

			cinterfacesmartcard.transmit_buffer[0]=tk_1; //3F
			cinterfacesmartcard.transmit_buffer[1]=tk_2; // 00
			write_byte(&ccomanda,2,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
			{
				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				{
					printf("End comand \"save_div_key\" : Good = 90 00 \n");
				}
			}
			else
			{
				if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
										{
											printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
										}

										if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
										{
											switch (cinterfacesmartcard.reciver_buffer[1])
											{
												case 0x82:
														{
															printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
															break;
														}

												case 0x83:
														{
															printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
															break;
														}
												case 0x85:
														{
															printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
															break;
														}
												case 0x86:
														{
															printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
															break;
														}
												case 0xF0:
														{
															printf("�������� ��������� ��� ������� ����� \n : 69 F0");
															break;
														}
												case 0xF2:
														{
															printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
															break;
														}

											}
										}

										if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
										{
											switch (cinterfacesmartcard.reciver_buffer[1])
											{
												case 0x83:
												{
													printf("���� ���� \n : 6A 83");
													break;
												}
												case 0x86:
												{
													printf("�� ������ ��������� �1 �2 \n : 6A 86");
													break;
												}
												case 0x84:
												{
													printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
													break;
												}
												case 0x80:
												{
													printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 83");
													break;
												}
											}
										}
			}
			printf("=========================\n");



			byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
			byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
			byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
			byt[3]=0; //
			somo_test=*qwd_byt;
			return somo_test;
}

unsigned diversify_key(char* key,int numer_sim)
{
	printf("=========================\n");
	printf("Start \"diversify_key\": \n");


	int serial_number;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);
		//APDU �����
		cinterfacesmartcard.transmit_buffer[0]=0x80; // ����� ������
		cinterfacesmartcard.transmit_buffer[1]=0x48; // ����� ����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; // �������� 1
		cinterfacesmartcard.transmit_buffer[3]=0x00; // �������� 2
		cinterfacesmartcard.transmit_buffer[4]=0x04; // �������� 3
		write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
	    cinterfacesmartcard.ok=0;



		if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
		{
			printf("Loading comand \"diversify_key\"... \n");
		}
		else
		{
			if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
			{
				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				{
					printf("Error comand \"diversify_key\" : 6D 00 (����������� �������) \n");
				}
			}

			if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
							{
								printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
							}

							if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
							{
								switch (cinterfacesmartcard.reciver_buffer[1])
								{
									case 0x82:
											{
												printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
												break;
											}

									case 0x83:
											{
												printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
												break;
											}
									case 0x85:
											{
												printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
												break;
											}
									case 0x86:
											{
												printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
												break;
											}
									case 0xF0:
											{
												printf("�������� ��������� ��� ������� ����� \n : 69 F0");
												break;
											}
									case 0xF2:
											{
												printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
												break;
											}

								}
							}

							if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
							{
								switch (cinterfacesmartcard.reciver_buffer[1])
								{
									case 0x83:
									{
										printf("���� ���� \n : 6A 83");
										break;
									}
									case 0x86:
									{
										printf("�� ������ ��������� �1 �2 \n : 6A 86");
										break;
									}
									case 0x84:
									{
										printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
										break;
									}
									case 0x80:
									{
										printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 83");
										break;
									}
								}
							}
		}




	    cinterfacesmartcard.transmit_buffer[0]=key[0]; // ����� ������
	    cinterfacesmartcard.transmit_buffer[1]=key[1]; // ����� ����������
	    cinterfacesmartcard.transmit_buffer[2]=key[2]; // �������� 1
	    cinterfacesmartcard.transmit_buffer[3]=key[3]; // �������� 2
	    write_byte(&ccomanda,4,&cinterfacesmartcard,0);
	    while(cinterfacesmartcard.ok==0){}
	    cinterfacesmartcard.ok=0;




	   if(cinterfacesmartcard.reciver_buffer[5] == 0x90)
	   {
	    	   if(cinterfacesmartcard.reciver_buffer[6] == 0x00)
	    	   {
	    		   printf("End comand \"diversify_key\" : Good = 90 00 \n");
	    	   }
	    }
	    else
	    {
	    	if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
	    	{
	    	   if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
	    	   {
	    	    	printf("Error comand \"diversify_key\" : 6D 00 (����������� �������) \n");
	    	    }
	    	}
	    }

	    printf("=========================\n");


		byt[0]=cinterfacesmartcard.reciver_buffer[1];
		byt[1]=cinterfacesmartcard.reciver_buffer[2];
		byt[2]=cinterfacesmartcard.reciver_buffer[3];
		byt[3]=cinterfacesmartcard.reciver_buffer[4];
		serial_number=*qwd_byt;
		return serial_number;
}
/**
 * param:
 * id - //����� KF � ������� 1n , ��� n ����� ����� �� 0 �� 9
 * AC - ������ ������� ������� ( ������� �� 4 ���� , ������ ���� ������� �� 2 ������ , ������ ������� �������� �� ������� ������� � KF (����� ������������ � �������� � 16 ������� )
 * B18 - ���� 18 ( �������� ������� 15) (����� ������������) , ��� 1 ������� ������� �������� �� ������������ ���������� ������� ������������ ������ ��� ����� ��� VERIFY, � ������� ������� ��������� �� ��������� ���������� ������� ������������ ������ ��� �����.
 * */
unsigned create_kf(char id,char* AC, char B18, char B19, int numer_sim)
{
	printf("=========================\n");
	printf("Start \"create_kf\": \n");
	printf("ID: 0xFF 0x%02hhx\n", id);
	printf("AC: \n");

	int i =0;

	for(i=0; i < 4;i++)
	{
	   printf("0x%02hhx\n",AC[i]);
	}

	printf("Byt18: 0x%02hhx (���������� �������)\n", B18);
	printf("Byt19: 0x%02hhx (������� �������)\n", B19);

	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);

	byt[0] = AC[0];

	byt[1] = AC[1];
	byt[2] = AC[2];
	byt[3] = AC[3];


	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x36; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=id; //����� KF � ������� 1n
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��� 2
	cinterfacesmartcard.transmit_buffer[4]=0x0a; //Lc

	write_byte(&ccomanda,5,&cinterfacesmartcard, numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
	{
		printf("Loading comand \"create_kf\"... \n");
	}
	else
	{
		if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
		{
			if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
			{
				printf("Error comand \"create_kf\" : 6D 00 (����������� �������) \n");
			}
		}

		if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
						{
							printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
						}

						if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
						{
							switch (cinterfacesmartcard.reciver_buffer[1])
							{
								case 0x82:
										{
											printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
											break;
										}

								case 0x83:
										{
											printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
											break;
										}
								case 0x85:
										{
											printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
											break;
										}
								case 0x86:
										{
											printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
											break;
										}
								case 0xF0:
										{
											printf("�������� ��������� ��� ������� ����� \n : 69 F0");
											break;
										}
								case 0xF2:
										{
											printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
											break;
										}

							}
						}

						if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
						{
							switch (cinterfacesmartcard.reciver_buffer[1])
							{
								case 0x83:
								{
									printf("���� ���� \n : 6A 83");
									break;
								}
								case 0x86:
								{
									printf("�� ������ ��������� �1 �2 \n : 6A 86");
									break;
								}
								case 0x84:
								{
									printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
									break;
								}
								case 0x80:
								{
									printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 83");
									break;
								}
							}
						}
	}


	cinterfacesmartcard.transmit_buffer[0]=AC[0];// 0x00;
	cinterfacesmartcard.transmit_buffer[1]=AC[1];// 0x0F;
	cinterfacesmartcard.transmit_buffer[2]=AC[2];// 0xF0;
	cinterfacesmartcard.transmit_buffer[3]=AC[3];//0xFF;

	cinterfacesmartcard.transmit_buffer[4]=0xFF;
	cinterfacesmartcard.transmit_buffer[5]=0xFF;
	cinterfacesmartcard.transmit_buffer[6]=0xFF;
	cinterfacesmartcard.transmit_buffer[7]=0xFF;

	cinterfacesmartcard.transmit_buffer[8]=B18;//0x50;// ���� 18 ( 5 ������� ������� ������/�������������� )
	cinterfacesmartcard.transmit_buffer[9]=B19; // 0x00; // ���� 19

	write_byte(&ccomanda,10,&cinterfacesmartcard, numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
	{
		if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
		{
			printf("End comand \"create_kf\" : Good = 90 00 \n");
		}
	}
	else
	{
		if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
								{
									printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
								}

								if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
								{
									switch (cinterfacesmartcard.reciver_buffer[1])
									{
										case 0x82:
												{
													printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
													break;
												}

										case 0x83:
												{
													printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
													break;
												}
										case 0x85:
												{
													printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
													break;
												}
										case 0x86:
												{
													printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
													break;
												}
										case 0xF0:
												{
													printf("�������� ��������� ��� ������� ����� \n : 69 F0");
													break;
												}
										case 0xF2:
												{
													printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
													break;
												}

									}
								}

								if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
								{
									switch (cinterfacesmartcard.reciver_buffer[1])
									{
										case 0x83:
										{
											printf("���� ���� \n : 6A 83");
											break;
										}
										case 0x86:
										{
											printf("�� ������ ��������� �1 �2 \n : 6A 86");
											break;
										}
										case 0x84:
										{
											printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
											break;
										}
										case 0x80:
										{
											printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 80");
											break;
										}
									}
								}
	}
	printf("=========================\n");


	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[3]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[4]=cinterfacesmartcard.reciver_buffer[4];
	byt[5]=cinterfacesmartcard.reciver_buffer[5];
	byt[6]=cinterfacesmartcard.reciver_buffer[6];

	somo_test=*qwd_byt;
	return somo_test;

}

unsigned external_authenticate(char* kriptogramma, int numer_sim)
{
	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x82; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00;
	cinterfacesmartcard.transmit_buffer[4]=0x06;
	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=kriptogramma[0];
	cinterfacesmartcard.transmit_buffer[1]=kriptogramma[1];
	cinterfacesmartcard.transmit_buffer[2]=kriptogramma[2];
	cinterfacesmartcard.transmit_buffer[3]=kriptogramma[3];
	cinterfacesmartcard.transmit_buffer[4]=kriptogramma[4];
	cinterfacesmartcard.transmit_buffer[5]=kriptogramma[5];
	write_byte(&ccomanda,6,&cinterfacesmartcard,0);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=0x06;
	write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[4];
	byt[2]=cinterfacesmartcard.reciver_buffer[5];
	byt[2]=cinterfacesmartcard.reciver_buffer[6];
	somo_test=*qwd_byt;
	return somo_test;
}

char* internal_auth(char* random, char sim_number)
{
	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x88; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00;

	write_byte(&ccomanda,4,&cinterfacesmartcard,sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=0x08;
	write_byte(&ccomanda,1,&cinterfacesmartcard,sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=random[0];
	cinterfacesmartcard.transmit_buffer[1]=random[1];
	cinterfacesmartcard.transmit_buffer[2]=random[2];
	cinterfacesmartcard.transmit_buffer[3]=random[3];
	cinterfacesmartcard.transmit_buffer[4]=random[4];
	cinterfacesmartcard.transmit_buffer[5]=random[5];
	cinterfacesmartcard.transmit_buffer[6]=random[6];
	cinterfacesmartcard.transmit_buffer[7]=random[7];

	write_byte(&ccomanda,8,&cinterfacesmartcard,sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=0x06;
	write_byte(&ccomanda,1,&cinterfacesmartcard,sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[4];
	byt[2]=cinterfacesmartcard.reciver_buffer[5];
	byt[2]=cinterfacesmartcard.reciver_buffer[6];
	somo_test=*qwd_byt;
	return somo_test;
}


unsigned create_ef(char* size,char* id,char AC, char B18,int numer_sim)
{

	printf("=========================\n");
	printf("Start \"create_ef\": \n");
	printf("ID: 0x%02hhx 0x%02hhx\n", id[0],id[1]);
	printf("size: 0x%02hhx 0x%02hhx (� ������)\n", size[0],size[1]);
	printf("Byt18: 0x%02hhx (���� �������)\n",B18);
	printf("AC: \n");
	printf("0x%02hhx\n",AC);
	int i =0;

	for(i=0; i < 7;i++)
	{
		printf("0xFF\n");
	}



	int somo_test;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);
		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0x34; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00; //��
		cinterfacesmartcard.transmit_buffer[4]=0x0d;


		write_byte(&ccomanda,5,&cinterfacesmartcard,0);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;


		if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
		{
			printf("Loading comand \"create_ef\"... \n");
		}
		else
		{
			if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
			{
				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				{
					printf("Error comand \"create_ef\" : 6D 00 (����������� �������) \n");
				}
			}

			if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
						{
							if(cinterfacesmartcard.reciver_buffer[1] == 0x82)
							{
								printf("������ �� �������� ��� ������ ������������ ������������� ���� \"create_ef\" : 69 82  \n");
							}
						}
		}


		cinterfacesmartcard.transmit_buffer[0]=size[0]; //������ �����
		cinterfacesmartcard.transmit_buffer[1]=size[1]; //������ �����

		write_byte(&ccomanda,2,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;


		cinterfacesmartcard.transmit_buffer[0]=id[0]; // ����������� �����
		cinterfacesmartcard.transmit_buffer[1]=id[1]; // ����������� �����

		write_byte(&ccomanda,2,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;


		cinterfacesmartcard.transmit_buffer[0]=AC; // ����������� �����
		cinterfacesmartcard.transmit_buffer[1]=0xFF; // ����������� �����
		cinterfacesmartcard.transmit_buffer[2]=0xFF;
		cinterfacesmartcard.transmit_buffer[3]=0xFF;
		cinterfacesmartcard.transmit_buffer[4]=0xFF;
		cinterfacesmartcard.transmit_buffer[5]=0xFF;
		cinterfacesmartcard.transmit_buffer[6]=0xFF;
		cinterfacesmartcard.transmit_buffer[7]=0xFF;

		write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
				while(cinterfacesmartcard.ok==0){}
				cinterfacesmartcard.ok=0;

		cinterfacesmartcard.transmit_buffer[0]=B18;

		write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;


		if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
		{
			if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
			{
				printf("End comand \"create_df\" : Good = 90 00 \n");
			}
		}
		else
		{
			if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
									{
										printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
									}

									if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
									{
										switch (cinterfacesmartcard.reciver_buffer[1])
										{
											case 0x82:
													{
														printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
														break;
													}

											case 0x83:
													{
														printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
														break;
													}
											case 0x85:
													{
														printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
														break;
													}
											case 0x86:
													{
														printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
														break;
													}
											case 0xF0:
													{
														printf("�������� ��������� ��� ������� ����� \n : 69 F0");
														break;
													}
											case 0xF2:
													{
														printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
														break;
													}

										}
									}

									if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
									{
										switch (cinterfacesmartcard.reciver_buffer[1])
										{
											case 0x83:
											{
												printf("���� ���� \n : 6A 83");
												break;
											}
											case 0x86:
											{
												printf("�� ������ ��������� �1 �2 \n : 6A 86");
												break;
											}
											case 0x84:
											{
												printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
												break;
											}
											case 0x80:
											{
												printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 83");
												break;
											}
										}
									}
		}
		printf("=========================\n");


		byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		byt[3]=0; //
		somo_test=*qwd_byt;
		return somo_test;
}

/*
unsigned check_rom(char sim_number)
{
	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x52; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00;

	write_byte(&ccomanda,4,&cinterfacesmartcard, sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=0x20;
	write_byte(&ccomanda,1,&cinterfacesmartcard, sim_number);
	while(cinterfacesmartcard.ok==0){} ///
	cinterfacesmartcard.ok=0;


	cinterfacesmartcard.transmit_buffer[0]=0x00;
	cinterfacesmartcard.transmit_buffer[1]=0x00;
	cinterfacesmartcard.transmit_buffer[2]=0x00;
	cinterfacesmartcard.transmit_buffer[3]=0x11;
	cinterfacesmartcard.transmit_buffer[4]=0x11;
	cinterfacesmartcard.transmit_buffer[5]=0x11;
	cinterfacesmartcard.transmit_buffer[6]=0x11;
	cinterfacesmartcard.transmit_buffer[7]=0x00;
	cinterfacesmartcard.transmit_buffer[8]=0x00;
	cinterfacesmartcard.transmit_buffer[9]=0x00;
	cinterfacesmartcard.transmit_buffer[10]=0x00;
	cinterfacesmartcard.transmit_buffer[11]=0x00;
	cinterfacesmartcard.transmit_buffer[12]=0x00;
	cinterfacesmartcard.transmit_buffer[13]=0x00;
	cinterfacesmartcard.transmit_buffer[14]=0x00;
	cinterfacesmartcard.transmit_buffer[15]=0x00;
	cinterfacesmartcard.transmit_buffer[16]=0x00;
	cinterfacesmartcard.transmit_buffer[17]=0x00;
	cinterfacesmartcard.transmit_buffer[18]=0x00;
	cinterfacesmartcard.transmit_buffer[19]=0x00;
	cinterfacesmartcard.transmit_buffer[20]=0x00;
	cinterfacesmartcard.transmit_buffer[21]=0x00;
	cinterfacesmartcard.transmit_buffer[22]=0x00;
	cinterfacesmartcard.transmit_buffer[23]=0x00;
	cinterfacesmartcard.transmit_buffer[24]=0x00;
	cinterfacesmartcard.transmit_buffer[25]=0x00;
	cinterfacesmartcard.transmit_buffer[26]=0x00;
	cinterfacesmartcard.transmit_buffer[27]=0x00;
	cinterfacesmartcard.transmit_buffer[28]=0x00;
	cinterfacesmartcard.transmit_buffer[29]=0x00;
	cinterfacesmartcard.transmit_buffer[30]=0x00;
	cinterfacesmartcard.transmit_buffer[31]=0x00;

	write_byte(&ccomanda,32,&cinterfacesmartcard, sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=0x04;
	write_byte(&ccomanda,1,&cinterfacesmartcard, sim_number);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;
	return somo_test;
}
*/

//��������
unsigned test_result()// ������� ������� ����� �������
{
	unsigned somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x38; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x03; //�����
	write_byte(&ccomanda,5,&cinterfacesmartcard,0);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;
	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	somo_test=*qwd_byt;

	int i =0;

	    for(i = 0; i < 1024;i++)
	    {
	    	cinterfacesmartcard.transmit_buffer[i] = 0;
	    }

	//int i =0;
	//  for(i = 0; i < 1024;i++)
	 //   {
	//    	cinterfacesmartcard.reciver_buffer[i] = 0;
	 //   }

	return somo_test;
}


unsigned test_fs()// ������� ������� ����� �������
{
	unsigned somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0xF0; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x04;

	write_byte(&ccomanda,5,&cinterfacesmartcard,0);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	somo_test=*qwd_byt;

	int i =0;
	  for(i = 0; i < 1024;i++)
	    {
	    	cinterfacesmartcard.reciver_buffer[i] = 0;
	    }

	return somo_test;
}


unsigned activate(char tk_1, char tk_2)
{
	int somo_test,i;
				Ccomanda ccomanda;
				char byt[4];
				unsigned *qwd_byt;
				qwd_byt=(unsigned*)(byt);

				cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
					cinterfacesmartcard.transmit_buffer[1]=0x20; //�������� ����� �����������
					cinterfacesmartcard.transmit_buffer[2]=0x00; //��
					cinterfacesmartcard.transmit_buffer[3]=0x00; //��
					cinterfacesmartcard.transmit_buffer[4]=0x00; //�����

						write_byte(&ccomanda,5,&cinterfacesmartcard,0);
						while(cinterfacesmartcard.ok==0){}
						cinterfacesmartcard.ok=0;


						byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
						byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
						byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
						byt[3]=0; //
						somo_test=*qwd_byt;
						return somo_test;
}

unsigned delete(char tk_1, char tk_2)
{
	int somo_test,i;
			Ccomanda ccomanda;
			char byt[4];
			unsigned *qwd_byt;
			qwd_byt=(unsigned*)(byt);

			cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
					cinterfacesmartcard.transmit_buffer[1]=0xE4; //�������� ����� �����������
					cinterfacesmartcard.transmit_buffer[2]=0x00; //��
					cinterfacesmartcard.transmit_buffer[3]=0x00;
					cinterfacesmartcard.transmit_buffer[4]=0x00;

					write_byte(&ccomanda,5,&cinterfacesmartcard,0);
					while(cinterfacesmartcard.ok==0){}
					cinterfacesmartcard.ok=0;


					 if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
					 {
					    printf("Loading comand \"delete\"... \n");
					 }
					 else
					 {
					    	if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
					    	{
					    		if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
					    		{
					    			printf("Error comand \"delete\" : 6D 00 (����������� �������) \n");
					    		}
					    	}
					 }

					cinterfacesmartcard.transmit_buffer[0]=tk_1; //3F
					cinterfacesmartcard.transmit_buffer[1]=tk_2; // 00
					write_byte(&ccomanda,2,&cinterfacesmartcard,0);
					while(cinterfacesmartcard.ok==0){}
					cinterfacesmartcard.ok=0;

					byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
					byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
					byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
					byt[3]=0; //
					somo_test=*qwd_byt;
					return somo_test;

}
//��������
unsigned select(char tk_1, char tk_2,int numer_sim)
{
	printf("=========================\n");
	printf("Start \"select\": \n");
	printf("Go id: 0x%02hhx 0x%02hhx \n",tk_1,tk_2);

	int somo_test,i;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);


		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0xa4; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x21; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00;

		write_byte(&ccomanda,4,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;

		cinterfacesmartcard.transmit_buffer[0]=0x02;
		write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;


		if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
		{
		   printf("Loading comand \"select\"... \n");
		}
		else
		{
			if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
			{
			   if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
			   {
			    	printf("Error comand \"select\" : 6D 00 (����������� �������) \n");
			    }
			}
		}

		cinterfacesmartcard.transmit_buffer[0]=tk_1; //3F
		cinterfacesmartcard.transmit_buffer[1]=tk_2; // 00
		write_byte(&ccomanda,2,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;

		if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
		{
			if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
			{
				printf("End comand \"select\" : Good = 90 00 \n");
			}
		}
		else
		{
			if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
									{
										printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
									}

									if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
									{
										switch (cinterfacesmartcard.reciver_buffer[1])
										{
											case 0x82:
													{
														printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
														break;
													}

											case 0x83:
													{
														printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
														break;
													}
											case 0x85:
													{
														printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
														break;
													}
											case 0x86:
													{
														printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
														break;
													}
											case 0xF0:
													{
														printf("�������� ��������� ��� ������� ����� \n : 69 F0");
														break;
													}
											case 0xF2:
													{
														printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
														break;
													}

										}
									}

									if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
									{
										switch (cinterfacesmartcard.reciver_buffer[1])
										{
											case 0x83:
											{
												printf("���� ���� \n : 6A 83");
												break;
											}
											case 0x86:
											{
												printf("�� ������ ��������� �1 �2 \n : 6A 86");
												break;
											}
											case 0x84:
											{
												printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
												break;
											}
											case 0x80:
											{
												printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 83");
												break;
											}
											case 0x82:
											{
												printf("���� �� ������ \n : 6A 82");
												break;
											}
										}
									}
		}
		printf("=========================\n");



		byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		byt[3]=0; //
		somo_test=*qwd_byt;
		return somo_test;
}

unsigned update_key(char* key,int number,int numer_sim)
{
		printf("=========================\n");
		printf("Start \"update_key\": \n");

		int somo_test;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);
		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0xDC; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00; //


		int i =0;
		switch(number)
		{
		case 0:
				{
					printf("key (��� ������): \n");
					for(i=0; i < 8;i++)
					{
						printf("%d) 0x%02hhx\n",i+1,key[i]);
					}
					cinterfacesmartcard.transmit_buffer[4]=0x08;
					break;
				}
		case 1:
				{
					printf("key (��� ����� ��� �������� �������): \n");
					for(i=0; i < 32;i++)
					{
						printf("%d) 0x%02hhx\n",i+1,key[i]);
					}
					cinterfacesmartcard.transmit_buffer[4]=0x20;
					break;
				}
		case 2:
				{
					printf("key (��� ����� � ��������� �������): \n");
					for(i=0; i < 36;i++)
					{
						printf("%d) 0x%02hhx\n",i+1,key[i]);
					}
					cinterfacesmartcard.transmit_buffer[4]=0x24;
					break;
				}
		}


				write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
				while(cinterfacesmartcard.ok==0){}
				cinterfacesmartcard.ok=0;

				if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
					{
						printf("Loading comand \"update_key\"... \n");
					}
					else
					{
						if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
						{
							if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
							{
								printf("Error comand \"update_key\" : 6D 00 (����������� �������) \n");
							}
						}
					}


				switch(number)
				{
					case 0:
						{
							cinterfacesmartcard.transmit_buffer[0]= key[0] ;
							cinterfacesmartcard.transmit_buffer[1]= key[1] ;
							cinterfacesmartcard.transmit_buffer[2]= key[2] ;
							cinterfacesmartcard.transmit_buffer[3]= key[3] ;
							cinterfacesmartcard.transmit_buffer[4]= key[4] ;
							cinterfacesmartcard.transmit_buffer[5]= key[5] ;
							cinterfacesmartcard.transmit_buffer[6]= key[6] ;
							cinterfacesmartcard.transmit_buffer[7]= key[7] ;

							write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
							while(cinterfacesmartcard.ok==0){}
							cinterfacesmartcard.ok=0;

							break;
						}
					case 1:
						{

							int i=0;

							for( i =0; i < 32;i++)
							{
								cinterfacesmartcard.transmit_buffer[i]= key[i] ;
							}

							write_byte(&ccomanda,32,&cinterfacesmartcard,numer_sim);
							while(cinterfacesmartcard.ok==0){}
							cinterfacesmartcard.ok=0;

							break;

						}
					case 2:
						{
							int i=0;

							for( i =0; i < 36;i++)
							{
								cinterfacesmartcard.transmit_buffer[i]= key[i] ;
							}

							write_byte(&ccomanda,36,&cinterfacesmartcard,numer_sim);
							while(cinterfacesmartcard.ok==0){}
							cinterfacesmartcard.ok=0;

							break;
						}
				}

				if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
				{
					if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
					{
						printf("End comand \"update_key\" : Good = 90 00 \n");
					}
				}
				else
				{
					if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
					{
						printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
					}

					if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
					{
						switch (cinterfacesmartcard.reciver_buffer[1])
						{
							case 0x82:
									{
										printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
										break;
									}

							case 0x83:
									{
										printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
										break;
									}
							case 0x85:
									{
										printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
										break;
									}
							case 0x86:
									{
										printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
										break;
									}
							case 0xF0:
									{
										printf("�������� ��������� ��� ������� ����� \n : 69 F0");
										break;
									}
							case 0xF2:
									{
										printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
										break;
									}

						}
					}

					if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
					{
						switch (cinterfacesmartcard.reciver_buffer[1])
						{
							case 0x83:
							{
								printf("���� ���� \n : 6A 83");
								break;
							}
							case 0x86:
							{
								printf("�� ������ ��������� �1 �2 \n : 6A 86");
								break;
							}
							case 0x84:
							{
								printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
								break;
							}
						}
					}

				}

				printf("=========================\n");


				byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
				byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
				byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
				byt[3]=0; //
				somo_test=*qwd_byt;
				return somo_test;
}

unsigned load_key(char* key,int number, int numer_sim)
{
	printf("=========================\n");
	printf("Start \"load_key\": \n");

	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0xE2; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //


	int i =0;
	switch(number)
	{
	case 0:
			{
				printf("key (��� ������): \n");
				for(i=0; i < 8;i++)
				{
					printf("%d) 0x%02hhx\n",i+1,key[i]);
				}
				cinterfacesmartcard.transmit_buffer[4]=0x08;
				break;
			}
	case 1:
			{
				printf("key (��� ����� ��� �������� �������): \n");
				for(i=0; i < 32;i++)
				{
					printf("%d) 0x%02hhx\n",i+1,key[i]);
				}
				cinterfacesmartcard.transmit_buffer[4]=0x20;
				break;
			}
	case 2:
			{
				printf("key (��� ����� � ��������� �������): \n");
				for(i=0; i < 36;i++)
				{
					printf("%d) 0x%02hhx\n",i+1,key[i]);
				}
				cinterfacesmartcard.transmit_buffer[4]=0x24;
				break;
			}
	}


			write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
				{
					printf("Loading comand \"load_key\"... \n");
				}
				else
				{
					if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
					{
						if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
						{
							printf("Error comand \"load_key\" : 6D 00 (����������� �������) \n");
						}
					}
				}


			switch(number)
			{
				case 0:
					{
						cinterfacesmartcard.transmit_buffer[0]= key[0] ;
						cinterfacesmartcard.transmit_buffer[1]= key[1] ;
						cinterfacesmartcard.transmit_buffer[2]= key[2] ;
						cinterfacesmartcard.transmit_buffer[3]= key[3] ;
						cinterfacesmartcard.transmit_buffer[4]= key[4] ;
						cinterfacesmartcard.transmit_buffer[5]= key[5] ;
						cinterfacesmartcard.transmit_buffer[6]= key[6] ;
						cinterfacesmartcard.transmit_buffer[7]= key[7] ;

						write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
						while(cinterfacesmartcard.ok==0){}
						cinterfacesmartcard.ok=0;

						break;
					}
				case 1:
					{

						int i=0;

						for( i =0; i < 32;i++)
						{
							cinterfacesmartcard.transmit_buffer[i]= key[i] ;
						}

						write_byte(&ccomanda,32,&cinterfacesmartcard,numer_sim);
						while(cinterfacesmartcard.ok==0){}
						cinterfacesmartcard.ok=0;

						break;

					}
				case 2:
					{
						int i=0;

						for( i =0; i < 36;i++)
						{
							cinterfacesmartcard.transmit_buffer[i]= key[i] ;
						}

						write_byte(&ccomanda,36,&cinterfacesmartcard,numer_sim);
						while(cinterfacesmartcard.ok==0){}
						cinterfacesmartcard.ok=0;

						break;
					}
			}

			if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
			{
				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				{
					printf("End comand \"load_key\" : Good = 90 00 \n");
				}
			}
			else
			{
				if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
				{
					printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
				}

				if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
				{
					switch (cinterfacesmartcard.reciver_buffer[1])
					{
						case 0x82:
								{
									printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
									break;
								}

						case 0x83:
								{
									printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
									break;
								}
						case 0x85:
								{
									printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
									break;
								}
						case 0x86:
								{
									printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
									break;
								}
						case 0xF0:
								{
									printf("�������� ��������� ��� ������� ����� \n : 69 F0");
									break;
								}
						case 0xF2:
								{
									printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
									break;
								}

					}
				}

				if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
				{
					switch (cinterfacesmartcard.reciver_buffer[1])
					{
						case 0x83:
						{
							printf("���� ���� \n : 6A 83");
							break;
						}
						case 0x86:
						{
							printf("�� ������ ��������� �1 �2 \n : 6A 86");
							break;
						}
						case 0x84:
						{
							printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
							break;
						}
					}
				}

			}

			printf("=========================\n");


			byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
			byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
			byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
			byt[3]=0; //
			somo_test=*qwd_byt;
			return somo_test;
}

char* get_session_key(char* mass, int numer_sim)
{
	int somo_test;
			Ccomanda ccomanda;
			char byt[6];

			unsigned *qwd_byt;
			qwd_byt=(unsigned*)(byt);
			cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
			cinterfacesmartcard.transmit_buffer[1]=0x4a; //�������� ����� �����������
			cinterfacesmartcard.transmit_buffer[2]=0x00; //��
			cinterfacesmartcard.transmit_buffer[3]=0x00; //
			cinterfacesmartcard.transmit_buffer[4]=0x10;

			write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
						while(cinterfacesmartcard.ok==0){}
						cinterfacesmartcard.ok=0;


			int i;

			for( i =0 ; i < 16; i++)
			{
				cinterfacesmartcard.transmit_buffer[i] = mass[i];
			}

			write_byte(&ccomanda,16,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			cinterfacesmartcard.transmit_buffer[0] = 0x06;

			write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			/*
			cinterfacesmartcard.transmit_buffer[0] = 0x4A;


			write_byte(&ccomanda,1,&cinterfacesmartcard,0);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			cinterfacesmartcard.transmit_buffer[0] = 0x00;


			write_byte(&ccomanda,1,&cinterfacesmartcard,0);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			cinterfacesmartcard.transmit_buffer[0] = 0x00;


			write_byte(&ccomanda,1,&cinterfacesmartcard,0);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			cinterfacesmartcard.transmit_buffer[0] = 0x10;


			write_byte(&ccomanda,1,&cinterfacesmartcard,0);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;

			*/


			byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
			byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
			byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
			byt[3]=cinterfacesmartcard.reciver_buffer[4]; //
			byt[4]=cinterfacesmartcard.reciver_buffer[5]; //
			byt[5]=cinterfacesmartcard.reciver_buffer[6]; //
			somo_test=*qwd_byt;



			return *byt;
}


//��������
char* get_challenge(char L,int numer_sim)
{
	int somo_test;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);
		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0x84; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00; //
		cinterfacesmartcard.transmit_buffer[4]=L; // 0x08
		write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;

		byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		byt[3]=0; //
		somo_test=*qwd_byt;

		switch (L) {
			case 0x08:{
				char byt2[8];


									byt2[0]=cinterfacesmartcard.reciver_buffer[1];
									byt2[1]=cinterfacesmartcard.reciver_buffer[2];
									byt2[2]=cinterfacesmartcard.reciver_buffer[3];
									byt2[3]=cinterfacesmartcard.reciver_buffer[4];
									byt2[4]=cinterfacesmartcard.reciver_buffer[5];
									byt2[5]=cinterfacesmartcard.reciver_buffer[6];
									byt2[6]=cinterfacesmartcard.reciver_buffer[7];
									byt2[7]=cinterfacesmartcard.reciver_buffer[8];

						return *byt2;
						break;
			}
			case 0x10:
			{
				char byt2[16];


									byt2[0]=cinterfacesmartcard.reciver_buffer[1];
									byt2[1]=cinterfacesmartcard.reciver_buffer[2];
									byt2[2]=cinterfacesmartcard.reciver_buffer[3];
									byt2[3]=cinterfacesmartcard.reciver_buffer[4];
									byt2[4]=cinterfacesmartcard.reciver_buffer[5];
									byt2[5]=cinterfacesmartcard.reciver_buffer[6];
									byt2[6]=cinterfacesmartcard.reciver_buffer[7];
									byt2[7]=cinterfacesmartcard.reciver_buffer[8];
									byt2[8]=cinterfacesmartcard.reciver_buffer[9];
									byt2[9]=cinterfacesmartcard.reciver_buffer[10];
									byt2[10]=cinterfacesmartcard.reciver_buffer[11];
									byt2[11]=cinterfacesmartcard.reciver_buffer[12];
									byt2[12]=cinterfacesmartcard.reciver_buffer[13];
									byt2[13]=cinterfacesmartcard.reciver_buffer[14];
									byt2[14]=cinterfacesmartcard.reciver_buffer[15];
									byt2[15]=cinterfacesmartcard.reciver_buffer[16];

						return *byt2;
						break;
			}

		}

		return 0;

}


unsigned unlock_key(int numer_sim)
{
	int somo_test;
			Ccomanda ccomanda;
			char byt[4];
			unsigned *qwd_byt;
			qwd_byt=(unsigned*)(byt);
			cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
			cinterfacesmartcard.transmit_buffer[1]=0x4e; //�������� ����� �����������
			cinterfacesmartcard.transmit_buffer[2]=0x00; //��
			cinterfacesmartcard.transmit_buffer[3]=0x00; //
			cinterfacesmartcard.transmit_buffer[4]=0x00; //
			write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;
			byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
			byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
			byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
			byt[3]=0; //
			somo_test=*qwd_byt;
			return somo_test;
}

char check_rom(char* key,int numer_sim)
{
	int somo_test;
		Ccomanda ccomanda;

		char byt;

		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0x52; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00;
		cinterfacesmartcard.transmit_buffer[4]=0x20;

		write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;

		cinterfacesmartcard.transmit_buffer[0] = 0x04;

		int i=0;
		for(i=1; i < 33;i++)
		{
			cinterfacesmartcard.transmit_buffer[i] = key[i-1];
		}

		write_byte(&ccomanda,33,&cinterfacesmartcard,numer_sim);
				while(cinterfacesmartcard.ok==0){}
				cinterfacesmartcard.ok=0;


		byt = cinterfacesmartcard.reciver_buffer[257]; //


		return byt;
}


unsigned write_tk_pl(int numer_sim)
{

	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x3A; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x08; //�����


	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;


	cinterfacesmartcard.transmit_buffer[0]=0x20;//0xAB;
	cinterfacesmartcard.transmit_buffer[1]=0x20;//0x49;
	cinterfacesmartcard.transmit_buffer[2]=0x20;//0xB8;
	cinterfacesmartcard.transmit_buffer[3]=0x20;//0xF7;
	cinterfacesmartcard.transmit_buffer[4]=0x20;//0xAB;
	cinterfacesmartcard.transmit_buffer[5]=0x20;//0x49;
	cinterfacesmartcard.transmit_buffer[6]=0x20;//0xB8;
	cinterfacesmartcard.transmit_buffer[7]=0x20;//0xF7;
	cinterfacesmartcard.transmit_buffer[8]=0x20;
	write_byte(&ccomanda,9,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;

	int i =0;

	    for(i = 0; i < 1024;i++)
	    {
	    	cinterfacesmartcard.transmit_buffer[i] = 0;
	    }



	return somo_test;
}


unsigned update_binary(char* data,char size_ef,int kod, int numer_sim)
{
	printf("=========================\n");
	printf("Start \"update_binary\": \n");
	printf("Size: 0x%02hhx \n", size_ef);
	printf("Data: \n");
	int i=0;

	for(i = 0; i < (int)size_ef;i++)
	{
		printf("0x%02hhx\n",data[i]);
	}

	int somo_test;
			Ccomanda ccomanda;
			char byt[4];
			unsigned *qwd_byt;
			qwd_byt=(unsigned*)(byt);
			cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
			cinterfacesmartcard.transmit_buffer[1]=0xD6; //�������� ����� �����������
			cinterfacesmartcard.transmit_buffer[2]=0x00; //��
			cinterfacesmartcard.transmit_buffer[3]=0x00; //��

			switch (kod) {
					case 0:
					{
						printf("������ ������ �� ���������� \n");
						cinterfacesmartcard.transmit_buffer[4]=size_ef;
						break;
					}


					case 1:
					{
						printf("������ ������ ������������ \n");
						cinterfacesmartcard.transmit_buffer[4]=size_ef+0x0c;
						break;
					}

				}



			write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
			cinterfacesmartcard.ok=0;


			if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
			{
				printf("Loading comand \"update_binary\"... \n");
			}
			else
			{
				if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
				{
					if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
					{
						printf("Error comand \"update_binary\" : 6D 00 (����������� �������) \n");
					}
				}
			}


			i=0;
			if(kod == 0)
			{

				for(i = 0; i < (int)size_ef;i++)
				{
					cinterfacesmartcard.transmit_buffer[i] = data[i];
				}

				write_byte(&ccomanda,(int)size_ef,&cinterfacesmartcard,numer_sim);
				while(cinterfacesmartcard.ok==0){}
				cinterfacesmartcard.ok=0;
			}
			else
			{

				for(i = 0; i < (int)(size_ef+0x0c);i++)
				{
					cinterfacesmartcard.transmit_buffer[i] = data[i];
				}

				write_byte(&ccomanda,(int)(size_ef+0x0c),&cinterfacesmartcard,numer_sim);
				while(cinterfacesmartcard.ok==0){}
				cinterfacesmartcard.ok=0;
			}


			if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
			{
				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				{
					printf("End comand \"update_binary\" : Good = 90 00 \n");
				}
			}
			printf("=========================\n");


			byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
			byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
			byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
			byt[3]=0; //
			somo_test=*qwd_byt;
			return somo_test;
}

unsigned read_binary(char size_ef,int kod,int numer_sim)
{
	printf("=========================\n");
	printf("Start \"read_binary\": \n");

	int somo_test;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);
		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0xB0; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00; //��


		switch (kod) {
			case 0:
			{
				printf("������ ������ �� ���������� \n");
				cinterfacesmartcard.transmit_buffer[4]=size_ef;
				break;
			}


			case 1:
			{
				printf("������ ������ ������������ \n");
				cinterfacesmartcard.transmit_buffer[4]=size_ef+0x0c;
				break;
			}

		}


		write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;


		if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
		{
			printf("Loading comand \"read_binary\"... \n");

			int i=1;

			while((cinterfacesmartcard.reciver_buffer[i] == 0x90) && (cinterfacesmartcard.reciver_buffer[i] == 0x00))
			{

				printf("0x%02hhx\n",cinterfacesmartcard.reciver_buffer[i]);
				i++;

			}

			printf("End comand \"select\" : Good = 90 00 \n");


		}
		else
		{
			if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
			{
				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
				{
					printf("Error comand \"read_binary\" : 6D 00 (����������� �������) \n");
				}
			}
		}


		byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		byt[3]=0; //
		somo_test=*qwd_byt;
		return somo_test;
}


//�������� ���� ������ ����� �� ���������� (���������� � ���� ����� �������� SELECT �� ������ 3F 00
unsigned create_mf(int numer_sim)
{
	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x30; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x09;

	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;



	cinterfacesmartcard.transmit_buffer[0]=0x00;

	write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;


	cinterfacesmartcard.transmit_buffer[0]=0x00; //�����
	cinterfacesmartcard.transmit_buffer[1]=0x00;
	cinterfacesmartcard.transmit_buffer[2]=0x00;
	cinterfacesmartcard.transmit_buffer[3]=0x00;
	cinterfacesmartcard.transmit_buffer[4]=0x00;
	cinterfacesmartcard.transmit_buffer[5]=0x00;
	cinterfacesmartcard.transmit_buffer[6]=0x00;
	cinterfacesmartcard.transmit_buffer[7]=0x00;

	write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;
	return somo_test;
}

unsigned restore()
{
	int somo_test;
		Ccomanda ccomanda;
		char byt[4];
		unsigned *qwd_byt;
		qwd_byt=(unsigned*)(byt);
		cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
		cinterfacesmartcard.transmit_buffer[1]=0xf4; //�������� ����� �����������
		cinterfacesmartcard.transmit_buffer[2]=0x00; //��
		cinterfacesmartcard.transmit_buffer[3]=0x00; //��
		cinterfacesmartcard.transmit_buffer[4]=0x00;
		write_byte(&ccomanda,5,&cinterfacesmartcard,0);
		while(cinterfacesmartcard.ok==0){}
		cinterfacesmartcard.ok=0;
		byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		byt[3]=0;
		somo_test=*qwd_byt;

		int i =0;
			  for(i = 0; i < 1024;i++)
			    {
			    	cinterfacesmartcard.reciver_buffer[i] = 0;
			    }

		return somo_test;
}
char* get_response(char size, int numer_sim)
{
	int somo_test;
	Ccomanda ccomanda;
	char* byt;

	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0xc0; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=size; //0xFA; //�����

	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;
	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=cinterfacesmartcard.reciver_buffer[4];



	return byt;
}


unsigned write_tk(int numer_sim)
{
	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x36; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x08; //�����
	//write_byte(&ccomanda,5,&cinterfacesmartcard,0);
	//while(cinterfacesmartcard.ok==0){}
	//cinterfacesmartcard.ok=0;
	//cinterfacesmartcard.transmit_buffer[5]=0xab;//0xAB;
	//cinterfacesmartcard.transmit_buffer[6]=0x49;//0x49;
	//cinterfacesmartcard.transmit_buffer[7]=0xb8;//0xB8;
	//cinterfacesmartcard.transmit_buffer[8]=0xfB;//0xF7;
	//cinterfacesmartcard.transmit_buffer[9]=0xab;//0xAB;
	//cinterfacesmartcard.transmit_buffer[10]=0x49;//0x49;
	//cinterfacesmartcard.transmit_buffer[11]=0xb8;//0xB8;
	//cinterfacesmartcard.transmit_buffer[12]=0xfB;//0xF7;
	//cinterfacesmartcard.transmit_buffer[13]=0x00;

	cinterfacesmartcard.transmit_buffer[5]=0xab;//0xAB;
		cinterfacesmartcard.transmit_buffer[6]=0x49;//0x49;
		cinterfacesmartcard.transmit_buffer[7]=0xb8;//0xB8;
		cinterfacesmartcard.transmit_buffer[8]=0xfb;//0xF7;
		cinterfacesmartcard.transmit_buffer[9]=0xab;//0xAB;
		cinterfacesmartcard.transmit_buffer[10]=0x49;//0x49;
		cinterfacesmartcard.transmit_buffer[11]=0xb8;//0xB8;
		cinterfacesmartcard.transmit_buffer[12]=0xfb;//0xF7;
	//	cinterfacesmartcard.transmit_buffer[13]=0x00;

	write_byte(&ccomanda,13,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;
	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;


	int i =0;

	    for(i = 0; i < 1024;i++)
	    {
	    	cinterfacesmartcard.transmit_buffer[i] = 0;
	    }

	//int i =0;
	//for(i = 0; i < 1024;i++)
	//{
	//	cinterfacesmartcard.reciver_buffer[i] = 0;
	//}

	return somo_test;
}

unsigned lock_key(int numer_sim)
{
	int somo_test;
			Ccomanda ccomanda;
			char byt[4];
			unsigned *qwd_byt;
			qwd_byt=(unsigned*)(byt);
			cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
			cinterfacesmartcard.transmit_buffer[1]=0x4C; //�������� ����� �����������
			cinterfacesmartcard.transmit_buffer[2]=0x00; //��
			cinterfacesmartcard.transmit_buffer[3]=0x00; //��
			cinterfacesmartcard.transmit_buffer[4]=0x00; //�����

			write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
			while(cinterfacesmartcard.ok==0){}
		    cinterfacesmartcard.ok=0;
		    byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		    byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		    byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		    byt[3]=0; //
		    somo_test=*qwd_byt;



	return somo_test;

}

unsigned verify(char* key,int number, int numer_sim)
{
	printf("=========================\n");
	printf("Start \"verify\": \n");

	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x20; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��

	int i =0;
		switch(number)
		{
		case 0:
				{
					printf("key (��� ������): \n");
					for(i=0; i < 8;i++)
					{
						printf("%d) 0x%02hhx\n",i+1,key[i]);
					}
					cinterfacesmartcard.transmit_buffer[4]=0x08; //�����
					break;
				}
		case 1:
				{
					printf("key (��� ����� ��� �������� �������): \n");
					for(i=0; i < 32;i++)
					{
						printf("%d) 0x%02hhx\n",i+1,key[i]);
					}
					cinterfacesmartcard.transmit_buffer[4]=0x20; //�����
					break;
				}
		case 2:
				{
					printf("key (��� ����� � ��������� �������): \n");
					for(i=0; i < 36;i++)
					{
						printf("%d) 0x%02hhx\n",i+1,key[i]);
					}
					cinterfacesmartcard.transmit_buffer[4]=0x24; //�����
					break;
				}
		}


		write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
		while(cinterfacesmartcard.ok==0){}
	    cinterfacesmartcard.ok=0;


	    if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
	    				{
	    					printf("Loading comand \"verify\"... \n");
	    				}
	    				else
	    				{
	    					if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
	    					{
	    						if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
	    						{
	    							printf("Error comand \"verify\" : 6D 00 (����������� �������) \n");
	    						}
	    					}

	    					if(cinterfacesmartcard.reciver_buffer[0] == 0x67)
	    					{
	    						if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
	    						{
	    						    printf("Error comand \"verify\" : 67 00 (�������� ����� ������) \n");
	    						}
	    					}
	    				}


	    			switch(number)
	    			{
	    				case 0:
	    					{
	    						cinterfacesmartcard.transmit_buffer[0]= key[0] ;
	    						cinterfacesmartcard.transmit_buffer[1]= key[1] ;
	    						cinterfacesmartcard.transmit_buffer[2]= key[2] ;
	    						cinterfacesmartcard.transmit_buffer[3]= key[3] ;
	    						cinterfacesmartcard.transmit_buffer[4]= key[4] ;
	    						cinterfacesmartcard.transmit_buffer[5]= key[5] ;
	    						cinterfacesmartcard.transmit_buffer[6]= key[6] ;
	    						cinterfacesmartcard.transmit_buffer[7]= key[7] ;

	    						write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
	    						while(cinterfacesmartcard.ok==0){}
	    						cinterfacesmartcard.ok=0;

	    						break;
	    					}
	    				case 1:
	    					{

	    						int i=0;

	    						for( i =0; i < 32;i++)
	    						{
	    							cinterfacesmartcard.transmit_buffer[i]= key[i] ;
	    						}

	    						write_byte(&ccomanda,32,&cinterfacesmartcard,numer_sim);
	    						while(cinterfacesmartcard.ok==0){}
	    						cinterfacesmartcard.ok=0;

	    						break;

	    					}
	    				case 2:
	    					{
	    						int i=0;

	    						for( i =0; i < 36;i++)
	    						{
	    							cinterfacesmartcard.transmit_buffer[i]= key[i] ;
	    						}

	    						write_byte(&ccomanda,36,&cinterfacesmartcard,numer_sim);
	    						while(cinterfacesmartcard.ok==0){}
	    						cinterfacesmartcard.ok=0;

	    						break;
	    					}
	    			}

	    			if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
	    			{
	    				if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
	    				{
	    					printf("End comand \"verify\" : Good = 90 00 \n");
	    				}
	    			}
	    			else
	    			{
	    				if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
	    				{
	    					printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
	    				}

	    				if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
	    				{
	    					switch (cinterfacesmartcard.reciver_buffer[1])
	    					{
	    						case 0x82:
	    								{
	    									printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
	    									break;
	    								}

	    						case 0x83:
	    								{
	    									printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
	    									break;
	    								}
	    						case 0x85:
	    								{
	    									printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
	    									break;
	    								}
	    						case 0x86:
	    								{
	    									printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
	    									break;
	    								}
	    						case 0xF0:
	    								{
	    									printf("�������� ��������� ��� ������� ����� \n : 69 F0");
	    									break;
	    								}
	    						case 0xF2:
	    								{
	    									printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
	    									break;
	    								}

	    					}
	    				}

	    				if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
	    				{
	    					switch (cinterfacesmartcard.reciver_buffer[1])
	    					{
	    						case 0x83:
	    						{
	    							printf("���� ���� \n : 6A 83");
	    							break;
	    						}
	    						case 0x86:
	    						{
	    							printf("�� ������ ��������� �1 �2 \n : 6A 86");
	    							break;
	    						}
	    						case 0x84:
	    						{
	    							printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
	    							break;
	    						}
	    					}
	    				}

	    			}

	    			printf("=========================\n");



		byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
		byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
		byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
		byt[3]=0; //
		somo_test=*qwd_byt;

		//������ 63 �4 , ��� 4 ��� ����� ���������� �������

		//���� ��� ������� ����������� �� �������� ������ 69 83 (����, ������ ��� ������������ ��� ����������;)


		return somo_test;
}

unsigned verify_tk(char tk_1, char tk_2, char tk_3, char tk_4, int numer_sim) //, unsigned tk_5, unsigned tk_6, unsigned tk_7, unsigned tk_8
{
	printf("=========================\n");
	printf("Start \"verify_tk\": \n");

	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);

	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x3e; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x08; //�����
	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
    cinterfacesmartcard.ok=0;

    if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
    {
    	printf("Loading comand \"verify_tk\"... \n");
    }
    else
    {
    	if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
    	{
    		if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
    		{
    			printf("Error comand \"verify_tk\" : 6D 00 (����������� �������) \n");
    		}
    	}
    }

    cinterfacesmartcard.transmit_buffer[0]=tk_1;//0xAB;
	cinterfacesmartcard.transmit_buffer[1]=tk_2;//0x49;
	cinterfacesmartcard.transmit_buffer[2]=tk_3;//0xB8;
	cinterfacesmartcard.transmit_buffer[3]=tk_4;//0xF7;
	cinterfacesmartcard.transmit_buffer[4]=tk_1;//0xAB;
	cinterfacesmartcard.transmit_buffer[5]=tk_2;//0x49;
	cinterfacesmartcard.transmit_buffer[6]=tk_3;//0xB8;
	cinterfacesmartcard.transmit_buffer[7]=tk_4;//0xF7;

	write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;


	if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
	{
		if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
		{
			printf("End comand \"verify_tk\" : Good = 90 00 \n");
		}
	}
	printf("=========================\n");



	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;



	return somo_test;
}

void SetSmartCart()
{
	int status;
	Ccomanda ccomanda;
	status=Xil_In32(baseaddress+0x238);// ��� ����������
	if(status==1)//�������
	{
			cinterfacesmartcard.reciver_buffer[cinterfacesmartcard.index_rec_buff]=Xil_In32(XPAR_HEAD_IP_0_BASEADDR+0x208);
			Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x100, 4101);
		    Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x100, 1048581);
			invert_byte(&cinterfacesmartcard.reciver_buffer[cinterfacesmartcard.index_rec_buff]);
			cinterfacesmartcard.index_rec_buff++;
	}
	if(status==2)//����������
	{
		Xil_Out32(baseaddress+0x100, 4101);
		Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x100, 1048581);
		return;
	}
	if(status==3)// ��������� �����, �����
	{
		Xil_Out32(XPAR_HEAD_IP_0_BASEADDR+0x100, 4101);
		Xil_Out32(baseaddress+0x228,50000000);// ��������� �������� ��������� 1 ���
		cinterfacesmartcard.number_read_byte=cinterfacesmartcard.index_rec_buff;
		cinterfacesmartcard.index_rec_buff=0;
		cinterfacesmartcard.initcil=0;
		cinterfacesmartcard.ok=1;
		return;
	}

}

void SetSmartCart_1()
{
	int status;
	Ccomanda ccomanda;
	status=Xil_In32(baseaddress_smoll_card+0x238);// ��� ����������
	if(status==1)//�������
	{
			cinterfacesmartcard.reciver_buffer[cinterfacesmartcard.index_rec_buff]=Xil_In32(XPAR_HEAD_IP_1_BASEADDR+0x208);
			Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x100, 4101);
		    Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x100, 1048581);
			invert_byte(&cinterfacesmartcard.reciver_buffer[cinterfacesmartcard.index_rec_buff]);
			cinterfacesmartcard.index_rec_buff++;
	}
	if(status==2)//����������
	{
		Xil_Out32(baseaddress_smoll_card+0x100, 4101);
		Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x100, 1048581);
		return;
	}
	if(status==3)// ��������� �����, �����
	{
		Xil_Out32(XPAR_HEAD_IP_1_BASEADDR+0x100, 4101);
		Xil_Out32(baseaddress_smoll_card+0x228,50000000);// ��������� �������� ��������� 1 ���
		cinterfacesmartcard.number_read_byte=cinterfacesmartcard.index_rec_buff;
		cinterfacesmartcard.index_rec_buff=0;
		cinterfacesmartcard.initcil=0;
		cinterfacesmartcard.ok=1;
		return;
	}

}


/*
unsigned testFS()
{
	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0xF0; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00; //��
	cinterfacesmartcard.transmit_buffer[4]=0x04; //�����
	write_byte(&ccomanda,5,&cinterfacesmartcard);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;
	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;
	return somo_test;
}
*/
unsigned create_df(char* id,char AC, int numer_sim)
{
	printf("=========================\n");
	printf("Start \"create_df\": \n");
	printf("ID: 0x%02hhx 0x%02hhx\n", id[0],id[1]);
	printf("Byt18: 0x00 (���� �������)\n");
	printf("AC: \n");
	printf("0x%02hhx\n",AC);
	int i =0;

	for(i=0; i < 7;i++)
	{
		printf("0xFF\n");
	}




	int somo_test;
	Ccomanda ccomanda;
	char byt[4];
	unsigned *qwd_byt;
	qwd_byt=(unsigned*)(byt);
	cinterfacesmartcard.transmit_buffer[0]=0x80; //�������� ����� �������
	cinterfacesmartcard.transmit_buffer[1]=0x32; //�������� ����� �����������
	cinterfacesmartcard.transmit_buffer[2]=0x00; //��
	cinterfacesmartcard.transmit_buffer[3]=0x00;
	cinterfacesmartcard.transmit_buffer[4]=0x0b; //��
	write_byte(&ccomanda,5,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;


	if(cinterfacesmartcard.reciver_buffer[0] == cinterfacesmartcard.transmit_buffer[1])
	{
		printf("Loading comand \"create_df\"... \n");
	}
	else
	{
		if(cinterfacesmartcard.reciver_buffer[0] == 0x6D)
		{
			if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
			{
				printf("Error comand \"create_df\" : 6D 00 (����������� �������) \n");
			}
		}

		if(cinterfacesmartcard.reciver_buffer[0] == 0xff)
		{
			printf("Error comand \"create_df\" : ff (����������� �������, ����� �������������� ��� ���������� ������) \n");
		}

		if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
				{
					switch (cinterfacesmartcard.reciver_buffer[1])
					{
						case 0x82:
						{
							printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
							break;
						}

						case 0x83:
						{
							printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
							break;
						}
						case 0x85:
						{
							printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
							break;
						}
						case 0x86:
						{
							printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
							break;
						}
						case 0xF0:
						{
							printf("�������� ��������� ��� ������� ����� \n : 69 F0");
							break;
						}
						case 0xF2:
						{
							printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
							break;
						}

					}
				}
	}


	cinterfacesmartcard.transmit_buffer[0]=id[0];
	cinterfacesmartcard.transmit_buffer[1]=id[1];
	write_byte(&ccomanda,2,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;


	cinterfacesmartcard.transmit_buffer[0]=0x00;
	write_byte(&ccomanda,1,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;

	cinterfacesmartcard.transmit_buffer[0]=AC;
	cinterfacesmartcard.transmit_buffer[1]=0xFF;
	cinterfacesmartcard.transmit_buffer[2]=0xFF;
	cinterfacesmartcard.transmit_buffer[3]=0xFF;
	cinterfacesmartcard.transmit_buffer[4]=0xFF;
	cinterfacesmartcard.transmit_buffer[5]=0xFF;
	cinterfacesmartcard.transmit_buffer[6]=0xFF;
	cinterfacesmartcard.transmit_buffer[7]=0xFF;
	write_byte(&ccomanda,8,&cinterfacesmartcard,numer_sim);
	while(cinterfacesmartcard.ok==0){}
	cinterfacesmartcard.ok=0;



	if(cinterfacesmartcard.reciver_buffer[0] == 0x90)
	{
		if(cinterfacesmartcard.reciver_buffer[1] == 0x00)
		{
			printf("End comand \"create_df\" : Good = 90 00 \n");
		}
	}
	else
	{
		if(cinterfacesmartcard.reciver_buffer[0] == 0x63)
		{
			printf("������ �������������� ��� ������������ ������: %d - ����� ���������� ������� \n",cinterfacesmartcard.reciver_buffer[1]);
		}

		if(cinterfacesmartcard.reciver_buffer[0] == 0x69)
		{
			switch (cinterfacesmartcard.reciver_buffer[1])
			{
				case 0x82:
				{
					printf("������ �� �������� ��� ������ ������������ ������������� ���� \n : 69 82");
					break;
				}

				case 0x83:
				{
					printf("����, ������ ��� ������������ ��� ���������� \n : 69 83");
					break;
				}
				case 0x85:
				{
					printf("�� ��������� ������� ������������� ������� (�� ����������� ������� GET_CHALLENGE, GEN_SESSION_KEY, ��� ������ ��� GET_RESPONSE) \n : 69 85");
					break;
				}
				case 0x86:
				{
					printf("������� �� ��������� � ������� ���� ����� \n : 69 86");
					break;
				}
				case 0xF0:
				{
					printf("�������� ��������� ��� ������� ����� \n : 69 F0");
					break;
				}
				case 0xF2:
				{
					printf("� ������ ������ �� ��������� ������������������� ���� \n : 69 F2");
					break;
				}

			}
		}

										if(cinterfacesmartcard.reciver_buffer[0] == 0x6A)
										{
											switch (cinterfacesmartcard.reciver_buffer[1])
											{
												case 0x83:
												{
													printf("���� ���� \n : 6A 83");
													break;
												}
												case 0x86:
												{
													printf("�� ������ ��������� �1 �2 \n : 6A 86");
													break;
												}
												case 0x84:
												{
													printf("�� ���������� ����� ��� �������� ����� \n : 6A 84");
													break;
												}
												case 0x80:
												{
													printf("������������ �������� ���� ������ (���� � ��������� ��������������� ��� ������������) \n : 6A 80");
													break;
												}
											}
										}

										if(cinterfacesmartcard.reciver_buffer[0] == 0xff)
										{
											printf("Error comand \"create_df\" : ff (����������� �������, ����� �������������� ��� ���������� ������) \n");
										}
	}
	printf("=========================\n");


	byt[0]=cinterfacesmartcard.reciver_buffer[1]; //
	byt[1]=cinterfacesmartcard.reciver_buffer[2]; //
	byt[2]=cinterfacesmartcard.reciver_buffer[3]; //
	byt[3]=0; //
	somo_test=*qwd_byt;
	return somo_test;
}

void DetectSmartCart()
{
	int status;
	status=Xil_In32(0x43C00008);
	Xil_Out32(0x43C00004,1);
	Xil_Out32(0x43C00004,0);
}


int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr) //������������� ����������� ����������
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	(Xil_ExceptionHandler) XScuGic_InterruptHandler,
	XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}


int ScuGicInterrupt_Init(u16 DeviceId,ProgSmartCart *pProgSmartCart, ProgSmartCart_1 *pProgSmartCart_1) //������� ������������� ���������� � 61
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
	//---����� ����������
	Status = XScuGic_Connect(&InterruptController,61,SetSmartCart,pProgSmartCart);
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	XScuGic_Enable(&InterruptController, 61);


	Status = XScuGic_Connect(&InterruptController,62,SetSmartCart_1,pProgSmartCart_1);
    if (Status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}
	XScuGic_Enable(&InterruptController, 62);
 	return XST_SUCCESS;
}

unsigned Load_FileSystem(int numer_sim)
{
	//*********C������ �������� ������� (������)********************
	    char id[2];
	    id[0] = 0x00;
	    id[1] =	0x04;// 0x08;
	    char AC_df = 0x00;

	    select(id[0],id[1],numer_sim);
	    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	    {
	    	printf("������� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    	create_df(id,AC_df,numer_sim);
	    }
	    else
	    {
	    	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    }


	    //////////////////////////////
        char AC_ef = 0x01;
	    char id_ef[2];
	    id_ef[0] = 0x00;
	    id_ef[1] = 0x05; //0x09
	    char size_ef[2];
	    size_ef[0]=0x00;
	    size_ef[1]=0x02;



	    select(id_ef[0],id_ef[1],numer_sim);
	    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	    {
	    	printf("������� ���� EF id = 0x%02hhx 0x%02hhx \n",id_ef[0],id_ef[1]);
	    	create_ef(size_ef,id_ef,AC_ef,0x00,numer_sim);
	    	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    	select(0x00,0x08,numer_sim);//������� ������� �� DF 0x00 0x08
	    }
	    else
	    {
	    	printf("����  EF � id = 0x00 0x09 ���������� \n");
	    	printf("������� �� ���� DF id = 0x00 0x08 \n");
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }

	    //////////////////////////////////////

	    char AC_kf_11[4];
	    AC_kf_11[0] = 0x02;
	    AC_kf_11[1] = 0x00;
	    AC_kf_11[2] = 0xF0;
	    AC_kf_11[3] = 0xFF;

	    select(0xFF,0x011,numer_sim);
	    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	    {
	    	printf("������� ���� KF id = 0xFF 0x11 \n");
	    	create_kf(0x11,AC_kf_11,0xF0,0x3D,numer_sim);
	    	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }
	    else
	    {
	    	printf("����  KF � id = 0xFF 0x11 ���������� \n");
	    	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }

	    //////////////////////////////////

	    char AC_kf_12[4];
	    char password[8];
	    AC_kf_12[0] = 0x0F;
	    AC_kf_12[1] = 0x0F;
	    AC_kf_12[2] = 0x00;
	    AC_kf_12[3] = 0xFF;


	    select(0xFF,0x012,numer_sim);
	    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	    {
	    	printf("������� ���� KF id = 0xFF 0x12 \n");
	    	create_kf(0x12,AC_kf_12,0x40,0x00,numer_sim);



	        password[0] = 0x8E;
	        password[1] = 0xD5;
	        password[2] = 0xD6;
	        password[3] = 0x3D;
	        password[4] = 0xBB;
	        password[5] = 0xA2;
	        password[6] = 0x21;
	        password[7] = 0x36;

	        load_key(password,0,numer_sim); // �������� ������ � KF FF 12

	    	printf("������� �� ���� DF id = 0x00 0x08 \n");
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }
	    else
	    {
	    	printf("����  KF � id = 0xFF 0x12 ���������� \n");
	    	printf("������� �� ���� DF id = 0x00 0x08 \n");
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }

	    //////////////////////////////////


	   char AC_kf_10[4];
	    char password_key[32];
	    AC_kf_10[0] = 0x2F;
	    AC_kf_10[1] = 0xFF;
	    AC_kf_10[2] = 0xF2;
	    AC_kf_10[3] = 0x2F;


	    select(0xFF,0x010,numer_sim);
	    if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	    {
	    	printf("������� ���� KF id = 0xFF 0x10 \n");
	    	create_kf(0x10,AC_kf_10,0x20,0x03,numer_sim);

	           password_key[0] = 0x8E;
	           password_key[1] = 0xD5;
	           password_key[2] = 0xD6;
	           password_key[3] = 0x3D;
	           password_key[4] = 0xBB;
	           password_key[5] = 0xA2;
	           password_key[6] = 0x21;
	           password_key[7] = 0x36;


	           password_key[8] = 0x8E;
	           password_key[9] = 0xD5;
	           password_key[10] = 0xD6;
	           password_key[11] = 0x3D;
	           password_key[12] = 0xBB;
	           password_key[13] = 0xA2;
	           password_key[14] = 0x21;
	           password_key[15] = 0x36;


	           password_key[16] = 0x8E;
	           password_key[17] = 0xD5;
	           password_key[18] = 0xD6;
	           password_key[19] = 0x3D;
	           password_key[20] = 0xBB;
	           password_key[21] = 0xA2;
	           password_key[22] = 0x21;
	           password_key[23] = 0x36;


	           password_key[24] = 0x8E;
	           password_key[25] = 0xD5;
	           password_key[26] = 0xD6;
	           password_key[27] = 0x3D;
	           password_key[28] = 0xBB;
	           password_key[29] = 0xA2;
	           password_key[30] = 0x21;
	           password_key[31] = 0x36;

	           load_key(password_key,1,numer_sim); // �������� ����� � KF FF 10


	    	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }
	    else
	    {
	    	printf("����  KF � id = 0xFF 0x10 ���������� \n");
	    	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id[0],id[1]);
	    	select(id[0],id[1],numer_sim);//������� ������� �� DF 0x00 0x08
	    }

	    //////////////////////////////////

	//*********����� C������� �������� ������� (������)********************


	//*********C������� �������� ������� (�����)********************

	   char id_left_df[2];
	   id_left_df[0] = 0x00;
	   id_left_df[1] = 0x00;
	   char AC_left_df = 0x00;


	   select(id_left_df[0],id_left_df[1],numer_sim);
	   if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	   {
	   	printf("������� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	   	create_df(id_left_df,AC_left_df,numer_sim);
	   }
	   else
	   {
	   	printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	   }

	   select(id_left_df[0],id_left_df[1],numer_sim);


	   char id_left_ef[2];
	   id_left_ef[0] = 0x00;
	   id_left_ef[1] = 0x01;
	   char size_left_ef[2];
	   size_left_ef[0]=0x00;
	   size_left_ef[1]=0x02;
	   char AC_left_ef = 0x44;



	   select(id_left_ef[0],id_left_ef[1],numer_sim);

	   if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	   {
	      printf("������� ���� EF id = 0x%02hhx 0x%02hhx \n",id_left_ef[0],id_left_ef[1]);
	      create_ef(size_left_ef,id_left_ef,AC_left_ef,0x00,numer_sim);
	      printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	      select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }
	   else
	   {
	      printf("����  EF � id = 0x%02hhx 0x%02hhx ���������� \n",id_left_ef[0],id_left_ef[1]);
	      printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	      select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }


	   char id_left_ef_2[2];
	   id_left_ef_2[0] = 0x00;
	   id_left_ef_2[1] = 0x02;
	   char size_left_ef_2[2];
	   size_left_ef_2[0]=0x00;
	   size_left_ef_2[1]=0x02;
	   char AC_left_ef_2 = 0x44;



	   select(id_left_ef_2[0],id_left_ef_2[1],numer_sim);

	   if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	   {
	      printf("������� ���� EF id = 0x%02hhx 0x%02hhx \n",id_left_ef_2[0],id_left_ef_2[1]);
	      create_ef(size_left_ef_2,id_left_ef_2,AC_left_ef_2,0x00,numer_sim);
	      printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	      select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }
	   else
	   {
	      printf("����  EF � id = 0x%02hhx 0x%02hhx ���������� \n",id_left_ef_2[0],id_left_ef_2[1]);
	      printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	      select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }



	   char id_left_ef_3[2];
	   id_left_ef_3[0] = 0x00;
	   id_left_ef_3[1] = 0x03;
	   char size_left_ef_3[2];
	   size_left_ef_3[0]=0x00;
	   size_left_ef_3[1]=0x02;
	   char AC_left_ef_3 = 0x44;



	   select(id_left_ef_3[0],id_left_ef_3[1],numer_sim);

	   if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	   {
	      printf("������� ���� EF id = 0x%02hhx 0x%02hhx \n",id_left_ef_3[0],id_left_ef_3[1]);
	      create_ef(size_left_ef_3,id_left_ef_3,AC_left_ef_3,0x00,numer_sim);
	      printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	      select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }
	   else
	   {
	      printf("����  EF � id = 0x%02hhx 0x%02hhx ���������� \n",id_left_ef_3[0],id_left_ef_3[1]);
	      printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	      select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }

	   char AC_kf_14[4];
	   AC_kf_14[0] = 0x33;
	   AC_kf_14[1] = 0x0F;
	   AC_kf_14[2] = 0xF3;
	   AC_kf_14[3] = 0xFF;

	   select(0xFF,0x014,numer_sim);
	   if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	   {
		   printf("������� ���� KF id = 0xFF 0x14 \n");
		   create_kf(0x14,AC_kf_14,0x40,0x00,numer_sim);
		   printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
		   select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }
	   else
	   {
		   printf("����  KF � id = 0xFF 0x14 ���������� \n");
		   printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
		   select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }

	   char AC_kf_13[4];
	   AC_kf_13[0] = 0x0F;
	   AC_kf_13[1] = 0x0F;
	   AC_kf_13[2] = 0x00;
	   AC_kf_13[3] = 0xFF;

	   select(0xFF,0x013,numer_sim);
	   if((cinterfacesmartcard.reciver_buffer[0] == 0x6A) && (cinterfacesmartcard.reciver_buffer[1] == 0x82))
	   {
	  	  printf("������� ���� KF id = 0xFF 0x13 \n");
	  	  create_kf(0x13,AC_kf_13,0x40,0x00,numer_sim);
	  	  printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	  	  select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }
	   else
	   {
	  	  printf("����  KF � id = 0xFF 0x13 ���������� \n");
	  	  printf("������� �� ���� DF id = 0x%02hhx 0x%02hhx \n",id_left_df[0],id_left_df[1]);
	  	  select(id_left_df[0],id_left_df[1],numer_sim);//������� ������� �� DF 0x00 0x08
	   }

	//*********����� C������� �������� ������� (�����)********************
	   return 0;
}

unsigned Start_ayntificate(char* serial_numer)
{
	 char id[2];
	 int i=0;
	 id[0] = 	0x00;
	 id[1] =	0x04;// 0x08;

	 serial_numer = read_serial_number(1);

	 select(id[0],id[1],1);
	 select(0xFF,0x12,1);

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


	 verify(password,0,1);

	 select(0xFF,0x10,1);

	 char password_key[32];

	 diversify_key(password_key,1);

	 save_div_key(0xFF,0x11,1);


	 /////////////////////////////////////////


	 select(id[0],id[1],0);
	 select(0xFF,0x12,0);


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


	 verify(password,0,0);

	 select(0xFF,0x10,0);


	 diversify_key(password_key,0);

	 save_div_key(0xFF,0x11,0);




	external_authenticate(internal_auth(get_challenge(0x08,0),1),0);

	select(id[0],id[1],0);
	select(0x00,0x05,0);

	char data[2];
	data[0] = 0xF3;
	data[1] = 0xA8;

	update_binary(data,0x02,0,0);

	return 0;
}

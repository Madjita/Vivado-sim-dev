/*
 * smartCard.h
 *
 *  Created on: 14 ����. 2016 �.
 *      Author: Admin
 */

#ifndef SMARTCARD_H_
#define SMARTCARD_H_
/**
 * @file smartCard.h
 * @author Alexey Ts
 * Library for working with smart cards developed with ISO 7816
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xscugic.h"
#include "type_data.h"
#include "sleep.h"
#include "xil_types.h"
#include "xil_exception.h"
#include "xplatform_info.h"
#include "xil_exception.h"

//-----------------------------------------XillFunctions------------------------------//

/**������ ���������� SmartCard*/
typedef ProgSmartCart;
typedef ProgSmartCart_1;
typedef ProgSmartCart_2;
/**��������� ����������� ����������*/
XScuGic InterruptController;
/**��������� ��� ������ ����������� � smartCard*/
cInterfaceSmartcard cinterfacesmartcard;
/**������� ����� ip ���� ������� ���������*/
static int baseaddress= XPAR_HEAD_IP_0_BASEADDR;
/**������� ����� ip ���� ����� ���������*/
static int baseaddress_smoll_card=XPAR_HEAD_IP_1_BASEADDR;

/**���������� ���������� smartCard**/
void SetSmartCart();
/**���������� ���������� ����������� SmartCard*/
void DetectSmartCart();
/**���������� ���������� (���������� ����������)**/
int ScuGicInterrupt_Init(u16 DeviceId,ProgSmartCart *pProgSmartCart, ProgSmartCart_1 *pProgSmartCart_1);
/**���������� ����������(�������������)**/
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
/**��������������� ��������� ������ SmartCard**/
unsigned intcial();


//----------------------------SmartCardFunctions-----------------------//
//��� ���������� ���������� ������������� ������� ������������ � reciveBuffer ��������� cinterfacesmartcard

/**
 * ��������� ������ APDU (��. ���� 7816-4)
 * **/

/**��������� �������� ����� ����� **/
char*  read_serial_number(int numer_sim);
/**��������� ��������� ���������������� ����� **/
unsigned test_result(int numer_sim);
/**������������ �������� ������� **/
unsigned test_fs();

//����� �����
unsigned select(char tk_1, char tk_2,int numer_sim);

unsigned activate(char tk_1, char tk_2);

unsigned delete(char tk_1, char tk_2);

//�������������
unsigned restore();

unsigned create_ef(char* size,char* id,char AC, char B18,int numer_sim);

unsigned update_binary(char* data,char size_ef,int kod,int numer_sim);

char* read_binary(char size_ef,int kod,int numer_sim);

unsigned diversify_key(char* key,int numer_sim);

unsigned save_div_key(char tk_1, char tk_2,int numer_sim);


/**��������� ��������� ����� ������� ���������� **/
char* get_challenge(char L,int numer_sim);

unsigned update_key(char* key,int number,int numer_sim);

/**��������� ������������ Smartcard**/
char check_rom(char* key,int numer_sim);
/**���������� �������������� ������ ������������� ����� � �������� ���**/
unsigned write_tk_pl(int numer_sim);
/**������� ������ ����, ��������� ����� � ����� ������������**/
unsigned create_mf(int numer_sim);
/**��������� ������� ���������� � �����(����� �������� ��� �������� ����� ��� ������� ��.����������� ������������ �� ���)**/
char* get_response(char size, int numer_sim);
/**���������� ������������ ���� � ������(������������ ������� ���������� �������� ���������� ������� verify_tk() )**/
unsigned write_tk(int numer_sim);
/**���������� �������� ���������������� ������������� ����� � ��� ��� ������� �� �����**/
unsigned verify_tk(char tk_1, char tk_2, char tk_3, char tk_4, int numer_sim); //, unsigned tk_5, unsigned tk_6, unsigned tk_7, unsigned tk_8


unsigned verify(char* key,int number, int numer_sim); //(char tk_1, char tk_2, char tk_3, char tk_4);


char* get_session_key(char* mass, int numer_sim);

unsigned load_key(char* key, int number, int numer_sim);

unsigned lock_key(int numer_sim);

/**������� ����� ������ ����� ����� � ������� �����*/
unsigned create_df(char* id,char AC, int numer_sim);
/**���������� ���������� ��������������, ����������� ����������� �������� �������������*/
char* internal_auth(char* random,char sim_number);

unsigned external_authenticate(char* kriptogramma, int numer_sim);

/**������� KF ������ ����� �����*/
unsigned create_kf(char id,char* AC, char B18, char B19, int numer_sim);

unsigned unlock_key(int numer_sim);

//�������� �������� ������� �� �������� (������)
unsigned Load_FileSystem(int numer_sim);

//�������� �������� ������� �� �������� (�����)
unsigned Load_FileSystem_new(char* password_KF12,char* password_key_KF10,int numer_sim);

unsigned Start_ayntificate(char* serial_numer);

char* Crypt(char* data,char P1,char P2,char Lce, int numer_sim);

unsigned transmit_crypt(char* data,int size, int message);



#endif /* SMARTCARD_H_ */

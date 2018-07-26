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

/**��������� ����������� ����������*/
XScuGic InterruptController;
/**��������� ��� ������ ����������� � smartCard*/
cInterfaceSmartcard cinterfacesmartcard;
/**������� ����� ip ���� ������� ���������*/
static int baseaddress=0x400d0000;
/**������� ����� ip ���� ����� ���������*/
static int baseaddress_smoll_card=0x43C10000;

/**���������� ���������� smartCard**/
void SetSmartCart();
/**���������� ���������� ����������� SmartCard*/
void DetectSmartCart();
/**���������� ���������� (���������� ����������)**/
int ScuGicInterrupt_Init(u16 DeviceId,ProgSmartCart *pProgSmartCart, ProgSmartCart_1 *pProgSmartCart_1);
/**���������� ����������(�������������)**/
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
/**��������������� ��������� ������ SmartCard**/
unsigned intcial(char number_cart_rider);


//----------------------------SmartCardFunctions-----------------------//
//��� ���������� ���������� ������������� ������� ������������ � reciveBuffer ��������� cinterfacesmartcard

/**
 * ��������� ������ APDU (��. ���� 7816-4)
 * **/

/**��������� �������� ����� ����� **/
unsigned  read_serial_number(char sim_number);
/**��������� ��������� ���������������� ����� **/
unsigned test_result(char sim_number);
/**��������� ��������� ����� ������� ���������� **/
unsigned get_challenge(char sim_number);
/**��������� ������������ Smartcard**/
unsigned check_rom(char sim_number);
/**���������� �������������� ������ ������������� ����� � �������� ���**/
unsigned write_tk_pl(char sim_number);
/**������� ������ ����, ��������� ����� � ����� ������������**/
unsigned create_mf(char sim_number);
/**��������� ������� ���������� � �����(����� �������� ��� �������� ����� ��� ������� ��.����������� ������������ �� ���)**/
unsigned get_response(char sim_number);
/**���������� ������������ ���� � ������(������������ ������� ���������� �������� ���������� ������� verify_tk() )**/
unsigned write_tk(char sim_number);
/**���������� �������� ���������������� ������������� ����� � ��� ��� ������� �� �����**/
unsigned verify_tk(char sim_number, unsigned tk_1, unsigned tk_2, unsigned tk_3, unsigned tk_4, unsigned tk_5, unsigned tk_6, unsigned tk_7, unsigned tk_8);
/**��������� �������� �������**/
unsigned test_fs(char sim_number);
/**������� ����� ������ ����� ����� � ������� �����*/
unsigned create_df(char sim_number);
/**���������� ���������� ��������������, ����������� ����������� �������� �������������*/
unsigned internal_auth(char sim_number);
/**������� KF ������ ����� �����*/
unsigned create_kf(char sim_number);


#endif /* SMARTCARD_H_ */

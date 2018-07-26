/*
 * smartCard.h
 *
 *  Created on: 14 сент. 2016 г.
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

/**объект прерываний SmartCard*/
typedef ProgSmartCart;
typedef ProgSmartCart_1;

/**Структура контроллера прерываний*/
XScuGic InterruptController;
/**структура для обмена ингформацие с smartCard*/
cInterfaceSmartcard cinterfacesmartcard;
/**базовый адрес ip ядра большой картридер*/
static int baseaddress=0x400d0000;
/**базовый адрес ip ядра малый картридер*/
static int baseaddress_smoll_card=0x43C10000;

/**Обработчик прерываний smartCard**/
void SetSmartCart();
/**Обработчик прерывания обнаружения SmartCard*/
void DetectSmartCart();
/**Контроллер прерываний (объявление прерываний)**/
int ScuGicInterrupt_Init(u16 DeviceId,ProgSmartCart *pProgSmartCart, ProgSmartCart_1 *pProgSmartCart_1);
/**контроллер прерываний(Инициализация)**/
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
/**предварительная настройка работы SmartCard**/
unsigned intcial(char number_cart_rider);


//----------------------------SmartCardFunctions-----------------------//
//Все результаты выполнения нижеописанных функций записываются в reciveBuffer структуры cinterfacesmartcard

/**
 * Структура ответа APDU (см. ГОСТ 7816-4)
 * **/

/**Считывает серийный номер карты **/
unsigned  read_serial_number(char sim_number);
/**Считывает результат самотестирования карты **/
unsigned test_result(char sim_number);
/**Считывает случайное число которое выработала **/
unsigned get_challenge(char sim_number);
/**Считывает имитовставку Smartcard**/
unsigned check_rom(char sim_number);
/**производит первоначальную запись транспортного ключа в масочное ПЗУ**/
unsigned write_tk_pl(char sim_number);
/**Создает Мастер файл, переводит карту в режим эксплуатации**/
unsigned create_mf(char sim_number);
/**считывает текущую информацию о карте(также получает доп сведенья после опр комманд см.руководство программиста ОС РИК)**/
unsigned get_response(char sim_number);
/**Записывает транспортный ключ в ЭСППЗУ(обязательное условия выполнения успешное выполнения функции verify_tk() )**/
unsigned write_tk(char sim_number);
/**Производит проверку предоставленного транспортного ключа с тем что записан на карте**/
unsigned verify_tk(char sim_number, unsigned tk_1, unsigned tk_2, unsigned tk_3, unsigned tk_4, unsigned tk_5, unsigned tk_6, unsigned tk_7, unsigned tk_8);
/**Тестирует файловую систему**/
unsigned test_fs(char sim_number);
/**Создает папку внутри смарт карты в текущей папке*/
unsigned create_df(char sim_number);
/**Производит внутреннюю аутентификацию, результатом выполнгения является криптогнрамма*/
unsigned internal_auth(char sim_number);
/**Создает KF внутри смарт карты*/
unsigned create_kf(char sim_number);


#endif /* SMARTCARD_H_ */

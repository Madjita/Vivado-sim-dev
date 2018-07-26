/*
 * type_data.h
 *
 *  Created on: 19 июля 2016 г.
 *      Author: Admin
 */

#ifndef TYPE_DATA_H_
#define TYPE_DATA_H_

char ok;
char data;
char mode;
char reciver_buffer[1024];
unsigned index_rec_buff;

typedef struct
{
    char  TS;
    char  T0;
    char  TA[15];
    char  EN_TA[15];
    char  TB[15];
    char  EN_TB[15];
    char  TC[15];
    char  EN_TC[15];
    char  TD[15];
    char  EN_TD[15];
    char  T[16];
    char  protocol[16];
    char  TCK;
    char  EN_TCK;
}cInfoSmartcard;//не используется


typedef struct // структура содержащая оперативную информацию, глобальная
{
	char reciver_buffer[1024];//буфер приёмника
	char transmit_buffer[1024];// буфер передатчика
	char ok; //переменая обозначающая если 1 то действие выполнено, о действие выполняется
	char initcil;// переменная обозначающая что  обрабатываются команды инициализации смарт карты
	char number_read_byte;// количество принятых байт с нулевого
	unsigned index_rec_buff;// текущий индекс в буфере reciver_buffer
}cInterfaceSmartcard;


typedef struct
{
    unsigned start;//вкл
    unsigned stop;//выкл
    unsigned rd_wr;// 1 приём, 0 передача на линии IO
    unsigned step;// количество принема
    unsigned irq_rst;// сброс прерывания
    unsigned number_wr_byte;// количество переданных байт
    unsigned on_transmite;//вкл передатчик
    unsigned on_reciver;//вкл приёмник
    unsigned select_simk;//выбрана симка
}Ccomanda;// структура для формирования команды ip ядру

void clean_cInterfaceSmartcard(cInterfaceSmartcard *pcInterfaceSmartcard);


void CleancInfoSmartcard(cInfoSmartcard *pcInfoSmartcard);
void InicialSmartCard(cInfoSmartcard *pcInfoSmartcard);
void start(Ccomanda *pCcomanda,cInterfaceSmartcard *pcInterfaceSmartcard, char number_cart_rider);
void stop(Ccomanda *pCcomanda, char number_cart_rider);
void write_byte(Ccomanda *pCcomanda,char Number_write,cInterfaceSmartcard *pcInterfaceSmartcard, char number_cart_rider);
void invert_byte(int *a);
#endif /* TYPE_DATA_H_ */

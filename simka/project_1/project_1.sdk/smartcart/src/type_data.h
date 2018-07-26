/*
 * type_data.h
 *
 *  Created on: 19 ���� 2016 �.
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
}cInfoSmartcard;//�� ������������


typedef struct // ��������� ���������� ����������� ����������, ����������
{
	char reciver_buffer[1024];//����� ��������
	char transmit_buffer[1024];// ����� �����������
	char ok; //��������� ������������ ���� 1 �� �������� ���������, � �������� �����������
	char initcil;// ���������� ������������ ���  �������������� ������� ������������� ����� �����
	char number_read_byte;// ���������� �������� ���� � ��������
	unsigned index_rec_buff;// ������� ������ � ������ reciver_buffer
}cInterfaceSmartcard;


typedef struct
{
    unsigned start;//���
    unsigned stop;//����
    unsigned rd_wr;// 1 ����, 0 �������� �� ����� IO
    unsigned step;// ���������� �������
    unsigned irq_rst;// ����� ����������
    unsigned number_wr_byte;// ���������� ���������� ����
    unsigned on_transmite;//��� ����������
    unsigned on_reciver;//��� �������
    unsigned select_simk;//������� �����
}Ccomanda;// ��������� ��� ������������ ������� ip ����

void clean_cInterfaceSmartcard(cInterfaceSmartcard *pcInterfaceSmartcard);


void CleancInfoSmartcard(cInfoSmartcard *pcInfoSmartcard);
void InicialSmartCard(cInfoSmartcard *pcInfoSmartcard);
void start(Ccomanda *pCcomanda,cInterfaceSmartcard *pcInterfaceSmartcard, char number_cart_rider);
void stop(Ccomanda *pCcomanda, char number_cart_rider);
void write_byte(Ccomanda *pCcomanda,char Number_write,cInterfaceSmartcard *pcInterfaceSmartcard, char number_cart_rider);
void invert_byte(int *a);
#endif /* TYPE_DATA_H_ */

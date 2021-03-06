#include "type_data.h"
#include "xil_io.h"
#include "sleep.h"
#include "xparameters.h"

void CleancInfoSmartcard(cInfoSmartcard *pcInfoSmartcard)
{
    int i;
    pcInfoSmartcard->TS=0;
    pcInfoSmartcard->T0=0;
    for(i=0;i<16;i++)
    {
        pcInfoSmartcard->TA[i]=0;
        pcInfoSmartcard->EN_TA[i]=0;
        pcInfoSmartcard->TB[i]=0;
        pcInfoSmartcard->EN_TB[i]=0;
        pcInfoSmartcard->TC[i]=0;
        pcInfoSmartcard->EN_TC[i]=0;
        pcInfoSmartcard->TD[i]=0;
        pcInfoSmartcard->EN_TD[i]=0;
        pcInfoSmartcard->protocol[i]=0;
        pcInfoSmartcard->T[i]=0;
    }
     pcInfoSmartcard->TCK=0;
     pcInfoSmartcard->EN_TCK=0;
}


void start(Ccomanda *pCcomanda,cInterfaceSmartcard *pcInterfaceSmartcard, char number_cart_rider) //������� ������������� ����������
{
    int comanda;
    u32 address;
    if (number_cart_rider==0)
    {
    	address=XPAR_HEAD_IP_0_BASEADDR;
    	Xil_Out32(XPAR_SWITCH_IO_0_S00_AXI_BASEADDR,5);
    }
    else
    {
    	address=XPAR_HEAD_IP_1_BASEADDR;
    	Xil_Out32(XPAR_SWITCH_IO_0_S00_AXI_BASEADDR,3);
    }
    pcInterfaceSmartcard->initcil=1;
    pCcomanda->start=1;
    pCcomanda->stop=0;
    pCcomanda->rd_wr=1;
    pCcomanda->step=0;
    pCcomanda->irq_rst=0;
    pCcomanda->number_wr_byte=0;
    pCcomanda->on_transmite=0;
    pCcomanda->on_reciver=1;
    comanda=(pCcomanda->start<<0)|(pCcomanda->stop<<1)|(pCcomanda->rd_wr<<2)|(pCcomanda->step<<3)|(pCcomanda->irq_rst<<12)|(pCcomanda->number_wr_byte<<13)|(pCcomanda->on_transmite<<19)|(pCcomanda->on_reciver<<20);
    Xil_Out32(address+0x100,comanda);
}

void stop(Ccomanda *pCcomanda, char number_cart_rider) //������� ���������������� ����������
{
		int comanda,address;
		if (number_cart_rider==0)
		{
		   address=XPAR_HEAD_IP_0_BASEADDR;
		   Xil_Out32(XPAR_SWITCH_IO_0_S00_AXI_BASEADDR,5);
		}
		else
		{
		   address=XPAR_HEAD_IP_1_BASEADDR;
		   Xil_Out32(XPAR_SWITCH_IO_0_S00_AXI_BASEADDR,3);
		}
		pCcomanda->start=0;
	    pCcomanda->stop=1;
	    pCcomanda->rd_wr=0;
	    pCcomanda->step=0;
	    pCcomanda->irq_rst=0;
	    pCcomanda->number_wr_byte=0;
	    pCcomanda->on_transmite=0;
	    pCcomanda->on_reciver=0;
	    comanda=(pCcomanda->start<<0)|(pCcomanda->stop<<1)|(pCcomanda->rd_wr<<2)|(pCcomanda->step<<3)|(pCcomanda->irq_rst<<12)|(pCcomanda->number_wr_byte<<13)|(pCcomanda->on_transmite<<19)|(pCcomanda->on_reciver<<20);
	    Xil_Out32(address+0x100,comanda);
}


void write_byte(Ccomanda *pCcomanda,char Number_write,cInterfaceSmartcard *pcInterfaceSmartcard, char number_cart_rider)// ������� �������� ����, ��� �������� ����� Number_write ������� � 1
{
    int comanda,address;
    int i;
    if (number_cart_rider==0)
    {
      address=XPAR_HEAD_IP_0_BASEADDR;
      Xil_Out32(XPAR_SWITCH_IO_0_S00_AXI_BASEADDR,7);
    }
    else
    {
      address=XPAR_HEAD_IP_1_BASEADDR;
      Xil_Out32(XPAR_SWITCH_IO_0_S00_AXI_BASEADDR,3);
    }

    i =0;
    for(i=0;i<Number_write;i++)
    {
    	Xil_Out32(address+0x104+i*4,pcInterfaceSmartcard->transmit_buffer[i]);
    }

    Xil_Out32(address+0x228,50000000);
    pCcomanda->start=1;
    pCcomanda->stop=0;
    pCcomanda->rd_wr=0;
    pCcomanda->step=0;
    pCcomanda->irq_rst=0;
    pCcomanda->number_wr_byte=Number_write-1;
    pCcomanda->on_transmite=1;
    pCcomanda->on_reciver=0;
    comanda=(pCcomanda->start<<0)|(pCcomanda->stop<<1)|(pCcomanda->rd_wr<<2)|(pCcomanda->step<<3)|(pCcomanda->irq_rst<<12)|(pCcomanda->number_wr_byte<<13)|(pCcomanda->on_transmite<<19)|(pCcomanda->on_reciver<<20);
    Xil_Out32(address+0x100,comanda);//+
}



void clean_cInterfaceSmartcard(cInterfaceSmartcard *pcInterfaceSmartcard)
{
	int i;
	pcInterfaceSmartcard->initcil=0;
	pcInterfaceSmartcard->ok=0;
	pcInterfaceSmartcard->number_read_byte=0;
	pcInterfaceSmartcard->index_rec_buff=0;
	for(i=0;i<1024;i++)
	{
		pcInterfaceSmartcard->reciver_buffer[i]=0;
		pcInterfaceSmartcard->transmit_buffer[i]=0;
	}

}


void invert_byte(int *a)// ������� ���������������� ����
{
	int i;
	int b,c;
	int xt;
	c=*a;
	b=0;
	for(i=0;i<8;i++)
	{
		xt=c&((128>>i)&0xFF);
		xt=(xt>>(7-i))<<i;
		b=b+xt;
	}
	*a=b;
}

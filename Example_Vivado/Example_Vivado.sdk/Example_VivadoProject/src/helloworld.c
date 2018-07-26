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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "platform.h"

#include "xparameters.h"
#include "xgpio.h"

/************************** Constant Definitions *****************************/

#define LED 0x00   /* Assumes bit 0 of GPIO is connected to an LED  */


#define GPIO_EXAMPLE_DEVICE_ID  XPAR_AXI_GPIO_0_DEVICE_ID

#define LED_DELAY     10000000  //1000000

#define LED_CHANNEL 1


#ifdef PRE_2_00A_APPLICATION

#define XGpio_SetDataDirection(InstancePtr, DirectionMask) \
		XGpio_SetDataDirection(InstancePtr, LED_CHANNEL, DirectionMask)

#define XGpio_DiscreteRead(InstancePtr) \
		XGpio_DiscreteRead(InstancePtr, LED_CHANNEL)

#define XGpio_DiscreteWrite(InstancePtr, Mask) \
		XGpio_DiscreteWrite(InstancePtr, LED_CHANNEL, Mask)

#define XGpio_DiscreteSet(InstancePtr, Mask) \
		XGpio_DiscreteSet(InstancePtr, LED_CHANNEL, Mask)

#endif

XGpio Gpio; /* The Instance of the GPIO Driver */


int main()
{
	init_platform();

	print("Hello World\n\r");

	u32 Data;
	int Status;
	int point=1;
	bool left = true;
	volatile int Delay;

	/*
	 * Initialize the GPIO driver
	 */
	Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, ~LED);



	while (1) {


		//Data = XGpio_GetDataDirection(&Gpio, LED_CHANNEL); // Read 0xFF
		//Data = XGpio_DiscreteRead(&Gpio, LED_CHANNEL);

		xil_printf("Data = NULL | %d\n",point);

		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, point);


		for (Delay = 0; Delay < LED_DELAY; Delay++);

		XGpio_DiscreteSet(&Gpio, LED_CHANNEL, LED);

		for (Delay = 0; Delay < LED_DELAY; Delay++);

		if(point == 128 || point == 1)
		{
			if(point == 1)
			{
				left = true;
				point *= 0x02;
			}
			else
			{
				left = false;
				point /= 0x02;
			}

		}
		else
		{
			if(left)
				point *= 0x02;
			else
				point /= 0x02;
		}

	}

	cleanup_platform();
	return XST_SUCCESS;
}
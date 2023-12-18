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
#include "platform.h"
#include "xil_printf.h"
#include "xspips.h"
#include "xspi.h"
#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define QSPI_DEVICE_ID		XPAR_SPI_0_DEVICE_ID

static XSpiPs SpiInstance;
static XSpi 	Spi;

u16 TxBuffer[4];
u16 RxBuffer[4];

int main()
{
	XSpiPs_Config *SpiConfig;
	int Status,i;
	init_platform();
	int NumBytesRcvd;

    printf("www.adiuvoengineering.com\n\r");

	SpiConfig = XSpiPs_LookupConfig(SPI_DEVICE_ID);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}

	Status = XSpiPs_CfgInitialize(&SpiInstance, SpiConfig,SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XSpiPs_SelfTest(&SpiInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XSpiPs_SetOptions(&SpiInstance, XSPIPS_MASTER_OPTION | XSPIPS_FORCE_SSELECT_OPTION);

	XSpiPs_SetClkPrescaler(&SpiInstance, XSPIPS_CLK_PRESCALE_64);


	XSpi_Initialize( &Spi, QSPI_DEVICE_ID );
    Status = XSpi_SelfTest( &Spi );
    if (Status != XST_SUCCESS) {
    	return XST_FAILURE;
    }
    XSpi_Reset(&Spi);


    XSpi_Start(&Spi);
    XSpi_IntrGlobalDisable(&Spi);



	TxBuffer[0] = 0xa0a0;
	TxBuffer[1] = 0x0505;
	TxBuffer[2] = 0xa0a0;
	TxBuffer[3] = 0x0505;

	while (1) {
			XSpiPs_SetSlaveSelect(&SpiInstance, 0x00);
			XSpiPs_PolledTransfer(&SpiInstance, (u8*)&TxBuffer, (u8*)&RxBuffer, 8);

			NumBytesRcvd = 0;
			//count++;
			XSpi_SetControlReg(&Spi,0x60);
			XSpi_WriteReg((Spi.BaseAddr), XSP_DTR_OFFSET, TxBuffer[0]);
			XSpi_WriteReg((Spi.BaseAddr), XSP_DTR_OFFSET, TxBuffer[1]);
			XSpi_SetControlReg(&Spi,0x02);
			XSpi_WriteReg((Spi.BaseAddr), XSP_DTR_OFFSET, TxBuffer[2]);
			XSpi_WriteReg((Spi.BaseAddr), XSP_DTR_OFFSET, TxBuffer[3]);

			while (!(XSpi_ReadReg(Spi.BaseAddr, XSP_SR_OFFSET) & XSP_SR_TX_EMPTY_MASK));

			while ((XSpi_ReadReg(Spi.BaseAddr, XSP_SR_OFFSET) & 	XSP_SR_RX_EMPTY_MASK) == 0) {
				RxBuffer[NumBytesRcvd++] = XSpi_ReadReg((Spi.BaseAddr), XSP_DRR_OFFSET);
			}

			for(i=0;i<4;i++){
				printf("rx %04x \n\r", RxBuffer[i]);
			}
			//usleep(1000000);
	}


    cleanup_platform();
    return 0;
}

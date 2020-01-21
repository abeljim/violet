/*
 * Copyright 2012 Michael Ossmann
 * Copyright 2014 Jared Boone <jared@sharebrained.com>
 *
 * This file is part of HackRF.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef __RFFC5072_SPI_H
#define __RFFC5072_SPI_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

// all pins are in wiringPi pin number
typedef struct {
	int gpio_enx;
	int gpio_clock;
	int gpio_data;
} rffc5072_pin_t;

void rffc5072_spi_init(rffc5072_pin_t* const rffc5072_pin);
void rffc5072_spi_transfer(rffc5072_pin_t* const rffc5072_pin, uint16_t data[2]);

#ifdef __cplusplus
}
#endif

#endif // __RFFC5072_SPI_H

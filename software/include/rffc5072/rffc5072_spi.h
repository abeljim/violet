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

#ifndef __RFFC5071_SPI_H
#define __RFFC5071_SPI_H

#include <stdint.h>

// all pins are in wiringPi pin number
typedef struct {
	int gpio_select;
	int gpio_clock;
	int gpio_data;
} rffc5071_pin_t;

void rffc5071_spi_init(rffc5071_pin_t* const rffc5071_pin);
void rffc5071_spi_transfer(rffc5071_pin_t* const rffc5071_pin, uint16_t data[2]);

#endif // __RFFC5071_SPI_H

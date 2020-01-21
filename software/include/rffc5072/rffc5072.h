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

#ifndef __RFFC5072_H
#define __RFFC5072_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#include "rffc5072/rffc5072_spi.h"

/* 31 registers, each containing 16 bits of data. */
#define RFFC5072_NUM_REGS 31

typedef struct {
    rffc5072_pin_t pin;

	uint16_t regs[RFFC5072_NUM_REGS];
	uint32_t regs_dirty;
} rffc5072_driver_t;

/* Initialize chip. Call _setup() externally, as it calls _init(). */
extern void rffc5072_init(rffc5072_driver_t* const drv);
extern void rffc5072_setup(rffc5072_driver_t* const drv);

/* Read a register via SPI. Save a copy to memory and return
 * value. Discard any uncommited changes and mark CLEAN. */
extern uint16_t rffc5072_reg_read(rffc5072_driver_t* const drv, uint8_t r);

/* Write value to register via SPI and save a copy to memory. Mark
 * CLEAN. */
extern void rffc5072_reg_write(rffc5072_driver_t* const drv, uint8_t r, uint16_t v);

/* Write all dirty registers via SPI from memory. Mark all clean. Some
 * operations require registers to be written in a certain order. Use
 * provided routines for those operations. */
extern void rffc5072_regs_commit(rffc5072_driver_t* const drv);

/* Set frequency (MHz). */
extern uint64_t rffc5072_set_frequency(rffc5072_driver_t* const drv, uint16_t mhz);

/* Set up rx only, tx only, or full duplex. Chip should be disabled
 * before _tx, _rx, or _rxtx are called. */
extern void rffc5072_pin_tx(rffc5072_driver_t* const drv);
extern void rffc5072_rx(rffc5072_driver_t* const drv);
extern void rffc5072_rxtx(rffc5072_driver_t* const drv);
extern void rffc5072_enable(rffc5072_driver_t* const drv);
extern void rffc5072_disable(rffc5072_driver_t* const drv);

extern void rffc5072_set_gpo(rffc5072_driver_t* const drv, uint8_t);

#ifdef __cplusplus
}
#endif

#endif // __RFFC5072_H

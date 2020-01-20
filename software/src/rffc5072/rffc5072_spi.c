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

#include <stdbool.h>
#include <stddef.h>
#include <wiringPi.h>
#include "rffc5072/rffc5072_spi.h"

static void gpio_input(const int pin) {
    pinMode(pin, INPUT);
}

static void gpio_output(const int pin) {
    pinMode(pin, OUTPUT);
}

static bool gpio_read(const int pin) {
    return digitalRead(pin);
}

static void gpio_write(const int pin, const bool bit) {
    digitalWrite(pin, bit);
}

static void gpio_set(const int pin) {
    digitalWrite(pin, 1);
}

static void gpio_clear(const int pin) {
    digitalWrite(pin, 0);
}

static void rffc5071_spi_target_select(rffc5071_pin_t* const rffc5071_pin) {
	gpio_clear(rffc5071_pin->gpio_select);
}

static void rffc5071_spi_target_unselect(rffc5071_pin_t* const rffc5071_pin) {
	gpio_set(rffc5071_pin->gpio_select);
}

static void rffc5071_spi_direction_out(rffc5071_pin_t* const rffc5071_pin) {
	gpio_output(rffc5071_pin->gpio_data);
}

static void rffc5071_spi_direction_in(rffc5071_pin_t* const rffc5071_pin) {
	gpio_input(rffc5071_pin->gpio_data);
}

static void rffc5071_spi_data_out(rffc5071_pin_t* const rffc5071_pin, const bool bit) {
	gpio_write(rffc5071_pin->gpio_data, bit);
}

static bool rffc5071_spi_data_in(rffc5071_pin_t* const rffc5071_pin) {
	return gpio_read(rffc5071_pin->gpio_data);
}

static void rffc5071_spi_bus_init(rffc5071_pin_t* const rffc5071_pin) {
	// scu_pinmux(SCU_MIXER_SCLK, SCU_GPIO_FAST | SCU_CONF_FUNCTION4);
	// scu_pinmux(SCU_MIXER_SDATA, SCU_GPIO_FAST);

	gpio_output(rffc5071_pin->gpio_clock);
	rffc5071_spi_direction_out(rffc5071_pin);

	gpio_clear(rffc5071_pin->gpio_clock);
	gpio_clear(rffc5071_pin->gpio_data);
}

static void rffc5071_spi_target_init(rffc5071_pin_t* const rffc5071_pin) {
	/* Configure GPIO pins. */
	// scu_pinmux(SCU_MIXER_ENX, SCU_GPIO_FAST);
	// scu_pinmux(SCU_MIXER_RESETX, SCU_GPIO_FAST);

	/* Set GPIO pins as outputs. */
	gpio_output(rffc5071_pin->gpio_select);

	/* set to known state */
	rffc5071_spi_target_unselect(rffc5071_pin);
}

void rffc5071_spi_init(rffc5071_pin_t* const rffc5071_pin) {
	rffc5071_spi_bus_init(rffc5071_pin);
	rffc5071_spi_target_init(rffc5071_pin);
}

static void rffc5071_spi_serial_delay(rffc5071_pin_t* const rffc5071_pin) {
	(void)rffc5071_pin;
	__asm__("nop");
}

static void rffc5071_spi_sck(rffc5071_pin_t* const rffc5071_pin) {
	rffc5071_spi_serial_delay(rffc5071_pin);
	gpio_set(rffc5071_pin->gpio_clock);

	rffc5071_spi_serial_delay(rffc5071_pin);
	gpio_clear(rffc5071_pin->gpio_clock);
}

static uint32_t rffc5071_spi_exchange_bit(rffc5071_pin_t* const rffc5071_pin, const uint32_t bit) {
	rffc5071_spi_data_out(rffc5071_pin, bit);
	rffc5071_spi_sck(rffc5071_pin);
	return rffc5071_spi_data_in(rffc5071_pin) ? 1 : 0;
}

static uint32_t rffc5071_spi_exchange_word(rffc5071_pin_t* const rffc5071_pin, const uint32_t data, const size_t count) {
	size_t bits = count;
	const uint32_t msb = 1UL << (count - 1);
	uint32_t t = data;

	while (bits--) {
		t = (t << 1) | rffc5071_spi_exchange_bit(rffc5071_pin, t & msb);
	}

	return t & ((1UL << count) - 1);
}

/* SPI register read.
 *
 * Send 9 bits:
 *   first bit is ignored,
 *   second bit is one for read operation,
 *   next 7 bits are register address.
 * Then receive 16 bits (register value).
 */
/* SPI register write
 *
 * Send 25 bits:
 *   first bit is ignored,
 *   second bit is zero for write operation,
 *   next 7 bits are register address,
 *   next 16 bits are register value.
 */
void rffc5071_spi_transfer(rffc5071_pin_t* const rffc5071_pin, uint16_t data[2]) {
	const bool direction_read = (data[0] >> 7) & 1;

	/*
	 * The device requires two clocks while ENX is high before a serial
	 * transaction.  This is not clearly documented.
	 */
	rffc5071_spi_sck(rffc5071_pin);
	rffc5071_spi_sck(rffc5071_pin);

	rffc5071_spi_target_select(rffc5071_pin);
	data[0] = rffc5071_spi_exchange_word(rffc5071_pin, data[0], 9);

	if( direction_read ) {
		rffc5071_spi_direction_in(rffc5071_pin);
		rffc5071_spi_sck(rffc5071_pin);
	}
	data[1] = rffc5071_spi_exchange_word(rffc5071_pin, data[1], 16);

	rffc5071_spi_serial_delay(rffc5071_pin);
	rffc5071_spi_target_unselect(rffc5071_pin);
	rffc5071_spi_direction_out(rffc5071_pin);

	/*
	 * The device requires a clock while ENX is high after a serial
	 * transaction.  This is not clearly documented.
	 */
	rffc5071_spi_sck(rffc5071_pin);
}
/*
 *	This set_parity_print header  
 *	defines a routine designed to 
 *	compute and to set the parity 
 *	bit for a string of 
 *	characters, then output these 
 *	characters to the standard 
 *	output in hexadecimal form.
 *	Copyright (C) 1989-2089 Sergey Sergeevich Tsybanov 
 *
 *	This set_parity_print program 
 *	is free software: you can 
 *	redistribute it and/or modify 
 *	it under the terms of the 
 *	GNU Affero General Public 
 *	License as published by the 
 *	Free Software Foundation, 
 *	either version 3 of the 
 *	License, or (at your option) 
 *	any later version.
 *
 *	This set_parity_print program 
 *	is distributed in the hope 
 *	that it will be useful, but 
 *	WITHOUT ANY WARRANTY; 
 *	without even the implied 
 *	warranty of MERCHANTABILITY 
 *	or FITNESS FOR A PARTICULAR 
 *	PURPOSE. See the GNU Affero 
 *	General Public License 
 *	for more details.
 *
 *	You should have received 
 *	a copy of the GNU Affero 
 *	General Public License 
 *	along with this 
 *	set_parity_print program. 
 *	If not, see 
 *	<https://www.gnu.org/licenses/>.
 */

#ifndef PARITY_H

#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#define PARITY_H

/*
 *	The function setParityPrint first 
 *	computes and sets the parity bit 
 *	for the set of characters in the 
 *	buffer and prints the resulting 
 *	characters in hexadecimal form. 
 *	The function takes a character 
 *	pointer to a constant address of 
 *	a character pointer and a 
 *	constant unsigned long as 
 *	arguments. The function returns 
 *	the character '\x00' on failure. 
 *	The function returns the 
 *	character '\x01' on success.
 *	 
 */
char setParityPrint( char **const buf, 
			const unsigned long length);

#endif
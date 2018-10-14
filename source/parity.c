/*
 *	This set_parity_print program 
 *	implements a routine designed 
 *	to compute and to set the 
 *	parity bit for a string of 
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

#include "parity.h"

char setParityPrint( char **const buf, 
			const unsigned long length) {
	/*
	 *	Check for the valid length.
	 */
	if ( length < 1ULL) {
		return '\x00';
	}

	/*
	 *	Temporary variable 
	 *	and pointer initializations.
	 */
	char *newBuffer;
	unsigned long i;
	unsigned long parityCount = 0ULL;

	/*
	 *	Allocate memory for a new 
	 *	buffer including the set bit.
	 */
	if ( !( newBuffer = ( char*) malloc( 
		( length + 1ULL) * sizeof( char)))) {
		return '\x00';
	}

	/*
	 *	Compute the set bit for the 
	 *	characters in the buf string.
	 */
	for ( i = 0ULL; i < length; ++i) {
		unsigned char temp = ( *buf)[ i];
		temp ^= temp >> 4ULL;
		temp &= 0xFULL;
		parityCount += ( 0x6996ULL >> temp) & 1ULL;
	}

	/*
	 *	Copy the set bit and characters 
	 *	into the new buffer and output 
	 *	the characters in hexadecimal 
	 *	form to the standard output.
	 */
	newBuffer[ 0ULL] = ( char) ( parityCount & 1ULL);
	printf( "\n( cString) { { ( setBit) 0x%.1X }, { ", 
		newBuffer[ 0ULL]);
	for ( i = 0ULL; i < length; ++i) {
		unsigned long index = i + 1ULL;
		newBuffer[ index] = ( *buf)[ i];

		printf( "0x%.2X%s", ( unsigned char) 
			( newBuffer[ index]), 
				i != ( length - 1ULL) 
					? ", " : " ");
	}
	printf( "}}\n\n");
	free( *buf);
	*buf = newBuffer;

	return '\x01';
}
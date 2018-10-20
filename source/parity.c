/*
 *	This set_parity_print header 
 *	defines a routine designed to 
 *	compute and to set the parity 
 *	bit for a string of 
 *	characters from the standard 
 *	input, then output these 
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

char setParityPrint( void) {
	/*
	 *	Temporary variable 
	 *	and pointer initializations.
	 */
	char temp;
	char *newBuffer;
	unsigned long charLength = 0ULL;
	unsigned long bufferLength = 1000ULL;
	unsigned long i, j;

	/*
	 *	Allocate memory for a new 
	 *	buffer including the set bit.
     */
	if ( !( newBuffer = ( char*) malloc( 
		bufferLength * sizeof( char)))) {
		return '\x00';
	}

	/*
	 *	Initialize the set bit to zero. 
	 */
	newBuffer[ 0ULL] = '\x00';

	/*
     *	Main getchar() loop.
     */
	printf( "\nPlease, enter your buffer characters\n\
( Please, make sure there is no newline character or EOF \n\
  chararcter at the start of the buffer entry and at the \n\
  end of the buffer entry ):\n");
	for ( i = 1ULL; ( temp = getchar()) != EOF 
		&& temp != '\n'; ++i) {

		/*
		 *	If the buffer limit is reached, 
		 *	increase the buffer limit. 
		 */
		if ( bufferLength == charLength) {
			char *extendedBuffer = NULL;
			unsigned long extendedLength = 
				1.618034f * bufferLength;

			if ( !( extendedBuffer = ( char*) malloc( 
				extendedLength * sizeof( char)))) {
				return '\x00';
			}

			for ( j = 0ULL; j < bufferLength; ++j) {
				extendedBuffer[ j] = newBuffer[ j];
			}

			free( newBuffer);
			newBuffer = extendedBuffer;
			bufferLength = extendedLength;
			extendedBuffer = NULL;
		}

		/*
		 *	Save the character.
		 *	Compute the set bit for the 
		 *	character in the buffer.
		 */
		newBuffer[ i] = temp;
		temp ^= temp >> 4ULL;
		temp &= 0xFULL;
		newBuffer[ 0ULL] ^= ( ( 0x6996ULL >> temp) & 1ULL);
		++charLength;
	}

	if ( charLength < 1ULL) {
		printf( "Invalid entry.\n\n"); 
		return '\x00';
	}

	/*
	 *	Output the characters in 
     *	hexadecimal form to the 
     *	standard output.
	 */
	printf( "\n( charBuffer) { { ( setBit) 0x%.1X }, { ", 
		newBuffer[ 0ULL]);
	for ( i = 1ULL; i <= charLength; ++i) {
		printf( "0x%.2X%s", ( unsigned char) 
			( newBuffer[ i]), 
				i != charLength ? ", " : " ");
	}
	printf( "}}\n\n");
	free( newBuffer);
	newBuffer = NULL;

	return '\x01';
}

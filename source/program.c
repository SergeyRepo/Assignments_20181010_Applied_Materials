/*
 *	This test program tests 
 *	this list program and 
 *	this set_parity_print program.
 *	Copyright (C) 1989-2089 Sergey Sergeevich Tsybanov 
 *
 *	This test program is free software: 
 *	you can redistribute it and/or 
 *	modify it under the terms of the 
 *	GNU Affero General Public License 
 *	as published by the Free Software 
 *	Foundation, either version 3 of 
 *	the License, or (at your option) 
 *	any later version.
 *
 *	This test program is distributed 
 *	in the hope that it will be useful, 
 *	but WITHOUT ANY WARRANTY; without 
 *	even the implied warranty of 
 *	MERCHANTABILITY or FITNESS FOR A 
 *	PARTICULAR PURPOSE. See the 
 *	GNU Affero General Public License 
 *	for more details.
 *
 *	You should have received a copy of 
 *	the GNU Affero General Public License 
 *	along with this test program. If not, 
 *	see <https://www.gnu.org/licenses/>.
 */

#include "list.h"
#include "parity.h"

int main( void) {

	printf( "\nTesting problem (A)\n\t\
Assuming an unsorted linked list of integers, and \n\
without using a temporary buffer, write a routine to \n\
delete any duplicates from a thread-safe linked list.\n\n");

	struct list *newList;
	if ( !( newList = create_list())) {
		return ~0LL;
	}

	printf( "\tTest A0: \n");
	print_list( &newList);

	sort_list( &newList);
	remove_duplicates_list( &newList);
	print_list( &newList);

	printf( "\tTest A1: \n");
	insert_link_list( &newList, 1LL, 0LL); 
	print_list( &newList);

	sort_list( &newList);
	remove_duplicates_list( &newList);
	print_list( &newList);

	printf( "\tTest A2: \n");
	insert_link_list( &newList, 1LL, 0LL);
	insert_link_list( &newList, 1LL, 0LL);
	print_list( &newList);

	sort_list( &newList);
	remove_duplicates_list( &newList);
	print_list( &newList);

	printf( "\tTest A3: \n");
	insert_link_list( &newList, 1LL, 0LL);
	insert_link_list( &newList, 2LL, 0LL);
	insert_link_list( &newList, 2LL, 0LL);
	insert_link_list( &newList, 3LL, 0LL);
	insert_link_list( &newList, 1LL, 0LL);
	print_list( &newList);

	sort_list( &newList);
	remove_duplicates_list( &newList);
	print_list( &newList);

	printf( "\tTest A4: \n");
	insert_link_list( &newList, 3LL, 2LL);
	insert_link_list( &newList, 3LL, 3LL);
	insert_link_list( &newList, 7LL, 0LL);
	insert_link_list( &newList, 6LL, 0LL);
	insert_link_list( &newList, 4LL, 5LL);
	insert_link_list( &newList, 7LL, 0LL);
	insert_link_list( &newList, 6LL, 0LL);
	insert_link_list( &newList, 1LL, 3LL);
	insert_link_list( &newList, 7LL, 0LL);
	insert_link_list( &newList, 4LL, 6LL);
	insert_link_list( &newList, 2LL, 8LL);
	insert_link_list( &newList, 3LL, 2LL);
	insert_link_list( &newList, 5LL, 12LL);
	print_list( &newList);

	sort_list( &newList);
	remove_duplicates_list( &newList);
	print_list( &newList);
	destroy_list( &newList);
	newList = NULL;

	printf( "\nTesting problem (B)\n\t\
Suppose we have an array of characters pointed \n\
to by the pointer char *buf. Write a routine to compute \n\
and set the parity bit of the characters and output the \n\
characters in hex form.\n\n");

	char continueProgram = '\x01';

	while ( continueProgram) {
		continueProgram = '\x01';
		setParityPrint();

		while ( continueProgram != 'n' 
			&& continueProgram != 'y') {
			printf( "Would you like to continue? \
Type y or n.\n");
			continueProgram = getchar();
			while ( getchar() != '\n');
		}

		if ( continueProgram == 'n') {
			continueProgram = '\x00';
		}
	}

	return 0LL;
} 

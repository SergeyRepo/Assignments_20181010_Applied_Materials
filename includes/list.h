/*
 *	This list header defines a simple 
 *	thread-safe object-oriented single 
 *	linked list data structure with 
 *	merge sort and duplicates removal 
 *	functionality.
 *	Copyright (C) 1989-2089 Sergey Sergeevich Tsybanov 
 *
 *	This list program is free software: 
 *	you can redistribute it and/or 
 *	modify it under the terms of the 
 *	GNU Affero General Public License 
 *	as published by the Free Software 
 *	Foundation, either version 3 of 
 *	the License, or (at your option) 
 *	any later version.
 *
 *	This list program is distributed in 
 *	the hope that it will be useful, 
 *	but WITHOUT ANY WARRANTY; without 
 *	even the implied warranty of 
 *	MERCHANTABILITY or FITNESS FOR A 
 *	PARTICULAR PURPOSE. See the 
 *	GNU Affero General Public License 
 *	for more details.
 *
 *	You should have received a copy of 
 *	the GNU Affero General Public License 
 *	along with this list program. If not, 
 *	see <https://www.gnu.org/licenses/>.
 */

#ifndef LIST_H

#include <limits.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

#define LIST_H

struct link;
struct list;

/*
 *	The function assign_list assigns a 
 *	struct list to another struct list. 
 *	The function takes two struct list 
 *	pointers to constant addresses of 
 *	struct list pointers as arguments. 
 *	The function returns a pointer 
 *	to a struct list.
 */
struct list* assign_list( struct list **const assignTo, 
			struct list **const assignIt);

/*
 *	The function copy_list creates a 
 *	copy of a struct list. 
 *	The function takes a struct list 
 *	pointer to a constant address of 
 *	a struct list pointer as an 
 *	argument. The function returns 
 *	a pointer to a struct list.
 */
struct list* copy_list( struct list **const copyIt);

/*
 *	The function create_list allocates 
 *	memory and initializes a struct 
 *	list. The function takes no 
 *	arguments. The function returns 
 *	a pointer to a struct list.
 */
struct list* create_list( void);

/*
 *	The function destroy_list deallocates 
 *	a struct list. The function takes a 
 *	struct list pointer to a constant 
 *	address of a struct list pointer as 
 *	an argument. The function returns the 
 *	character '\x00' on failure. 
 *	The function returns the 
 *	character '\x01' on success.
 */
char destroy_list( struct list **const destroyIt);

/*
 *	The function get_length_list returns 
 *	the length of the struct list. The 
 *	function takes a struct list pointer 
 *	to a constant address of a struct 
 *	list pointer as an argument. 
 *	The function returns a long negative 
 *	one on failure. The function returns 
 *	a long length value on success.
 */
long get_length_list( struct list **const this);

/*
 *	The function insert_link_list inserts 
 *	a struct link into a struct list. 
 *	The function takes a struct list 
 *	pointer to a constant address of a 
 *	struct list pointer, a constant long 
 *	value and a constant long index as 
 *	arguments. The function returns the 
 *	character '\x00' on failure. 
 *	The function returns the 
 *	character '\x01' on success.
 */
char insert_link_list( struct list **const this, 
		const long insertIt, const long index);

/*
 *	The function print_list outputs 
 *	a struct list to the standard 
 *	output. The function takes a 
 *	struct list pointer to a 
 *	constant address of a struct 
 *	list pointer. The function 
 *	returns the character '\x00' 
 *	on failure. The function 
 *	returns the character '\x01' 
 *	on success.
 */
char print_list( struct list **const this);

/*
 *	The function remove_duplicates_list removes 
 *	duplicate values from a sorted struct list. 
 *	The function takes a struct list pointer to 
 *	a constant address of a struct list pointer. 
 *	The function returns the character '\x00' 
 *	on failure. The function returns the 
 *	character '\x01' on success.
 */

char remove_duplicates_list( struct list **const this);

/*
 *	The function remove_link_list removes 
 *	a struct link from a struct list.
 *	The function takes a struct list 
 *	pointer to a constant address of a 
 *	struct list pointer, a constant long 
 *	value and a constant long index as 
 *	arguments. The function returns the 
 *	character '\x00' on failure. 
 *	The function returns the 
 *	character '\x01' on success.
 */
char remove_link_list( struct list **const this, 
		const long deleteIt, const long index);

/*
 *	The function sort_list sorts 
 *	a struct list with iterative 
 *	merge sort. The function 
 *	takes a struct list pointer 
 *	to a constant address of a 
 *	struct list pointer as an 
 *	argument. The function 
 *	returns the character '\x00' 
 *	on failure. The function 
 *	returns the character '\x01' 
 *	on success.
 */
char sort_list( struct list **const sortIt);

#endif
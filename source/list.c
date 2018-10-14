/*
 *	This list program implements a simple 
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

#include "list.h"

struct link {
	long value;
	struct link *next;
};

struct list {
	struct link *head;
	long length;
	pthread_rwlock_t mutex;
};

struct list* assign_list( struct list **const assignTo, 
			struct list **const assignIt) {
	if ( assignIt == assignTo 
		|| *assignIt == *assignTo 
		|| assignIt == NULL 
		|| assignTo == NULL) {

		/*
		 *	Shallow assignment or 
		 *	NULL arguments.
		 */
		return NULL;
	}
	else if ( *assignIt == NULL) {

		/*
		 *	Right-hand side value 
		 *	is NULL, so assign NULL.
		 */
		destroy_list( &( *assignTo));
		return *assignTo;
	}
	else if ( *assignTo != NULL) {

		/*
		 *	Left-hand side value 
		 *	is not NULL, so deallocate 
		 *	the left-hand side.
		 */
		destroy_list( &( *assignTo));
	}

	/*
	 *	Regular assign a deep copy 
	 *	and return the left-hand side.
	 */
	*assignTo = copy_list( &( *assignIt));
	return *assignTo;
}

struct list* copy_list( struct list **const copyIt) {
	/*
	 *	Validate the input struct list.
	 */
	if ( copyIt == NULL || *copyIt == NULL) {
		return NULL;
	}

	pthread_rwlock_rdlock( &( ( *copyIt)->mutex));

	/*
	 *	Create the new struct list.
	 */
	struct list* newList = create_list();
	if ( newList == NULL) {
		pthread_rwlock_unlock( 
			&( ( *copyIt)->mutex));
		return NULL;
	}

	/*
	 *	Validate struct list heads for 
	 *	equality or a shallow copy.
	 */
	if ( ( *copyIt)->head == newList->head) {
		pthread_rwlock_unlock( 
			&( ( *copyIt)->mutex));
		return newList;
	}

	/*
	 *	Allocate a new struct list head 
	 *	with a struct link. Initialize 
	 *	the struct link and increment 
	 *	the length.
	 */
	if ( !( newList->head = ( struct link*) 
			malloc( sizeof( struct link)))) {
		pthread_rwlock_unlock( 
			&( ( *copyIt)->mutex));
		destroy_list( &newList);
		return NULL;
	}

	newList->head->value = ( *copyIt)->head->value;
	newList->head->next = NULL;
	++newList->length;

	/*
	 *	Repeat the processes of allocation of 
	 *	struct links, initialization of struct 
	 *	links and incrementation of the length 
	 *	using two pointers, one to keep track of 
	 *	each struct list.
	 */
	struct link *copyItCurrent = 
		( *copyIt)->head->next;
	struct link *newCurrent = newList->head;
	while ( copyItCurrent != NULL) {

		if ( !( newCurrent->next = ( struct link*) 
			malloc( sizeof( struct link)))) {
			pthread_rwlock_unlock( 
				&( ( *copyIt)->mutex));
			destroy_list( &newList);
			return NULL;
		}

		newCurrent->next->value = 
			copyItCurrent->value;
		newCurrent->next->next = NULL;
		++newList->length;

		newCurrent = newCurrent->next;
		copyItCurrent = copyItCurrent->next;
	}

	copyItCurrent = NULL;
	newCurrent = NULL;
	pthread_rwlock_unlock( &( ( *copyIt)->mutex));

	return newList;
}

struct list* create_list( void) {
	struct list* newList = NULL;

	if ( !( newList = ( struct list*) 
		malloc( sizeof( struct list)))) {
		return NULL;
	}

	newList->head = NULL; 
	newList->length = 0LL;
	pthread_rwlock_init( &( newList->mutex), NULL);
	return newList;
}

char destroy_list( struct list **const destroyIt) {
	/*
	 *	Validate the input struct list.
	 */
	if ( destroyIt == NULL || *destroyIt == NULL) {
		return '\x00';
	}

	pthread_rwlock_wrlock( &( ( *destroyIt)->mutex));

	/*
	 *	Repeat the process of incrementing 
	 *	struct list head, removing the 
	 *	struct link pointed by the struct 
	 *	list head, deallocating the 
	 *	removed struct link, decrementing 
	 *	the length.
	 */
	struct link *current = ( *destroyIt)->head;
	while ( current != NULL) {
		( *destroyIt)->head = 
			( *destroyIt)->head->next;
		current->next = NULL;
		free( current);
		--( *destroyIt)->length;
		current = ( *destroyIt)->head;
	}

	pthread_rwlock_unlock( &( ( *destroyIt)->mutex));
	pthread_rwlock_destroy( &( ( *destroyIt)->mutex));

	free( *destroyIt);
	*destroyIt = NULL;
	return '\x01';
}

long get_length_list( struct list **const this) {
	/*
	 *	Validate the input struct list.
	 */
	if ( this == NULL || *this == NULL) {
		return ~0LL;
	}

	/*
	 *	Create a local copy and 
	 *	return another copy for 
	 *	the sake of thread-safety. 
	 */
	pthread_rwlock_rdlock( &( ( *this)->mutex));
	long temp = ( *this)->length;
	pthread_rwlock_unlock( &( ( *this)->mutex));

	return temp;
}

char insert_link_list( struct list **const this, 
		const long insertIt, const long index) {
	/*
	 *	Validate the input struct list.
	 */
	if ( this == NULL || *this == NULL) {
		return '\x00';
	}

	pthread_rwlock_wrlock( &( ( *this)->mutex));

	/*
	 *	Validate the input index value.
	 */
	if ( index < 0LL || ( *this)->length == LONG_MAX 
		|| index > ( *this)->length) {
		pthread_rwlock_unlock( 
			&( ( *this)->mutex));
		return '\x00';
	}

	struct link *current = ( *this)->head;
	if ( index < 1LL) {

		/*
		 *	Struct link insertion case 
		 *	at the struct list head.
		 */
		if ( !( ( *this)->head = ( struct link*) 
			malloc( sizeof( struct link)))) {
			( *this)->head = current;
			current = NULL;
			pthread_rwlock_unlock( 
				&( ( *this)->mutex));
			return '\x00';			
		}

		( *this)->head->value = insertIt;
		( *this)->head->next = current;
	}
	else {
		/*
		 *	Insert in the middle or 
		 *	at the end by moving one 
		 *	struct link pointer to one 
		 *	struct link before the insertion 
		 *	and keeping another struct link 
		 *	pointer for allocation.
		 */
		struct link *previous;
		long count;

		for ( count = 1LL, current = NULL, 
			previous = ( *this)->head;
			previous != NULL && count < index;
			previous = previous->next, 
			++count);

		/*
	 	 *	Validate the loop conditions.
		 */
		if ( count != index || previous == NULL) {
			previous = NULL;
			pthread_rwlock_unlock( 
				&( ( *this)->mutex));
			return '\x00';	
		}

		/*
	 	 *	Allocate a new struct link and 
		 *	initialize the new struct link.
		 */
		if ( !( current = ( struct link*) 
			malloc( sizeof( struct link)))) {
			previous = NULL;
			pthread_rwlock_unlock( 
				&( ( *this)->mutex));
			return '\x00';
		}

		current->value = insertIt;
		current->next = previous->next;
		previous->next = current;
		previous = NULL;
	}

	/*
	 *	Increment the length.
	 */
	++( *this)->length;
	current = NULL;
	pthread_rwlock_unlock( &( ( *this)->mutex));

	return '\x01';
}

char print_list( struct list **const this) {
	if ( this == NULL || *this == NULL) {
		return '\x00';
	}

	pthread_rwlock_rdlock( &( ( *this)->mutex));

	struct link *current = ( *this)->head;
	printf("\n( listHead) -> ");
	while( current != NULL) {
		printf("0x%lX -> ", current->value);
		current = current->next;
	}

	current = NULL;
	printf("( NULL) { listLength = %ld}\n\n", 
		( *this)->length);
	pthread_rwlock_unlock( &( ( *this)->mutex));

	return '\x01';
}

char remove_duplicates_list( struct list **const this) {
	
	pthread_rwlock_wrlock( &( ( *this)->mutex));

	if ( this == NULL || *this == NULL 
		|| ( *this)->head == NULL) {
		pthread_rwlock_unlock( 
			&( ( *this)->mutex));
		return '\x00';
	}

	struct link *after = NULL;
	struct link *current = ( *this)->head;

	while ( current->next != NULL) {
		if ( current->value 
			== current->next->value) {
			after = current->next->next;
			current->next->next = NULL;
			free( current->next);
			current->next = after;
			--( *this)->length;
			after = NULL;
		}
		else {
			current = current->next;
		}
	}

	pthread_rwlock_unlock( &( ( *this)->mutex));
	return '\x01';
}

char remove_link_list( struct list **const this, 
		const long deleteIt, const long index) {
	/*
	 *	Validate the input struct list.
	 */
	if ( this == NULL || *this == NULL) {
		return '\x00';
	}

	pthread_rwlock_wrlock( &( ( *this)->mutex));

	/*
	 *	Validate the input index value.
	 */
	if ( index < 0LL || index >= ( *this)->length ) {
		pthread_rwlock_unlock( 
			&( ( *this)->mutex));
		return '\x00';
	}

	struct link *current = ( *this)->head;
	if ( index < 1LL) {

		/*
		 *	Struct link removal case 
		 *	at the struct list head. 
		 *	Validate the value for 
		 *	removal and remove it.
		 *	Decrement the length.
		 */
		if ( ( *this)->head->value != deleteIt) {
			current = NULL;
			pthread_rwlock_unlock( 
				&( ( *this)->mutex));
			return '\x00';
		}

		( *this)->head = ( *this)->head->next;
		current->next = NULL;
		--( *this)->length;
		pthread_rwlock_unlock( 
			&( ( *this)->mutex));
		free( current);
		current = NULL;
		return '\x01';
	}
	else {
		/*
		 *	Remove in the middle or 
		 *	at the end by moving 
		 *	a struct link pointer to one 
		 *	struct link before the removal.
		 */
		long count;
		for ( count = 1LL; 
			current != NULL && count < index; 
			current = current->next, ++count);

		/*
	 	 *	Validate the loop conditions.
		 */
		if ( count != index || current == NULL) {
			current = NULL;
			pthread_rwlock_unlock( 
				&( ( *this)->mutex));
			return '\x00';	
		}

		/*
		 *	Validate the value for removal, 
		 *	point another struct link after 
		 *	the removal. Remove the struct 
		 *	link. Decrement the length.
		 */
		if ( current->next->value == deleteIt) {
			struct link *after = 
				current->next->next;
			current->next->next = NULL;
			free( current->next);
			current->next = after;
			after = NULL;
			current = NULL;
			--( *this)->length;
			pthread_rwlock_unlock( 
				&( ( *this)->mutex));
			return '\x01';
		}
	}

	current = NULL;
	pthread_rwlock_unlock( &( ( *this)->mutex));

	return '\x00';
}

char sort_list( struct list **const sortIt) {

	pthread_rwlock_wrlock( &( ( *sortIt)->mutex));

	/*
	 *	Validate the input struct list.
	 */
	if ( sortIt == NULL || *sortIt == NULL 
		|| ( *sortIt)->head == NULL) {
		pthread_rwlock_unlock( 
			&( ( *sortIt)->mutex));
		return '\x00';
	}

	/*
	 *	Initialize all the temporary 
	 *	variables and pointers.
	 */
	struct link *start0, *start1, *end0, 
		*end1, *before;
	start0 = start1 = end0 = end1 = before = NULL;

	long i;
	for ( i = 1LL; i < ( *sortIt)->length; i *= 2LL) {
		start0 = ( *sortIt)->head;
		while ( start0 != NULL) {

			/*
			 *	First iteration?
			 */
			char firstIteration = '\x00';
			if ( start0 == ( *sortIt)->head) {
				firstIteration = '\x01';
			}

			/*
			 *	Increment first end.
			 */
			long count = i;
			end0 = start0;
			while( --count && end0->next) {
				end0 = end0->next;
			}

			/*
			 *	Increment second end.
			 */
			start1 = end0->next;
			if ( start1 == NULL) {
				break;
			}
			count = i;
			end1 = start1;
			while( --count && end1->next) {
				end1 = end1->next;
			}

			/*
			 *	Save next struct link 
			 *	of second end.
			 */
			struct link *temp0 = end1->next;

			/*
			 *	Merge two sections.
			 */
			/*
			 *	Swap values if first 
			 *	start struct link has 
			 *	a greater value.
			 */
			struct link *temp1 = NULL;
			if ( start0->value 
				> start1->value) {
				temp1 = start0;
				start0 = start1;
				start1 = temp1;
				temp1 = end0;
				end0 = end1;
				end1 = temp1;
				temp1 = NULL;
			}

			/*
			 *	Merge remaining 
			 *	struct links.
			 */
			struct link *start2 = start0;
			struct link *start3 = start1;
			struct link *end2 = end0;
			struct link *beforeEndNext = 
				end1->next;
			while ( start2 != end2 
				&& start3 
					!= beforeEndNext) {
				if ( start2->next->value 
					> start3->value) {
					temp1 = 
					start3->next;
					start3->next = 
					start2->next;
					start2->next = 
					start3;
					start3 = temp1;
				}

				start2 = start2->next;
			}

			if ( start2 == end2) {
				start2->next = start3;
			}
			else {
				end1 = end0;
			}

			/*
			 *	Update the struct list 
			 *	head or append after 
			 *	previous end.
			 */
			if ( firstIteration) {
				( *sortIt)->head = start0;
			}
			else {
				before->next = start0;
			}

			before = end1;
			start0 = temp0;
		}

		before->next = start0;
	}

	pthread_rwlock_unlock( &( ( *sortIt)->mutex));
	return '\x01';
}
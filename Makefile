#
#	This Makefile implements 
#	a basic make utility file 
#	for this list program and 
#	for this set_parity_print program.
#	Copyright (C) 1989-2089 Sergey Sergeevich Tsybanov 
#
#	This Makefile is free software: 
#	you can redistribute it and/or 
#	modify it under the terms of the 
#	GNU Affero General Public License 
#	as published by the Free Software 
#	Foundation, either version 3 of 
#	the License, or (at your option) 
#	any later version.
#
#	This Makefile is distributed in 
#	the hope that it will be useful, 
#	but WITHOUT ANY WARRANTY; without 
#	even the implied warranty of 
#	MERCHANTABILITY or FITNESS FOR A 
#	PARTICULAR PURPOSE. See the 
#	GNU Affero General Public License 
#	for more details.
#
#	You should have received a copy of 
#	the GNU Affero General Public License 
#	along with this Makefile. If not, 
#	see <https://www.gnu.org/licenses/>.
#

#	Shell information
SHELL = /bin/bash

#	Build information
BUILD_TYPE ?= debug
PLATFORM ?= GNU_x86_64

#	Directories
ADIR ?= assembly
BDIR ?= build
DDIR ?= dependencies
EDIR ?= $(BDIR)/$(BUILD_TYPE)
HDIR ?= includes
IDIR ?= intermediates
ODIR ?= objects
SDIR ?= source

#	Assembler
AS_GNU_ARM ?= arm-linux-gnueabi-as
AS_GNU_x86_64 ?= as
AS_GNU_x86 ?= as
ASFLAGS_GNU_ARM_release ?= 
ASFLAGS_GNU_ARM_debug ?= 
ASFLAGS_GNU_x86_64_release ?= 
ASFLAGS_GNU_x86_64_debug ?= 
ASFLAGS_GNU_x86_release ?= 
ASFLAGS_GNU_x86_debug ?= 

AS = $(AS_$(PLATFORM))
ASFLAGS ?= $(ASFLAGS_$(PLATFORM)_$(BUILD_TYPE))

#	C compiler
CC_GNU_ARM ?= arm-linux-gnueabi-gcc
CC_GNU_x86_64 ?= gcc
CC_GNU_x86 ?= gcc
CFLAGS_GNU_ARM_release ?= -O3
CFLAGS_GNU_ARM_debug ?= -O0 -g -Wall -Wextra
CFLAGS_GNU_x86_64_release ?= -O3
CFLAGS_GNU_x86_64_debug ?= -O0 -g -Wall -Wextra
CFLAGS_GNU_x86_release ?= -O3 -m32
CFLAGS_GNU_x86_debug ?= -O0 -m32 -g -Wall -Wextra

CC = $(CC_$(PLATFORM))
CFLAGS ?= --std=gnu89 $(CFLAGS_$(PLATFORM)_$(BUILD_TYPE))

#	C preprocessor
CPPFLAGS ?= $(addprefix -I,$(shell find $(HDIR) -type d)) -MMD -MP

#	C++ compiler
CXX_GNU_ARM ?= arm-linux-gnueabi-g++
CXX_GNU_x86_64 ?= g++
CXX_GNU_x86 ?= g++
CXXFLAGS_GNU_ARM_release ?= -O3
CXXFLAGS_GNU_ARM_debug ?= -O0 -g -Wall -Wextra
CXXFLAGS_GNU_x86_64_release ?= -O3
CXXFLAGS_GNU_x86_64_debug ?= -O0 -g -Wall -Wextra
CXXFLAGS_GNU_x86_release ?= -O3 -m32
CXXFLAGS_GNU_x86_debug ?= -O0 -m32 -g -Wall -Wextra

CXX = $(CXX_$(PLATFORM))
CXXFLAGS ?= --std=gnu++11 $(CXXFLAGS_$(PLATFORM)_$(BUILD_TYPE))

#	Linker
LD_GNU_ARM ?= arm-linux-gnueabi-ld
LD_GNU_x86_64 ?= ld
LD_GNU_x86 ?= ld
LDFLAGS_GNU_ARM_release ?= -pthread
LDFLAGS_GNU_ARM_debug ?= -pthread
LDFLAGS_GNU_x86_64_release ?= -pthread
LDFLAGS_GNU_x86_64_debug ?= -pthread
LDFLAGS_GNU_x86_release ?= -m32 -pthread
LDFLAGS_GNU_x86_debug ?= -m32 -pthread

LD = $(LD_$(PLATFORM))
LDFLAGS ?= $(LDFLAGS_$(PLATFORM)_$(BUILD_TYPE))
LDLIBS ?= 

#	File paths, directories, object files, 
#	source files and dependencies
PATHS0 := $(patsubst %,/%, \
$(shell find $(SDIR) -name '*.s' | \
cut --complement -d'/' -f1 | cut -d'.' -f-1))
PATHS1 := $(patsubst %,/%, \
$(shell find $(SDIR) -name '*.c' | \
cut --complement -d'/' -f1 | cut -d'.' -f-1))
PATHS2 := $(patsubst %,/%, \
$(shell find $(SDIR) -name '*.cpp' | \
cut --complement -d'/' -f1 | cut -d'.' -f-1))
DIRS0 := $(shell for path in $(patsubst %,/%, \
$(shell find $(SDIR) -name '*.s' | rev | \
cut --complement -d'/' -f1 | rev | uniq | sort)); \
do echo $$path | cut --complement -d'/' -f2; done)
DIRS1 := $(shell for path in $(patsubst %,/%, \
$(shell find $(SDIR) -name '*.c' | rev | \
cut --complement -d'/' -f1 | rev | uniq | sort)); \
do echo $$path | cut --complement -d'/' -f2; done)
DIRS2 := $(shell for path in $(patsubst %,/%, \
$(shell find $(SDIR) -name '*.cpp' | rev | \
cut --complement -d'/' -f1 | rev | uniq | sort)); \
do echo $$path | cut --complement -d'/' -f2; done)
OBJS0 := $(patsubst %,$(ODIR)%,$(PATHS0:=.o))
OBJS1 := $(patsubst %,$(ODIR)%,$(PATHS1:=.o))
OBJS2 := $(patsubst %,$(ODIR)%,$(PATHS2:=.o))
SRC0 := $(patsubst %,$(SDIR)%,$(PATHS0:=.s))
SRC1 := $(patsubst %,$(SDIR)%,$(PATHS1:=.c))
SRC2 := $(patsubst %,$(SDIR)%,$(PATHS2:=.cpp))
DEPS0 := $(patsubst %,$(DDIR)%,$(PATHS1:=.d))
DEPS1 := $(patsubst %,$(DDIR)%,$(PATHS2:=.d))

#	Executable
ARGS = 
EXEC ?= executable

#	Various commands
MKDIR := mkdir -p
MV := mv

#	Link C++ specific code?
ifneq ($(SRC2), $(OBJS2))
	LDLIBS += -lstdc++
endif

.PHONY : all clean mostlyclean run

#	Final recipe
all : BUILD

#	Initialization recipe
INIT :
	$(MKDIR) $(ADIR) $(DDIR) $(EDIR) $(HDIR) $(IDIR) \
		$(ODIR) $(SDIR)
	$(foreach dir, $(DIRS0), \
		$(MKDIR) $(ODIR)/$(dir);)
	$(foreach dir, $(DIRS1), \
		$(MKDIR) $(ADIR)/$(dir) $(DDIR)/$(dir) \
				$(IDIR)/$(dir) $(ODIR)/$(dir);)
	$(foreach dir, $(DIRS2), \
		$(MKDIR) $(ADIR)/$(dir) $(DDIR)/$(dir) \
				$(IDIR)/$(dir) $(ODIR)/$(dir);)

#	Build recipe
BUILD : INIT
	@$(MAKE) --no-print-directory $(EDIR)/$(EXEC)

#	Executable recipe
$(EDIR)/$(EXEC) : $(OBJS0) $(OBJS1) $(OBJS2)
	$(CC) -o $@ $^ $(LDFLAGS) $(LDLIBS)

#	Assembly recipe
$(OBJS0) : $(SRC0)
	$(foreach path, $(PATHS0), $(AS) $(ASFLAGS) \
		$(SDIR)$(path:=.s) -o $(ODIR)$(path:=.o);)

#	C recipe
$(OBJS1) : $(SRC1)
	$(foreach path, $(PATHS1), \
		$(CC) $(CFLAGS) $(CPPFLAGS) \
		-E $(SDIR)$(path:=.c) -o $(IDIR)$(path:=.i) \
		&& $(CC) $(CFLAGS) $(CPPFLAGS) \
		-S $(IDIR)$(path:=.i) -o $(ADIR)$(path:=.s) \
		&& $(CC) $(CFLAGS) $(CPPFLAGS) \
		-c $(ADIR)$(path:=.s) -o $(ODIR)$(path:=.o);)
	$(foreach dep, $(DEPS0), \
		$(MV)  $(patsubst %,$(IDIR)/%, \
		$(shell echo $(dep) | cut --complement -d'/' -f1)) \
		$(shell echo $(dep) | rev | cut -d'/' \
			--complement -f1 | rev);)

#	C++ recipe
$(OBJS2) : $(SRC2)
	$(foreach path, $(PATHS2), \
		$(CXX) $(CXXFLAGS) $(CPPFLAGS) \
		-E $(SDIR)$(path:=.cpp) -o $(IDIR)$(path:=.ii) \
		&& $(CXX) $(CXXFLAGS) $(CPPFLAGS) \
		-S $(IDIR)$(path:=.ii) -o $(ADIR)$(path:=.s) \
		&& $(CXX) $(CXXFLAGS) $(CPPFLAGS) \
		-c $(ADIR)$(path:=.s) -o $(ODIR)$(path:=.o);)
	$(foreach dep, $(DEPS1), \
		$(MV)  $(patsubst %,$(IDIR)/%, \
		$(shell echo $(dep) | cut --complement -d'/' -f1)) \
		$(shell echo $(dep) | rev | cut -d'/' \
			--complement -f1 | rev);)

#	Make options
clean :
	$(RM) -r $(ADIR) $(BDIR) $(DDIR) $(IDIR) $(ODIR) *~

mostlyclean :
	$(RM) -r $(ADIR) $(DDIR) $(IDIR) $(ODIR) *~

run :
	@$(MAKE) && ./$(EDIR)/$(EXEC) $(ARGS)

-include $(DEPS0) $(DEPS1)
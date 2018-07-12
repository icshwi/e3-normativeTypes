#
#  Copyright (c) 2018 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
#
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Thursday, July 12 22:15:42 CEST 2018
# version : 0.0.1


where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

#include $(where_am_I)/configure/CONFIG_NORMATIVETYPES_VERSION

ifneq ($(strip $(PVDATA_DEP_VERSION)),)
pvdata_VERSION=$(PVDATA_DEP_VERSION)
endif

## Exclude linux-ppc64e6500
##EXCLUDE_ARCHS = linux-ppc64e6500

NT_SRC:=src

USR_INCLUDES += -I$(COMMON_DIR)
USR_INCLUDES += -I$(where_am_I)$(NT_SRC)

HEADERS += $(NT_SRC)/pv/nt.h
HEADERS += $(NT_SRC)/pv/ntutils.h
HEADERS += $(NT_SRC)/pv/ntid.h
HEADERS += $(NT_SRC)/pv/ntfield.h
HEADERS += $(NT_SRC)/pv/ntscalar.h
HEADERS += $(NT_SRC)/pv/ntscalarArray.h
HEADERS += $(NT_SRC)/pv/ntnameValue.h
HEADERS += $(NT_SRC)/pv/nttable.h
HEADERS += $(NT_SRC)/pv/ntmultiChannel.h
HEADERS += $(NT_SRC)/pv/ntscalarMultiChannel.h
HEADERS += $(NT_SRC)/pv/ntndarray.h
HEADERS += $(NT_SRC)/pv/ntmatrix.h
HEADERS += $(NT_SRC)/pv/ntenum.h
HEADERS += $(NT_SRC)/pv/ntunion.h
HEADERS += $(NT_SRC)/pv/ntaggregate.h
HEADERS += $(NT_SRC)/pv/ntattribute.h
HEADERS += $(NT_SRC)/pv/ntcontinuum.h
HEADERS += $(NT_SRC)/pv/nthistogram.h
HEADERS += $(NT_SRC)/pv/nturi.h
HEADERS += $(NT_SRC)/pv/ntndarrayAttribute.h


SOURCES += $(NT_SRC)/ntutils.cpp
SOURCES += $(NT_SRC)/ntid.cpp
SOURCES += $(NT_SRC)/ntfield.cpp
SOURCES += $(NT_SRC)/ntscalar.cpp
SOURCES += $(NT_SRC)/ntscalarArray.cpp
SOURCES += $(NT_SRC)/ntnameValue.cpp
SOURCES += $(NT_SRC)/nttable.cpp
SOURCES += $(NT_SRC)/ntmultiChannel.cpp
SOURCES += $(NT_SRC)/ntscalarMultiChannel.cpp
SOURCES += $(NT_SRC)/ntndarray.cpp
SOURCES += $(NT_SRC)/ntmatrix.cpp
SOURCES += $(NT_SRC)/ntenum.cpp
SOURCES += $(NT_SRC)/ntunion.cpp
SOURCES += $(NT_SRC)/ntaggregate.cpp
SOURCES += $(NT_SRC)/ntattribute.cpp
SOURCES += $(NT_SRC)/ntcontinuum.cpp
SOURCES += $(NT_SRC)/nthistogram.cpp
SOURCES += $(NT_SRC)/nturi.cpp
SOURCES += $(NT_SRC)/ntndarrayAttribute.cpp


## This RULE should be used in case of inflating DB files 
## db rule is the default in RULES_DB, so add the empty one
## Please look at e3-mrfioc2 for example.

db: 

.PHONY: db 


vlibs:

.PHONY: vlibs






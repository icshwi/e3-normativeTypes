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
# Date    : Friday, September 14 10:07:08 CEST 2018
# version : 0.0.2


where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile

#include $(where_am_I)/configure/CONFIG_NORMATIVETYPES_VERSION

ifneq ($(strip $(PVDATA_DEP_VERSION)),)
pvdata_VERSION=$(PVDATA_DEP_VERSION)
endif

## Exclude linux-ppc64e6500
##EXCLUDE_ARCHS = linux-ppc64e6500


# *** ISSUES
# driver.makefile recursively read all include directories which were installed.
# The only way to exclude header files is....

iocStats_VERSION=
autosave_VERSION=
asyn_VERSION=
busy_VERSION=
modbus_VERSION=
ipmiComm_VERSION=
sequencer_VERSION=
sscan_VERSION=

std_VERSION=
ip_VERSION=
calc_VERSION=
pcre_VERSION=
stream_VERSION=
s7plc_VERSION=
recsync_VERSION=

devlib2_VERSION=
mrfioc2_VERSION=

exprtk_VERSION=
motor_VERSION=
ecmc_VERSION=
EthercatMC_VERSION=
ecmctraining_VERSION=


keypress_VERSION=
sysfs_VERSION=
symbolname_VERSION=
memDisplay_VERSION=
regdev_VERSION=
i2cDev_VERSION=

tosca_VERSION=
tsclib_VERSION=
ifcdaqdrv2_VERSION=

## The main issue is nds3, it is mandatory to disable it
## 
nds3_VERSION=
nds3epics_VERSION=
ifc14edrv_VERSION=
ifcfastint_VERSION=


nds_VERSION=
loki_VERSION=
sis8300drv_VERSION=
sis8300_VERSION=
sis8300llrfdrv_VERSION=
sis8300llrf_VERSION=


ADSupport_VERSION=
ADCore_VERSION=
ADSimDetector_VERSION=
ADAndor_VERSION=
ADAndor3_VERSION=
ADPointGrey_VERSION=
ADProsilica_VERSION=

amcpico8_VERSION=
adpico8_VERSION=
adsis8300_VERSION=
adsis8300bcm_VERSION=
adsis8300bpm_VERSION=
adsis8300fc_VERSION=


pvCommon_VERSION=
#pvData_VERSION=
pvAccess_VERSION=
pva2pva_VERSION=
pvDatabase_VERSION=
#normativeTypes_VERSION=
pvaClient_VERSION=





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






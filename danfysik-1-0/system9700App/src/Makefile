TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = system9700
# system9700.dbd will be created and installed
DBD += system9700.dbd

USR_CPPFLAGS += -Wno-deprecated-declarations
INCLUDES += -I/usr/include/eigen3

# system9700.dbd will be made up from these files:
system9700_DBD += base.dbd

# Include dbd files from all support applications:
#system9700_DBD += xxx.dbd
system9700_DBD += stream.dbd
system9700_DBD += drvAsynSerialPort.dbd
system9700_DBD += asyn.dbd

# Add all the support libraries needed by this IOC
#system9700_LIBS += xxx
system9700_LIBS += stream asyn

# system9700_registerRecordDeviceDriver.cpp derives from system9700.dbd
system9700_SRCS += system9700_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
system9700_SRCS_DEFAULT += system9700Main.cpp
system9700_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#system9700_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
system9700_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


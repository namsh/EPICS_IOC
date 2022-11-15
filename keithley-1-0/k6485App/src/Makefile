TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = k6485
# k6485.dbd will be created and installed
DBD += k6485.dbd

# k6485.dbd will be made up from these files:
k6485_DBD += base.dbd

# Include dbd files from all support applications:
#k6485_DBD += xxx.dbd
k6485_DBD += stream.dbd
k6485_DBD += drvAsynSerialPort.dbd
k6485_DBD += asyn.dbd

# Add all the support libraries needed by this IOC
#k6485_LIBS += xxx
k6485_LIBS += stream asyn

# k6485_registerRecordDeviceDriver.cpp derives from k6485.dbd
k6485_SRCS += k6485_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
k6485_SRCS_DEFAULT += k6485Main.cpp
k6485_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#k6485_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
k6485_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


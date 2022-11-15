TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = vgc3501
# vgc3501.dbd will be created and installed
DBD += vgc3501.dbd

# vgc3501.dbd will be made up from these files:
vgc3501_DBD += base.dbd

# Include dbd files from all support applications:
#vgc3501_DBD += xxx.dbd
vgc3501_DBD += stream.dbd
vgc3501_DBD += drvAsynSerialPort.dbd
vgc3501_DBD += asyn.dbd

# Add all the support libraries needed by this IOC
#vgc3501_LIBS += xxx
vgc3501_LIBS += stream asyn

# vgc3501_registerRecordDeviceDriver.cpp derives from vgc3501.dbd
vgc3501_SRCS += vgc3501_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
vgc3501_SRCS_DEFAULT += vgc3501Main.cpp
vgc3501_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#vgc3501_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
vgc3501_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


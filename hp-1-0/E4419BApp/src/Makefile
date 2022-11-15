TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = E4419B
# E4419B.dbd will be created and installed
DBD += E4419B.dbd

# E4419B.dbd will be made up from these files:
E4419B_DBD += base.dbd

# Include dbd files from all support applications:
E4419B_DBD += stream.dbd
E4419B_DBD += asyn.dbd
E4419B_DBD += drvAsynSerialPort.dbd
#E4419B_DBD += drvLinuxGpib.dbd

# Add all the support libraries needed by this IOC
E4419B_LIBS += stream asyn

# E4419B_registerRecordDeviceDriver.cpp derives from E4419B.dbd
E4419B_SRCS += E4419B_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
E4419B_SRCS_DEFAULT += E4419BMain.cpp
E4419B_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#E4419B_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
E4419B_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


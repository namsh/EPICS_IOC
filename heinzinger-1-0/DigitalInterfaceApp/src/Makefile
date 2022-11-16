TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = DigitalInterface
# DigitalInterface.dbd will be created and installed
DBD += DigitalInterface.dbd

# DigitalInterface.dbd will be made up from these files:
DigitalInterface_DBD += base.dbd

# Include dbd files from all support applications:
#DigitalInterface_DBD += xxx.dbd
DigitalInterface_DBD += stream.dbd
DigitalInterface_DBD += drvAsynSerialPort.dbd
DigitalInterface_DBD += asyn.dbd

# Add all the support libraries needed by this IOC
#DigitalInterface_LIBS += xxx
DigitalInterface_LIBS += stream asyn

# DigitalInterface_registerRecordDeviceDriver.cpp derives from DigitalInterface.dbd
DigitalInterface_SRCS += DigitalInterface_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
DigitalInterface_SRCS_DEFAULT += DigitalInterfaceMain.cpp
DigitalInterface_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#DigitalInterface_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
DigitalInterface_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


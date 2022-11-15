TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application


PROD_IOC = hp83751A
# hp83751A.dbd will be created and installed
DBD += hp83751A.dbd

# hp83751A.dbd will be made up from these files:
hp83751A_DBD += base.dbd

# Include dbd files from all support applications:
hp83751A_DBD += stream.dbd
hp83751A_DBD += drvLinuxGpib.dbd
hp83751A_DBD += asyn.dbd

# Add all the support libraries needed by this IOC
hp83751A_LIBS += stream asyn

# hp83751A_registerRecordDeviceDriver.cpp derives from hp83751A.dbd
hp83751A_SRCS += hp83751A_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
hp83751A_SRCS_DEFAULT += hp83751AMain.cpp
hp83751A_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#hp83751A_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
hp83751A_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


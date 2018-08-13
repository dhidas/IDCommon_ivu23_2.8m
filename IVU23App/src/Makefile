TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = IVU23
# IVU23.dbd will be created and installed
DBD += IVU23.dbd

# IVU23.dbd will be made up from these files:
IVU23_DBD += base.dbd
IVU23_DBD += asyn.dbd
IVU23_DBD += motorSupport.dbd
IVU23_DBD += drvAsynIPPort.dbd
IVU23_DBD += drvAsynSerialPort.dbd
IVU23_DBD += pmacAsynMotorPort.dbd
IVU23_DBD += pmacAsynMotor.dbd
IVU23_DBD += pmacAsynIPPort.dbd
IVU23_DBD += pmacAsynCoord.dbd
IVU23_DBD += asSupport.dbd
IVU23_DBD += busySupport.dbd
IVU23_DBD += calcSupport.dbd
IVU23_DBD += system.dbd
IVU23_DBD += stream.dbd
IVU23_DBD += devIocStats.dbd

# Include dbd files from all support applications:
#IVU23_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#IVU23_LIBS += xxx
ifneq ($(AUTOSAVE),)
IVU23_DBD += asSupport.dbd
IVU23_LIBS += autosave
endif


# IVU23_registerRecordDeviceDriver.cpp derives from IVU23.dbd
IVU23_SRCS += IVU23_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
IVU23_SRCS_DEFAULT += IVU23Main.cpp
IVU23_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#IVU23_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
IVU23_LIBS += $(EPICS_BASE_IOC_LIBS)


IVU23_LIBS += pmacAsynMotorPort
IVU23_LIBS += pmacAsynIPPort
IVU23_LIBS += pmacAsynCoord
IVU23_LIBS += motor
IVU23_LIBS += asyn
IVU23_LIBS += autosave
IVU23_LIBS += busy
IVU23_LIBS += calc
IVU23_LIBS += stream
IVU23_LIBS += devIocStats
IVU23_LIBS += pmacAsynMotor

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


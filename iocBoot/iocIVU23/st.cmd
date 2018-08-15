#!../../bin/linux-x86_64/IVU23

## You may have to change IVU23 to something else
## everywhere it appears in this file

epicsEnvSet("ENGINEER", "Dean Andrew Hidas is not an engineer. <dhidas@bnl.gov>")
epicsEnvSet("PMACUTIL", "/usr/share/epics-pmacutil-dev")
epicsEnvSet("PMAC1_IP", "192.168.1.103:1025")
epicsEnvSet("sys", "ID")
epicsEnvSet("dev", "IVU23:1")
epicsEnvSet("STREAM_PROTOCOL_PATH", "/usr/share/epics-pmacutil-dev/protocol")

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/IVU23.dbd",0,0)
IVU23_registerRecordDeviceDriver(pdbbase) 


# Configure ports
pmacAsynIPConfigure("P0", $(PMAC1_IP))
pmacCreateController("PMAC1", "P0", 0, 9, 50, 500)

## Load record instances
dbLoadRecords("../../db/IVU23.db","SYS=ID,DEV=IVU23:1,PORT=P0")




set_savefile_path("../../as","/save")
set_requestfile_path("../../as","/req")
set_pass0_restoreFile("ioc_settings.sav")
set_pass1_restoreFile("ioc_waveforms.sav")


# Set Idle and Moving poll periods (CS_Ref, PeriodMilliSeconds)
#pmacSetCoordIdlePollPeriod(0, 500)
#pmacSetCoordMovingPollPeriod(0, 100)

dbLoadRecords("../../db/asynRecord.db","P=$(sys),R={$(dev)}Asyn,ADDR=1,PORT=P0,IMAX=128,OMAX=128")


iocInit()

makeAutosaveFileFromDbInfo("../../as/req/ioc_settings.req", "autosaveFields_pass0")
makeAutosaveFileFromDbInfo("../../as/req/ioc_waveforms.req", "autosaveFields_pass1")
create_monitor_set("ioc_settings.req", 5, "")
create_monitor_set("ioc_waveforms.req", 60, "")


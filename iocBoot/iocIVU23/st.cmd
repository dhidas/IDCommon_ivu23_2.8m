#!../../bin/linux-x86_64/IVU23

## You may have to change IVU23 to something else
## everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/IVU23.dbd",0,0)
IVU23_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/IVU23.db","SYS=ID,DEV=IVU23:1")




set_savefile_path("../../as","/save")
set_requestfile_path("../../as","/req")
set_pass0_restoreFile("ioc_settings.sav")
set_pass1_restoreFile("ioc_waveforms.sav")

iocInit()

makeAutosaveFileFromDbInfo("../../as/req/ioc_settings.req", "autosaveFields_pass0")
makeAutosaveFileFromDbInfo("../../as/req/ioc_waveforms.req", "autosaveFields_pass1")
create_monitor_set("ioc_settings.req", 5, "")
create_monitor_set("ioc_waveforms.req", 60, "")


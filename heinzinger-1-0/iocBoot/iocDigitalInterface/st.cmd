#!../../bin/linux-x86_64/DigitalInterface

## You may have to change DigitalInterface to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "TTY" "$(TTY=/dev/ttyUSB0)"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/proto"

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/DigitalInterface.dbd"
DigitalInterface_registerRecordDeviceDriver pdbbase

drvAsynSerialPortConfigure("L0","$(TTY)",0,0,0)
asynSetOption("L0", -1, "baud", "9600") 
asynSetOption("L0", -1, "bits", "8") 
asynSetOption("L0", -1, "parity", "none") 
asynSetOption("L0", -1, "stop", "1")
asynSetOption("L0", -1, "crtscts", "N")

## Load record instances
dbLoadTemplate "db/userHost.substitutions"
dbLoadRecords "db/dbSubExample.db", "user=namshHost"

dbLoadRecords "db/heinzinger.db" "P=ELECTRODE:,R=PS,PORT=L0,A=0"

## Set this to see messages from mySub
#var mySubDebug 1

## Run this to trace the stages of iocInit
#traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=namshHost"

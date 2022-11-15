#!../../bin/linux-x86_64/E4419B

## You may have to change E4419B to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "TTY" "$(TTY=/dev/ttyUSB0)"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/proto"

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/E4419B.dbd"
E4419B_registerRecordDeviceDriver pdbbase

#GpibBoardDriverConfig("L0","1","0","3","0")
drvAsynSerialPortConfigure("L0","$(TTY)",0,0,0)
asynSetOption("L0", -1, "baud", "9600") 
asynSetOption("L0", -1, "bits", "8") 
asynSetOption("L0", -1, "parity", "none") 
asynSetOption("L0", -1, "stop", "1")
asynSetOption("L0", -1, "crtscts", "N")

## Load record instances
#dbLoadTemplate "db/userHost.substitutions"
dbLoadRecords "db/E4419B.db", "P=HI-ECR,R=:RF-PM,PORT=L0,A=0"

## Set this to see messages from mySub
#var mySubDebug 1

## Run this to trace the stages of iocInit
#traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=namshHost"

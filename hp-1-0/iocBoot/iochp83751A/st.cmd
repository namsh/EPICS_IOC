#!../../bin/linux-x86_64/hp83751A

## You may have to change hp83751A to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/proto"

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/hp83751A.dbd"
hp83751A_registerRecordDeviceDriver pdbbase

GpibBoardDriverConfig("L0","1","0","3","0")

## Load record instances
#dbLoadTemplate "db/userHost.substitutions"
dbLoadRecords "db/hp83751A.db", "P=HI-ECR,R=:RF-SG,PORT=L0,ADDR=19"

## Set this to see messages from mySub
#var mySubDebug 1

## Run this to trace the stages of iocInit
#traceIocInit

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncExample, "user=namshHost"

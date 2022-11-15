#!../../bin/linux-x86_64/k6485

## You may have to change k6485 to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "TTY" "$(TTY=/dev/ttyUSB0)"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/proto"

cd "${TOP}"


## Register all support components
dbLoadDatabase "dbd/k6485.dbd"
k6485_registerRecordDeviceDriver pdbbase

#drvAsynSerialPortConfiguration("portName","ttyName",priority,noAutoConnect,noEos)
drvAsynSerialPortConfigure("L0","$(TTY)",0,0,0)

#asynSetOption("portName","addr","key","value")
asynSetOption("L0", -1, "baud", "57600") 
asynSetOption("L0", -1, "bits", "8") 
asynSetOption("L0", -1, "parity", "none") 
asynSetOption("L0", -1, "stop", "1")
asynSetOption("L0", -1, "crtscts", "N") 

dbLoadRecords "db/k6485.db" "P=K6485:,R=1,PORT=L0,A=0,NELM=1000"

cd "${TOP}/iocBoot/${IOC}"
iocInit


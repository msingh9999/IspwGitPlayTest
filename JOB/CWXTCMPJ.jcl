//SEUMXP0X JOB ('EUDD,INTL'),'PARRAGH',NOTIFY=&SYSUID,
//             MSGLEVEL=(1,1),MSGCLASS=X,CLASS=A,REGION=6M
//GO       EXEC PGM=CWXTCMP
//STEPLIB  DD DISP=SHR,DSN=SALESSUP.ISPW.PLAY.DEV1.LOAD
//         DD DISP=SHR,DSN=SALESSUP.ISPW.PLAY.STG1.LOAD
//         DD DISP=SHR,DSN=SALESSUP.ISPW.PLAY.QA.LOAD
//         DD DISP=SHR,DSN=SALESSUP.ISPW.PLAY.PRD.LOAD
//EMPFILE  DD DISP=SHR,DSN=SEUMXP0.DEMO.CWXTDATA
//RPTFILE  DD SYSOUT=* ,DCB=(LRECL=140,BLKSIZE=29000,RECFM=VBA)
//
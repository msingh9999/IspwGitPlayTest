//HDAELG0C JOB (MMC),'COBOL TEST',CLASS=L,
//  MSGCLASS=X,MSGLEVEL=(1,1),NOTIFY=&SYSUID                            00020002
//*                                                                     00000203
/*JOBPARM S=CWCC

//STEP2    EXEC PGM=CWXTCOB,PARM=00003
//STEPLIB  DD   DSN=CEE.SCEERUN,DISP=SHR
//         DD   DISP=SHR,DSN=SALESSUP.ISPW.PLAY.PRD.LOAD
//EMPFILE  DD  DISP=SHR,DSN=SALESSUP.XPEDITER.ISPW.DATA(CWXTDATA)
//RPTFILE  DD  SYSOUT=*
//SYSOUT   DD  SYSOUT=*
//
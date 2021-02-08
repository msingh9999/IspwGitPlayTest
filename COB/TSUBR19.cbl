000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID.    TSUBR19.
000300 AUTHOR.        BENCHMARK ISPW TRAINING.
000400 DATE-WRITTEN.  JANUARY 24TH, 1996.
000500 DATE-COMPILED.
000600
000700********************************************************
000800* THIS PROGRAM IS A TRAINING PROGRAM
000900*      CALLED FROM    TPROG19
001000*      WITH COPYLIB   TCPYB19 (LINKAGE AREA)
001100* ======================================================
001200*  ISPW (TM)
001300*  (C) COPYRIGHT 1996, 1998  BENCHMARK TECHNOLOGIES LTD.
001400*  THIS PRODUCT CONTAINS PROPRIETARY MATERIAL, AND MAY
001500*  NOT BE DIVULGED OR COPIED WITHOUT THE EXPLICIT
001600*  PERMISSION OF BENCHMARK TECHNOLOGIES LTD.
001700* ======================================================
001800*                   MODIFICATION  LOG
001900*
002000*  DD/MM/YY  PROGRAMMER  CHANGES
002100*  ********  **********  *******
002200*  96/01/24  ISPW        NEW PROGRAM
002300* ======================================================
002400 ENVIRONMENT DIVISION.
002500 CONFIGURATION SECTION.
002600 SOURCE-COMPUTER. IBM-370.
002700 OBJECT-COMPUTER. IBM-370.
002800
002900 INPUT-OUTPUT SECTION.
003000 FILE-CONTROL.
003100
003200********************************************************
003300*  FILES USED:
003400*   INPUT   JUST SOME DUMMY DATA TO READ IN
003500********************************************************
003600     SELECT INFILE  ASSIGN UT-S-INPUT
003700       ORGANIZATION IS SEQUENTIAL
003800       ACCESS IS SEQUENTIAL.
003900
004000
004100 DATA DIVISION.
004200
004300 FILE SECTION.
004400
004500 FD  INFILE
004600     LABEL RECORDS OMITTED
004700     BLOCK CONTAINS 0 RECORDS
004800     RECORDING MODE IS F
004900     DATA RECORD IS INPUT-REC.
005000
005100 01  INPUT-REC         PIC X(80).
005200
005300 WORKING-STORAGE SECTION.
005400
005500 01   INFILE-OPEN-FLAG     PIC X(1) VALUE 'N'.
005600      88 INFILE-OPEN       VALUE 'Y'.
005700
005800 LINKAGE SECTION.
005900********************************************************
006000**** A COPY MEMBER FOR THE LINKAGE AREA
006100********************************************************
006200 COPY TCPYB19.
006300
006400 PROCEDURE DIVISION USING PASS-ME-AROUND.
006500
006600 00000-MAIN-PROCEDURE.
006700
006800     IF NOT INFILE-OPEN THEN
006900        MOVE 'Y' TO INFILE-OPEN-FLAG
007000        MOVE 'N' TO INFILE-EOF-FLAG
007100        OPEN INPUT INFILE.
007200
007300     MOVE SPACES TO INCOMING-DATA.
007400
007500     IF ACTION-READ THEN
007600        PERFORM GET-ME-A-RECORD THRU GET-ME-A-RECORD-X
007700        UNTIL INFILE-EOF OR KEEPER.
007800
007900     IF ACTION-CLOSE THEN
008000        CLOSE INFILE.
008100
008200     GOBACK.
008300
008400 GET-ME-A-RECORD.
008500     READ INFILE AT END MOVE 'Y' TO INFILE-EOF-FLAG.
008600     IF NOT INFILE-EOF MOVE INPUT-REC TO INCOMING-DATA.
008700 GET-ME-A-RECORD-X.
008800     EXIT.
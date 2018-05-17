C     Last change:  RBW  17 Dec 1998    2:27 pm
      SUBROUTINE HFB1AL(ISUM,LENX,LCHFBR,NHFB,IN,IOUT)
C
C-------VERSION 0001 13JUNE1986 HFB1AL
C-----VERSION 01AUG1996 -- modified to allow 200 layers instead of 80
C
C     ******************************************************************
C     ALLOCATE ARRAY STORAGE FOR HORIZONTAL FLOW BARRIER PACKAGE
C     ******************************************************************
C
C        SPECIFICATIONS:
C     ------------------------------------------------------------------
      COMMON/HFBCOM/NBRLAY(200)
C     ------------------------------------------------------------------
C
C1------IDENTIFY PACKAGE.
      WRITE(IOUT,1)IN
    1 FORMAT(1H0,'HFB1 -- HORIZONTAL FLOW BARRIER PACKAGE, VERSION 1',
     1', 06/13/86',' INPUT READ FROM UNIT',I3)
C
C2------READ AND PRINT NHFB (TOTAL NUMBER OF HORIZONTAL FLOW BARRIERS).
      READ(IN,2) NHFB
    2 FORMAT(I10)
      WRITE(IOUT,3)NHFB
    3 FORMAT(1H ,'A TOTAL OF',I5,' HORIZONTAL FLOW BARRIERS')
C
C3------SET LCHFBR EQUAL TO ADDRESS OF FIRST UNUSED SPACE IN X.
      LCHFBR=ISUM
C
C4------CALCULATE AMOUNT OF SPACE USED BY HFB PACKAGE.
c begin modified code
c      ISP=5*NHFB
      ISP=6*NHFB
c end modidfied code
      ISUM=ISUM+ISP
C
C5------PRINT AMOUNT OF SPACE USED BY HFB PACKAGE.
      WRITE(IOUT,4)ISP
    4 FORMAT(1X,I6,' ELEMENTS IN X ARRAY ARE USED FOR HORIZONTAL FLOW'
     1,' BARRIERS')
      ISUM1=ISUM-1
      WRITE(IOUT,5)ISUM1,LENX
    5 FORMAT(1X,I6,' ELEMENTS OF X ARRAY USED OUT OF',I7)
      IF(ISUM1.GT.LENX) WRITE(IOUT,6)
    6 FORMAT(1X,'   ***X ARRAY MUST BE DIMENSIONED LARGER***')
C
C6------RETURN
      RETURN
      END
      SUBROUTINE HFB1RP(CR,CC,DELR,DELC,HFBR,IN,NCOL,NROW,NLAY,NODES,
     1        NHFB,IOUT)
C
C-----VERSION 0001 13JUNE1986 HFB1RP
C-----VERSION 01AUG1996 -- modified to allow 200 layers instead of 80
C
C     ******************************************************************
C     READ AND INITIALIZE DATA FOR HORIZONTAL FLOW BARRIER PACKAGE
C     ******************************************************************
C
C       SPECIFICATIONS:
C     ------------------------------------------------------------------
c begin modified code
c      DIMENSION CR(NODES),CC(NODES),DELR(NCOL),DELC(NROW),HFBR(5,NHFB)
      DIMENSION CR(NODES),CC(NODES),DELR(NCOL),DELC(NROW),HFBR(6,NHFB)
c end modified code
C
      COMMON/HFBCOM/NBRLAY(200)
      COMMON/FLWCOM/LAYCON(200)
C     ------------------------------------------------------------------
C1------PRINT EXPLANATION OF DATA.
      WRITE(IOUT,8)
    8 FORMAT(///1X,'HORIZONTAL FLOW BARRIERS -- LISTED BY ',
     1'LAYERS.  WITHIN EACH LAYER, THE LOCATION OF A BARRIER IS ',
     2'IDENTIFIED BY'/1X,'THE 2 CELLS ON BOTH SIDES OF THE BARRIER.  ',
     3'THE ROW AND COLUMN NUMBER OF THE TWO CELLS ARE RESPECTIVELY '/1X,
     4'IROW1, ICOL1, AND IROW2, ICOL2.')
C
C2------FOR EACH LAYER, READ AND PRINT INPUT DATA.
      II=0
      DO 100 K=1,NLAY
C
C2A-----READ AND PRINT NUMBER OF HORIZONTAL FLOW BARRIERS IN LAYER K.
      READ(IN,1) NBRLAY(K)
    1 FORMAT(I10)
      WRITE(IOUT,2) NBRLAY(K),K
    2 FORMAT(1H0,I5,' HORIZONTAL FLOW BARRIERS IN LAYER',I3)
C
C2B-----IF NO BARRIES, THEN GO TO NEXT LAYER.
      IF(NBRLAY(K).EQ.0) GOTO 100
C
C2C------PRINT HEADING LABEL.
      IF (LAYCON(K).EQ.0 .OR. LAYCON(K).EQ.2) WRITE(IOUT,3)
    3 FORMAT(1X,20X,'IROW1',5X,'ICOL1',5X,'IROW2',5X,'ICOL2',3X,
     1'TRANSMIS./WIDTH',3X,'BARRIER NO.'/1X,20X,71('-'))
      IF (LAYCON(K).EQ.1 .OR. LAYCON(K).EQ.3) WRITE(IOUT,4)
    4 FORMAT(1X,20X,'IROW1',5X,'ICOL1',5X,'IROW2',5X,'ICOL2',2X,
     1'HYD. COND./WIDTH',2X,'BARRIER NO.'/1X,20X,71('-'))
C
C2D-----FOR EACH HORIZONTAL FLOW BARRIER IN LAYER, READ AND PRINT BARRIER
C2D-----LOCATION AND HYDRAULIC CHARACTERISTIC.
      DO 90 JJ=1,NBRLAY(K)
      II=II+1
      READ(IN,5)IROW1,ICOL1,IROW2,ICOL2,HYDCHR
    5 FORMAT(4I10,F10.0)
      WRITE(IOUT,6)IROW1,ICOL1,IROW2,ICOL2,HYDCHR,II
    6 FORMAT(1X,19X,I5,3I10,5X,G12.4,I11)
      HFBR(1,II)=IROW1
      HFBR(2,II)=ICOL1
      HFBR(3,II)=IROW2
      HFBR(4,II)=ICOL2
      HFBR(5,II)=HYDCHR
c begin modified code
      HFBR(6,II)=K
c end modified code
   90 CONTINUE
  100 CONTINUE
C
C3------CHECK HFB DATA AND MODIFY HORIZONTAL BRANCH CONDUCTANCES FOR
C3------CONSTANT T LAYERS.
c-deleted
C
C4------RETURN
      RETURN
      END
      SUBROUTINE SHFB1N(CR,CC,DELR,DELC,HFBR,NCOL,NROW,NLAY,NHFB,IOUT)
C
C-----VERSION 0001 13JUNE1986 SHFB1N
C-----VERSION 01AUG1996 -- modified to allow 200 layers instead of 80
C
C     ******************************************************************
C     CHECK HFB DATA AND MODIFY HORIZONTAL CONDUCTANCES (CR AND CC)
C     FOR CONSTANT T LAYERS TO ACCOUNT FOR HORIZONTAL FLOW BARRIERS.
C     ******************************************************************
C
C        SPECIFICATIONS:
C     ------------------------------------------------------------------
      DIMENSION CR(NCOL,NROW,NLAY),CC(NCOL,NROW,NLAY),DELR(NCOL),
     1    DELC(NROW),HFBR(5,NHFB)
C
      COMMON/HFBCOM/NBRLAY(200)
      COMMON/FLWCOM/LAYCON(200)
C     ------------------------------------------------------------------
C
C1------INITIALIZE ERROR FLAG TO ZERO.
      IERFLG=0
C
C2------CHECK HFB DATA ONE LAYER AT A TIME.
      II=0
      DO 100 K=1,NLAY
C
C2A-----IF ZERO BARRIER IN LAYER, THEN GO TO NEXT LAYER.
      IF (NBRLAY(K).EQ.0) GOTO 100
C
C2B-----CHECK EACH BARRIER IN LAYER K.
      DO 90 JJ=1,NBRLAY(K)
      II=II+1
      TDW=HFBR(5,II)
C
C2B1----FIND ROW AND COLUMN NUMBERS OF THE TWO CELLS ON BOTH SIDES
C2B1----OF THE BARRIER AND REARRANGE HFBR ARRAY.
      I1=MIN(HFBR(1,II),HFBR(3,II))
      J1=MIN(HFBR(2,II),HFBR(4,II))
      I2=MAX(HFBR(1,II),HFBR(3,II))
      J2=MAX(HFBR(2,II),HFBR(4,II))
      HFBR(1,II)=I1
      HFBR(2,II)=J1
      HFBR(3,II)=I2
      HFBR(4,II)=J2
C
C2B2----IF I1=I2, BARRIER IS BETWEEN TWO CELLS ON THE SAME ROW.
      IF (I1.NE.I2) GOTO 10
C
C2B3----IF J2-J1=1, THE TWO CELLS ARE NEXT TO ONE ANOTHER (DATA OK).
C2B3----OTHERWISE, PRINT ERROR MESSAGE AND SET ERROR FLAG TO 1.
      IF ((J2-J1).NE.1) GOTO 80
C
C2B4----IF LAYER TYPE IS 1 OR 3, THEN GO TO NEXT BARRIER.
      IF (LAYCON(K).EQ.1 .OR. LAYCON(K).EQ.3) GOTO 90
C
C2B5-----IF CR(J1,I1,K)=0, THEN GO TO NEXT BARRIER.
      IF (CR(J1,I1,K).EQ.0.) GO TO 90
C
C2B6-----MODIFY CR(J1,I1,K) TO ACCOUNT FOR BARRIER.
      CR(J1,I1,K)=TDW*CR(J1,I1,K)*DELC(I1)/(TDW*DELC(I1)+CR(J1,I1,K))
      GOTO 90
C
C2B7----IF J1=J2, BARRIER IS BETWEEN TWO CELLS ON THE SAME COLUMN.
C2B7----OTHERWISE, PRINT ERROR MESSAGE AND SET ERROR FLAG TO 1.
   10 IF (J1.NE.J2) GOTO 80
C
C2B8----IF I2-I1=1, THE TWO CELLS ARE NEXT TO ONE ANOTHER (DATA OK).
C2B8----OTHERWISE, PRINT ERROR MESSAGE AND SET ERROR FLAG TO 1.
      IF ((I2-I1).NE.1) GOTO 80
C
C2B9----IF LAYER TYPE IS 1 OR 3, THEN GO TO NEXT BARRIER.
      IF (LAYCON(K).EQ.1 .OR. LAYCON(K).EQ.3) GOTO 90
C
C2B10---IF CC(J1,I1,K)=0, THEN GO TO NEXT BARRIER.
      IF (CC(J1,I1,K).EQ.0.) GO TO 90
C
C2B11---MODIFY CC(J1,I1,K) TO ACCOUNT BARRIER
      CC(J1,I1,K)=TDW*CC(J1,I1,K)*DELR(J1)/(TDW*DELR(J1)+CC(J1,I1,K))
      GOTO 90
C
C2B12---PRINT ERROR MESSAGE AND SET ERROR FLAG.
   80 WRITE (IOUT,1) II
    1 FORMAT (1X,'ERROR DETECTED IN LOCATION DATA OF BARRIER NO.',I4)
      IERFLG=1
   90 CONTINUE
  100 CONTINUE
C
C3-----HALT EXECUTION IF ERRORS ARE DETECTED.
      IF (IERFLG.EQ.1) STOP
C
C4-----RETURN
      RETURN
      END
      SUBROUTINE HFB1FM(HNEW,CR,CC,BOT,TOP,DELR,DELC,HFBR,NCOL,NROW,
     1      NLAY,NHFB)
C
C-----VERSION 0001 13JUNE1986 HFB1FM
C-----VERSION 01AUG1996 -- modified to allow 200 layers instead of 80
C
C     ******************************************************************
C     MODIFY HORIZONTAL BRANCH CONDUCTANCES IN VARIABLE-TRANSMISSIVITY
C     LAYERS TO ACCOUNT FOR HORIZONTAL FLOW BARRIERS.
C     ******************************************************************
C
C        SPECIFICATIONS:
C     ------------------------------------------------------------------
      DOUBLE PRECISION HNEW
C
      DIMENSION HNEW(NCOL,NROW,NLAY),CR(NCOL,NROW,NLAY),
     1    CC(NCOL,NROW,NLAY),BOT(NCOL,NROW,NLAY),TOP(NCOL,NROW,NLAY),
     2    DELR(NCOL),DELC(NROW),HFBR(5,NHFB)
C
      COMMON/HFBCOM/NBRLAY(200)
      COMMON/FLWCOM/LAYCON(200)
C     ------------------------------------------------------------------
      KB=0
      KT=0
      II2=0
C
C1------FOR EACH LAYER: CHECK IF T VARIES.
      DO 100 K=1,NLAY
      IF (NBRLAY(K).EQ.0) GO TO 5
      II1=II2+1
      II2=II2+NBRLAY(K)
    5 IF (LAYCON(K).EQ.3 .OR. LAYCON(K).EQ.2) KT=KT+1
C
C1A-----IF LAYER TYPE IS NOT 1 OR 3, THEN SKIP THIS LAYER.
      IF (LAYCON(K).NE.3 .AND. LAYCON(K).NE.1) GO TO 100
      KB=KB+1
C
C1B-----IF NO BARRIER IN THE LAYER, GO TO NEXT LAYER.
      IF (NBRLAY(K).EQ.0) GO TO 100
C
C1C-----FOR EACH BARRIER IN THE LAYER, MODIFY HORIZONTAL BRANCH
C1C-----CONDUCTANCES
      DO 90 II=II1,II2
C1C1----CELL (J1,I1,K) IS THE ONE WHOSE HORIZONTAL BRANCH
C1C1----CONDUCTANCES ARE TO BE MODIFIED.
      I1=HFBR(1,II)
      J1=HFBR(2,II)
C1C2----CELL (J2,I2,K) IS THE CELL NEXT TO CELL (J1,I1,K) AND SEPARETED
C1C2----FROM IT BY THE BARRIER.
      I2=HFBR(3,II)
      J2=HFBR(4,II)
      HCDW=HFBR(5,II)
C
C1C3----IF I1=I2, THEN MODIFY HORIZONTAL BRANCH CONDUCTANCES ALONG ROW
C1C3----DIRECTION.
      IF (I1.NE.I2) GOTO 20
C
C1C4----IF CR(J1,I1,K)=0, THEN GO TO NEXT BARRIER
      IF (CR(J1,I1,K).EQ.0.) GO TO 90
C
C1C5----CALCULATE AVERAGE SATURATED THICKNESS BETWEEN CELLS (J1,I1,K)
C1C5----AND (J2,I2,K).  NOTE: NEGATIVE SATURATED THICKNESS DOES NOT
C1C5----OCCUR; OTHERWISE, CR(J1,I1,K) WOULD BE ZERO AND THE FOLLOWING
C1C5----CALCULATION FOR SATURATED THICKNESS WOULD BE SKIPPED.
      HD1=HNEW(J1,I1,K)
      HD2=HNEW(J2,I2,K)
      IF (LAYCON(K).EQ.1) GO TO 10
      IF (HD1.GT.TOP(J1,I1,KT)) HD1=TOP(J1,I1,KT)
      IF (HD2.GT.TOP(J2,I2,KT)) HD2=TOP(J2,I2,KT)
   10 THKAVG=((HD1-BOT(J1,I1,KB))+(HD2-BOT(J2,I2,KB)))/2.
C
C1C6----MODIFY CR(J1,I1,K) TO ACCOUNT FOR BARRIER.
      TDW=THKAVG*HCDW
      CR(J1,I1,K)=TDW*CR(J1,I1,K)*DELC(I1)/(TDW*DELC(I1)+CR(J1,I1,K))
      GOTO 90
C
C1C7----CASE OF J1=J2. MODIFY HORIZONTAL BRANCH CONDUCTANCES ALONG
C1C7----COLUMN DIRECTION.
   20 CONTINUE
C
C1C8----IF CC(J1,I1,K)=0, THEN GO TO NEXT BARRIER.
      IF (CC(J1,I1,K).EQ.0.) GO TO 90
C
C1C9----CALCULATE AVERAGE SATURATED THICKNESS BETWEEN CELLS (J1,I1,K)
C1C9----AND (J2,I2,K).  NEGATIVE SATURATED THICKNESS DOES NOT OCCUR
C1C9----FOR THE SAME REASON AS DESCRIBED ABOVE.
      HD1=HNEW(J1,I1,K)
      HD2=HNEW(J2,I2,K)
      IF (LAYCON(K).EQ.1) GO TO 30
      IF (HD1.GT.TOP(J1,I1,KT)) HD1=TOP(J1,I1,KT)
      IF (HD2.GT.TOP(J2,I2,KT)) HD2=TOP(J2,I2,KT)
   30 THKAVG=((HD1-BOT(J1,I1,KB))+(HD2-BOT(J2,I2,KB)))/2.
C
C1C10---MODIFY CC(J1,I1,K) TO ACCOUNT FOR BARRIER.
      TDW=THKAVG*HCDW
      CC(J1,I1,K)=TDW*CC(J1,I1,K)*DELR(J1)/(TDW*DELR(J1)+CC(J1,I1,K))
   90 CONTINUE
  100 CONTINUE
C
C2------RETURN
      RETURN
      END

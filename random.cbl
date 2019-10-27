      ******************************************************************
      * Author: CAYO CESAR
      * Date: OCT 2019
      * Purpose: APRENDIZADO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FindTheNumber.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WW-RANDOM BINARY-LONG.
           01 i BINARY-LONG.
           01 WW-INPUT BINARY-LONG.
           01 WW-SEED BINARY-LONG.
           01 WW-TENTATIVAS BINARY-LONG VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *>value to add to the variable WW-RANDOM
           ACCEPT WW-SEED FROM TIME.
           *> generate a random number between 0 and 100
           COMPUTE WW-RANDOM = FUNCTION RANDOM (WW-SEED) * 100 + 1.
           DISPLAY "Guess a number between 100 and 0".

           PERFORM UNTIL EXIT

               ACCEPT WW-INPUT

               IF WW-INPUT EQUALS WW-RANDOM THEN
                   DISPLAY"You win!"
                   DISPLAY "attempts: " WW-TENTATIVAS
                   EXIT PERFORM
               ELSE
                   IF WW-INPUT > WW-RANDOM THEN
                       DISPLAY "The number is less than "  WW-INPUT
                       ADD 1 TO WW-TENTATIVAS
                   ELSE
                       IF WW-INPUT < WW-RANDOM THEN
                           DISPLAY "The number is greater than "
                           WW-INPUT
                           ADD 1 TO WW-TENTATIVAS
                   END-IF
               END-IF


           END-PERFORM.
           DISPLAY " ".
           DISPLAY "Press any key to leave"
           ACCEPT OMITTED.
           STOP RUN.
       END PROGRAM FindTheNumber.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Sanchez01.

       DATA DIVISION.
        WORKING-STORAGE SECTION.
            01 student.
                02 student-info occurs 5 times.
    	  	        03 fullname PIC X(30).
    		        03 sno PIC X(30).
    		        03 course PIC X(20).
    		        03 contact-info.
    		            04 mobile PIC X(11).
    		 	        04 landline PIC X(8).
    		        03 age PIC 99.
           77 CTR PIC 9.
           77 MENUCHOICE PIC 9.
           77 STUDCOUNT PIC 9 VALUE 0.
           77 STUDNOCHOICE PIC 9.
           77 STUDNOCHOICE2 PIC 9.


       PROCEDURE DIVISION.
       
           PERFORM MENUDISPLAY UNTIL MENUCHOICE = 6.
           STOP RUN.

           MENUDISPLAY.
               DISPLAY "MENU".
               DISPLAY "1. ADD STUDENT". 
               DISPLAY "2. EDIT STUDENT INFO".
               DISPLAY "3. DELETE STUDENT".
               DISPLAY "4. VIEW STUDENT".
               DISPLAY "5. VIEW ALL STUDENTS".
               DISPLAY "6. EXIT".
               DISPLAY "CHOICE: " WITH NO ADVANCING.
               ACCEPT MENUCHOICE.
               DISPLAY MENUCHOICE.
               
               EVALUATE MENUCHOICE
                   WHEN 1
                       ADD 1 TO STUDCOUNT
                       ACCEPT fullname(STUDCOUNT)
                       ACCEPT sno(STUDCOUNT)
                       ACCEPT course(STUDCOUNT)
                       ACCEPT mobile(STUDCOUNT)
                       ACCEPT landline(STUDCOUNT)
                       ACCEPT age(STUDCOUNT)
                       DISPLAY "DONE"
                       DISPLAY STUDCOUNT
                   WHEN 2
                       IF STUDCOUNT = 0
                           DISPLAY "CAN'T ADD. NO STUDENTS IN DIRECTORY"
                       ELSE
                       DISPLAY "LIST OF STUDENT NUMBERS"
                       DISPLAY "1."sno(1)
                       DISPLAY "2."sno(2)
                       DISPLAY "3."sno(3)
                       DISPLAY "4."sno(4)
                       DISPLAY "5."sno(5)
                       DISPLAY "WHAT TO EDIT (1-5): "
                       ACCEPT STUDNOCHOICE
                           ACCEPT course(STUDNOCHOICE)
                           ACCEPT mobile(STUDNOCHOICE)
                           ACCEPT landline(STUDNOCHOICE)
                           ACCEPT age(STUDNOCHOICE)
                           DISPLAY "EDITED"                       
                       END-IF
                   WHEN 3
                       IF STUDCOUNT = 0
                           DISPLAY "CAN'T DELETE. NO STUDENTS IN DIRECTORY"
                       ELSE
                       DISPLAY "LIST OF STUDENT NUMBERS"
                       DISPLAY "1."sno(1)
                       DISPLAY "2."sno(2)
                       DISPLAY "3."sno(3)
                       DISPLAY "4."sno(4)
                       DISPLAY "5."sno(5)
                       DISPLAY "WHAT TO DELETE (1-5): "
                       ACCEPT STUDNOCHOICE
                       ADD 1 TO STUDNOCHOICE GIVING STUDNOCHOICE2
                           MOVE fullname(STUDNOCHOICE2) TO fullname(STUDNOCHOICE)
                           MOVE sno(STUDNOCHOICE2) TO sno(STUDNOCHOICE)
                           MOVE course(STUDNOCHOICE2) TO course (STUDNOCHOICE)
                           MOVE mobile(STUDNOCHOICE2) TO mobile(STUDNOCHOICE)
                           MOVE landline(STUDNOCHOICE2) TO landline(STUDNOCHOICE)
                           MOVE age(STUDNOCHOICE2) TO age(STUDNOCHOICE)
                           DISPLAY "DELETED"
                   WHEN 4
                       DISPLAY "LIST OF STUDENT NUMBERS"
                       DISPLAY "1."sno(1)
                       DISPLAY "2."sno(2)
                       DISPLAY "3."sno(3)
                       DISPLAY "4."sno(4)
                       DISPLAY "5."sno(5)
                       DISPLAY "WHAT TO VIEW (1-5): "
                       ACCEPT STUDNOCHOICE
                       DISPLAY "FULL NAME: "fullname(STUDNOCHOICE)
                       DISPLAY "STUDENT NO: "sno(STUDNOCHOICE)
                       DISPLAY "COURSE: "course(STUDNOCHOICE)
                       DISPLAY "MOBILE NO: "mobile(STUDNOCHOICE)
                       DISPLAY "LANDLINE: "landline(STUDNOCHOICE)
                       DISPLAY "AGE: "age(STUDNOCHOICE)
               END-EVALUATE.

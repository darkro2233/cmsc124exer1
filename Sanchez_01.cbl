        INDENTIFICATION DIVISION.
        PROGRAM-ID. Sanchez01.

        DATA DIVISION.
            01 students.
        	    02 student-info OCCURS 5 TIMES.
        		    03 fullname PIC X(30).
        		    03 sno PIC X(30).
        		    03 course PIC X(20).
        		    03 contact-info.
        			    04 mobile PIC X(11).
        			    04 landline PIC X(8).
        		    03 age PIC 99.
            77 EXITED PIC 9 VALUE 0.
            77 CTR PIC 9
            77 MENUCHOICE PIC 9 VALUE 1.

        PROCEDURE DIVISION.
        
        MENU.
            DISPLAY "MENU".
            DISPLAY "1. ADD STUDENT". 
            DISPLAY "2. EDIT STUDENT INFO".
            DISPLAY "3. DELETE STUDENT".
            DISPLAY "4. VIEW STUDENT".
            DISPLAY "5. VIEW ALL STUDENTS".
            DISPLAY "6. EXIT".
            DISPLAY "CHOICE" WITH NO ADVANCING.
            ACCEPT MENUCHOICE.
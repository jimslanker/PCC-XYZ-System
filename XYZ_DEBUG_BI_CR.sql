--------------------------------------------------------------------------------
-- Filename: JSDEBUG_BI_CR.trg                                                --
-- Author: Jim Slanker                                                        --
-- Date: June 2nd 2022                                                        --
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER JSDEBUG_BI_CR BEFORE INSERT
ON XXJS_DEBUG REFERENCING OLD AS OLD NEW AS NEW FOR EACH ROW
--------------------------------------------------------------------------------
-- Before Insert Trigger on table XXJS_DEBUG                                  --
-- Author: Jim Slanker  created June 2nd 2022                                 --
--------------------------------------------------------------------------------

DECLARE


-------------------------------------------------------------------------------
-- B E G I N                                                    Trigger Code --
-------------------------------------------------------------------------------
BEGIN
 
  :NEW.created_by          := USER;
  :NEW.date_created        := SYSDATE;
  :NEW.seq_no              := xxjs_debug_seq.NEXTVAL;
  
  IF :NEW.procedure_name is NULL THEN                                       
     :NEW.procedure_name  := sys_context('USERENV','MODULE');              
  ELSE                                                                      
     :NEW.procedure_name  := SUBSTR(:NEW.procedure_name || ' '                     
                             || sys_context('USERENV','MODULE'),1,100);            
  END IF;                                                                   
  :NEW.client_program_name := sys_context('USERENV','CLIENT_PROGRAM_NAME'); 
  
 
-------------------------------------------------------------------------------
-- E N D                                                        Trigger Code --
-------------------------------------------------------------------------------
END;
/
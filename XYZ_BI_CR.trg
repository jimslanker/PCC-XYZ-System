--------------------------------------------------------------------------------
-- Filename: XXJSEMP_BI_CR.trg                                                --
-- Author: Jim Slanker                                                        --
-- Date: May 18th 2022                                                        --
--------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER XXJS_EMPLOYEES BEFORE INSERT
ON XXJS_EMPLOYEES REFERENCING OLD AS OLD NEW AS NEW FOR EACH ROW
--------------------------------------------------------------------------------
-- Before Insert Trigger on table XXJS_EMPLOYEES                              --
-- Author: Jim Slanker  created May 18th 2022                                 --
--------------------------------------------------------------------------------

DECLARE


-------------------------------------------------------------------------------
-- B E G I N                                                    Trigger Code --
-------------------------------------------------------------------------------
BEGIN
 
 
  -----------------------------------------------------------------------------
  -- If FED_SSN entered ensure it contains 9 digits                          --
  -----------------------------------------------------------------------------
  IF :NEW.FED_SSN is not null THEN
      IF LENGTH(:NEW.FED_SSN) <> 9 THEN
         raise_application_error(-20900,'cannot insert row.  FED_SSN must be 9 digits');
      END IF;
  END IF;
  

  -----------------------------------------------------------------------------
  -- If FED_EIN entered ensure it contains 9 digits                          --
  -----------------------------------------------------------------------------
  IF :NEW.FED_EIN is not null THEN
      IF LENGTH(:NEW.FED_EIN) <> 9 THEN
         raise_application_error(-20900,'cannot insert row.  FED_EIN must be 9 digits');
      END IF;
  END IF;  
  
  -----------------------------------------------------------------------------
  -- Validate if EMPLOYEE_TYPE = SALARY or HOURLY must have FED_SSN          --
  -----------------------------------------------------------------------------
  IF :NEW.EMPLOYEE_TYPE in ('SALARY','HOURLY') THEN
     IF :NEW.FED_SSN is null THEN
         raise_application_error(-20900,'cannot insert row.  FED_SSN is required for SALARY and HOURLY Employees');
     END IF;
  END IF;

 
  -----------------------------------------------------------------------------
  -- Validate if EMPLOYEE_TYPE = 1099 must have either FED_SSN or FED_EIN    --
  -----------------------------------------------------------------------------
  IF :NEW.EMPLOYEE_TYPE = '1099' THEN
     IF :NEW.FED_SSN is null and :NEW.FED_EIN is null THEN
         raise_application_error(-20900,'cannot insert row.  FED_SSN or FED_EIN required for 1099 Employees');
     END IF;
  END IF;

  
  -----------------------------------------------------------------------------
  -- Validate that FED_SSN and FED_EIN are both entered. Can only have one   --
  -----------------------------------------------------------------------------
  IF :NEW.FED_SSN is not null and :NEW.FED_EIN is not null THEN
         raise_application_error(-20900,'cannot insert row.  Cannot specify both FED_SSN and FED_EIN');
  END IF;

  


-------------------------------------------------------------------------------
-- E N D                                                        Trigger Code --
-------------------------------------------------------------------------------
END;
/
--------------------------------------------------------------------------------
-- Filename: XXJS_EMPLOYEES_CONTRAINTS                                        --
-- Author: Jim Slanker                                                        --
-- Date: May 18th 2022                                                        --
--------------------------------------------------------------------------------
PROMPT >>Create Constraints for XXJS_EMPLOYEES
  
ALTER TABLE XXJS_EMPLOYEES ADD (
  CONSTRAINT XXJSEMP_CK1
  CHECK (EMPLOYEE_TYPE IN ('SALARY','HOURLY','1099'))
  ENABLE VALIDATE,
  CONSTRAINT XXJSEMP_XXJSCOL_FK 
  FOREIGN KEY (FAVORITE_COLOR_ID) 
  REFERENCES XXJS_COLORS (COLOR_ID)
  ENABLE VALIDATE);
  
 
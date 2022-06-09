--------------------------------------------------------------------------------
-- Filename: XXJS_EMPLOYEES_INDEXES                                           --
-- Author: Jim Slanker                                                        --
-- Date: May 18th 2022                                                        --
--------------------------------------------------------------------------------
PROMPT >>Create indexes for XXJS_EMPLOYEES
  
CREATE INDEX XXJSEMP_FK1 ON XXJS_EMPLOYEES
(FAVORITE_COLOR_ID);

CREATE UNIQUE INDEX XXJSEMP_IDX1 on XXJS_EMPLOYEES (NAME);

CREATE INDEX XXJSEMP_IDX2 ON XXJS_EMPLOYEES (EMPLOYEE_TYPE);

CREATE UNIQUE INDEX XXJSEMP_IDX3 ON XXJS_EMPLOYEES(FED_SSN);




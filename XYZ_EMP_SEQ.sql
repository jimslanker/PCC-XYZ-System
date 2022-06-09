-------------------------------------------------------------------------------
-- Filename: XXJS_EMP_SEQ.sql                                                --
-- Author: Jim Slanker                                                       --
-- Date: May 5th 2020                                                        --
-- Sequence creation script for XXJS_EMPLOYEES table used to generate the    --
-- EMPLOYEE_ID value                                                         --
--------------------------------------------------------------------------------

DROP SEQUENCE XXJS_EMP_SEQ;

CREATE SEQUENCE XXJS_EMP_SEQ
  START WITH 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;
  


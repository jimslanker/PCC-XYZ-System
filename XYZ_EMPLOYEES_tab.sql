-------------------------------------------------------------------------------
-- Filename: XXJS_EMPLOYEES_tab.sql                                          --
-- Author: Jim Slanker                                                       --
-- Date: May 18th 2020                                                       --
-- Table creation script for XXJS_EMPLOYEES                                  --
-------------------------------------------------------------------------------
-- Using DEFAULT keyword to assign Primary key from sequence and DATE_CREATED--
-------------------------------------------------------------------------------
CREATE TABLE XXJS_EMPLOYEES
(
  EMPLOYEE_ID           NUMBER            DEFAULT  XXJS_EMP_SEQ.nextval NOT NULL ,
  NAME                  VARCHAR2(40)      NOT NULL, 
  EMPLOYEE_TYPE         VARCHAR2(10)      NOT NULL,   --SALARY,HOURLY,1099  
  DATE_CREATED          TIMESTAMP(6)      DEFAULT SYSDATE NOT NULL,
  DATE_UPDATED          TIMESTAMP(6),
  FED_SSN               NUMBER,           --Length must be 9 digits, required for SALARY and HOURLY
  FED_EIN               NUMBER,            --Length must be 9 digits 1099 Employees need this value or FED_SSN
  HOURLY_RATE           NUMBER,           --Required when EMPLOYEE_TYPE = HOURLY or 1099
  ANNUAL_SALARY         NUMBER,           --Required when EMPLOYEE_TYPE = SALARY
  FAVORITE_COLOR_ID     NUMBER,           --Create Foreign Key constraint to COLOR_ID in XXHR_COLORS
  PAYROLL_YTD           NUMBER,
  HIRE_DATE             DATE              NOT NULL,
  TERMINATION_DATE      DATE,
  WORK_STATE            VARCHAR2(40),
  WORK_CITY             VARCHAR2(40),
  PRIMARY KEY (EMPLOYEE_ID));

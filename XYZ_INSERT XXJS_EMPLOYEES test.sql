-----------------------------------------------------------------
-- Insert John Doe as HOURLY Employee                          --
-----------------------------------------------------------------
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   'HOURLY',
    15,
    SYSDATE,
    123456789,
    NULL);
 
-----------------------------------------------------------------
-- Insert Baker Mayfield as 1099 Employee                      --
-----------------------------------------------------------------
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('Baker Mayfield', 
   '1099',
    15,
    SYSDATE,
    NULL,
    123456789); 
 
-----------------------------------------------------------------
-- Test Inserts that fail                                      --
-----------------------------------------------------------------
  
--Test Invalid SSN only 8 digits
-----------------------------------------------------------------
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   'HOURLY',
    15,
    SYSDATE,
    12345678,
    NULL);
    
   
--Test Invalid EIN only 8 digits
-----------------------------------------------------------------
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   'HOURLY',
    15,
    SYSDATE,
    NULL,
    12345678);    

--Test Required SSN
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   'HOURLY',
    15,
    SYSDATE,
    NULL,
    NULL);
    
--Test Required EIN or SSN
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   '1099',
    15,
    SYSDATE,
    NULL,
    NULL);
    
--Test giving both SSN and EIN
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   '1099',
    15,
    SYSDATE,
    123456789,
    123456789);  
    
--Test inserting duplicate name
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('John Doe', 
   'HOURLY',
    15,
    SYSDATE,
    333456789,
    NULL);  
    
--Test inserting duplicate SSN
Insert into XXJS_EMPLOYEES
   (NAME, 
    EMPLOYEE_TYPE, 
    HOURLY_RATE,
    HIRE_DATE,
    FED_SSN,
    FED_EIN)
 Values
   ('Tom Cruise', 
   'HOURLY',
    15,
    SYSDATE,
    123456789,
    NULL);     
    
SELECT * FROM XXjs_employees;
   

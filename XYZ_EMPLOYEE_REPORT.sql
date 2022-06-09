-------------------------------------------------------------------------------
-- Filename: EMPLOYEE_REPORT.sql                                             --
-- Author: Jim Slanker                                                       --
-- Date: June 1st, 2022                                                      --
-- Queries the XXJS_EMPLOYEES table  Report Format                           --
-------------------------------------------------------------------------------
column employee_id heading 'Emp| ID' format 99999  
column name heading 'Emp Name' format A20
column employee_type heading 'Emp Type' format A8
column annual_salary heading 'Salary' format $999,999.99
column color_code heading 'Favorite|Color' format A8

PROMPT >>Report Active Salary Employees joined with Colors Table
select xe.employee_id, xe.name, xe.employee_type, xe.annual_salary, xc.color_code
  from xxjs_employees xe,
       xxjs_colors xc
  where xe.employee_type = 'SALARY'
    and TERMINATION_DATE is null
    and xc.color_id (+) = xe.favorite_color_id
  order by xe.annual_salary desc;	
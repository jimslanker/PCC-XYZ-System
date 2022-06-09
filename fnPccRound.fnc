--------------------------------------------------------------------------------
-- Filename: FnPccRound.fnc                                                   --
-- Author: Jim Slanker                                                        --
-- Date: June 9th 2022                                                        --
--------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION fnPccRound (p_number_in IN NUMBER) RETURN NUMBER IS
--------------------------------------------------------------------------------
-- The Function performs rounding on numeric values in the PCC XYZ System     --
-- a number is passed as input and a rounded number is returned               --
-- Update 6/9/2022 by Jim Slanker for Cherwell 440216 change decimals from 2 to 3
--------------------------------------------------------------------------------
BEGIN
  RETURN ROUND(p_number_in,3);  -- Round to 3 decimal positions 
END;
/

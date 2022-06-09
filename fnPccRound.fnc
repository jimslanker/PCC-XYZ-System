--------------------------------------------------------------------------------
-- Filename: FnPccRound.fnc                                                   --
-- Author: Jim Slanker                                                        --
-- Date: June 9th 2022                                                        --
--------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION fnPccRound (p_number_in IN NUMBER) RETURN NUMBER IS
--------------------------------------------------------------------------------
-- The Function performs rounding on numeric values in the PCC XYZ System     --
-- a number is passed as input and a rounded number is returned               --
--------------------------------------------------------------------------------
BEGIN
  RETURN ROUND(p_number_in,2);  -- Round to 2 Decimal Positions
END;
/

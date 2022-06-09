-------------------------------------------------------------------------------
-- Filename: COLOR_REPORT.sql                                                --
-- Author: Jim Slanker                                                       --
-- Date: June 1st, 2022                                                      --
-- Queries the XXJS_COLORS table                                             --
-------------------------------------------------------------------------------
column color_id heading 'Color| ID' format 999  
column color_code heading 'Color Code' format A10


select color_id, color_code
from xxjs_colors order by color_id;
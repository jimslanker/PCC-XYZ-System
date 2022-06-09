-------------------------------------------------------------------------------
-- Filename: XXJS_DEBUG_SEQ.sql                                              --
-- Author: Jim Slanker                                                       --
-- Date: June 2nd 2022                                                       --
-- Sequence creation script for XXJS_DEBUG table used to generate the SEQ_NO --
-- column in the XXJS_DEBUG Table                                            --
-------------------------------------------------------------------------------
PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
PROMPT >> Step #1                                                             >>         
PROMPT >> Drop Sequence XXJS_DEBUG_SEQ                                        >>
PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

DROP SEQUENCE XXJS_DEBUG_SEQ;

PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
PROMPT >> Step #2                                                             >>         
PROMPT >> Create Sequence XXJS_DEBUG_SEQ                                      >>
PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CREATE SEQUENCE XXJS_DEBUG_SEQ
  START WITH 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;
  


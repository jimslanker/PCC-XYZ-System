-------------------------------------------------------------------------------
-- Filename: XXJS_DEBUG_TAB.sql                                              --
-- Author: Jim Slanker                                                       --
-- Date: June 2nd 2022                                                       --
-- Table creation script for XXJS_DEBUG table                                --
-------------------------------------------------------------------------------
PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
PROMPT >> Step #1                                                             >>         
PROMPT >> DROP Table XXJS_DEBUG                                               >>
PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

drop table xxjs_debug;

PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
PROMPT >> Step #2                                                             >>         
PROMPT >> Create Table XXJS_DEBUG                                             >>
PROMPT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CREATE TABLE XXJS_DEBUG
(
  SEQ_NO               NUMBER                   NOT NULL,
  TEXT                 VARCHAR2(4000 BYTE),
  PROCEDURE_NAME       VARCHAR2(100 BYTE),
  CREATED_BY           VARCHAR2(20 BYTE)        NOT NULL,
  DATE_CREATED         DATE                     NOT NULL,
  CLIENT_PROGRAM_NAME  VARCHAR2(400 BYTE),
  PRIMARY KEY (SEQ_NO)
);

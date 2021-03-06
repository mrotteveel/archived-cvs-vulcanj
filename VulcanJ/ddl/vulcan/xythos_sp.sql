-- S0291798
-- VULCAN: XYTHOS PROBLEM CREATING STORED PROCEDURE THAT USES ANOTHER STORED PROCEDURE IN SELECT 
CREATE DATABASE 'test.fdb';

CREATE TABLE mytable ( datum INTEGER );
COMMIT;

SET TERM ^;


CREATE PROCEDURE subtable ( p_key INTEGER ) RETURNS ( p_result INTEGER ) AS

BEGIN
  SELECT datum FROM mytable WHERE datum < :p_key INTO :p_result;
END
^

/* Test case: the value "p_result" will be unknown, even though */
/* it is in the declared result set of the above procedure.     */

CREATE PROCEDURE test ( p_value integer ) AS
DECLARE v INTEGER;
BEGIN
   FOR SELECT p_result FROM subtable INTO :v DO SUSPEND;
END
^

SET TERM ; ^

drop database;

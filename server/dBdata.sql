
/*SCHEMA TO CREATE THE USERTABLE*/
CREATE TABLE "USERTABLE"
(
  "USER_ID" INT NOT NULL UNIQUE PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MINVALUE 1 NO MAXVALUE NO CYCLE NO CACHE ORDER),
  "EMAIL"VARCHAR(20) NOT NULL,
  "PASSWORD"VARCHAR(20) NOT NULL,
  "DISPLAY_NAME"VARCHAR(50) NOT NULL,
  "USER_STATE"SMALLINT NOT NULL,
  "LAST_ACTIVITY_TIME" TIMESTAMP NOT NULL	
)ORGANIZE BY ROW;


/*SCHEMA TO CREATE THE TASKTABLE*/

CREATE TABLE "TASKTABLE" 
(
  "TASK_ID" INT UNIQUE NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1 MINVALUE 1 NO MAXVALUE NO CYCLE NO CACHE ORDER),
  "TASK_NAME" VARCHAR(50) NOT NULL,
  "USER_ID" INT NOT NULL,
  "TASK_DESCRIPTION"CLOB NOT NULL,
  "TASK_CREATION_DATE"TIMESTAMP,
  "LAST_UPDATED"TIMESTAMP NOT NULL,
  "NO_OF_COMMENTS"INT NOT NULL,
  "TASK_STATUS"SMALLINT NOT NULL
)ORGANIZE BY ROW;

/*COMMAND TO CREATE THE FORIEGN KEY*/

ALTER TABLE TASKTABLE
   ADD CONSTRAINT TASKTABLE_USERTABLE_FK FOREIGN KEY (USER_ID)
   REFERENCES USERTABLE (USER_ID);


/*COMMAND TO CREATE THE COMMENTTABLE*/
CREATE TABLE "COMMENTTABLE"
 (
   "COMMENT_DESCRIPTION" CLOB NOT NULL,
   "COMMENT_CREATION_DATE"TIMESTAMP NOT NULL,
   "TASK_ID"INT NOT NULL,
   "USER_ID"INT NOT NULL,
   "ORDER"INT NOT NULL
 )ORGANIZE BY ROW;


/*COMMANDS TO CREATE THE FORIEGN KEYS*/
ALTER TABLE COMMENTTABLE
   ADD CONSTRAINT COMMENTTABLE_USERTABLE_FK FOREIGN KEY (USER_ID)
   REFERENCES USERTABLE (USER_ID);

ALTER TABLE COMMENTTABLE
   ADD CONSTRAINT COMMENTTABLE_TASKTABLE_FK FOREIGN KEY (TASK_ID)
   REFERENCES TASKTABLE (TASK_ID);

/*COMMANDS TO INSERT THE DATA INTO THE USERTABLE*/
INSERT INTO DASH6139.USERTABLE VALUES (DEFAULT,'peter@sitename.com','PETER',DATE)
INSERT INTO DASH6139.USERTABLE VALUES (DEFAULT,'eric@sitename.com','ERIC',DATE)
INSERT INTO DASH6139.USERTABLE VALUES (DEFAULT,'sam@sitename.com','SAM',DATE)
INSERT INTO DASH6139.USERTABLE VALUES (DEFAULT,'mark@sitename.com','MARK',DATE)





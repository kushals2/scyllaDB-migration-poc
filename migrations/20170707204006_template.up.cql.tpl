CREATE TABLE {{.TABLE}} (
   uid uuid,
   name text,
   created_time timestamp,
   PRIMARY KEY (uid, created_time)
);

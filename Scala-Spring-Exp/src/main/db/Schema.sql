DROP DATABASE IF EXISTS zResearch;
CREATE DATABASE IF NOT EXISTS zResearch;
USE zResearch;

CREATE TABLE IF NOT EXISTS User (
    id integer(19) NOT NULL AUTO_INCREMENT,
    userName varchar(100) NOT NULL,
    password varchar(100) NOT NULL,
    status integer(19),
    email  varchar(100) NOT NULL,
    title varchar(5),
    firstName varchar(100),
    lastName varchar(100),
    PRIMARY KEY (id),
    KEY fk_userName_idx (userName),
    KEY fk_userNamePasswd_idx (userName,password),
    KEY fk_email_idx (email)
);

CREATE TABLE IF NOT EXISTS UserRole (
   id integer(19) NOT NULL AUTO_INCREMENT,
   userId integer(19) NOT NULL,
   roleName varchar(50) NOT NULL,

   PRIMARY KEY (id),
   UNIQUE KEY uni_username_role (roleName,userId),
   KEY fk_userId_idx (userId),
   CONSTRAINT fk_uRolesUserId FOREIGN KEY (userId) REFERENCES User (id)

);


SET @s =
       (SELECT IF((SELECT COUNT(*)
                     FROM INFORMATION_SCHEMA.COLUMNS
                    WHERE     table_name = 'User'
                          AND table_schema = DATABASE()
                          AND column_name = 'enabled') > 0,
                  "SELECT 1",
                  "alter table User add enabled  tinyint(1) DEFAULT 0"));

PREPARE stmt FROM @s;
EXECUTE stmt;

CREATE TABLE IF NOT EXISTS RefList (
   id integer(19) NOT NULL AUTO_INCREMENT,
   name varchar(50) NOT NULL,
   description varchar(200) NOT NULL,

   PRIMARY KEY (id),
   UNIQUE KEY uni_refListName (name),
 INDEX refListNameIDX (name)

);

CREATE TABLE IF NOT EXISTS RefItem (
 id integer(19) NOT NULL AUTO_INCREMENT,
 name  varchar(200) NOT NULL,
 code  varchar(200) NOT NULL,
 label varchar(200) NOT NULL,
 refListId integer(19) NOT NULL,
 description varchar(200),
 archiveDate timestamp NULL default current_timestamp,

 PRIMARY KEY (id),
 UNIQUE KEY uni_refItem (code,label,refListId),
 CONSTRAINT fk_rRefListId FOREIGN KEY (refListId) REFERENCES RefList (id),

 INDEX refItemNameIDX (name),
 INDEX refItemCodeIDX (code),
 INDEX refItemCodeLabelIDX ( code, label),
 INDEX refListCodeLabelIDX (code, label, refListId)

);

CREATE TABLE IF NOT EXISTS Stall (
 id     integer(19) NOT NULL AUTO_INCREMENT,
 name   varchar(250) NOT NULL,
 description LONGTEXT NOT NULL,
 creationDate timestamp NULL default current_timestamp,
 
 PRIMARY KEY (id),
 UNIQUE KEY uniqueStallName (name),
 INDEX stalNameIDX (name)
);

CREATE TABLE IF NOT EXISTS ProductCategory (
 id     integer(19) NOT NULL AUTO_INCREMENT,
 name   varchar(200) NOT NULL,
 parentId integer(19),
 description varchar(200),
 
 PRIMARY KEY (id),
 UNIQUE KEY uniqueProdCategory (name),
 CONSTRAINT fk_parentId FOREIGN KEY (parentId) REFERENCES ProductCategory(id),
 
 INDEX prdCatNameIDX (name),
 INDEX prdCatParentIDX (parentId),
 INDEX prdCatNameParentIDX (name,parentId)
 
);


 







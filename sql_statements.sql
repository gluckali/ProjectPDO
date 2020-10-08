-- db aanmaken
create database project1;

  --tabel naam aanmaken / id not null primary key
  Create Table tabelnaam;
  id int not null auto_increment,
--  primary key(id)

  -- naam email account id id
 naam varchar(250),
 email varchar(250),
 account_id int,
 primary key(id),
);
 --

 -- persoon tabel
CREATE TABLE PERSOON(
  id INT NOT NULL auto_increment,
  account_id INT NOT NULL,
  firstname varchar(250) NOT NULL,
  middlename varchar(250),
  lastname varchar(250) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY(account_id) References account(id)
);
--insert entry into table --
INSERT INTO account VALUES (NULL, 'omar' 'omar.elmedny17@gmail.com' 'admim');

-- store the id Email
SET @v1 := (Select id FROM account WHERE email='omar.elmedny17@gmail.com');

-- insert entry into PERSOON
Insert INTO persoon VALUES (NULL, @V1, 'omar', 'el', 'medny');

-- email > unique > can't make more than 1
-- you create the first table which is the most important one then after that you
-- make the second one which links to the first one

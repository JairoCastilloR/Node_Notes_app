CREATE DATABASE database_notes;

USE database_notes;

CREATE TABLE Students(
    id INT(11) NOT NULL,
    username VARCHAR(15) NOT NULL,
    password VARCHAR(20) NOT NULL,
    names VARCHAR(50) NOT NULL,
    lastnames VARCHAR(50) NOT NULL,
    DNI INT(99999999),
    age SMALLINT(99),


);

ALTER TABLE Students
    ADD PRIMARY KEY(id);

ALTER TABLE Students
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;

CREATE DATABASE pet_adoption;
USE pet_adoption;

CREATE TABLE animals (id INT NOT NULL,
name varchar(10),
breed varchar(10),
color varchar(10),
gender varchar(10),
status INTEGER);

CREATE TABLE adoptions (animal_id INT NOT NULL,
name varchar(10),
contact  varchar(10),
date TIMESTAMP);
Select*from sys. tables;
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('1', 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('2', 'Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('3', 'Princess', 'Pomeranian', 'Black', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('4', 'Cricket', 'Chihuahua', 'Brown', 'Male', 0);
INSERT INTO animals (id, name, breed, color, gender, status) VALUES ('5', 'Princess', 'Poodle', 'Purple', 'Female', 0);
SELECT *FROM animals;
SELECT breed FROM animals;
SELECT name FROM animals WHERE gender = 'Female';
SELECT id FROM animals WHERE status = 0;
UPDATE animals SET color = 'Brown' WHERE id = '5';
UPDATE animals SET color = 'Brown' WHERE name = 'Princess';
UPDATE animals SET color = 'Brown' WHERE color = 'Purple';
DELETE FROM animals WHERE id = '1';
UPDATE animals SET status = 1 WHERE id = '4';

drop table adoptions;

create table adoptions(animal_id int,name varchar(10),contact varchar(10),date TIMESTAMP date);

INSERT INTO adoptions(animal_id,name,contact,dates)
values(2,'cherry','cherry@gmail.com','4/12/2023');
INSERT INTO adoptions(animal_id,name,contact,dates)
values(2,'chaishvi','chai@gmail.com','5/12/2023');

select*from adoptions;
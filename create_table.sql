CREATE TABLE heart_disease (
    age smallint,
    gender tinyint, 
    chest_pain_type smallint,
    resting_blood_pressure smallint,
    cholestoral smallint,
    fasting_blood_sugar boolean,
    resting_electrocardiographic_result smallint,
    max_heart_rate smallint,
    exercise_induced_angina bool,
    oldpeak float,
    slope smallint,
    ca smallint,
    thal smallint,
    heart_disease boolean
);

LOAD DATA INFILE '/var/lib/mysql-files/heart.csv' INTO TABLE heart_disease
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;	

ALTER TABLE heart_disease
ADD COLUMN id int not null primary key auto_increment FIRST;



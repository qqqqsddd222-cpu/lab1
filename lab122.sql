CREATE TABLE teachers (
    teacher_code INTEGER PRIMARY KEY,
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    patronymic VARCHAR(50),
    education INTEGER,
    EX VARCHAR(50),
    department_nur INTEGER,
    contact_phone_ INTEGER
);

CREATE TABLE "group" (
    group_id INTEGER PRIMARY KEY,
    max_number INTEGER NOT NULL,
    cod_F VARCHAR(100),
    curator INTEGER,
    CONSTRAINT fk_curator FOREIGN KEY (curator) 
        REFERENCES teachers (teacher_code) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

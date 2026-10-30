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

INSERT INTO teachers (teacher_code, last_name, first_name, patronymic, education, "ex", department_nur, contact_phone_) 
VALUES 
    (1, 'Иванов', 'Иван', 'Иванович', 1, 'высшее', 101, 1234567),
    (2, 'Петрова', 'Мария', 'Сергеевна', 2, 'высшее', 102, 2345678),
    (3, 'Сидоров', 'Алексей', 'Петрович', 1, 'среднее-специальное', 103, 3456789),
    (4, 'Кузнецова', 'Ольга', 'Дмитриевна', 2, 'высшее', 104, 4567890);

INSERT INTO "group" (group_id, max_number, cod_F, curator) 
VALUES 
    (1, 25, 'ИС-21', 1),
    (2, 30, 'ПИ-22', 2),
    (3, 20, 'ЭК-23', 3),
    (4, 28, 'ИС-22', 4);

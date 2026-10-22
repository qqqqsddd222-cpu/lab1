CREATE TABLE учителя (
    код_преподавателя SERIAL PRIMARY KEY,
    фамилия VARCHAR(50),
    имя VARCHAR(50),
    отчество VARCHAR(50),
    образование INTEGER,
    экс VARCHAR(50),
    отдел_нур INTEGER,
    контактный_телефон INTEGER
);

CREATE TABLE группа (
    group_id SERIAL PRIMARY KEY,
    максимальное_число INTEGER NOT NULL,
    cod_F VARCHAR(100),
    куратор INTEGER,
    CONSTRAINT fk_куратор FOREIGN KEY (куратор) 
        REFERENCES учителя (код_преподавателя) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

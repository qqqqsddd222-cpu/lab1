CREATE TABLE teachers (
    teacher_code SERIAL PRIMARY KEY, -- Если хотите, чтобы код генерировался сам. Если нет, замените на INTEGER.
    f VARCHAR(50),
    i VARCHAR(50),
    o VARCHAR(50),
    education INTEGER,
    ex VARCHAR(50),                  -- ex — зарезервированное слово в некоторых СУБД, лучше назвать experience
    department_nu INTEGER,
    contact_phone VARCHAR(20)
);
-- Profesores
INSERT INTO professor (name) VALUES ('Juan Perez');
INSERT INTO professor (name) VALUES ('Maria Rodriguez');
INSERT INTO professor (name) VALUES ('Carlos Gomez');

-- Cursos
INSERT INTO course (name, credits, professor_id) VALUES ('Introduccion a la Programacion', 4, 1);
INSERT INTO course (name, credits, professor_id) VALUES ('Estructuras de Datos', 4, 1);
INSERT INTO course (name, credits, professor_id) VALUES ('Anatomia Humana', 5, 2);
INSERT INTO course (name, credits, professor_id) VALUES ('Fisiologia', 5, 2);
INSERT INTO course (name, credits, professor_id) VALUES ('Derecho Penal', 3, 3);
INSERT INTO course (name, credits, professor_id) VALUES ('Historia del Arte', 3, 3);

-- Estudiantes
INSERT INTO student (name, code, program) VALUES ('Laura Garcia', '2021102001', 'Ingenieria de Sistemas');
INSERT INTO student (name, code, program) VALUES ('Pedro Pascal', '2021102002', 'Ingenieria de Sistemas');
INSERT INTO student (name, code, program) VALUES ('Andres Lopez', '2021102003', 'Medicina');
INSERT INTO student (name, code, program) VALUES ('Sofia Torres', '2021102004', 'Derecho');
INSERT INTO student (name, code, program) VALUES ('Camila Velez', '2021102005', 'Medicina');

-- Inscripciones (student_course)
INSERT INTO student_course (student_id, course_id) VALUES (1, 1);
INSERT INTO student_course (student_id, course_id) VALUES (1, 2);
INSERT INTO student_course (student_id, course_id) VALUES (2, 1);
INSERT INTO student_course (student_id, course_id) VALUES (3, 3);
INSERT INTO student_course (student_id, course_id) VALUES (3, 4);
INSERT INTO student_course (student_id, course_id) VALUES (4, 5);
INSERT INTO student_course (student_id, course_id) VALUES (4, 6);
INSERT INTO student_course (student_id, course_id) VALUES (5, 3);


-- ─── PERMISOS: 4 operaciones × 4 tablas = 16 permisos ───────────────────────
INSERT INTO permission (name) VALUES ('CREATE_STUDENT');    -- 1
INSERT INTO permission (name) VALUES ('READ_STUDENT');      -- 2
INSERT INTO permission (name) VALUES ('UPDATE_STUDENT');    -- 3
INSERT INTO permission (name) VALUES ('DELETE_STUDENT');    -- 4
INSERT INTO permission (name) VALUES ('CREATE_PROFESSOR');  -- 5
INSERT INTO permission (name) VALUES ('READ_PROFESSOR');    -- 6
INSERT INTO permission (name) VALUES ('UPDATE_PROFESSOR');  -- 7
INSERT INTO permission (name) VALUES ('DELETE_PROFESSOR');  -- 8
INSERT INTO permission (name) VALUES ('CREATE_ENROLLMENT'); -- 9
INSERT INTO permission (name) VALUES ('READ_ENROLLMENT');   -- 10
INSERT INTO permission (name) VALUES ('UPDATE_ENROLLMENT'); -- 11
INSERT INTO permission (name) VALUES ('DELETE_ENROLLMENT'); -- 12
INSERT INTO permission (name) VALUES ('CREATE_COURSE');     -- 13
INSERT INTO permission (name) VALUES ('READ_COURSE');       -- 14
INSERT INTO permission (name) VALUES ('UPDATE_COURSE');     -- 15
INSERT INTO permission (name) VALUES ('DELETE_COURSE');     -- 16

-- ─── ROLES ───────────────────────────────────────────────────────────────────
INSERT INTO role (name) VALUES ('ADMIN');    -- 1
INSERT INTO role (name) VALUES ('DIRECTOR'); -- 2

-- ─── ADMIN: todos los permisos (1 – 16) ──────────────────────────────────────
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 1);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 2);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 3);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 4);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 5);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 6);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 7);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 8);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 9);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 10);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 11);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 12);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 13);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 14);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 15);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 16);

-- ─── DIRECTOR: leer todo + CRUD completo de Enrollment ───────────────────────
--   READ de todas las tablas
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 2);  -- READ_STUDENT
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 6);  -- READ_PROFESSOR
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 14); -- READ_COURSE
--   CRUD completo de Enrollment
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 9);  -- CREATE_ENROLLMENT
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 10); -- READ_ENROLLMENT
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 11); -- UPDATE_ENROLLMENT
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 12); -- DELETE_ENROLLMENT

-- ─── USUARIOS (contraseña en texto plano solo para pruebas) ──────────────────
INSERT INTO app_user (username, password) VALUES ('carlos',  '{noop}admin123');    -- 1
INSERT INTO app_user (username, password) VALUES ('maria',   '{noop}admin123');    -- 2
INSERT INTO app_user (username, password) VALUES ('ana',     '{noop}dir123');      -- 3
INSERT INTO app_user (username, password) VALUES ('juan',    '{noop}dir123');      -- 4
INSERT INTO app_user (username, password) VALUES ('sofia',   '{noop}dir123');      -- 5

-- ─── ASIGNACIÓN DE ROLES ─────────────────────────────────────────────────────
INSERT INTO user_role (user_id, role_id) VALUES (1, 1); -- carlos  → ADMIN
INSERT INTO user_role (user_id, role_id) VALUES (2, 1); -- maria   → ADMIN
INSERT INTO user_role (user_id, role_id) VALUES (3, 2); -- ana     → DIRECTOR
INSERT INTO user_role (user_id, role_id) VALUES (4, 2); -- juan    → DIRECTOR
INSERT INTO user_role (user_id, role_id) VALUES (5, 2); -- sofia   → DIRECTOR


-- 10 Profesores
INSERT INTO professor (name) VALUES ('Juan Perez');
INSERT INTO professor (name) VALUES ('Maria Rodriguez');
INSERT INTO professor (name) VALUES ('Carlos Gomez');
INSERT INTO professor (name) VALUES ('Ana Martinez');
INSERT INTO professor (name) VALUES ('Luis Hernandez');
INSERT INTO professor (name) VALUES ('Pedro Sanchez');
INSERT INTO professor (name) VALUES ('Rosa Moreno');
INSERT INTO professor (name) VALUES ('Jorge Castillo');
INSERT INTO professor (name) VALUES ('Elena Vargas');
INSERT INTO professor (name) VALUES ('Miguel Torres');

-- 50 Cursos
-- Juan Perez (Sistemas)
INSERT INTO course (name, credits, professor_id) VALUES ('Introduccion a la Programacion', 4, 1);
INSERT INTO course (name, credits, professor_id) VALUES ('Estructuras de Datos', 4, 1);
INSERT INTO course (name, credits, professor_id) VALUES ('Algoritmos y Complejidad', 4, 1);
INSERT INTO course (name, credits, professor_id) VALUES ('Base de Datos', 3, 1);
INSERT INTO course (name, credits, professor_id) VALUES ('Redes de Computadores', 3, 1);

-- Maria Rodriguez (Medicina)
INSERT INTO course (name, credits, professor_id) VALUES ('Anatomia Humana', 5, 2);
INSERT INTO course (name, credits, professor_id) VALUES ('Fisiologia', 5, 2);
INSERT INTO course (name, credits, professor_id) VALUES ('Bioquimica Medica', 4, 2);
INSERT INTO course (name, credits, professor_id) VALUES ('Farmacologia', 4, 2);
INSERT INTO course (name, credits, professor_id) VALUES ('Patologia General', 5, 2);

-- Carlos Gomez (Derecho)
INSERT INTO course (name, credits, professor_id) VALUES ('Derecho Penal', 3, 3);
INSERT INTO course (name, credits, professor_id) VALUES ('Derecho Civil', 3, 3);
INSERT INTO course (name, credits, professor_id) VALUES ('Derecho Constitucional', 3, 3);
INSERT INTO course (name, credits, professor_id) VALUES ('Derecho Laboral', 3, 3);
INSERT INTO course (name, credits, professor_id) VALUES ('Derecho Internacional', 2, 3);

-- Ana Martinez (Arquitectura)
INSERT INTO course (name, credits, professor_id) VALUES ('Dibujo Tecnico', 2, 4);
INSERT INTO course (name, credits, professor_id) VALUES ('Diseno Arquitectonico I', 4, 4);
INSERT INTO course (name, credits, professor_id) VALUES ('Diseno Arquitectonico II', 4, 4);
INSERT INTO course (name, credits, professor_id) VALUES ('Historia de la Arquitectura', 3, 4);
INSERT INTO course (name, credits, professor_id) VALUES ('Materiales de Construccion', 3, 4);

-- Luis Hernandez (Historia y Arte)
INSERT INTO course (name, credits, professor_id) VALUES ('Historia del Arte', 3, 5);
INSERT INTO course (name, credits, professor_id) VALUES ('Historia Universal', 3, 5);
INSERT INTO course (name, credits, professor_id) VALUES ('Historia de Colombia', 3, 5);
INSERT INTO course (name, credits, professor_id) VALUES ('Filosofia Moderna', 2, 5);
INSERT INTO course (name, credits, professor_id) VALUES ('Etica y Sociedad', 2, 5);

-- Pedro Sanchez (Matematicas)
INSERT INTO course (name, credits, professor_id) VALUES ('Calculo Diferencial', 4, 6);
INSERT INTO course (name, credits, professor_id) VALUES ('Calculo Integral', 4, 6);
INSERT INTO course (name, credits, professor_id) VALUES ('Algebra Lineal', 4, 6);
INSERT INTO course (name, credits, professor_id) VALUES ('Ecuaciones Diferenciales', 3, 6);
INSERT INTO course (name, credits, professor_id) VALUES ('Estadistica y Probabilidad', 3, 6);

-- Rosa Moreno (Fisica)
INSERT INTO course (name, credits, professor_id) VALUES ('Fisica Mecanica', 4, 7);
INSERT INTO course (name, credits, professor_id) VALUES ('Fisica Electromagnetismo', 4, 7);
INSERT INTO course (name, credits, professor_id) VALUES ('Fisica Moderna', 3, 7);
INSERT INTO course (name, credits, professor_id) VALUES ('Laboratorio de Fisica I', 2, 7);
INSERT INTO course (name, credits, professor_id) VALUES ('Laboratorio de Fisica II', 2, 7);

-- Jorge Castillo (Quimica)
INSERT INTO course (name, credits, professor_id) VALUES ('Quimica General', 4, 8);
INSERT INTO course (name, credits, professor_id) VALUES ('Quimica Organica', 4, 8);
INSERT INTO course (name, credits, professor_id) VALUES ('Quimica Analitica', 3, 8);
INSERT INTO course (name, credits, professor_id) VALUES ('Laboratorio de Quimica', 2, 8);
INSERT INTO course (name, credits, professor_id) VALUES ('Quimica Ambiental', 3, 8);

-- Elena Vargas (Biologia)
INSERT INTO course (name, credits, professor_id) VALUES ('Biologia Celular', 4, 9);
INSERT INTO course (name, credits, professor_id) VALUES ('Genetica', 4, 9);
INSERT INTO course (name, credits, professor_id) VALUES ('Microbiologia', 3, 9);
INSERT INTO course (name, credits, professor_id) VALUES ('Ecologia', 3, 9);
INSERT INTO course (name, credits, professor_id) VALUES ('Botanica', 3, 9);

-- Miguel Torres (Economia)
INSERT INTO course (name, credits, professor_id) VALUES ('Microeconomia', 3, 10);
INSERT INTO course (name, credits, professor_id) VALUES ('Macroeconomia', 3, 10);
INSERT INTO course (name, credits, professor_id) VALUES ('Economia Internacional', 3, 10);
INSERT INTO course (name, credits, professor_id) VALUES ('Finanzas Corporativas', 4, 10);
INSERT INTO course (name, credits, professor_id) VALUES ('Contabilidad General', 3, 10);

-- ─── SUBMISSIONS (100 registros) ─────────────────────────────────────────────
-- Formato exam_day: YYYY-MM-DD (LocalDate → DATE)
-- Formato submitted_at: YYYY-MM-DD HH:MM:SS (LocalDateTime → TIMESTAMP)

-- Laura (id=1) — 20 entregas
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Programacion',            '2025-04-10', '2025-04-09 22:15:00', 4.5, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto Final de Estructuras',      '2025-06-05', '2025-06-04 18:00:00', 3.8, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Algoritmos',               '2025-03-15', '2025-03-14 20:30:00', 4.2, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Base de Datos',              '2025-04-22', '2025-04-21 19:00:00', 3.5, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Redes',                   '2025-05-08', '2025-05-07 23:00:00', 4.0, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Algoritmos',          '2025-03-28', '2025-03-27 16:45:00', 4.8, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Programacion',       '2025-06-20', '2025-06-19 21:00:00', 4.6, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Redes',                    '2025-05-20', '2025-05-19 18:30:00', 3.9, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Algoritmos',                 '2025-02-14', '2025-02-13 22:00:00', 4.3, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Estructuras de Datos',    '2025-03-05', '2025-03-04 20:00:00', 4.1, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto de Base de Datos',          '2025-07-01', '2025-06-30 17:00:00', 4.7, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Programacion Avanzada',    '2025-04-03', '2025-04-02 23:30:00', 3.6, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Estructuras',                '2025-02-28', '2025-02-27 19:45:00', 4.0, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Redes Avanzadas',          '2025-06-12', '2025-06-11 20:15:00', 3.7, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Base de Datos II',        '2025-05-30', '2025-05-29 22:45:00', 4.4, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Algoritmos II',            '2025-04-17', '2025-04-16 21:00:00', 3.8, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Programacion',               '2025-03-20', '2025-03-20 08:10:00', 2.9, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Redes',               '2025-05-10', '2025-05-09 18:00:00', 4.5, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Corte 2 de Programacion',     '2025-04-30', '2025-04-29 23:59:00', 3.3, 1);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo Final de Redes',             '2025-07-10', '2025-07-08 15:00:00', 4.9, 1);

-- Pedro (id=2) — 20 entregas
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Programacion',            '2025-04-10', '2025-04-11 08:30:00', 2.9, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Algoritmos',               '2025-03-15', '2025-03-16 09:00:00', 2.5, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Base de Datos',              '2025-04-22', '2025-04-22 11:00:00', 3.1, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Redes',                   '2025-05-08', '2025-05-08 10:00:00', 3.0, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Programacion',       '2025-06-20', '2025-06-20 09:15:00', 2.7, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Programacion',             '2025-02-20', '2025-02-19 22:00:00', 3.4, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Algoritmos',                 '2025-02-14', '2025-02-14 07:50:00', 2.8, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Estructuras de Datos',    '2025-03-05', '2025-03-06 08:00:00', 2.6, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto de Programacion',           '2025-05-25', '2025-05-24 20:00:00', 3.6, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Base de Datos',            '2025-04-05', '2025-04-05 08:30:00', 3.2, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Estructuras',              '2025-03-22', '2025-03-22 09:45:00', 2.4, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Redes',                      '2025-05-15', '2025-05-16 07:30:00', 2.3, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Algoritmos',              '2025-04-18', '2025-04-18 10:20:00', 3.0, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Programacion',        '2025-03-10', '2025-03-11 08:00:00', 2.9, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo de Redes',                   '2025-06-05', '2025-06-05 10:00:00', 3.5, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Base de Datos II',           '2025-05-22', '2025-05-23 09:00:00', 2.7, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Algoritmos II',            '2025-04-25', '2025-04-25 08:45:00', 3.3, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Corte 1 de Programacion',     '2025-02-27', '2025-02-28 07:55:00', 2.8, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto Final de Estructuras',      '2025-06-05', '2025-06-06 11:00:00', 2.5, 2);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Base de Datos',      '2025-07-03', '2025-07-04 09:30:00', 2.6, 2);

-- Andres (id=3) — 20 entregas
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Corte de Anatomia Humana',           '2025-03-20', '2025-03-19 20:00:00', 5.0, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Fisiologia',              '2025-05-15', '2025-05-14 23:45:00', 4.1, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Bioquimica',               '2025-04-08', '2025-04-07 21:30:00', 4.6, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Farmacologia',             '2025-05-28', '2025-05-27 19:00:00', 4.3, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Patologia',                  '2025-06-10', '2025-06-09 22:00:00', 4.8, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Anatomia',            '2025-03-05', '2025-03-04 18:30:00', 5.0, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Bioquimica',              '2025-02-20', '2025-02-19 20:45:00', 4.4, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Fisiologia',         '2025-06-25', '2025-06-24 21:00:00', 4.7, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Anatomia II',              '2025-04-15', '2025-04-14 17:00:00', 4.9, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Farmacologia',               '2025-05-05', '2025-05-04 23:30:00', 4.2, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Corte 2 de Anatomia',                '2025-05-10', '2025-05-09 19:45:00', 4.6, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo de Patologia',               '2025-06-18', '2025-06-17 20:00:00', 4.5, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Fisiologia Celular',       '2025-04-25', '2025-04-24 22:15:00', 4.0, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Bioquimica II',              '2025-03-12', '2025-03-11 21:00:00', 4.3, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Patologia',               '2025-05-22', '2025-05-21 18:30:00', 4.7, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Bioquimica',          '2025-04-02', '2025-04-01 20:00:00', 4.8, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Fisiologia II',            '2025-06-03', '2025-06-02 19:30:00', 4.1, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Bioquimica',         '2025-07-05', '2025-07-04 21:00:00', 4.9, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Anatomia Funcional',         '2025-02-15', '2025-02-14 22:45:00', 4.5, 3);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto de Investigacion Medica',   '2025-07-15', '2025-07-13 16:00:00', 5.0, 3);

-- Sofia (id=4) — 20 entregas
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Derecho Penal',            '2025-04-25', '2025-04-24 17:30:00', 3.5, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo de Historia del Arte',       '2025-06-20', '2025-06-18 10:00:00', 4.8, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Derecho Civil',           '2025-03-18', '2025-03-17 19:00:00', 3.9, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Derecho Constitucional',     '2025-04-10', '2025-04-09 21:30:00', 4.1, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Derecho Laboral',          '2025-05-12', '2025-05-11 20:00:00', 3.7, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Historia del Arte II',     '2025-05-28', '2025-05-27 18:00:00', 4.5, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Derecho Internacional',   '2025-04-17', '2025-04-16 22:00:00', 3.4, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Derecho Penal II',           '2025-05-05', '2025-05-04 20:45:00', 3.8, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Derecho Civil',      '2025-06-25', '2025-06-24 19:30:00', 4.2, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo de Arte Moderno',            '2025-07-08', '2025-07-06 14:00:00', 4.7, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Historia Universal',      '2025-03-28', '2025-03-27 21:15:00', 3.6, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Derecho Penal',            '2025-02-22', '2025-02-21 20:00:00', 3.3, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Historia del Arte',          '2025-03-08', '2025-03-07 19:30:00', 4.4, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Derecho Constitucional',   '2025-05-20', '2025-05-19 22:30:00', 3.9, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Jurisprudencia',      '2025-04-03', '2025-04-02 18:45:00', 3.5, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto de Derecho Laboral',        '2025-06-10', '2025-06-09 17:00:00', 4.0, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Derecho Internacional',      '2025-05-30', '2025-06-01 09:00:00', 2.8, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Filosofia del Derecho',    '2025-04-22', '2025-04-21 23:00:00', 4.1, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Derecho Penal',      '2025-07-02', '2025-07-01 20:00:00', 3.6, 4);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo de Arte Contemporaneo',      '2025-07-18', '2025-07-17 15:30:00', 4.6, 4);

-- Camila (id=5) — 20 entregas
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Corte de Anatomia Humana',           '2025-03-20', '2025-03-20 07:55:00', 3.2, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Fisiologia',              '2025-05-15', '2025-05-14 21:30:00', 3.7, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Bioquimica',               '2025-04-08', '2025-04-07 23:00:00', 3.4, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Farmacologia',             '2025-05-28', '2025-05-27 20:00:00', 3.9, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Patologia',                  '2025-06-10', '2025-06-09 19:45:00', 3.5, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Anatomia',            '2025-03-05', '2025-03-04 22:00:00', 3.0, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Bioquimica',              '2025-02-20', '2025-02-19 21:30:00', 3.6, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Fisiologia',         '2025-06-25', '2025-06-24 20:00:00', 3.8, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Anatomia II',              '2025-04-15', '2025-04-14 19:15:00', 3.3, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Farmacologia',               '2025-05-05', '2025-05-05 08:00:00', 2.9, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Corte 2 de Anatomia',                '2025-05-10', '2025-05-09 22:30:00', 3.2, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Trabajo de Patologia',               '2025-06-18', '2025-06-17 18:45:00', 3.7, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen de Fisiologia Celular',       '2025-04-25', '2025-04-24 20:00:00', 3.4, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Bioquimica II',              '2025-03-12', '2025-03-11 23:00:00', 3.1, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Parcial de Patologia',               '2025-05-22', '2025-05-21 21:30:00', 3.5, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Laboratorio de Bioquimica',          '2025-04-02', '2025-04-01 22:15:00', 3.8, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Taller de Fisiologia II',            '2025-06-03', '2025-06-02 21:00:00', 3.0, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Examen Final de Bioquimica',         '2025-07-05', '2025-07-05 09:10:00', 2.8, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Quiz de Anatomia Funcional',         '2025-02-15', '2025-02-14 20:00:00', 3.6, 5);
INSERT INTO submission (topic, exam_day, submitted_at, grade, student_id) VALUES ('Proyecto de Ciencias de la Salud',   '2025-07-15', '2025-07-14 17:00:00', 3.9, 5);

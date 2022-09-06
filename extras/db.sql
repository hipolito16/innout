USE INNOUT;

DROP TABLE IF EXISTS working_hours, users;
CREATE TABLE users (
    id INT(6) AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    is_admin BOOLEAN NOT NULL DEFAULT false
);
CREATE TABLE working_hours (
    id INT(6) AUTO_INCREMENT PRIMARY KEY, 
    user_id INT(6),
    work_date DATE NOT NULL,
    time1 TIME,
    time2 TIME,
    time3 TIME,
    time4 TIME,
    worked_time INT,

    FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT cons_user_day UNIQUE (user_id, work_date)
);

-- Essa senha criptografada corresponde ao valor "a"
INSERT INTO users (name, password, email, start_date, end_date, is_admin)
VALUES ('Admin', '$2y$10$/vC1UKrEJQUZLN2iM3U9re/4DQP74sXCOVXlYXe/j9zuv1/MHD4o.', 'admin@email.com', '2000-1-1', null, 1);

INSERT INTO users (name, password, email, start_date, end_date, is_admin)
VALUES ('Usuário01', '$2y$10$/vC1UKrEJQUZLN2iM3U9re/4DQP74sXCOVXlYXe/j9zuv1/MHD4o.', 'usuario01@email.com', '2000-1-1', null, 0);

INSERT INTO users (name, password, email, start_date, end_date, is_admin)
VALUES ('Usuário02', '$2y$10$/vC1UKrEJQUZLN2iM3U9re/4DQP74sXCOVXlYXe/j9zuv1/MHD4o.', 'usuario02@email.com', '2000-1-1', null, 0);

INSERT INTO users (name, password, email, start_date, end_date, is_admin)
VALUES ('Usuário03', '$2y$10$/vC1UKrEJQUZLN2iM3U9re/4DQP74sXCOVXlYXe/j9zuv1/MHD4o.', 'usuario03@email.com', '2000-1-1', null, 0);

INSERT INTO users (name, password, email, start_date, end_date, is_admin)
VALUES ('Usuário04', '$2y$10$/vC1UKrEJQUZLN2iM3U9re/4DQP74sXCOVXlYXe/j9zuv1/MHD4o.', 'usuario04@email.com', '2000-1-1', null, 0);

INSERT INTO users (name, password, email, start_date, end_date, is_admin)
VALUES ('Usuário05', '$2y$10$/vC1UKrEJQUZLN2iM3U9re/4DQP74sXCOVXlYXe/j9zuv1/MHD4o.', 'usuario05@email.com', '2000-1-1', '2019-1-1', 0);

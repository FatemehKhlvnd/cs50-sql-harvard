-- =========================
-- USERS
-- =========================
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL
);

-- =========================
-- SCHOOLS
-- =========================
CREATE TABLE schools (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    type ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    location VARCHAR(150) NOT NULL,
    founded_year YEAR NOT NULL
);

-- =========================
-- COMPANIES
-- =========================
CREATE TABLE companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    industry ENUM('Technology', 'Education', 'Business') NOT NULL,
    location VARCHAR(150) NOT NULL
);

-- =========================
-- USER ↔ SCHOOL CONNECTIONS
-- (education history)
-- =========================
CREATE TABLE user_schools (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    school_id INT NOT NULL,
    degree VARCHAR(100),
    start_date DATE,
    end_date DATE,

    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE,

    FOREIGN KEY (school_id) REFERENCES schools(id)
        ON DELETE CASCADE
);

-- =========================
-- USER ↔ COMPANY CONNECTIONS
-- (employment history)
-- =========================
CREATE TABLE user_companies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    company_id INT NOT NULL,
    title VARCHAR(100),
    start_date DATE,
    end_date DATE,

    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE,

    FOREIGN KEY (company_id) REFERENCES companies(id)
        ON DELETE CASCADE
);

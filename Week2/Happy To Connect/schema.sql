-- USERS
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

-- SCHOOLS
CREATE TABLE schools (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    location TEXT NOT NULL,
    founded_year INTEGER NOT NULL
);

-- COMPANIES
CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    industry TEXT NOT NULL,
    location TEXT NOT NULL
);

-- CONNECTIONS (core LinkedIn concept)
CREATE TABLE connections (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id INTEGER NOT NULL,

    -- target can be user, school, or company
    target_type TEXT NOT NULL,  
    target_id INTEGER NOT NULL,

    connection_type TEXT NOT NULL, 
    -- e.g. 'user', 'school', 'company'

    start_date DATE,
    end_date DATE,

    title TEXT,  -- e.g. CEO, Student, Alumni

    FOREIGN KEY (user_id) REFERENCES users(id)
);

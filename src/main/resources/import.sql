-- Create sequence for events
CREATE SEQUENCE IF NOT EXISTS events_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE;

-- Create events table
CREATE TABLE IF NOT EXISTS events (
    event_id INT PRIMARY KEY DEFAULT nextval('events_seq'),
    name VARCHAR(100) NOT NULL,
    date VARCHAR(50) NOT NULL,
    location VARCHAR(200) NOT NULL,
    description TEXT,
    guest_limit INT NOT NULL DEFAULT 0,
    current_guests INT DEFAULT 0
);

-- Create sequence for users
CREATE SEQUENCE IF NOT EXISTS users_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    user_id INT PRIMARY KEY DEFAULT nextval('users_seq'),
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    booked_event_id INT,
    digital_id VARCHAR(255),
    FOREIGN KEY (booked_event_id) REFERENCES events(event_id) ON DELETE SET NULL
);

-- Create sequence for participations
CREATE SEQUENCE IF NOT EXISTS participations_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE;

-- Create participations table
CREATE TABLE IF NOT EXISTS participations (
    id INT PRIMARY KEY DEFAULT nextval('participations_seq'),
    participant_id VARCHAR(50) NOT NULL,
    event_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE,
    UNIQUE (email, event_id)
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_event_date ON events(date);
CREATE INDEX IF NOT EXISTS idx_participations_email ON participations(email);
-- Database: event_management

CREATE DATABASE IF NOT EXISTS event_management;
USE event_management;

-- Events table
CREATE TABLE IF NOT EXISTS events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    description TEXT,
    guest_limit INT NOT NULL,
    current_guests INT DEFAULT 0,
    status VARCHAR(20) DEFAULT 'ACTIVE' CHECK (status IN ('ACTIVE', 'CANCELLED', 'COMPLETED'))
);

-- Users table
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    booked_event_id INT,
    digital_id VARCHAR(255),
    FOREIGN KEY (booked_event_id) REFERENCES events(event_id) ON DELETE SET NULL
);

-- Participations table
CREATE TABLE IF NOT EXISTS participations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    participant_id VARCHAR(50) NOT NULL,
    event_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE,
    UNIQUE KEY unique_participant (email, event_id)
);

-- Sample data for events
INSERT INTO events (name, date, location, description, guest_limit, current_guests) VALUES
('Tech Conference 2024', '2024-09-15', 'Convention Center', 'Annual technology conference.', 100, 0),
('Music Festival', '2024-08-20', 'City Park', 'Outdoor music festival.', 200, 0),
('Art Exhibition', '2024-10-05', 'Art Gallery', 'Modern art exhibition.', 50, 0);

-- Sample data for users
INSERT INTO users (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

-- Indexes
CREATE INDEX idx_event_date ON events(date);
CREATE INDEX idx_event_status ON events(status);
CREATE INDEX idx_participations_email ON participations(email);

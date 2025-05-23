-- Create database
CREATE DATABASE IF NOT EXISTS event_management;

-- Create dedicated user
CREATE USER IF NOT EXISTS 'eventapp'@'localhost' IDENTIFIED BY 'eventpass123';
GRANT ALL PRIVILEGES ON event_management.* TO 'eventapp'@'localhost';
FLUSH PRIVILEGES;

USE event_management;

-- Create events table
CREATE TABLE IF NOT EXISTS events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(200) NOT NULL,
    description TEXT,
    guest_limit INT NOT NULL DEFAULT 0,
    current_guests INT DEFAULT 0
);

-- Create bookings table
CREATE TABLE IF NOT EXISTS bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    event_id INT,
    user_name VARCHAR(100) NOT NULL,
    user_email VARCHAR(100) NOT NULL,
    digital_id VARCHAR(36) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);
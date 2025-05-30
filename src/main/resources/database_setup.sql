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
    date DATE NOT NULL,
    location VARCHAR(200) NOT NULL,
    description TEXT,
    guest_limit INT NOT NULL DEFAULT 0,
    current_guests INT DEFAULT 0
);

-- Create sequence for bookings
CREATE SEQUENCE IF NOT EXISTS bookings_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE;

-- Create bookings table
CREATE TABLE IF NOT EXISTS bookings (
    booking_id INT PRIMARY KEY DEFAULT nextval('bookings_seq'),
    event_id INT,
    user_name VARCHAR(100) NOT NULL,
    user_email VARCHAR(100) NOT NULL,
    digital_id VARCHAR(36) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);
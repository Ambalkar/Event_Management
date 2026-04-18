-- PostgreSQL schema for Event Management System (Render compatible)

-- Events table
CREATE TABLE IF NOT EXISTS events (
    event_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    description TEXT,
    guest_limit INTEGER NOT NULL,
    current_guests INTEGER DEFAULT 0,
    status VARCHAR(20) DEFAULT 'ACTIVE' CHECK (status IN ('ACTIVE', 'CANCELLED', 'COMPLETED'))
);

-- Users table
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    booked_event_id INTEGER,
    digital_id VARCHAR(255),
    FOREIGN KEY (booked_event_id) REFERENCES events(event_id) ON DELETE SET NULL
);

-- Bookings table (from AdminController queries)
CREATE TABLE IF NOT EXISTS bookings (
    booking_id SERIAL PRIMARY KEY,
    event_id INTEGER NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    digital_id VARCHAR(255) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE,
    UNIQUE(user_email, event_id)
);

-- Participations table (from UserController)
CREATE TABLE IF NOT EXISTS participations (
    id SERIAL PRIMARY KEY,
    participant_id VARCHAR(50) NOT NULL,
    event_id INTEGER NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE,
    UNIQUE(email, event_id)
);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_event_date ON events(date);
CREATE INDEX IF NOT EXISTS idx_event_status ON events(status);
CREATE INDEX IF NOT EXISTS idx_bookings_email ON bookings(user_email);
CREATE INDEX IF NOT EXISTS idx_participations_email ON participations(email);

-- Insert sample data
INSERT INTO events (name, date, location, description, guest_limit, current_guests) VALUES
('Tech Conference 2024', '2024-12-15', 'Main Auditorium', 'Annual technology conference', 500, 120),
('Workshop: Spring Boot', '2024-11-20', 'Conference Room A', 'Hands-on Spring Boot workshop', 50, 45)
ON CONFLICT DO NOTHING;


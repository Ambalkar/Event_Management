-- Simplified PostgreSQL schema for Spring Boot auto-init (Render Free Tier)

-- Core tables only (matches controllers exactly)
CREATE TABLE IF NOT EXISTS events (
    event_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL,
    description TEXT,
    guest_limit INTEGER NOT NULL,
    current_guests INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS bookings (
    booking_id SERIAL PRIMARY KEY,
    event_id INTEGER NOT NULL REFERENCES events(event_id),
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    digital_id VARCHAR(255) NOT NULL,
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_email, event_id)
);

-- Sample data
INSERT INTO events (name, date, location, guest_limit, current_guests) VALUES 
('Tech Conference', '2024-12-25', 'Render Hall', 100, 10),
('Spring Workshop', '2024-11-30', 'Conference Room', 50, 20)
ON CONFLICT (event_id) DO NOTHING;

-- ; at end for Spring script parsing
;


package com.example.eventmanagement.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Column;

@Entity
@Table(name = "events")
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "event_id")
    private int id;
    
    @Column(name = "name", nullable = false)
    private String name;
    
    @Column(name = "date", nullable = false)
    private String date;
    
    @Column(name = "location", nullable = false)
    private String location;
    
    @Column(name = "description")
    private String description;
    
    @Column(name = "guest_limit", nullable = false)
    private int guestLimit;
    
    @Column(name = "current_guests")
    private int currentGuests;

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    
    public String getDate() { return date; }
    public void setDate(String date) { this.date = date; }
    
    public String getLocation() { return location; }
    public void setLocation(String location) { this.location = location; }
    
    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
    
    public int getGuestLimit() { return guestLimit; }
    public void setGuestLimit(int guestLimit) { this.guestLimit = guestLimit; }
    
    public int getCurrentGuests() { return currentGuests; }
    public void setCurrentGuests(int currentGuests) { this.currentGuests = currentGuests; }

    // Validation method
    public boolean isValid() {
        return name != null && !name.trim().isEmpty() &&
               date != null && !date.trim().isEmpty() &&
               location != null && !location.trim().isEmpty() &&
               guestLimit > 0;
    }
}
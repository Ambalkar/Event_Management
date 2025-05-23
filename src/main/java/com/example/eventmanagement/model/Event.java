package com.example.eventmanagement.model;

public class Event {
    private int id;
    private String name;
    private String date;
    private String location;
    private String description;
    private int guestLimit;
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
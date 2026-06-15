package com.example.eventmanagement.util;

import com.eventms.config.DatabaseUrlResolver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {

    private static final Logger LOGGER = Logger.getLogger(DBConnection.class.getName());
    private static final Map<String, String> DATABASE_PROPERTIES =
            DatabaseUrlResolver.fromEnvironment(System.getenv());
    private static final String URL = DATABASE_PROPERTIES.getOrDefault(
            "url", "jdbc:postgresql://localhost:5432/event_ms_db");
    private static final String USER = DATABASE_PROPERTIES.getOrDefault("username", "postgres");
    private static final String PASSWORD = DATABASE_PROPERTIES.getOrDefault("password", "postgres");

    static {
        try {
            Class.forName("org.postgresql.Driver");
            LOGGER.info("PostgreSQL JDBC Driver registered successfully");
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "PostgreSQL JDBC Driver not found", e);
            throw new RuntimeException("PostgreSQL JDBC Driver not found", e);
        }
    }

    public static Connection getConnection() throws SQLException {
        try {
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            LOGGER.info("Database connection established successfully");
            return conn;
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Database connection failed", e);
            throw e;
        }
    }
}

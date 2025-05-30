package com.example.eventmanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnection {

    private static final Logger LOGGER = Logger.getLogger(DBConnection.class.getName());
    private static final String URL = System.getenv("SPRING_DATASOURCE_URL");
    private static final String USER = System.getenv("SPRING_DATASOURCE_USERNAME");
    private static final String PASSWORD = System.getenv("SPRING_DATASOURCE_PASSWORD");

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            LOGGER.info("MySQL JDBC Driver registered successfully");
        } catch (ClassNotFoundException e) {
            LOGGER.log(Level.SEVERE, "MySQL JDBC Driver not found", e);
            throw new RuntimeException("MySQL JDBC Driver not found", e);
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

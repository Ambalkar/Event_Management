package com.eventms.service;

import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.LinkedHashMap;
import java.util.Map;

@Service
public class FileNotificationService {

    private static final DateTimeFormatter TIMESTAMP_FORMAT = DateTimeFormatter.ISO_LOCAL_DATE_TIME;
    private static final String USER_FILE_HEADER = "registered_at,name,email";

    private final Path dataDir = Paths.get(System.getProperty("user.dir"), "data");
    private final Path registeredUsersFile = dataDir.resolve("registered-users.csv");
    private final Path notificationsFile = dataDir.resolve("event-notifications.log");

    public synchronized void saveRegisteredUser(String name, String email) throws IOException {
        ensureDataFiles();

        String normalizedEmail = normalizeEmail(email);
        Map<String, RegisteredUser> users = loadRegisteredUsers();
        users.put(normalizedEmail, new RegisteredUser(name.trim(), normalizedEmail, LocalDateTime.now()));

        StringBuilder content = new StringBuilder(USER_FILE_HEADER).append(System.lineSeparator());
        for (RegisteredUser user : users.values()) {
            content.append(csv(user.registeredAt.format(TIMESTAMP_FORMAT)))
                    .append(',')
                    .append(csv(user.name))
                    .append(',')
                    .append(csv(user.email))
                    .append(System.lineSeparator());
        }
        Files.writeString(registeredUsersFile, content.toString(), StandardCharsets.UTF_8,
                StandardOpenOption.TRUNCATE_EXISTING);
    }

    public synchronized int notifyRegisteredUsersAboutEvent(String eventName, String eventDate, String location,
            String description) throws IOException {
        ensureDataFiles();
        Map<String, RegisteredUser> users = loadRegisteredUsers();
        if (users.isEmpty()) {
            return 0;
        }
        writeNotificationBatch(users, eventName, eventDate, location, description);
        return users.size();
    }

    private void writeNotificationBatch(Map<String, RegisteredUser> users, String eventName, String eventDate,
            String location, String description) throws IOException {
        StringBuilder batch = new StringBuilder();
        String sentAt = LocalDateTime.now().format(TIMESTAMP_FORMAT);
        for (RegisteredUser user : users.values()) {
            batch.append("sent_at=").append(sentAt).append(System.lineSeparator())
                    .append("to=").append(user.name).append(" <").append(user.email).append(">")
                    .append(System.lineSeparator())
                    .append("subject=New Event: ").append(eventName).append(System.lineSeparator())
                    .append("message=Hello ").append(user.name).append(", a new event \"")
                    .append(eventName).append("\" is available on ").append(eventDate)
                    .append(" at ").append(location).append('.');
            if (description != null && !description.trim().isEmpty()) {
                batch.append(" Details: ").append(description.trim());
            }
            batch.append(System.lineSeparator())
                    .append("status=file_notification_recorded").append(System.lineSeparator())
                    .append("---")
                    .append(System.lineSeparator());
        }

        Files.writeString(notificationsFile, batch.toString(), StandardCharsets.UTF_8,
                StandardOpenOption.CREATE, StandardOpenOption.APPEND);
    }

    private void ensureDataFiles() throws IOException {
        Files.createDirectories(dataDir);
        if (Files.notExists(registeredUsersFile)) {
            Files.writeString(registeredUsersFile, USER_FILE_HEADER + System.lineSeparator(), StandardCharsets.UTF_8,
                    StandardOpenOption.CREATE_NEW);
        }
        if (Files.notExists(notificationsFile)) {
            Files.createFile(notificationsFile);
        }
    }

    private Map<String, RegisteredUser> loadRegisteredUsers() throws IOException {
        Map<String, RegisteredUser> users = new LinkedHashMap<>();
        if (Files.notExists(registeredUsersFile)) {
            return users;
        }

        for (String line : Files.readAllLines(registeredUsersFile, StandardCharsets.UTF_8)) {
            if (line == null || line.trim().isEmpty() || USER_FILE_HEADER.equals(line.trim())) {
                continue;
            }
            String[] parts = parseCsvLine(line);
            if (parts.length < 3) {
                continue;
            }
            String email = normalizeEmail(parts[2]);
            if (!email.isEmpty()) {
                users.put(email, new RegisteredUser(parts[1], email, parseTimestamp(parts[0])));
            }
        }
        return users;
    }

    private String normalizeEmail(String email) {
        return email == null ? "" : email.trim().toLowerCase();
    }

    private LocalDateTime parseTimestamp(String value) {
        try {
            return LocalDateTime.parse(value, TIMESTAMP_FORMAT);
        } catch (Exception e) {
            return LocalDateTime.now();
        }
    }

    private String csv(String value) {
        String safeValue = value == null ? "" : value;
        return "\"" + safeValue.replace("\"", "\"\"") + "\"";
    }

    private String[] parseCsvLine(String line) {
        return line.split(",(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)", -1);
    }

    private static class RegisteredUser {
        private final String name;
        private final String email;
        private final LocalDateTime registeredAt;

        private RegisteredUser(String name, String email, LocalDateTime registeredAt) {
            this.name = unquote(name);
            this.email = unquote(email);
            this.registeredAt = registeredAt;
        }

        private static String unquote(String value) {
            if (value == null) {
                return "";
            }
            String trimmed = value.trim();
            if (trimmed.length() >= 2 && trimmed.startsWith("\"") && trimmed.endsWith("\"")) {
                return trimmed.substring(1, trimmed.length() - 1).replace("\"\"", "\"");
            }
            return trimmed;
        }
    }
}

package com.eventms.auth;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class TokenStore {
    public static class UserInfo {
        private final String name;
        private final String email;
        private final String role;

        public UserInfo(String name, String email, String role) {
            this.name = name;
            this.email = email;
            this.role = role;
        }

        public String getName() { return name; }
        public String getEmail() { return email; }
        public String getRole() { return role; }
    }

    private static final Map<String, UserInfo> tokens = new ConcurrentHashMap<>();

    public static void saveToken(String token, UserInfo user) {
        if (token != null && user != null) {
            tokens.put(token, user);
        }
    }

    public static UserInfo getUser(String token) {
        if (token == null) return null;
        return tokens.get(token);
    }

    public static void removeToken(String token) {
        if (token != null) {
            tokens.remove(token);
        }
    }
}

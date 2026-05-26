package com.eventms.config;

import java.net.URI;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

public final class DatabaseUrlResolver {

    private DatabaseUrlResolver() {
    }

    public static Map<String, String> fromEnvironment(Map<String, String> env) {
        String datasourceUrl = blankToNull(env.get("SPRING_DATASOURCE_URL"));
        String databaseUrl = blankToNull(env.get("DATABASE_URL"));
        String rawUrl = datasourceUrl != null ? datasourceUrl : databaseUrl;

        Map<String, String> properties = new HashMap<>();
        if (rawUrl == null) {
            return properties;
        }

        if (rawUrl.startsWith("jdbc:")) {
            properties.put("url", rawUrl);
            putIfPresent(properties, "username", env.get("SPRING_DATASOURCE_USERNAME"));
            putIfPresent(properties, "password", env.get("SPRING_DATASOURCE_PASSWORD"));
            return properties;
        }

        if (!rawUrl.startsWith("postgres://") && !rawUrl.startsWith("postgresql://")) {
            properties.put("url", rawUrl);
            putIfPresent(properties, "username", env.get("SPRING_DATASOURCE_USERNAME"));
            putIfPresent(properties, "password", env.get("SPRING_DATASOURCE_PASSWORD"));
            return properties;
        }

        URI uri = URI.create(rawUrl);
        StringBuilder jdbcUrl = new StringBuilder("jdbc:postgresql://")
                .append(uri.getHost());
        if (uri.getPort() > 0) {
            jdbcUrl.append(":").append(uri.getPort());
        }
        jdbcUrl.append(uri.getPath());
        if (uri.getRawQuery() != null && !uri.getRawQuery().isBlank()) {
            jdbcUrl.append("?").append(uri.getRawQuery());
        }

        properties.put("url", jdbcUrl.toString());
        if (uri.getUserInfo() != null) {
            String[] credentials = uri.getUserInfo().split(":", 2);
            properties.put("username", decode(credentials[0]));
            if (credentials.length > 1) {
                properties.put("password", decode(credentials[1]));
            }
        }

        putIfPresent(properties, "username", env.get("SPRING_DATASOURCE_USERNAME"));
        putIfPresent(properties, "password", env.get("SPRING_DATASOURCE_PASSWORD"));
        return properties;
    }

    private static void putIfPresent(Map<String, String> properties, String key, String value) {
        if (blankToNull(value) != null) {
            properties.put(key, value);
        }
    }

    private static String blankToNull(String value) {
        return value == null || value.isBlank() ? null : value;
    }

    private static String decode(String value) {
        return URLDecoder.decode(value, StandardCharsets.UTF_8);
    }
}

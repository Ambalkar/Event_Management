package com.eventms.config;

import java.util.HashMap;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.env.EnvironmentPostProcessor;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MapPropertySource;

public class DatabaseUrlEnvironmentPostProcessor implements EnvironmentPostProcessor {

    @Override
    public void postProcessEnvironment(ConfigurableEnvironment environment, SpringApplication application) {
        Map<String, String> resolved = DatabaseUrlResolver.fromEnvironment(System.getenv());
        if (resolved.isEmpty()) {
            return;
        }

        Map<String, Object> datasourceProperties = new HashMap<>();
        putIfPresent(datasourceProperties, "spring.datasource.url", resolved.get("url"));
        putIfPresent(datasourceProperties, "spring.datasource.username", resolved.get("username"));
        putIfPresent(datasourceProperties, "spring.datasource.password", resolved.get("password"));

        environment.getPropertySources().addFirst(
                new MapPropertySource("resolvedDatabaseUrl", datasourceProperties));
        System.out.println("Resolved datasource from " + resolved.get("source")
                + " as " + maskDatasourceUrl(resolved.get("url")));
    }

    private void putIfPresent(Map<String, Object> properties, String key, String value) {
        if (value != null && !value.isBlank()) {
            properties.put(key, value);
        }
    }

    private String maskDatasourceUrl(String url) {
        if (url == null || url.isBlank()) {
            return "(not configured)";
        }
        return url.replaceAll("(?i)(password=)[^&]+", "$1***");
    }
}

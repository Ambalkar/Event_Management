
## To enable auto-restart on code changes:

Add to pom.xml dependencies:
```
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-devtools</artifactId>
    <scope>runtime</scope>
    <optional>true</optional>
</dependency>
```

Then run: `./mvnw.cmd clean package` and use run-dev.bat.

DevTools watches classpath (JSP changes detected) and restarts automatically!

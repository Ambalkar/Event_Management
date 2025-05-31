package com.eventms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/user")
    public String userEvents() {
        return "user_events"; // This will resolve to user_events.jsp
    }
}

package com.droptables.relieveme;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RelievemeController {

    @GetMapping("/")
    public String mainPage() {
        return "Hello world!";
    }
}
package com.droptables.relieveme;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RelievemeController {

    @GetMapping("/")
    public String mainPage() {
        return "Hello world!";
    }
}
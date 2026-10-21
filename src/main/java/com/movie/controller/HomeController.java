
package com.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home() {
        return "index.jsp";
    }

    @GetMapping("/movieManagement")
    public String movieManagement() {
        return "movieManagement.jsp";
    }

    @GetMapping("/actorManagement")
    public String actorManagement() {
        return "actorManagement.jsp";
    }

    @GetMapping("/genreManagement")
    public String genreManagement() {
        return "genreManagement.jsp";
    }

    @GetMapping("/directorManagement")
    public String directorManagement() {
        return "directorManagement.jsp";
    }
}

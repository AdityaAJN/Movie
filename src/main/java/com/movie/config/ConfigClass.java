package com.movie.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"com.movie.controller","com.movie.dao","com.movie.entity","com.movie.service"})
public class ConfigClass {

}

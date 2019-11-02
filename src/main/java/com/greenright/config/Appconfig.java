package com.greenright.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@ComponentScan(
    basePackages = "com.greenright",
    excludeFilters = {
        @Filter(type = FilterType.REGEX, pattern = "com.greenright.controller.*")
    }
 )

@EnableWebMvc
public class Appconfig {
}


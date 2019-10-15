package com.greenright.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppWebApplicationInitializer
  extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
      return null;
    }
    
    @Override
    protected Class<?>[] getServletConfigClasses() {
      return new Class<?>[] {WebConfig.class};
    }
    
    @Override
    protected String[] getServletMappings() {
      return new String[] {"/greenright/*"};
    }
    
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
      System.out.println("onStartUP호출!");
    super.onStartup(servletContext);
    }
  }

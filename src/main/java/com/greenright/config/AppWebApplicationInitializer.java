package com.greenright.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppWebApplicationInitializer
  extends AbstractAnnotationConfigDispatcherServletInitializer {

  @Override
  protected Class<?>[] getRootConfigClasses() {
    return new Class<?>[] {
      AppConfig.class, DatabaseConfig.class, MybatisConfig.class};
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
    protected String getServletName() {
      return "greenright";
    }
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
      System.out.println("onStartUP호출!");
    super.onStartup(servletContext);
    }
  }

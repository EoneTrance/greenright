package com.greenright.config;

import javax.servlet.Filter;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import com.greenright.filter.AuthFilter;

public class AppWebApplicationInitializer
    extends AbstractAnnotationConfigDispatcherServletInitializer {

  @Override
  protected Class<?>[] getRootConfigClasses() {
    return new Class<?>[] {AppConfig.class, DatabaseConfig.class, MybatisConfig.class,
        MailSenderConfig.class};
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
  protected Filter[] getServletFilters() {
    return new Filter[] {new CharacterEncodingFilter("UTF-8"), new AuthFilter()};
  }

}

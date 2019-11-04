package com.greenright.config;

import java.util.Properties;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@PropertySource("classpath:com/greenright/conf/mailsender.properties")
public class MailSenderConfig {
  
  @Value("${mail.host}")
  String host;

  @Value("${mail.port}")
  int port;
  
  @Value("${mail.username}")
  String username;
  
  @Value("${mail.password}")
  String password;
  
  @Value("${mail.properties.mail.smtp.auth}")
  String smtpAuth;
  
  @Value("${mail.properties.mail.smtp.starttls.enable}")
  String smtpStarttlsEnable;
  
  @Bean
  public JavaMailSender mailSource() {
    JavaMailSenderImpl jms = new JavaMailSenderImpl();
    jms.setDefaultEncoding("utf-8");
    jms.setHost(this.host);
    jms.setPort(this.port);
    jms.setUsername(this.username);
    jms.setPassword(this.password);
    Properties props = jms.getJavaMailProperties();
    props.setProperty("mail.transport.protocol", "smtp");
    props.setProperty("mail.mime.ignoreunknownencoding", "true");
    props.setProperty("mail.debug", "true");
    props.setProperty("mail.smtp.auth", "true");
    props.setProperty("mail.smtp.starttls.enable", "true");
    
    return jms;
  }
}

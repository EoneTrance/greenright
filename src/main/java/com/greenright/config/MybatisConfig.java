package com.greenright.config;

import javax.sql.DataSource;
import org.apache.ibatis.logging.LogFactory;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

@MapperScan("com.greenright.dao")
public class MybatisConfig {
  
  @Bean
  public SqlSessionFactory sqlSessionFactory(
      DataSource dataSource, ApplicationContext appCtx) throws Exception {
  
    LogFactory.useLog4J2Logging();
    
    SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
    sqlSessionFactoryBean.setDataSource(dataSource);
    sqlSessionFactoryBean.setTypeAliasesPackage("com.greenright.domain");
    sqlSessionFactoryBean.setMapperLocations(appCtx.getResources("classpath:com/greenright/mapper/*Mapper.xml"));
 
      return sqlSessionFactoryBean.getObject();
  }
      
}

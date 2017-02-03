/*
* JPAConfiguration 
* 
* Essa classe equivale a persistence.xml
*  
* 
* 
*/

package br.com.supremaciabr.conf;


import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@EnableTransactionManagement
public class JPAConfiguration {
	
	 @Autowired private Environment environment;

	  @Bean
	   public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		  DriverManagerDataSource dataSource = new DriverManagerDataSource();
	      LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
	      em.setDataSource(dataSource);
	      em.setPackagesToScan(new String[] { "br.com.supremaciabr.model" });
	 
	      JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
	      em.setJpaVendorAdapter(vendorAdapter);
	      em.setJpaProperties(additionalProperties());
	 
	      return em;
	   }
	 
	   @Bean	   
	   @Profile("dev")
	   public DataSource dataSource() throws URISyntaxException{
		   
		   
		   DriverManagerDataSource dataSource = new DriverManagerDataSource();
		      dataSource.setDriverClassName("org.postgresql.Driver");
		      URI dbUrl = new URI(environment.getProperty("DATABASE_URL"));
			  dataSource.setUrl("jdbc:postgresql://" + dbUrl.getHost() + ":" + dbUrl.getPort() + dbUrl.getPath());
			  dataSource.setUsername(dbUrl.getUserInfo().split(":")[0]);
			  dataSource.setPassword(dbUrl.getUserInfo().split(":")[1]);
		      return dataSource;
		   
		   
		   
		   
	     /* DriverManagerDataSource dataSource = new DriverManagerDataSource();
	      dataSource.setDriverClassName("com.mysql.jdbc.Driver");
	      dataSource.setUrl("jdbc:mysql://localhost:3306/supremacia");
	      dataSource.setUsername( "root" );
	      dataSource.setPassword( "root" );
	      return dataSource;*/
	   }
	 
	   @Bean
	   public PlatformTransactionManager transactionManager(EntityManagerFactory emf){
	      JpaTransactionManager transactionManager = new JpaTransactionManager();
	      transactionManager.setEntityManagerFactory(emf);	 
	      return transactionManager;
	   }
	 
	   @Bean
	   public PersistenceExceptionTranslationPostProcessor exceptionTranslation(){
	      return new PersistenceExceptionTranslationPostProcessor();
	   }
	 
	   Properties additionalProperties() {
	      Properties properties = new Properties();
		  properties.setProperty("hibernate.dialect","org.hibernate.dialect.PostgreSQLDialect");
	      properties.setProperty("hibernate.hbm2ddl.auto", "update");
	      properties.setProperty("hibernate.show_sql", "false");
	      return properties;
	   }
}

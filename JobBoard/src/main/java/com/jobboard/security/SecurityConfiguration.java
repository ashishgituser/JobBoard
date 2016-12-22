package com.jobboard.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth
		     .inMemoryAuthentication()
		        .withUser("test")
		        .password("test")
		        .roles("ADMIN");
		
	}
	
	@Override
	public void configure(HttpSecurity http) throws Exception {
		http
		   .authorizeRequests()
		       .antMatchers("/dashboard").access("hasRole('ADMIN')")
		   .and()
		       .formLogin()
		              .loginPage("/login").permitAll()
		              .usernameParameter("username")
		              .passwordParameter("password")
		   .and()
		       .csrf()
		   .and().exceptionHandling().accessDeniedPage("/Access_Denied");
	}
}

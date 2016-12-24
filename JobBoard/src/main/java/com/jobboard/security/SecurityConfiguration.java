package com.jobboard.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
    @Qualifier("customUserDetailsService")
    UserDetailsService userDetailsService;
	
	@Autowired
	private RestUnauthorizedEntryPoint restAuthenticationEntryPoint;
	
	@Autowired
	private RestAuthenticationFailureHandler restAuthenticationFailureHandler;
	
	@Autowired
	private RestAuthenticationSuccessHandler restAuthenticationSuccessHandler;
	
	@Autowired
	private RestAccessDeniedHandler restAccessDeniedHandler;
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService);
	}
	
	@Override
	 public void configure(WebSecurity web) throws Exception {
	    web.ignoring().antMatchers("/static/**", "/login.html", "/", "/error/**");
	 }
	
	@Override
	public void configure(HttpSecurity http) throws Exception {
		http
		   .headers().disable()
		   .csrf().disable()
		   .authorizeRequests()
		    .antMatchers("/admin/**").hasAnyAuthority("ADMIN")
		    .anyRequest().authenticated()
		    .and()
		   .exceptionHandling()
		    .authenticationEntryPoint(restAuthenticationEntryPoint)
            .accessDeniedHandler(restAccessDeniedHandler)
            .and()
		   .formLogin()
		    .loginProcessingUrl("/authenticate")
		    .successHandler(restAuthenticationSuccessHandler)
            .failureHandler(restAuthenticationFailureHandler)
		    .usernameParameter("ssoId")
		    .passwordParameter("password")
		    .permitAll()		       
		   .and().exceptionHandling().accessDeniedPage("/Access_Denied");
	}
}

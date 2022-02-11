package com.te.springboot_mvcassinement.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService detailsService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(detailsService);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()
		.cors().disable()
		.authorizeRequests()
		
		.antMatchers("/home")
		.permitAll()
		
		.antMatchers("/admin")
		.hasRole("ADMIN")
				
		.antMatchers("/seeAll")
		.hasRole("ADMIN")
		
		.antMatchers("/seeById")
		.hasAnyRole("USER","ADMIN")
		
		.antMatchers("/login")
		.hasAnyRole("ADMIN","USER")
		
		.antMatchers("/user")
		.hasAnyRole("ADMIN", "USER")
		
		.antMatchers("/addUser")
		.hasRole("ADMIN")
		
		
		.and()
		.formLogin();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
}

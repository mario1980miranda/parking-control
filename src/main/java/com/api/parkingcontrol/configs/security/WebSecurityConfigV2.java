package com.api.parkingcontrol.configs.security;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class WebSecurityConfigV2 {

	@Autowired
	private Environment env;

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		// configs
		// H2 DB
		if (Arrays.asList(env.getActiveProfiles()).contains("test")) {
			http.headers().frameOptions().disable();
		}

		http.httpBasic().and().authorizeHttpRequests().antMatchers(HttpMethod.GET, "/parking-spot").permitAll()
				.antMatchers(HttpMethod.POST, "/parking-spot").hasRole("USER")
				.antMatchers(HttpMethod.DELETE, "/parking-spot/**").hasRole("ADMIN").anyRequest().authenticated().and()
				.csrf().disable();

		return http.build();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}

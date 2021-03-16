package com.kerwin.datasite.configurations.services;

import org.mockito.Mockito;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;

import com.kerwin.datasite.service.RegisteredUserService;

@Profile("test")
@Configuration
public class RegisteredUserServiceTestConfiguration {
	
	@Bean
	@Primary
	public RegisteredUserService regUserService() {
		return Mockito.mock(RegisteredUserService.class);
	}

}

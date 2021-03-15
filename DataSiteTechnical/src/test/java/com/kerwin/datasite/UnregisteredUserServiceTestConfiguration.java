package com.kerwin.datasite;

import org.mockito.Mockito;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;

import com.kerwin.datasite.service.UnregisteredUserService;

@Profile("test")
@Configuration
public class UnregisteredUserServiceTestConfiguration {
	
	@Bean
	@Primary
	public UnregisteredUserService unregUserService() {
		return Mockito.mock(UnregisteredUserService.class);
		
	}

}

package com.kerwin.datasite.tests;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.util.Assert;

import com.kerwin.datasite.DataSiteTechnicalApplication;
import com.kerwin.datasite.entities.UnregisteredUser;
import com.kerwin.datasite.service.UnregisteredUserService;

@ActiveProfiles("test")
@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = DataSiteTechnicalApplication.class)
public class UnregisteredUserServiceMockTest {
	
	@Autowired
	private UnregisteredUserService unregUserService;
	
	@Test
	@DisplayName("Testing Unregistered User Return All Method")
	void test1(){
		List<UnregisteredUser> allUnregUsers = new ArrayList<>();
		allUnregUsers.add(new UnregisteredUser(22, "fakeAddy@fakeService.com", "en", "randomRegistrationId", BigInteger.valueOf(1615778289)));
		
		Mockito.when(unregUserService.findAllUnregisteredUsers()).thenReturn(allUnregUsers);
		
		Assert.notEmpty(unregUserService.findAllUnregisteredUsers(), "Must return list of Unregistered Users");
		
	}

}

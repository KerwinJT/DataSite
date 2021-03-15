package com.kerwin.datasite.tests;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.util.Assert;

import com.kerwin.datasite.DataSiteTechnicalApplication;
import com.kerwin.datasite.entities.RegisteredUser;
import com.kerwin.datasite.service.RegisteredUserService;

@ActiveProfiles("test")
@ExtendWith(SpringExtension.class)
@SpringBootTest(classes = DataSiteTechnicalApplication.class)
public class RegisteredUserServiceMockTest {

	@Autowired
	private RegisteredUserService regUserService;

	@Test
	@DisplayName("Registered User Test")
	void test1() {
		List<RegisteredUser> allUsersTest = new ArrayList<>();
		allUsersTest.add(new RegisteredUser(1, "Denver", "Datasite", "United States", "Jason", "Kerwin", "Corp",
				"720-222-0022", "CO", "80222-2222", true, "en", "fakeAddress@FakeAddress.com"));

		Mockito.when(regUserService.findAllRegisteredUsers()).thenReturn(allUsersTest);

		Assert.notEmpty(regUserService.findAllRegisteredUsers(), "Must return list of users");

	}

}

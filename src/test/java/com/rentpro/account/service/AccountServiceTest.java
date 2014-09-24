package com.rentpro.account.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rentpro.account.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext-core.xml",
		"classpath:applicationContext-hibernate.xml" })
public class AccountServiceTest {

	@Autowired private AccountService accountService;
	
	@Test
	public void testRegister() throws Exception {
		User newUser = new User("user1", "user1");
		accountService.register(newUser);
		
	}
	
	@Test
	public void testFind() throws Exception {
		User user = accountService.get("user1");
		System.out.println(user.getPassword());
		System.out.println(user.isAvailable());
	}
}

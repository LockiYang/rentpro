package com.rentpro.rentinfo.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rentpro.account.entity.User;
import com.rentpro.account.service.AccountService;
import com.rentpro.rentinfo.entity.Info;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext-rentpro.xml" })
public class RentInfoServiceTest {

	@Autowired private AccountService accountService;
	@Autowired private RentInfoService rentInfoService;
	
	@Test
	public void testListAll() throws Exception {
		List<Info> listAll = rentInfoService.listAll();
		System.out.println(listAll.size());
	}
	
	@Test
	public void testSave() throws Exception {
//		User newUser = accountService.get("user1");
		User newUser = new User("user2" , "user2");
		Info info = new Info("标题", "描述很长");
		info.setCreator(newUser);
		rentInfoService.savaInfo(info);
	}
}

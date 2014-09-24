package com.rentpro.rentinfo.repository;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rentpro.account.entity.User;
import com.rentpro.account.repository.UserDao;
import com.rentpro.rentinfo.entity.InfoTag;
import com.rentpro.rentinfo.respository.InfoTagDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext-core.xml",
		"classpath:applicationContext-hibernate.xml" })
public class InfoTagTest {

	@Autowired InfoTagDao infoTagDao;
	@Autowired UserDao userDao;
	
	@Test
	public void testAdd() throws Exception {
		User creator = userDao.findByLoginName("user1");
		InfoTag infoTag = new InfoTag("三室一厅", creator);
		infoTagDao.save(infoTag);
	}
	
	@Test
	public void testAddWithNewUser() throws Exception {
		User creator = new User("hello", "world");
		InfoTag infoTag = new InfoTag("三室一厅", creator);
		infoTagDao.save(infoTag);
	}
	
	@Test
	public void testGet() throws Exception {
		InfoTag findOne = infoTagDao.findOne(1L);
		System.out.println(findOne.getCreator().getLoginName());
	}
	
	@Test
	public void testCascade() throws Exception {
		InfoTag findOne = infoTagDao.findOne(1L);
		findOne.getCreator().setLoginName("sbbb");
		findOne.increaseUseTimes();
		infoTagDao.save(findOne);
	}
}

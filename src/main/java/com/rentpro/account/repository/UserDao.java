package com.rentpro.account.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.rentpro.account.entity.User;


public interface UserDao extends PagingAndSortingRepository<User, Long> {

	User findByLoginName(String loginName);
	
	@Query("from User user where user.id=?1")
	User findByUserId(Long id);
}

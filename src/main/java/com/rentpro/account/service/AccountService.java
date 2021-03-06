package com.rentpro.account.service;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lockipro.modules.utils.Digests;
import com.lockipro.modules.utils.Encodes;
import com.lockipro.modules.utils.SpringContextHolder;
import com.rentpro.account.entity.User;
import com.rentpro.account.repository.UserDao;
import com.rentpro.account.service.ShiroDbRealm.ShiroUser;
import com.rentpro.common.entity.AppConstants;

/**
 * 账户操作的服务类
 * 
 * @author Locki
 * @date 2014年8月7日
 * 
 */
@Service
@Transactional
public class AccountService {

	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;

	private static final Logger LOG = LoggerFactory
			.getLogger(AccountService.class);

	@Autowired
	private UserDao userDao;

	public List<User> getAll() {
		return (List<User>) userDao.findAll();
	}

	public User get(Long id) {
		return userDao.findOne(id);
	}

	public User get(String loginMail) {
		return userDao.findByLoginMail(loginMail);
	}

	/**
	 * 注册
	 * 
	 * @param user
	 */
	public void register(User user) {
		entryptPassword(user);
		initUser(user);
		userDao.save(user);
	}

	/**
	 * 更新用户
	 * 
	 * @param user
	 */
	public void update(User user) {
		if (StringUtils.isNotBlank(user.getPlainPassword())) {
			entryptPassword(user);
		}
		userDao.save(user);
	}

	// public void delete(Long id) {
	// if (!isSupervisor(id)) {
	// LOG.warn("操作员{}尝试删除超级管理员用户", getCurrentUserName());
	// throw new ServiceException("不能删除超级管理员用户");
	// }
	// userDao.delete(id);
	// }

	/**
	 * 取出Shiro中的当前用户LoginName.
	 */
	private String getCurrentUserName() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user.nickName;
	}

	/**
	 * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	 */
	private void entryptPassword(User user) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));

		byte[] hashPassword = Digests.sha1(user.getPlainPassword().getBytes(),
				salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
	}

	/**
	 * 注册时初始化用户
	 */
	private void initUser(User user) {
		Date now = new Date();
		user.setRoles(AppConstants.SYSTEM_ROLE_USER);
		user.setRegisterDate(now);
		user.setLastLoginDate(now);
		user.setLoginCount(1);
		user.setAvailable(true);
	}

}

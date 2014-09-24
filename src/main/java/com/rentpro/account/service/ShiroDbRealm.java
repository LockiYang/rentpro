package com.rentpro.account.service;

import java.io.Serializable;

import javax.annotation.PostConstruct;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;

import com.google.common.base.Objects;
import com.lockipro.modules.utils.Encodes;
import com.rentpro.account.entity.User;

public class ShiroDbRealm extends AuthorizingRealm {

	protected AccountService accountService;

	/**
	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		ShiroUser shiroUser = (ShiroUser) principals.getPrimaryPrincipal();
		User user = accountService.get(shiroUser.loginMail);
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		
		//权限生成
//		info.addStringPermission("");
		info.addRoles(user.getRoleList());
		return info;
	}

	/**
	 * 认证回调函数,登录时调用.
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		User user = accountService.get(token.getUsername());
		
		//认证
		if (user != null) {
			byte[] salt = Encodes.decodeHex(user.getSalt());
			return new SimpleAuthenticationInfo(new ShiroUser(user.getId(),
					user.getLoginMail(), user.getNickName()), user.getPassword(),
					ByteSource.Util.bytes(salt), getName());
		} else {
			return null;
		}
	}
	
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	/**
	 * 设定Password校验的Hash算法与迭代次数.
	 */
	@PostConstruct
	private void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(
				AccountService.HASH_ALGORITHM);
		matcher.setHashIterations(AccountService.HASH_INTERATIONS);

		setCredentialsMatcher(matcher);
	}

	/**
	 * 自定义Authentication对象，使得Subject除了携带用户的登录名外还可以携带更多信息.
	 */
	public static class ShiroUser implements Serializable {
		private static final long serialVersionUID = -1373760761780840081L;
		public Long id;
		public String loginMail;
		public String nickName;

		public ShiroUser(Long id, String loginMail, String nickName) {
			this.id = id;
			this.loginMail = loginMail;
			this.nickName = nickName;
		}

		public String getNickName() {
			return nickName;
		}

		/**
		 * 本函数输出将作为默认的<shiro:principal/>输出.
		 */
		@Override
		public String toString() {
			return nickName;
		}

		/**
		 * 重载hashCode,只计算loginName;
		 */
		@Override
		public int hashCode() {
			return Objects.hashCode(loginMail);
		}

		/**
		 * 重载equals,只计算loginName;
		 */
		@Override
		public boolean equals(Object obj) {
			if (this == obj) {
				return true;
			}
			if (obj == null) {
				return false;
			}
			if (getClass() != obj.getClass()) {
				return false;
			}
			ShiroUser other = (ShiroUser) obj;
			if (loginMail == null) {
				if (other.loginMail != null) {
					return false;
				}
			} else if (!loginMail.equals(other.loginMail)) {
				return false;
			}
			return true;
		}
	}
}

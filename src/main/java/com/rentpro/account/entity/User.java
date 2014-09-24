package com.rentpro.account.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.validator.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.google.common.collect.ImmutableList;
import com.rentpro.common.entity.IdEntity;

/**
 * 用户实体类
 * 
 * @author Locki
 * @date 2014年8月30日
 * 
 */
@Entity
@Table(name = "t_user")
@DynamicInsert @DynamicUpdate //只操作修改过的字段
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class User extends IdEntity {
	private String loginName; // 用户名
	private String loginMail; // 登录邮箱 
	private String nickName; // 昵称
	private String role; // 角色 必填
	private String gender; // 性别 
	private String mobile; // 手机号
	private String avatar; // 头像
	private String selfIntroduction; // 自我介绍
	private String homeAddress; // 生活地址

	private Date registerDate; // 注册时间
	private Date lastLoginDate; // 上次登录时间
	private int loginCount; // 登录次数

	private String password; // 加密密码
	private String plainPassword; // 原始密码
	private String salt; // 加密串
	private boolean isAvailable; // 是否可用

	public User() {
	}

	public User(String loginName, String plainPassword) {
		this.loginName = loginName;
		this.plainPassword = plainPassword;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	@NotBlank
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Transient // 不持久化到数据库
	@JsonIgnore // 不显示在Restful接口的属性
	@NotBlank
	public String getPlainPassword() {
		return plainPassword;
	}

	public void setPlainPassword(String plainPassword) {
		this.plainPassword = plainPassword;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getRole() {
		return role;
	}

	public void setRoles(String role) {
		this.role = role;
	}

	@Transient
	@JsonIgnore
	public List<String> getRoleList() {
		// 角色列表在数据库中实际以逗号分隔字符串存储，因此返回不能修改的List.
		return ImmutableList.copyOf(StringUtils.split(role, ","));
	}

	// 设定JSON序列化时的日期格式
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+08:00")
	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	@NotBlank
	public String getLoginMail() {
		return loginMail;
	}

	public void setLoginMail(String loginMail) {
		this.loginMail = loginMail;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}

	public String getHomeAddress() {
		return homeAddress;
	}

	public void setHomeAddress(String homeAddress) {
		this.homeAddress = homeAddress;
	}

	public Date getLastLoginDate() {
		return lastLoginDate;
	}

	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}

	public int getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(int loginCount) {
		this.loginCount = loginCount;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public boolean isAvailable() {
		return isAvailable;
	}

	public void setAvailable(boolean isAvailable) {
		this.isAvailable = isAvailable;
	}

}

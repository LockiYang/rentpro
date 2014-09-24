package com.rentpro.rentinfo.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

import com.rentpro.account.entity.User;
import com.rentpro.common.entity.IdEntity;

/**
 * 租房信息标签
 * 
 * @author Locki
 * @date 2014年8月30日
 * 
 */
@Entity
@Table(name = "t_info_tag")
public class InfoTag extends IdEntity {

	private String name; // 标签名
	private User creator; // 创建人 外键
	private Date createDate; // 创建时间
	private int useTimes; // 使用次数

	public InfoTag() {
	}

	public InfoTag(String name, User creator) {
		this.createDate = new Date();
		this.name = name;
		this.creator = creator;
		this.useTimes = 1;
	}

	@NotBlank
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "t_user_id")
	public User getCreator() {
		return creator;
	}

	public void setCreator(User creator) {
		this.creator = creator;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getUseTimes() {
		return useTimes;
	}

	public void setUseTimes(int useTimes) {
		this.useTimes = useTimes;
	}

	/**
	 * 使用次数+1
	 */
	public void increaseUseTimes() {
		this.useTimes++;
	}
}

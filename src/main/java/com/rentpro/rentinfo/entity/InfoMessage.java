package com.rentpro.rentinfo.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.rentpro.account.entity.User;
import com.rentpro.common.entity.IdEntity;

/**
 * 租房信息评论
 * 
 * @author Locki
 * @date 2014年8月30日
 * 
 */

@Entity
@Table(name = "t_info_message")
public class InfoMessage extends IdEntity {

	private Long parentId; // 上一级留言Id，第一级Id为0
	private User creator; // 评论人
	private String contents; // 内容
	private Date createDate;

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "t_user_id")
	public User getCreator() {
		return creator;
	}

	public void setCreator(User creator) {
		this.creator = creator;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}

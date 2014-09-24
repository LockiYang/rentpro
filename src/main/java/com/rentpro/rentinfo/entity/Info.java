package com.rentpro.rentinfo.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

import com.rentpro.account.entity.User;
import com.rentpro.common.entity.IdEntity;

/**
 * 租房信息
 * 
 * @author Locki
 * @date 2014年8月30日
 * 
 */
@Entity
@Table(name = "t_info")
// @Cache(usage = CacheConcurrencyStrategy.READ_WRITE) //二级缓存
public class Info extends IdEntity {

	private String infoTitle; // 信息title
	private String description; // 信息描述
	private Date createDate; // 发布时间
	private String photosLocation; // 照片位置
	private int photosNumber; // 照片数量
	private String detailAddress; // 详细地址，小区等
	private int rental; // 租金 RMB/月
	private String rentMode; // 租房方式，合租，整租
	private String status; // 信息状态: 有效，完成，取消等
	// 地址联动 可到街道

	private User creator; // 发布人 ManyToOne
	private Set<InfoTag> tags; // 标签 OneToMany
	private Set<User> followers; // 关注 ManyToMany
	private Set<User> agencyIndex; // 中介指数 ManyToMany
	private Set<InfoMessage> conversation; // 评论 OneToMany

	public Info() {
	}

	public Info(String infoTitle, String description) {
		this.createDate = new Date();
		this.infoTitle = infoTitle;
		this.description = description;
	}

	public String getInfoTitle() {
		return infoTitle;
	}

	public void setInfoTitle(String infoTitle) {
		this.infoTitle = infoTitle;
	}

	@NotBlank
	@Column(length = 2000)
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getPhotosLocation() {
		return photosLocation;
	}

	public void setPhotosLocation(String photosLocation) {
		this.photosLocation = photosLocation;
	}

	public int getPhotosNumber() {
		return photosNumber;
	}

	public void setPhotosNumber(int photosNumber) {
		this.photosNumber = photosNumber;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public int getRental() {
		return rental;
	}

	public void setRental(int rental) {
		this.rental = rental;
	}

	public String getRentMode() {
		return rentMode;
	}

	public void setRentMode(String rentMode) {
		this.rentMode = rentMode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

//	@NotBlank
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "t_user_id")
	public User getCreator() {
		return creator;
	}

	public void setCreator(User creator) {
		this.creator = creator;
	}

	@ManyToMany
	@JoinTable(name = "r_info_tag", joinColumns = { @JoinColumn(name = "t_info_id", referencedColumnName = "id") }, inverseJoinColumns = { @JoinColumn(name = "t_info_tag_id", referencedColumnName = "id") })
	public Set<InfoTag> getTags() {
		return tags;
	}

	public void setTags(Set<InfoTag> tags) {
		this.tags = tags;
	}

	@ManyToMany
	@JoinTable(name = "r_info_followers", joinColumns = { @JoinColumn(name = "t_info_id", referencedColumnName = "id") }, inverseJoinColumns = { @JoinColumn(name = "t_user_id", referencedColumnName = "id") })
	public Set<User> getFollowers() {
		return followers;
	}

	public void setFollowers(Set<User> followers) {
		this.followers = followers;
	}

	@ManyToMany
	@JoinTable(name = "r_info_agency_index", joinColumns = { @JoinColumn(name = "t_info_id", referencedColumnName = "id") }, inverseJoinColumns = { @JoinColumn(name = "t_user_id", referencedColumnName = "id") })
	public Set<User> getAgencyIndex() {
		return agencyIndex;
	}

	public void setAgencyIndex(Set<User> agencyIndex) {
		this.agencyIndex = agencyIndex;
	}

	@OneToMany
	@JoinColumn(name = "t_info_id")
	public Set<InfoMessage> getConversation() {
		return conversation;
	}

	public void setConversation(Set<InfoMessage> conversation) {
		this.conversation = conversation;
	}

}

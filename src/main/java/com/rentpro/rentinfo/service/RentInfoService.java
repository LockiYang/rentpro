package com.rentpro.rentinfo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rentpro.rentinfo.entity.Info;
import com.rentpro.rentinfo.respository.InfoDao;
import com.rentpro.rentinfo.respository.InfoMessageDao;
import com.rentpro.rentinfo.respository.InfoTagDao;

/**
 * 租房信息服务
 * 
 * @author Locki
 * @date 2014年8月31日
 * 
 */
@Service
@Transactional
public class RentInfoService {
	
	@Autowired private InfoDao infoDao;
	@Autowired private InfoTagDao infoTagDao;
	@Autowired private InfoMessageDao infoMessageDao;
	
	/**
	 * 发布，修改租房信息
	 */
	public void savaInfo(Info info) {
		infoDao.save(info);
	}
	
	
	/**
	 * 修改状态，废除不显示，已完成等
	 */
	
	/**
	 * 租房信息列表 - 正常浏览
	 */
	public List<Info> listAll() {
		 return (List<Info>) infoDao.findAll();
	}
	
	/**
	 * 查看详细
	 */
	
	/**
	 * 评论
	 */
	
	/**
	 * 关注
	 */

}

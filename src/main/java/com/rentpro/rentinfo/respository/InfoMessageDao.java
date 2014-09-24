package com.rentpro.rentinfo.respository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.rentpro.rentinfo.entity.InfoMessage;

public interface InfoMessageDao extends PagingAndSortingRepository<InfoMessage, Long> {

}

package com.rentpro.rentinfo.respository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.rentpro.rentinfo.entity.InfoTag;

public interface InfoTagDao extends PagingAndSortingRepository<InfoTag, Long> {

}

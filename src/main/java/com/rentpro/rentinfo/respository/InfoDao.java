package com.rentpro.rentinfo.respository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.rentpro.rentinfo.entity.Info;

public interface InfoDao extends PagingAndSortingRepository<Info, Long> {

}

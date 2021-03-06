package com.cplatform.mall.back.order.dao;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.cplatform.order.ActOrderExpressInfo;

public interface SmsbuyOrderDao extends PagingAndSortingRepository<ActOrderExpressInfo, Long> {
	/**
	 * 根据订单ID查询地址
	 * @param orderId    订单ID
	 * @return
	 */
	@Query("select t from ActOrderExpressInfo t where t.actOrderId = ?1")
	public ActOrderExpressInfo findActOrderExpressInfoByOrderId(Long orderId);
	
}

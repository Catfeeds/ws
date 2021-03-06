package com.cplatform.mall.back.store.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cplatform.dbhelp.DbHelper;
import com.cplatform.dbhelp.page.Page;
import com.cplatform.mall.back.store.entity.StoreFee;
import com.cplatform.mall.back.sys.entity.SysFee;
import com.cplatform.mall.back.utils.data.RoleDataUtils;

/**
 * 费率管理 Title. <br>
 * Description.
 * <p>
 * Copyright: Copyright (c) 2013-7-9 下午7:07:53
 * <p>
 * Company: 北京宽连十方数字技术有限公司
 * <p>
 * Author: LiuDong@c-platform.com
 * <p>
 * Version: 1.0
 * <p>
 */
@Service
public class StoreFeeService {

	@Autowired
	private DbHelper dbHelper;

	public Page<StoreFee> listStoreFee(StoreFee vo, int pageNo, int pagesize) throws SQLException {
		StringBuilder sqlBuff = new StringBuilder();
		List<Object> params = new ArrayList<Object>();
		sqlBuff.setLength(0);
		sqlBuff.append("select t.*, store.name, sf.name  productionTypeName ");
		sqlBuff.append("  from t_store_fee t ");
		sqlBuff.append("  left join t_store store ");
		sqlBuff.append("    on t.store_id = store.id ");
		sqlBuff.append("  left join t_sys_fee sf ");
		sqlBuff.append("    on t.production_type = sf.id ");
		sqlBuff.append(" where 1 = 1 and store.sort = 1 and store.is_valid = 1 ");
		if (vo.getStoreId() != null) {
			sqlBuff.append(" and t.store_id = ? ");
			params.add(vo.getStoreId());
		}
		if (StringUtils.isNotEmpty(vo.getName())) {
			sqlBuff.append(" and store.name like ? ");
			params.add("%" + vo.getName().trim() + "%");
		}
		if (vo.getId() != null) {
			sqlBuff.append(" and t.id = ? ");
			params.add(vo.getId());
		}
		if (vo.getStatus() != null) {
			sqlBuff.append(" and t.status = ? ");
			params.add(vo.getStatus());
		}
		if (vo.getSyncGyFlag1() != null) {
			sqlBuff.append(" and t.SYNC_GY_FLAG1 = ? ");
			params.add(vo.getSyncGyFlag1());
		}
		if (vo.getSyncGyFlag2() != null) {
			sqlBuff.append(" and t.SYNC_GY_FLAG2 = ? ");
			params.add(vo.getSyncGyFlag2());
		}
		if (vo.getSyncGyFlag3() != null) {
			sqlBuff.append(" and t.SYNC_GY_FLAG3 = ? ");
			params.add(vo.getSyncGyFlag3());
		}
		if (vo.getSyncGyFlag4() != null) {
			sqlBuff.append(" and t.SYNC_GY_FLAG4 = ? ");
			params.add(vo.getSyncGyFlag4());
		}
		sqlBuff.append(RoleDataUtils.getRoleData(RoleDataUtils.MODULE_STORE));
		sqlBuff.append(" order by t.create_time desc ,t.store_id ");
		return dbHelper.getPage(sqlBuff.toString(), StoreFee.class, pageNo, pagesize, params.toArray());
		// return this.feeDao.findByStoreId(storeId);
	}

	/**
	 * 判断结算资料的生效时间与失效时间是否有效
	 * 
	 * @param vo
	 * @return
	 * @throws SQLException
	 */
	public boolean dateIsValid(StoreFee vo, String filtersql) throws SQLException {
		StringBuilder sqlBuff = new StringBuilder();
		List<Object> params = new ArrayList<Object>();
		sqlBuff.setLength(0);
		sqlBuff.append("select count(*) ");
		sqlBuff.append("  from t_store_fee t ");
		sqlBuff.append(" where 1 = 1 ");
		if (vo.getProductionType() != null) {
			sqlBuff.append(" and t.production_type = ? ");
			params.add(vo.getProductionType());
		}
		if (vo.getId() != null) {

			sqlBuff.append(" and t.id != ? ");
			params.add(vo.getId());
		}
		if (vo.getStoreId() != null) {
			sqlBuff.append(" and t.store_id = ? ");
			params.add(vo.getStoreId());
		}

		sqlBuff.append("   and ((t.effortdate <= ? and t.expirydate >= ? ) or ");
		params.add(vo.getEffortdate());
		params.add(vo.getEffortdate());
		sqlBuff.append("       (t.effortdate <= ? and t.expirydate >= ? )  ");
		params.add(vo.getExpirydate());
		params.add(vo.getExpirydate());
		if (vo.getId() == null) {
			sqlBuff.append("     or  t.effortdate >= ? ");
			params.add(vo.getExpirydate());
		}
		sqlBuff.append(") ");
		if (filtersql != null && !"".equals(filtersql)) {
			sqlBuff.append(filtersql);
		}
		String value = this.dbHelper.queryScalar(sqlBuff.toString(), params.toArray());
		return Integer.valueOf(value) == 0;
	}

	public StoreFee getStoreFee(Long id, String productionType, String effortdate, String expirydate, String clearType,String filtersql,String flag) throws SQLException {
		StringBuilder sqlBuff = new StringBuilder();
		List<Object> params = new ArrayList<Object>();
		sqlBuff.setLength(0);
		sqlBuff.append("select * ");
		sqlBuff.append("  from t_store_fee t ");
		sqlBuff.append(" where t.id = ? ");
		sqlBuff.append("   and t.production_type = ? ");
		if("true".equals(flag)){
			sqlBuff.append("   and t.phone_effortdate = ? ");
		}else{
			sqlBuff.append("   and t.effortdate = ? ");
		}
		sqlBuff.append("   and t.expirydate = ?");
		sqlBuff.append("   and t.clear_type = ?");
		if (filtersql != null) {
			sqlBuff.append(filtersql);
		}
		params.add(id);
		params.add(productionType);
		params.add(effortdate);
		params.add(expirydate);
		params.add(clearType);
		StoreFee fee = null;
//		try {
			fee = dbHelper.getBean(sqlBuff.toString(), StoreFee.class, params.toArray());
//		}
//		catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		return fee;
	}

	/**
	 * 获取有效期内的商户费率.
	 * 
	 * @param storeId
	 * @return
	 * @throws SQLException
	 */
	public List<SysFee> getValidById(Long storeId) throws SQLException {
		StringBuilder sql = new StringBuilder();
//		sql.append("SELECT fee.*,  ");
		sql.append("SELECT fee.*, f.clear_type clearType ");
		sql.append("  FROM t_sys_fee fee, t_store_fee f ");
		sql.append(" WHERE f.store_id = ?  ");
		sql.append("   and fee.id = f.production_type ");
		sql.append("   AND to_char(sysdate, 'yyyyMMdd') >= f.effortdate ");
		sql.append("   AND to_char(sysdate, 'yyyyMMdd') < f.expirydate ");
		sql.append("   AND f.status = 3");
		sql.append("   AND f.sync_gy_flag1 = '3'");
		List<Object> params = new ArrayList<Object>();
		params.add(storeId);
		return dbHelper.getBeanList(sql.toString(), SysFee.class, params.toArray());
	}
}

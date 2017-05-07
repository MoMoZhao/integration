package com.acpms.ssm.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acpms.ssm.dao.AcpMenuDao;
import com.acpms.ssm.pojo.AcpMenu;

@Repository
public class AcpMenuDaoImpl implements AcpMenuDao{

	@Autowired  
    private SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public List<AcpMenu> findAllMenu() {
		return sqlSessionTemplate.selectList("com.acpms.ssm.dao.AcpMenuDao.findAllMenu");
	}

}

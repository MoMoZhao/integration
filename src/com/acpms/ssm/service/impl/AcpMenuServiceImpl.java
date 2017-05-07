package com.acpms.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acpms.ssm.dao.AcpMenuDao;
import com.acpms.ssm.pojo.AcpMenu;
import com.acpms.ssm.service.AcpMenuService;

@Service("acpMenuService")
public class AcpMenuServiceImpl implements AcpMenuService{

	@Autowired
	private AcpMenuDao acpMenuDao;
	
	@Override
	public List<AcpMenu> findAcpMenus() {
		return acpMenuDao.findAllMenu();
	}

}

package com.acpms.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acpms.ssm.dao.UserTestDao;
import com.acpms.ssm.pojo.UserTest;
import com.acpms.ssm.service.UserTestService;

@Service("userTestService")
public class UserTestServiceImpl implements UserTestService{

//	@Autowired
//	private UserTestDao userTestDao=null;
	
	@Override
	public void insertUserTest(UserTest userTest) {
//		userTestDao.insertUserTest(userTest);
	}

}

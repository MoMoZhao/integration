package com.acpms.ssm.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.acpms.ssm.pojo.UserTest;

@MapperScan
public interface UserTestDao {
	public void insertUserTest(UserTest userTest);
}

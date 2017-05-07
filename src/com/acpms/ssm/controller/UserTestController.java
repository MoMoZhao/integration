package com.acpms.ssm.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acpms.ssm.pojo.UserTest;
import com.acpms.ssm.service.UserTestService;

@Controller
@RequestMapping("/userTest")
public class UserTestController {
	
	@Autowired
	private UserTestService userTestService;
	
	@RequestMapping("/insertUserTest")
	public void addUserTest(String name,String id) {
		UserTest userTest = new UserTest(id, name);
		userTestService.insertUserTest(userTest);
	}
}

package com.acpms.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.acpms.ssm.pojo.CustInfo;
import com.acpms.ssm.pojo.UserTest;

@Controller
@RequestMapping("/cust")
public class CustomerController {
	@RequestMapping("/newCustomer")
	public String test(CustInfo customer) {
		return "customerManagement";
	}
	
}

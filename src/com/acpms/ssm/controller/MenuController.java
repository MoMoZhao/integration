package com.acpms.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acpms.ssm.entity.AcpMenuEntity;
import com.acpms.ssm.pojo.AcpMenu;
import com.acpms.ssm.service.AcpMenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private AcpMenuService acpMenuService;
	
	@ResponseBody
	@RequestMapping("/findMenu")
	public List<AcpMenu> findAllMenu() {
		List<AcpMenu> temp = acpMenuService.findAcpMenus();
		return temp;
	}
}

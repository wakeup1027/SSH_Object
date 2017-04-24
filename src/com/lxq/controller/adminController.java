package com.lxq.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxq.beans.myMajor;
import com.lxq.service.adminService;

@Controller
@RequestMapping("/framework/admin")
public class adminController {
	@Autowired
	private adminService admins;
	
	@RequestMapping(value = "/getMyMajor.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> shows(int page, int rows) {
 	   Map<String, Object> map = new HashMap<String, Object>();
 	   map = admins.shows(page, rows);
       return map;
    }
    
	/**
	 * 增加“我的专业”
	 */
	@RequestMapping(value = "/add.action", method = RequestMethod.POST)
    @ResponseBody
    public int addMajor(myMajor myMa){
		try{
			admins.add(myMa);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value = "/delet.action", method = RequestMethod.POST)
    @ResponseBody
    public int deletMajor(String idstr){
		List<myMajor> mmjor = new ArrayList<myMajor>();
		String[] idstrCh = idstr.split(","); 
		for(String ids : idstrCh){
			myMajor mmjc = new myMajor();
			mmjc.setId(ids);
			mmjor.add(mmjc);
		}
		try{
			admins.delet(mmjor);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	
}

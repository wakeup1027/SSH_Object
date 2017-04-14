package com.lxq.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxq.beans.User;
import com.lxq.service.UserService;

@Controller
@RequestMapping("/framework/user")
public class UserController {
	@Autowired
	private UserService userser;
	
	@RequestMapping(value = "/add.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> add(User user){
		Map<String, Object> map = new HashMap<String, Object>();
		int i = userser.addUser(user);
		if(i==1)map.put("addRes", "数据增加成功！");else map.put("addRes", "数据增加失败！");
		map.put("addUser", user);
		return map;
	}
	
	@RequestMapping(value = "/delet.action", method = RequestMethod.POST)
    @ResponseBody
	public Map<String, Object> delete(String id){
		Map<String, Object> map = new HashMap<String, Object>();
		User user  = new User();
		user.setId(id);
		int i = userser.delete(user);
		if(i==1)map.put("addRes", "数据删除成功！");else map.put("addRes", "数据删除失败！");
		return map;
	}
}

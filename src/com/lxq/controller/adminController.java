package com.lxq.controller;

import java.sql.Timestamp; 
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxq.beans.LifeMotto;
import com.lxq.beans.myExperience;
import com.lxq.beans.myInfo;
import com.lxq.beans.myLike;
import com.lxq.beans.myMajor;
import com.lxq.beans.myText;
import com.lxq.service.adminService;

@Controller
@RequestMapping("/framework/admin")
public class adminController {
	@Autowired
	private adminService admins;
	
	//==============================人生格言================================================
	@RequestMapping(value = "/getLifeMotto.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> showsLifeMotto(int page, int rows) {
 	   Map<String, Object> map = new HashMap<String, Object>();
 	   map = admins.showsLifeMotto(page, rows);
       return map;
    }
	
	/**
	 * 增加“人生格言”
	 */
	@RequestMapping(value = "/addLifeMotto.action", method = RequestMethod.POST)
    @ResponseBody
    public int addLifeMotto(LifeMotto myMa){
		myMa.setCreantime(new Timestamp(new Date().getTime()));
		try{
			admins.add(myMa);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	/**
	 * 删除“人生格言”
	 */
	@RequestMapping(value = "/deletLifeMotto.action", method = RequestMethod.POST)
    @ResponseBody
    public int deletLifeMotto(String idstr){
		LifeMotto mmjc = new LifeMotto();
		mmjc.setId(idstr);
		try{
			admins.delet(mmjc);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	//==============================我的经历==========================================
	@RequestMapping(value = "/getExperien.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> showsExperien(int page, int rows) {
 	   Map<String, Object> map = new HashMap<String, Object>();
 	   map = admins.showsExperien(page, rows);
       return map;
    }
	
	/**
	 * 增加“我的经历”
	 */
	@RequestMapping(value = "/addExperien.action", method = RequestMethod.POST)
    @ResponseBody
    public int addExperien(myExperience myMa){
		myMa.setCreantime(new Timestamp(new Date().getTime()));
		try{
			admins.add(myMa);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	/**
	 * 删除“我的经历”
	 */
	@RequestMapping(value = "/deletExperien.action", method = RequestMethod.POST)
    @ResponseBody
    public int deletExperien(String idstr){
		myExperience mmjc = new myExperience();
		mmjc.setId(idstr);
		try{
			admins.delet(mmjc);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	//==============================兴趣爱好==========================================
	@RequestMapping(value = "/getMyLike.action", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> showsMyLike(int page, int rows) {
	 	  Map<String, Object> map = new HashMap<String, Object>();
	 	  map = admins.showsMyLike(page, rows);
	      return map;
	}
		
	/**
	* 增加“兴趣爱好”
	*/
	@RequestMapping(value = "/addMyLike.action", method = RequestMethod.POST)
	@ResponseBody
	public int addMyLike(myLike myMa){
		myMa.setCreantime(new Timestamp(new Date().getTime()));
		try{
			admins.add(myMa);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
		
	/**
	* 删除“兴趣爱好”
	*/
	@RequestMapping(value = "/deletMyLike.action", method = RequestMethod.POST)
	@ResponseBody
	public int deletMyLike(String idstr){
		myLike mmjc = new myLike();
		mmjc.setId(idstr);
		try{
			admins.delet(mmjc);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
		
	//=============================我的博文=================================================
	@RequestMapping(value = "/getMyText.action", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> showsMyText(int page, int rows) {
	 	  Map<String, Object> map = new HashMap<String, Object>();
	 	  map = admins.showsMyText(page, rows);
	      return map;
	}
		
	/**
	* 增加“我的博文”
	*/
	@RequestMapping(value = "/addMyText.action", method = RequestMethod.POST)
	@ResponseBody
	public int addMyText(myText myMa){
		myMa.setCreantime(new Timestamp(new Date().getTime()));
		try{
			admins.add(myMa);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
		
	/**
	* 删除“我的博文”
	*/
	@RequestMapping(value = "/deletMyText.action", method = RequestMethod.POST)
	@ResponseBody
	public int deletMyText(String idstr){
		List<myText> mmjor = new ArrayList<myText>();
		String[] idstrCh = idstr.split(","); 
		for(String ids : idstrCh){
			myText mmjc = new myText();
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
	
	//==============================关于自己==========================================
	@RequestMapping(value = "/getMyInfo.action", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> showsMyInfo(int page, int rows) {
		 Map<String, Object> map = new HashMap<String, Object>();
		 map = admins.showsMyInfo(page, rows);
		 return map;
	}
			
	/**
	* 增加“关于自己”
	*/
	@RequestMapping(value = "/addMyInfo.action", method = RequestMethod.POST)
	@ResponseBody
	public int addMyInfo(myInfo myMa){
		myMa.setCreantime(new Timestamp(new Date().getTime()));
		try{
			admins.add(myMa);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
			
	/**
	* 删除“关于自己”
	*/
	@RequestMapping(value = "/deletMyInfo.action", method = RequestMethod.POST)
	@ResponseBody
	public int deletMyInfo(String idstr){
		myInfo mmjc = new myInfo();
		mmjc.setId(idstr);
		try{
			admins.delet(mmjc);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	
	//=============================我的专业=================================================
	/**
	 * 获取“我的专业”数据链表
	 */
	@RequestMapping(value = "/getMyMajor.action", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> shows(int page, int rows) {
 	   Map<String, Object> map = new HashMap<String, Object>();
 	   map = admins.showsMyMajor(page, rows);
       return map;
    }
    
	/**
	 * 增加“我的专业”
	 */
	@RequestMapping(value = "/addMajor.action", method = RequestMethod.POST)
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
	 * 删除“我的专业”
	 */
	@RequestMapping(value = "/deletMajor.action", method = RequestMethod.POST)
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

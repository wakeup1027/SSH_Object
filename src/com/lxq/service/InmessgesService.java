package com.lxq.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxq.beans.Inmessges;
import com.lxq.beans.LifeMotto;
import com.lxq.beans.myInfo;
import com.lxq.beans.myLike;
import com.lxq.beans.myMajor;
import com.lxq.beans.myText;
import com.lxq.dao.Dao;

@Service
@Transactional
public class InmessgesService {
	@Resource
	private Dao dao;
	
	/**
	 * 新增user
	 * @param user
	 * @return
	 */
	public int addUser(Inmessges user){
		try {
			dao.save(user);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	/**
	 * 删除user
	 * @param user
	 * @return
	 */
	public int delete(Inmessges user){
		try {
			dao.delete(user);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	/**
	 * 获取全部的Inmessges数据表里面的信息
	 * @return
	 */
	public Inmessges list(){
		List<Inmessges> list = dao.find("FROM Inmessges");
		return list.get(0);
	}
	
	/**
	 * 获取人生格言
	 * @return
	 */
	public LifeMotto listMotto(){
		List<LifeMotto> list = dao.find("FROM LifeMotto ORDER BY creantime DESC");
		return list.get(0);
	}
	
	/**
	 * 获取兴趣爱好
	 */
	public myLike listLike(){
		List<myLike> list = dao.find("FROM myLike ORDER BY creantime DESC");
		return list.get(0);
	}
	
	/**
	 * 我的简介
	 */
	public myInfo listMyinfo(){
		List<myInfo> list = dao.find("FROM myInfo ORDER BY creantime DESC");
		return list.get(0);
	}
	
	/**
	 * 我的技能链表
	 */
	public List<myMajor> listMajor(){
		List<myMajor> list = dao.find("FROM myMajor");
		return list;
	}
	
	/**
	 * 我的博文链表
	 * @return
	 */
	public List<myText> listText(){
		List<myText> list = dao.find("FROM myMajor ORDER BY creantime DESC");
		return list;
	}
	
}

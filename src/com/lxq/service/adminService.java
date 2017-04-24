package com.lxq.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxq.beans.myMajor;
import com.lxq.dao.Dao;

@Service
@Transactional
public class adminService<T> {
	
	@Resource
	private Dao dao;
	
	/**
	 * 新增
	 */
	public void add(T sd){
		dao.save(sd);
	}
	
	/**
	 * 删除
	 */
	public void delet(List<T> sd){
		dao.delete(sd);
	}
	
	/**
	 * 获取我的专业全部数据
	 */
	public Map<String, Object> shows(int page, int rows){
		Map<String, Object> map = new HashMap<String, Object>();
		String hql = "FROM myMajor";
		List<myMajor> orders = this.dao.findByPage(hql, Integer.valueOf(page), Integer.valueOf(rows));
		Long total = this.dao.count(myMajor.class,hql);
		map.put("rows", orders);
	    map.put("total", total);
	    return map;
	}
}

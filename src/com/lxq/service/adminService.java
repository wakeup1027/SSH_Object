package com.lxq.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxq.beans.LifeMotto;
import com.lxq.beans.myMajor;
import com.lxq.dao.Dao;

@Service
@Transactional
public class adminService<T> {
	
	@Resource
	private Dao dao;
	
	/**
	 * ����
	 */
	public void add(T sd){
		dao.save(sd);
	}
	
	/**
	 * ɾ����������
	 */
	public void delet(List<T> sd){
		dao.delete(sd);
	}
	
	/**
	 * ɾ����������
	 */
	public void delet(T sd){
		dao.delete(sd);
	}
	
	/**
	 * ��ȡ���ҵ�רҵ��ȫ������
	 */
	public Map<String, Object> showsMyMajor(int page, int rows){
		Map<String, Object> map = new HashMap<String, Object>();
		String hql = "FROM myMajor";
		List<myMajor> orders = this.dao.findByPage(hql, Integer.valueOf(page), Integer.valueOf(rows));
		Long total = this.dao.count(myMajor.class,hql);
		map.put("rows", orders);
	    map.put("total", total);
	    return map;
	}
	
	/**
	 * ��ȡ�ҵġ��������ԡ�ȫ������
	 * @param page
	 * @param rows
	 * @return
	 */
	public Map<String, Object> showsLifeMotto(int page, int rows){
		Map<String, Object> map = new HashMap<String, Object>();
		String hql = "FROM LifeMotto";
		List<LifeMotto> orders = this.dao.findByPage(hql, Integer.valueOf(page), Integer.valueOf(rows));
		Long total = this.dao.count(LifeMotto.class,hql);
		map.put("rows", orders);
	    map.put("total", total);
	    return map;
	}
}

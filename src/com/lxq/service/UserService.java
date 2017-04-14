package com.lxq.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxq.beans.User;
import com.lxq.dao.Dao;

@Service
@Transactional
public class UserService {
	@Resource
	private Dao dao;
	
	/**
	 * ����user
	 * @param user
	 * @return
	 */
	public int addUser(User user){
		try {
			dao.save(user);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
	/**
	 * ɾ��user
	 * @param user
	 * @return
	 */
	public int delete(User user){
		try {
			dao.delete(user);
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}
	
}

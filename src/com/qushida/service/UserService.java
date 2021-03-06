package com.qushida.service;

import java.util.List;

import com.qushida.po.OrderCriteria;
import com.qushida.po.User;
import com.qushida.vo.OrderInfo;

public interface UserService {
	public User login(String name,String pwd);
	public User getUserById(int id);
	public List<OrderInfo> getUserOrderByCriteria(OrderCriteria criteria);
	public int register(User user);
	public int updateUser(User user);
}

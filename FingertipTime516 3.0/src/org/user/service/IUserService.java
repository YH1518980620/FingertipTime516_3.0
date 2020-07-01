package org.user.service;

import java.util.List;

import org.user.entity.User;

public interface IUserService {
	public List<User> queryUserByUname(String uname);
	
	public List<User> queryAllUsers();
	
	public User queryUserByUid(String uid) ;
	
	public boolean updateUserByUid(User user);
	
	public boolean deleteUser(String uid,String upwd);
	
	public boolean login(String uid,String upwd);
	
	public boolean queryUserByUid() ;
	
	public boolean addUser(User user) ;
}

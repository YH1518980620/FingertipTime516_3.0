package org.user.dao;

import java.util.List;

import org.user.entity.User;

public interface IUserDao {
	public boolean isExist(String uid) ;
	
	public boolean addUser(User user) ;
	
	public boolean deleteUserByUidAndUpwd(String uid,String upwd);
	
	
	public boolean updateUser(User user) ;
	
	//�û�����ѯ
	public List<User> queryUserByUname(String uname) ;
	
	//�˺Ų�ѯ
	public User queryUserByUid(String uid) ;
	
	public List<User> queryAllUser() ;
	
}

package com.springmvc_mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springmvc_mybatis.bean.User;

//userMapper鍙兘浼犲叆涓�涓弬鏁�,澶氫釜鐨勮瘽闇�瑕佹敞瑙�
public interface UserMapper {

	//value 蹇呴』涓嶣ean 灞炴�т竴鑷达紒
	User login(@Param(value = "name") String name,
			@Param(value = "pwd") String pwd);

	List<User> getAllUsers();
	
	void deleteUser(@Param(value = "id") int id);
	
	void insertUser(@Param(value = "name") String name,
			@Param(value = "pwd") String pwd,
			@Param(value = "school") String school,
			@Param(value = "role") int role,
			@Param(value = "nickname") String nickname);
	
	User getSingleUser(@Param(value = "id") int id);
	
	void chnpwd(@Param(value = "id") int id,@Param(value = "pwd") String pwd);
}

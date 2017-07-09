package com.springmvc_mybatis.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.springmvc_mybatis.bean.User;
import com.springmvc_mybatis.mapper.UserMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/beans_wolf.xml")
public class TestSimpleMyBatis {

	@Autowired
	private UserMapper userMapper;

	@Test
	public void findAll() {
		List<User> users = userMapper.getAllUsers();
		System.out.println(users);
	}

	@Test
	public void login() {
		// User user = new User(null, "wx", "123456", new Date());
		// User user = new User(null, "wangxin", "123456", new Date());
		// User loginExit = userMapper.login(user);
		// User loginExit = userMapper.login("wx", "123456");
		User loginExit = userMapper.login("wangxin", "123456");
		if (loginExit == null) {
			System.out.println("用户不存在");
		} else {
			System.out.println(loginExit);
			System.out.println("登录成功！");
		}
	}
}
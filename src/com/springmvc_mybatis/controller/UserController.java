package com.springmvc_mybatis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc_mybatis.bean.User;
import com.springmvc_mybatis.mapper.UserMapper;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserMapper usermapper;//dao

	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model) {
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("login");
		System.out.println("sdd");
		System.out.println(name);
		System.out.println(password);
		System.out.println("sdd2");
		User user_login = usermapper.login(name, password);
		System.out.println(user_login);
		if (user_login == null) {
			System.out.println("Error login!");
			return "fail";
		} else {
			model.addAttribute("user", user_login);
			request.getSession().setAttribute("userid", user_login.getId());
			return "index";
		}
	}

	@RequestMapping("/list")
	public String getAllUsers(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		List<User> users = usermapper.getAllUsers();
		model.addAttribute("users", users);
		System.out.println(users);
		return "list";

	}
	
	@RequestMapping(value="/{id}/delete",method=RequestMethod.GET)
	public String delete(@PathVariable int id,HttpServletRequest request) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		usermapper.deleteUser(id);
		return "redirect:/user/list.action";
	}
	
	@RequestMapping("/add")
	public String add(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		return "add";

	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String addUser(HttpServletRequest request, Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		String name = request.getParameter("username");
		String password = request.getParameter("pwd");
		String school = request.getParameter("school");
		int role = Integer.parseInt(request.getParameter("role"));
		String nickname = request.getParameter("nickname");
		usermapper.insertUser(name, password, school, role, nickname);
		return "redirect:/user/list.action";
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String delete(HttpServletRequest request) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		request.getSession().removeAttribute("userid");
		return "login";
	}
	
	@RequestMapping(value="/chnpwd",method=RequestMethod.GET)
	public String getchn(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		User user_login = usermapper.getSingleUser((Integer)request.getSession().getAttribute("userid"));
		System.out.println(user_login);
		if (user_login == null) {
			System.out.println("Error login!");
			return "login";
		} else {
			model.addAttribute("user", user_login);
			return "chnpwd";
		}
	}
	
	@RequestMapping(value="/chnpwd",method=RequestMethod.POST)
	public String chnpwd(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		int id = Integer.parseInt(request.getParameter("id"));
		String password = request.getParameter("pwd");
		usermapper.chnpwd(id, password);
		request.getSession().removeAttribute("userid");
		return "login";
		
	}
}

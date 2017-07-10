package com.springmvc_mybatis.controller;

import java.util.Date;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc_mybatis.bean.User;
import com.springmvc_mybatis.bean.week;
import com.springmvc_mybatis.mapper.UserMapper;
import com.springmvc_mybatis.mapper.weekmapper;

@Controller
@RequestMapping("/labbook")
public class labbookController {
	@Autowired
	private UserMapper usermapper;//dao
	
	@Autowired
	private weekmapper wmapper;//dao
	
	@RequestMapping("/index")
	public String getindex(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		else{
			User user_login = usermapper.getSingleUser((Integer)request.getSession().getAttribute("userid"));
			if (user_login == null) {
				System.out.println("Error login!");
				return "login";
			} else {
				model.addAttribute("user", user_login);
				List<week> weeks = wmapper.getAllWeek();
				//HashMap<String,String> weekmap = new HashMap<String,String>();
				for(week we:weeks)
				{
					model.addAttribute(we.getmeetingfield(), we.getfact());
				}
				//model.addAttribute("weeks", weekmap);
				return "index";
			}
		}
	}
	
	@RequestMapping(value="/{meetingfield}/meetingbook",method=RequestMethod.GET)
	public String meetingbook(@PathVariable String meetingfield,HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		User user_login = usermapper.getSingleUser((Integer)request.getSession().getAttribute("userid"));
		if (user_login == null) {
			System.out.println("Error login!");
			return "login";
		} else {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String updatetime = df.format(new Date());
			String fact = user_login.getnickname()+"\n"+user_login.getschool();
			wmapper.setWeek(meetingfield, fact, updatetime);
//			model.addAttribute("user", user_login);
//			List<week> weeks = wmapper.getAllWeek();
//			for(week we:weeks)
//			{
//				model.addAttribute(we.getmeetingfield(), we.getfact());
//			}
			
			return "redirect:/labbook/index.action";
		}
	}
	
	@RequestMapping(value="/{meetingfield}/cancelbook",method=RequestMethod.GET)
	public String cancel(@PathVariable String meetingfield,HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String updatetime = df.format(new Date());
		wmapper.clearWeek(meetingfield, updatetime);
		return "redirect:/labbook/index.action";
	}

	
}

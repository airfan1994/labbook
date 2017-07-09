package com.springmvc_mybatis.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc_mybatis.bean.User;

@Controller
@RequestMapping("/labbook")
public class labbookController {

	@RequestMapping("/index")
	public String getindex(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("userid")==null)
			return "login";
		else
			return "index";

	}
}

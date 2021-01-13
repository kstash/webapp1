package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ch02")
public class Ch02Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch02Controller.class);
	
	//http:// ... /webapp1/ch02/content
	@RequestMapping("/content")
	public String content() {
		logger.info("실행");
		
		return "ch02/content";
	}
	
	//@RequestMapping("/request1") //GET, POST 둘다 지원
	@RequestMapping(value="/getMethod", method=RequestMethod.GET)
	//@RequestMapping(value="/request1", method=RequestMethod.POST)
	public String getMethod() {
		logger.info("실행");
		
		return "ch02/content";
	}
	
	//@RequestMapping("/request2")
	@RequestMapping(value="/postMethod", method=RequestMethod.POST)
	public String postMethod() {
		logger.info("실행");
		
		return "ch02/content";
	}
	
	//@RequestMapping(value="/join", method=RequestMethod.GET) //회원가입 양식 폼 달라
	@GetMapping("/join")
	public String joinForm() {
		logger.info("회원가입 양식을 보냄");
		return "ch02/joinForm";
	}

	//@RequestMapping(value="/joinFormAsync", method=RequestMethod.GET)
	@GetMapping("/joinFormAsync")
	public String joinFormAsync() {
		logger.info("회원가입 처리함");
		return "ch02/joinFormAsync";
	}
	
	//@RequestMapping(value="/join", method=RequestMethod.POST) //회원가입 등록 전달
	@PostMapping("/join")
	public String join() {
		logger.info("회원가입 처리함");
		return "ch02/content";
	}
	
}

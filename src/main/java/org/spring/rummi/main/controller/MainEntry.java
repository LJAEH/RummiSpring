package org.spring.rummi.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainEntry {
	
	@RequestMapping("/entry")
	public String mainEntry() {	
		return "common/main";
	}
	
	@RequestMapping("/gameEntry")
	public String gameEntry() {
		return "game/game";
	}
	
	@RequestMapping("/info")
	public String info() {
		return "game/rule";
	}
}

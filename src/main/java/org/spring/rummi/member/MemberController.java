package org.spring.rummi.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.spring.rummi.model.service.MainService;
import org.spring.rummi.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/member")
@SessionAttributes({"loginMember"})
public class MemberController {
	
	private Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MainService service;
	
	@PostMapping("/login")
	public String login(Member member,
				Model model,
				HttpServletRequest req,
				HttpServletResponse resp,
				RedirectAttributes ra
				) {
		
		Member loginMember = service.login(member);
	
		if (loginMember != null ) {
			model.addAttribute("loginMember",loginMember);
			ra.addFlashAttribute("message", loginMember.getNick() + "어서와");
		} 
	
	return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus st) {
		
		logger.info("로그아웃햇다");
		
		st.setComplete();
		
		return "redirect:/";
	}
}

package org.spring.rummi.model.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.spring.rummi.model.dao.MainDAO;
import org.spring.rummi.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;
	
	private Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);
	
	@Autowired
	private MainDAO dao;

	@Override
	public Member login(Member member) {

		Member loginMember = dao.login(member);
		logger.debug(member.getPw()+"/"+bcrypt.encode(member.
				 getPw()));		
		if(loginMember != null) { 
			if( bcrypt.matches(member.getPw(),loginMember.getPw())) {
				loginMember.setPw(null);
			} else { 
				loginMember = null;
			}	
		}
		return loginMember;
	}

}

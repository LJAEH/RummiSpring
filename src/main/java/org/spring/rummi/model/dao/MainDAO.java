package org.spring.rummi.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.spring.rummi.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDAO {
	
	private Logger logger = LoggerFactory.getLogger(MainDAO.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member login(Member member) {
		Member loginMember = sqlSession.selectOne("mainMapper.login", member);
		logger.debug("dao");
		logger.debug(loginMember.getNick());
		return loginMember;
	}

}

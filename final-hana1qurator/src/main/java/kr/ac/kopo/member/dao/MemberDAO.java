package kr.ac.kopo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//로그인
	
	public MemberVO login(MemberVO member) {
		MemberVO authMember = sqlSessionTemplate.selectOne("member.dao.memberDAO.login",member);
		return authMember;	
	}
	
	//회원가입
	
	public void insertMember(MemberVO memberVO) {
		sqlSessionTemplate.insert("member.dao.memberDAO.insertMember",memberVO);
		
	}
	
	public void update(String userId) {
		System.out.println("여기넘어옴?");
		sqlSessionTemplate.update("member.dao.memberDAO.joinOpenBaking",userId);
	}

	public void recentAccessDate(String id) {
		sqlSessionTemplate.update("member.dao.memberDAO.recentAccessDate",id);
	}

	public void checkDormantMember() {
		sqlSessionTemplate.update("member.dao.memberDAO.dormantToUser");
	}
}
	


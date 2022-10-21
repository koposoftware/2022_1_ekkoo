package kr.ac.kopo.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public Map<String, Integer> genderRatio() {
		return sqlSessionTemplate.selectOne("member.dao.memberDAO.genderRatio");

	}

	public List<MemberVO> allMemberJson() {
		return sqlSessionTemplate.selectList("member.dao.memberDAO.selectAllMember");
	}
	
	public int countNewMemberOfLastWeek() {
		return sqlSessionTemplate.selectOne("member.dao.memberDAO.countNewMemberOfLastWeek");
	}
	
	public int countAllMember() {
		return sqlSessionTemplate.selectOne("member.dao.memberDAO.countAllMember");
	}
	
	public Map<String, Integer> countMemberByAge(){
		return sqlSessionTemplate.selectOne("member.dao.memberDAO.countMemberByAge");
	}
	
	public int countDormantMember() {
		return sqlSessionTemplate.selectOne("member.dao.memberDAO.getDormant");
	}

}

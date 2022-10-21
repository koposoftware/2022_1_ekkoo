package kr.ac.kopo.hometax.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.hometax.vo.HometaxVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class HometaxDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTEmplate;

	public HometaxVO getInfo(String telephone) {
		return sqlSessionTEmplate.selectOne("hometax.dao.hometaxDAO.getInfo", telephone);
	}

	public HometaxVO gethometaxinfo(MemberVO member) {
		return sqlSessionTEmplate.selectOne("hometax.dao.hometaxDAO.gethometaxinfo", member);
	}

}

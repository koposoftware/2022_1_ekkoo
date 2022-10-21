package kr.ac.kopo.hometax.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.hometax.vo.HometaxVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class HometaxDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public HometaxVO gethometaxinfo(MemberVO member) {
		return sqlSessionTemplate.selectOne("hometax.dao.hometaxDAO.gethometaxinfo", member);
	}

	public int checkAccessKey(Map<String, String> apiAccess) {
		return sqlSessionTemplate.selectOne("hometax.dao.hometaxDAO.correctApiKey",apiAccess);
	}
	public String generateApiKey() {
		return sqlSessionTemplate.selectOne("hometax.dao.hometaxDAO.generateApiKey");
	}
	public void storeApiKey(String id,String apiKey) {
		Map<String, String> api = new HashMap<String, String>();
		api.put(id, apiKey);
		sqlSessionTemplate.insert("hometax.dao.hometaxDAO.storeApiKey",api);
	}
}

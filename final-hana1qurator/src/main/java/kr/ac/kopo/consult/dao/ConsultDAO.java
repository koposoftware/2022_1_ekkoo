package kr.ac.kopo.consult.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ConsultDAO {
@Autowired
private SqlSessionTemplate sqlSessionTemplate;

public Map<String, Object> selectConsult(Map<String, Object> consult){
	return sqlSessionTemplate.selectOne("consult.dao.consultDAO.selectConsult",consult);
}

public List<Map<String, Object>> selectAllConsult(String id) {
	return sqlSessionTemplate.selectList("consult.dao.consultDAO.selectAllConsult",id);
}
}

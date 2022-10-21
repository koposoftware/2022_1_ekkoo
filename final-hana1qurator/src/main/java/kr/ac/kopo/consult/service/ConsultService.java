package kr.ac.kopo.consult.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.consult.dao.ConsultDAO;

@Service
public class ConsultService {
@Autowired
private ConsultDAO consultDAO;

public Map<String, Object> selectConsult( Map<String, Object> consult){
	return consultDAO.selectConsult(consult);
}
public List<Map<String, Object>> selectAllConsult(String id){
	return consultDAO.selectAllConsult(id);
}
}

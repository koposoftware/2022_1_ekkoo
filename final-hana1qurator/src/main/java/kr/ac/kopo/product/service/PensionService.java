package kr.ac.kopo.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.product.dao.PensionDAO;
import kr.ac.kopo.product.vo.PensionVO;

@Service
public class PensionService {
	@Autowired
	PensionDAO pensionDAO;
	
	public PensionVO pension01Recommend(){
		return pensionDAO.pension01Recommend();
	}
	
	public List<PensionVO> pension01Recommend3(){
		return pensionDAO.pension01Recommend3();
	}
	
	public PensionVO pension02Recommend(){
		return pensionDAO.pension02Recommend();
	}

}

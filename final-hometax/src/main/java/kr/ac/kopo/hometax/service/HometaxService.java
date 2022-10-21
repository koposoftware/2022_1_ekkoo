package kr.ac.kopo.hometax.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.hometax.dao.HometaxDAO;
import kr.ac.kopo.hometax.vo.HometaxVO;
import kr.ac.kopo.member.vo.MemberVO;
@Service
public class HometaxService {
	@Autowired
	private HometaxDAO hometaxDAO;

	/*
	 * public HometaxVO getInfo(String telephone) { return
	 * hometaxDAO.getInfo(telephone); }
	 */
	public HometaxVO gethometaxinfo(MemberVO member) {
		return hometaxDAO.gethometaxinfo(member);
	}
	public int checkAccessKey(Map<String, String> apiAccess) {
		return hometaxDAO.checkAccessKey(apiAccess);
	}
	public String generateApiKey(String id) {
		String apiKey = hometaxDAO.generateApiKey();
		hometaxDAO.storeApiKey(id,apiKey);
		return apiKey;
	}

}

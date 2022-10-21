package kr.ac.kopo.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.product.dao.SavingsDAO;
import kr.ac.kopo.product.vo.SavingsVO;

@Service
public class SavingsService {
	@Autowired
	SavingsDAO savingsDAO;
	
	//적금가입기간에 따른 적금 추천
	public SavingsVO recommendSavings(int period){
		return savingsDAO.recommendSavings(period);
	}
	public List<SavingsVO> recommendSavings3(int period){
		return savingsDAO.recommendSavings3(period);
	}
	
	//계좌번호 random 가져오기
	public String getRandomNumber() {
		return savingsDAO.getRandomNumber();
	}
	
	//적금 가입
	public void insertSavings(AccountVO account) {
		savingsDAO.insertSavings(account);
	}
	
	public SavingsVO getSavingsInfoByNo(String productNo) {
		return savingsDAO.getSavingsInfoByNo(productNo);
	}
	
	
}

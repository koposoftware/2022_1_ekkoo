package kr.ac.kopo.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.product.dao.TermDepositDAO;
import kr.ac.kopo.product.vo.TermDepositVO;

@Service
public class TermDepositService {
	@Autowired
	TermDepositDAO termDAO;
	
	public List<TermDepositVO> getAllTermProduct(){
		return termDAO.getAllProduct();
	}
	
	public TermDepositVO recommendTermDeposit(int period) {
		return termDAO.recommendTermDeposit(period);
	}
	public List<TermDepositVO> recommendTermDeposit3(int period) {
		return termDAO.recommendTermDeposit3(period);
	}

}

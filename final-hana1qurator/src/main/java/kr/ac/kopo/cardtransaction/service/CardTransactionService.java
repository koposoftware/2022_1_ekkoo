package kr.ac.kopo.cardtransaction.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.cardtransaction.dao.CardTransactionDAO;
import kr.ac.kopo.cardtransaction.vo.CardTransactionVO;

@Service
public class CardTransactionService {
	@Autowired
	private CardTransactionDAO transactionDAO;
	
	public List<CardTransactionVO> allTransaction(String cardNo) {
		List<CardTransactionVO> list = new ArrayList<CardTransactionVO>();
		list = transactionDAO.allTransaction(cardNo);
		return list;
	}
	public List<CardTransactionVO> top3consume (String id){
		return transactionDAO.top3consume(id);
	}
}

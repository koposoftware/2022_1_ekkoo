package kr.ac.kopo.cardtransaction.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.cardtransaction.vo.CardTransactionVO;

@Repository
public class CardTransactionDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<CardTransactionVO> allTransaction(String cardNo){
		List<CardTransactionVO> list = new ArrayList<CardTransactionVO>();
		list = sqlSessionTemplate.selectList("transaction.dao.transactionDAO.selectAllCardTransaction",cardNo);
		return list;	
	}
	
	public List<CardTransactionVO> top3consume (String id){
		return sqlSessionTemplate.selectList("transaction.dao.transactionDAO.top3consume",id);
	}

}

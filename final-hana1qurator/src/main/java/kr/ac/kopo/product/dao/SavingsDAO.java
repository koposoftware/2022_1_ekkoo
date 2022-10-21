package kr.ac.kopo.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.product.vo.SavingsVO;

@Repository
public class SavingsDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	//적금추천
	public SavingsVO recommendSavings(int period) {
		return sqlSessionTemplate.selectOne("product.dao.productDAO.savingsRecommend",period);			
	}
	public List<SavingsVO> recommendSavings3(int period) {
		return sqlSessionTemplate.selectList("product.dao.productDAO.savingsRecommend3",period);			
	}

	public String getRandomNumber() {
		return sqlSessionTemplate.selectOne("product.dao.productDAO.getAccountRandomNumber");
	}
	
	public void insertSavings(AccountVO account) {
		sqlSessionTemplate.insert("product.dao.productDAO.savingsInsert",account);
	}

	public SavingsVO getSavingsInfoByNo(String productNo) {
		return sqlSessionTemplate.selectOne("product.dao.productDAO.getSavingsInfoByNo",productNo);
		
	}
}

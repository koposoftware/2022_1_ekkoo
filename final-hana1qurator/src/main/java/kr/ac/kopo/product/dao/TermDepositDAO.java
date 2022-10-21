package kr.ac.kopo.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.product.vo.PensionVO;
import kr.ac.kopo.product.vo.SavingsVO;
import kr.ac.kopo.product.vo.TermDepositVO;

@Repository
public class TermDepositDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<TermDepositVO> getAllProduct() {
		return sqlSessionTemplate.selectList("product.dao.productDAO.selectAllTermDeposit");
	}

	public TermDepositVO recommendTermDeposit(int period) {
		return sqlSessionTemplate.selectOne("product.dao.productDAO.termDepositRecommend",period);			
	}
	public List<TermDepositVO> recommendTermDeposit3(int period) {
		return sqlSessionTemplate.selectList("product.dao.productDAO.termDepositRecommend3",period);			
	}

}

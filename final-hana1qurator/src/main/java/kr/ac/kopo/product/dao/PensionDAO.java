package kr.ac.kopo.product.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.product.vo.PensionVO;

@Repository
public class PensionDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	/* 연금보험 */
	//1.연금보험추천
	public PensionVO pension01Recommend() {
		PensionVO pension =  sqlSessionTemplate.selectOne("product.dao.productDAO.pension01Recommend");
		System.out.println(pension);
		return pension;
	}
	public List<PensionVO> pension01Recommend3() {
		List<PensionVO> pension =  sqlSessionTemplate.selectList("product.dao.productDAO.pension01Recommend3");
		System.out.println(pension);
		return pension;
	}
	//2.연금저축보험추천
	public PensionVO pension02Recommend() {
		return sqlSessionTemplate.selectOne("product.dao.productDAO.pension02Recommend");
	}
	
}
 
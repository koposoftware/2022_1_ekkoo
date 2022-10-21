package kr.ac.kopo.product.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.product.vo.PensionVO;

@Repository
public class ProductDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public void insertPension(PensionVO pensionVO) {
		sqlSessionTemplate.insert("product.dao.productDAO.insertPension",pensionVO);
	}
}

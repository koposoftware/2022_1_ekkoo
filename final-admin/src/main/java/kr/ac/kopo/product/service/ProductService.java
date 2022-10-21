package kr.ac.kopo.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.product.dao.ProductDAO;
import kr.ac.kopo.product.vo.PensionVO;

@Service
public class ProductService {
	@Autowired
	ProductDAO productDAO;
	
	public void insertPension(PensionVO pensionVO) {
		productDAO.insertPension(pensionVO);
	}

}

package kr.ac.kopo.product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.product.service.ProductService;
import kr.ac.kopo.product.vo.PensionVO;

@Controller
public class ProductController {
@Autowired
ProductService productService;
	@RequestMapping(value = "/product/main")
	public String productMain() {
		return "/product/productMain";
	}
	@RequestMapping(value = "/product/newProduct")
	public String newProduct() {
		
		return "/product/registerProduct";
	}
	@RequestMapping(value = "/product/registerPension")
	public String registerPension() {
		return "/product/registerPension";
	}
	@PostMapping(value = "/product/subscription")
	public String subscription(HttpServletRequest request) {
		String pensionType = request.getParameter("pensionType");
		
		System.out.println(pensionType);
		String pensionName = request.getParameter("pensionName");
		String insuranceCompany = request.getParameter("insuranceCompany");
		int interestRate = Integer.parseInt(request.getParameter("interestRate"));
		String repDesc = request.getParameter("repDesc");
		
		PensionVO pensionVo = new PensionVO();
		
		pensionVo.setPensionType(pensionType);
		pensionVo.setPensionName(pensionName);
		pensionVo.setInsuranceCompany(insuranceCompany);
		pensionVo.setInterestRate(interestRate);
		pensionVo.setRepDetail(repDesc);
		
		productService.insertPension(pensionVo);
		
		return "/product/registerProduct";
	}

}

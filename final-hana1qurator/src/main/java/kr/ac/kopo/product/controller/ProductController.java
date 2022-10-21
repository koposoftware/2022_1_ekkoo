package kr.ac.kopo.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.asserts.service.AssertsService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.product.service.SavingsService;
import kr.ac.kopo.product.service.TermDepositService;
import kr.ac.kopo.product.vo.SavingsVO;
import kr.ac.kopo.product.vo.TermDepositVO;

@Controller
public class ProductController {
	@Autowired
	TermDepositService termService;
	@Autowired
	SavingsService savingsService;
	@Autowired
	AssertsService assertsService;
	
	@RequestMapping(value = "/product")
	public String productMain(HttpServletRequest request) {
		List<TermDepositVO> termVO = termService.getAllTermProduct();
		
		request.setAttribute("termVO", termVO);
		return "product/productMain";
	}
	
	
	@GetMapping(value="/product/subscription/{productNo}")
	public String getSubscription(HttpServletRequest request,@PathVariable("productNo") String productNo,@SessionAttribute("loginVO") MemberVO member) {
		System.out.println(productNo);
		SavingsVO savings = savingsService.getSavingsInfoByNo(productNo);
		List<AccountVO> account = assertsService.selectAllAccount(member.getId());
		request.setAttribute("savings", savings);
		request.setAttribute("account", account);
		
		return "product/productSubscription";
	}
	
	@PostMapping(value="/product/subscription")
	public String postSubscription(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request) {
		
		String accountNo = savingsService.getRandomNumber();
		
		String accountName = request.getParameter("accountName");
		String accountPwd = request.getParameter("accountpwd");
		String firstMoney = request.getParameter("firstMoney");
		
		AccountVO account = new AccountVO();
		account.setAccountNo(accountNo);
		account.setAccountName(accountName);
		account.setAccountPwd(accountPwd);
		account.setAccountType("예적금계좌");
		account.setBalance(firstMoney);
		account.setBankCode("하나은행");
		account.setBankPhoto("hanaBank.png");
		account.setOwnerId(member.getId());
		
		savingsService.insertSavings(account);
		
		
		return "product/productComplete";
	}
	
	@RequestMapping(value="/product/join/{productNo}")
	public String join(HttpServletRequest request,@PathVariable("productNo") String productNo,@SessionAttribute("loginVO") MemberVO member) {
		
		request.setAttribute("productNo", productNo);
		return "product/productJoin";
	}
	
	@RequestMapping(value = "/product/join/complete")
	public String complete() {
		return "product/productComplete";
	}
	

}

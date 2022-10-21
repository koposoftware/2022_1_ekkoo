package kr.ac.kopo.asserts.controller;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import kr.ac.kopo.card.vo.CardVO;
import kr.ac.kopo.loan.vo.LoanVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.vo.StockVO;

@Controller
public class AssertsController {
	@Autowired
	private AssertsService assertsService;
	@Autowired
	private MemberService memberService;

	private DecimalFormat formatter = new DecimalFormat("###,###,###,###");

//오픈뱅킹메인페이지
	@RequestMapping(value = "/assert/myAssertMain")
	public String myAssertMain() {
		return "/assert/assertMain";
	}

	@GetMapping(value = "/assert/joinAssert")
	public String joinAssert() {
		return "/assert/joinAssert";
	}

	@PostMapping(value = "/assert/joinAssert")
	public void joinAssertPost(@SessionAttribute("loginVO") MemberVO member) {
		System.out.println("controller");
		String id = member.getId();
		memberService.updateOpenBanking(id);
	}

	@GetMapping(value = "/assert/unJoinOpenBanking")
	public String unJoinAssert() {
		return "/assert/unJoinAssert";
	}

	@PostMapping(value = "/assert/unJoinOpenBanking")
	public void unJoinAssertPost(@SessionAttribute("loginVO") MemberVO member) {
		System.out.println("controller");
		String id = member.getId();
		memberService.updateOpenBanking(id);
	}

//계좌조회
	@RequestMapping(value = "/assert/SelectMyAssert")
	public String selectAll2(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request)
			throws ParseException {

		String ownerId = member.getId();
		System.out.println("ownerId: " + ownerId);
		// 모든 계좌 조회
		List<AccountVO> accountVO = assertsService.selectAllAccount(ownerId);

		// 입출금 계좌 잔액
		String accountBalance01 = formatter.format(assertsService.accountBalance01(ownerId));
		// 예적금 계좌 잔액
		String accountBalance02 = formatter.format(assertsService.accountBalance02(ownerId));
		// 증권 계좌 잔액
		String accountBalance03 = formatter.format(assertsService.accountBalance03(ownerId));
		// 모든 계좌 잔액
		String accountAllBalance = formatter.format(assertsService.accountBalance01(ownerId)
				+ assertsService.accountBalance02(ownerId) + assertsService.accountBalance03(ownerId));

		// 주식 조회
		List<StockVO> stockVO = assertsService.selectStock(ownerId);
		// 모든 주식 잔액
		String stockBalance = formatter.format(assertsService.stockBalance(ownerId));
		// 대출조회
		List<LoanVO> loanVO = assertsService.selectAllLoan(ownerId);
		// 대출 잔액
		String loanBalance = formatter.format(assertsService.loanBalance(ownerId));

		// 카드 조회
		List<CardVO> card = assertsService.getCardInfo(ownerId);

		String allBalance = formatter.format((assertsService.accountBalance01(ownerId)
				+ assertsService.accountBalance02(ownerId) + assertsService.accountBalance03(ownerId)
				+ assertsService.stockBalance(ownerId) - assertsService.loanBalance(ownerId)));

		List<Integer> jugaList = new ArrayList<Integer>();
		jugaList = assertsService.getStockRealTime();

		for (int i = 1; i < jugaList.size() + 1; i++) {
			int juga = jugaList.get(i);
			request.setAttribute("juga" + i, juga);
		}

		request.setAttribute("accountVO", accountVO);
		request.setAttribute("balance01", accountBalance01);
		request.setAttribute("balance02", accountBalance02);
		request.setAttribute("balance03", accountBalance03);
		request.setAttribute("accountBalance", accountAllBalance);

		request.setAttribute("stockVO", stockVO);
		request.setAttribute("stockBalance", stockBalance);

		request.setAttribute("loanVO", loanVO);
		request.setAttribute("cardVO", card);
		request.setAttribute("loanBalance", loanBalance);

		request.setAttribute("allBalance", allBalance);

		return "/assert/selectAssert";
	}

	@RequestMapping(value = "/card")
	public String test() {
		return "/card/cardList";
	}

	@ResponseBody
	@GetMapping("/getMyAssetsBalance.json/{id}")
	public int myAsset(@PathVariable("id") String ownerId) {
		// 모든 계좌 잔액
		int accountAllBalance = assertsService.accountBalance01(ownerId) + assertsService.accountBalance02(ownerId)
				+ assertsService.accountBalance03(ownerId);

		return accountAllBalance;
	}

	@ResponseBody
	@GetMapping("/getMyAllAssetsBalance.json/{id}")
	public Map<String, String> myAllAssertsBalance(@PathVariable("id") String ownerId) {
		// 하나금융, 타금융 자산 별 잔액 조회
		int hanaAccount = assertsService.hanaAccountBalance(ownerId);
		int hanaStock = assertsService.hanaStockBalance(ownerId);
		int hanaLoan = assertsService.hanaLoanBalance(ownerId);

		int otherAccount = assertsService.otherAccountBalance(ownerId);
		int otherStock = assertsService.otherStockBalance(ownerId);
		int otherLoan = assertsService.otherLoanBalance(ownerId);

		int hanaTotal = hanaAccount + hanaStock - hanaLoan;
		int otherTotal = otherAccount + otherStock - otherLoan;
		int total = hanaTotal + otherTotal;

		Map<String, String> map = new HashMap<>();
		map.put("hanaAccount", formatter.format(hanaAccount));
		map.put("hanaStock", formatter.format(hanaStock));
		map.put("hanaLoan", formatter.format(hanaLoan));
		map.put("otherAccount", formatter.format(otherAccount));
		map.put("otherStock", formatter.format(otherStock));
		map.put("otherLoan", formatter.format(otherLoan));
		map.put("hanaTotal", formatter.format(hanaTotal));
		map.put("otherTotal", formatter.format(otherTotal));
		map.put("total", formatter.format(total));

		return map;
	}

	@ResponseBody
	@GetMapping("/getLoanInfo.json/{id}")
	public LoanVO getLoanInfo(@PathVariable("id") String ownerId) {
		return assertsService.getLoanInfo(ownerId);
	}

	@RequestMapping(value = "/assert/analysisAssert")
	public String analysisAssert(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request) {
		String ownerId = member.getId();
		// 모든 계좌 자산
		int accountBalance = assertsService.accountBalance01(ownerId) + assertsService.accountBalance02(ownerId)
				+ assertsService.accountBalance03(ownerId);
		// 모든 대출 자산
		int loanBalance = assertsService.loanBalance(ownerId);
		// 모든 주식 자산
		int stockBalance = assertsService.stockBalance(ownerId);

		request.setAttribute("accountBalance", accountBalance);
		request.setAttribute("loanBalance", loanBalance);
		request.setAttribute("stockBalance", stockBalance);

		return "/assert/analysisAssert";
	}

	@GetMapping(value = "/assert/collectAssert")
	public String collectAssert(HttpServletRequest request, @SessionAttribute("loginVO") MemberVO member) {
		String id = member.getId();
		List<AccountVO> hanaAccount = assertsService.selectAllHanaAccount(id);
		List<AccountVO> otherAccount = assertsService.selectOtherHanaAccount(id);

		request.setAttribute("otherAccount", otherAccount);
		request.setAttribute("hanaAccount", hanaAccount);

		return "/assert/collectToHana";
	}

	@PostMapping(value = "/assert/collectAssert")
	public String collectAssert(HttpServletRequest request) {
		// 입금계좌번호
		String hanaAccount = request.getParameter("hanaAccount");
		// 선택된 출금 계좌 개수
		// int otherAccountCnt =
		// Integer.parseInt(request.getParameter("otherAccountCnt"));

		// 선택된 출금 계좌번호
		String[] otherAccount = request.getParameterValues("accountSelected");
		for(int i=0; i<otherAccount.length; i++) {
			System.out.println("otherAccount : "+otherAccount[i]);
		}
		// 출금될 금액
		String [] transferAmountArr = request.getParameterValues("transferAmount");
		for(int i=0; i<transferAmountArr.length; i++) {
			System.out.println("transferAmountArr : "+transferAmountArr[i]);
		}
		int length = transferAmountArr.length;
		
		int [] transferAmount=new int[length];
		
		for(int i=0; i<transferAmountArr.length; i++) {
			int transferAmt = Integer.parseInt(transferAmountArr[i]);
			transferAmount[i]=transferAmt;
			
		}
		
		for(int i=0; i<transferAmount.length; i++) {
			System.out.println("송금금액"+transferAmount[i]);
			
		}

		
		for (int i = 0; i < otherAccount.length; i++) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("hanaAccount", hanaAccount);
			map.put("otherAccount", otherAccount[i]);
			map.put("transferAmount", transferAmount[i]);
			System.out.println(hanaAccount);
			System.out.println(otherAccount[i]);
			System.out.println(transferAmount[i]);
			assertsService.transferToHana(map);
		}

		return "/assert/transferComplete";
	}

}

package kr.ac.kopo.consult.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.maven.model.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.asserts.service.AssertsService;
import kr.ac.kopo.asserts.vo.EtcVO;
import kr.ac.kopo.asserts.vo.HouseVO;
import kr.ac.kopo.asserts.vo.MarriageVO;
import kr.ac.kopo.asserts.vo.RetireVO;
import kr.ac.kopo.consult.dao.ConsultDAO;
import kr.ac.kopo.consult.service.ConsultService;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.product.service.PensionService;
import kr.ac.kopo.product.service.SavingsService;
import kr.ac.kopo.product.service.TermDepositService;
import kr.ac.kopo.product.vo.PensionVO;
import kr.ac.kopo.product.vo.SavingsVO;
import kr.ac.kopo.product.vo.TermDepositVO;

@Controller
public class ConsultController {
	@Autowired
	private AssertsService assertsService;
	@Autowired
	private PensionService pensionService;
	@Autowired
	private SavingsService savingsService;
	@Autowired
	private TermDepositService termDepositService;
	@Autowired
	private ConsultService consultService;

	@RequestMapping(value = "/consult/consultMain")
	public String retireMain(HttpServletRequest request) {
		return "consult/consultMain";
	}

	@RequestMapping(value = "/consult/consultForm")
	public String retireForm(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request) {

		Calendar now = Calendar.getInstance(); // 년월일시분초
		Integer currentYear = now.get(Calendar.YEAR);

		int birth_year = Integer.parseInt((member.getBirth_year()));

		int currentAge = currentYear - birth_year;
		request.setAttribute("currentAge", currentAge);

		return "consult/consultForm";
	}

	@RequestMapping(value = "/consult/togetherConsultForm")
	public String retireForm2(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request) {

		Calendar now = Calendar.getInstance(); // 년월일시분초
		Integer currentYear = now.get(Calendar.YEAR);

		int birth_year = Integer.parseInt((member.getBirth_year()));

		int currentAge = currentYear - birth_year;
		request.setAttribute("currentAge", currentAge);

		return "consult/consultForm2";
	}

	@GetMapping("/consultResult")
	public String showConsultReusult() {

		return "consult/consultResult";
	}

	@PostMapping("/consult/consultResult")
	public String assertReusult(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request) {
		int loanMoney = assertsService.hanaLoanBalance(member.getId())
				+ assertsService.otherLoanBalance(member.getId());

		// 내 현금 계좌 정보
		int accountMoney = assertsService.accountBalance01(member.getId())
				+ assertsService.accountBalance02(member.getId()) + assertsService.accountBalance03(member.getId());

		// 내 주식 정보
		int stockMoney = assertsService.stockBalance(member.getId());

		// 로직 처리
		// 현재나이
		int age = Integer.parseInt(request.getParameter("currentAge"));
		// 은퇴예정나이
		int retireAge = Integer.parseInt(request.getParameter("retireAge"));
		// 기대수명
		int expectedAge = Integer.parseInt(request.getParameter("expectedAge"));
		// 은퇴 후 월 생활비
		int expectedLivingExpence = Integer.parseInt(request.getParameter("expectedLivingExpence"));

		// 결혼관련
		// 결혼 필요자금
		int marriageExpence = (request.getParameter("marriageExpence") == null
				|| request.getParameter("marriageExpence").equals("")
				|| request.getParameter("marriageExpence").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageExpence")) * 10000;
		// 결혼 예정연도
		int marriageYear = (request.getParameter("marriageYear") == null
				|| request.getParameter("marriageYear").equals("")
				|| request.getParameter("marriageYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageYear"));

		int houseExpence = (request.getParameter("houseExpence") == null
				|| request.getParameter("houseExpence").equals("")
				|| request.getParameter("houseExpence").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseExpence")) * 10000;
		int houseYear = (request.getParameter("houseYear") == null || request.getParameter("houseYear").equals("")
				|| request.getParameter("houseYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseYear"));

		// 기타 목독 마련
		String etcName = request.getParameter("etcName");
		int etcExpence = (request.getParameter("etcExpence") == null || request.getParameter("etcExpence").equals("")
				|| request.getParameter("etcExpence").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcExpence")) * 10000;
		int etcYear = (request.getParameter("etcYear") == null || request.getParameter("etcYear").equals("")
				|| request.getParameter("etcYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcYear"));

		// 기타자산
		String etc = request.getParameter("etcAssertsInput");
		int etcAsserts = Integer.parseInt(etc.replaceAll(",", ""));

		// 모든자산
		int allAsserts = Integer.parseInt(request.getParameter("hanaAsserts"))
				+ Integer.parseInt(request.getParameter("otherAsserts")) + etcAsserts;

		// 소득&지출
		int income = Integer.parseInt(request.getParameter("incomeInput"));
		int outcome = Integer.parseInt(request.getParameter("outcomeInput"));
		int annualIncome = Integer.parseInt(request.getParameter("annualIncomeInput"));

		String pensionType = request.getParameter("pensionType");

		int pensionAmount = Integer.parseInt(request.getParameter("pensionAmount"));

		// 은퇴 준비기
		int preparePeriod = retireAge - age;
		// 은퇴 생활기
		int retirePeriod = expectedAge - retireAge;

		// 공적연금
		int resultPensionAmount = (expectedAge - 65) * 12 * (pensionAmount * 10000);

		// 은퇴생활시 필요한 자금
		int resultRequiredAmount = retirePeriod * 12 * expectedLivingExpence * 10000;

		int marriageMonthDiff = (request.getParameter("marriageMonthDiff") == null
				|| request.getParameter("marriageMonthDiff").equals("")
				|| request.getParameter("marriageMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageMonthDiff"));
		int houseMonthDiff = (request.getParameter("houseMonthDiff") == null
				|| request.getParameter("houseMonthDiff").equals("")
				|| request.getParameter("houseMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseMonthDiff"));
		int etcMonthDiff = (request.getParameter("etcMonthDiff") == null
				|| request.getParameter("etcMonthDiff").equals("")
				|| request.getParameter("etcMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcMonthDiff"));

		String marriageChecked = request.getParameter("marriageCheckedInput");
		String houseChecked = request.getParameter("houseCheckedInput");
		String etcChecked = request.getParameter("etcCheckedInput");

		RetireVO retireVO = new RetireVO();
		HouseVO houseVO = new HouseVO();
		MarriageVO marriageVO = new MarriageVO();
		EtcVO etcVO = new EtcVO();

		retireVO.setAge(age);
		retireVO.setRetireAge(retireAge);
		retireVO.setExpectedAge(expectedAge);
		retireVO.setPreparePeriod(preparePeriod);
		retireVO.setRetirePeriod(retirePeriod);
		retireVO.setResultPensionAmount(resultPensionAmount);
		retireVO.setResultRequiredAmount(resultRequiredAmount);

		retireVO.setAllAsserts(allAsserts);
		retireVO.setOutcome(outcome);
		retireVO.setIncome(income);
		retireVO.setLoanMoney(loanMoney);

		LocalDate now = LocalDate.now();
		int year = now.getYear();

		marriageVO.setMarriageYear(marriageYear);
		marriageVO.setMarriageExpence(marriageExpence);
		request.setAttribute("marriageVO", marriageVO);

		houseVO.setHouseYear(houseYear);
		houseVO.setHouseExpence(houseExpence);
		request.setAttribute("houseVO", houseVO);

		etcVO.setEtcName(etcName);
		etcVO.setEtcYear(etcYear);
		etcVO.setEtcExpence(etcExpence);

		request.setAttribute("etcVO", etcVO);

		request.setAttribute("accountMoney", accountMoney);
		request.setAttribute("stockMoney", stockMoney);

		request.setAttribute("houseChecked", houseChecked);
		request.setAttribute("marriageChecked", marriageChecked);
		request.setAttribute("etcChecked", etcChecked);

		request.setAttribute("marriageMonthDiff", marriageMonthDiff);
		request.setAttribute("houseMonthDiff", houseMonthDiff);
		request.setAttribute("etcMonthDiff", etcMonthDiff);

		request.setAttribute("annualIncome", annualIncome);
		request.setAttribute("retireVO", retireVO);
		request.setAttribute("year", year); // 현재 년도

		return "/consult/consultResult";
	}
	//부부설계
	@PostMapping("/consult/consultResultTogether")
	public String assertReusultTogether(@SessionAttribute("loginVO") MemberVO member, HttpServletRequest request) {
		int loanMoney = assertsService.hanaLoanBalance(member.getId())
				+ assertsService.otherLoanBalance(member.getId());
		
		// 내 현금 계좌 정보
		int accountMoney = assertsService.accountBalance01(member.getId())
				+ assertsService.accountBalance02(member.getId()) + assertsService.accountBalance03(member.getId());
		
		// 내 주식 정보
		int stockMoney = assertsService.stockBalance(member.getId());
		
		// 로직 처리
		//[본인]
		// 현재나이
		int age = Integer.parseInt(request.getParameter("currentAge"));
		// 은퇴예정나이
		int retireAge = Integer.parseInt(request.getParameter("retireAge"));
		// 기대수명
		int expectedAge = Integer.parseInt(request.getParameter("expectedAge"));
		
		//[배우자]
		// 현재나이
		int agePartner = Integer.parseInt(request.getParameter("partnerCurrentAge"));
		// 은퇴예정나이
		int retireAgePartner = Integer.parseInt(request.getParameter("partnerRetireAge"));
		// 기대수명
		int expectedAgePartner = Integer.parseInt(request.getParameter("partnerExpectedAge"));
		
		
		// 은퇴 후 월 생활비(본인 + 배우자)
		int expectedLivingExpence = Integer.parseInt(request.getParameter("expectedLivingExpence"));
		int expectedLivingExpencePartner = Integer.parseInt(request.getParameter("expectedLivingExpencePartner"));
		
		
		
		 // 결혼관련 
		 // 결혼 필요자금 
		 int marriageExpence =
		 (request.getParameter("marriageExpence") == null ||
		 request.getParameter("marriageExpence").equals("") ||
		 request.getParameter("marriageExpence").equals("null")) ? 0 :
		 Integer.parseInt(request.getParameter("marriageExpence")) * 10000; // 결혼 예정연도
		 int marriageYear = (request.getParameter("marriageYear") == null ||
		 request.getParameter("marriageYear").equals("") ||
		 request.getParameter("marriageYear").equals("null")) ? 0 :
		 Integer.parseInt(request.getParameter("marriageYear"));
		 
		
		int houseExpence = (request.getParameter("houseExpence") == null
				|| request.getParameter("houseExpence").equals("")
				|| request.getParameter("houseExpence").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseExpence")) * 10000;
		int houseYear = (request.getParameter("houseYear") == null || request.getParameter("houseYear").equals("")
				|| request.getParameter("houseYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseYear"));
		
		// 기타 목독 마련
		String etcName = request.getParameter("etcName");
		int etcExpence = (request.getParameter("etcExpence") == null || request.getParameter("etcExpence").equals("")
				|| request.getParameter("etcExpence").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcExpence")) * 10000;
		int etcYear = (request.getParameter("etcYear") == null || request.getParameter("etcYear").equals("")
				|| request.getParameter("etcYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcYear"));
		
		// 기타자산
		String etc = request.getParameter("etcAssertsInput");
		int etcAsserts = Integer.parseInt(etc.replaceAll(",", ""));
		
		// 모든자산
		int allAsserts = Integer.parseInt(request.getParameter("hanaAsserts"))
				+ Integer.parseInt(request.getParameter("otherAsserts")) + etcAsserts
		+Integer.parseInt(request.getParameter("partnerAssertsInput"));
		
		// 소득&지출
		int income = Integer.parseInt(request.getParameter("incomeInput"));
		int outcome = Integer.parseInt(request.getParameter("outcomeInput"));
		int annualIncome = Integer.parseInt(request.getParameter("annualIncomeInput"));
		//[배우자] 소득&지출
		int partnerIncome = Integer.parseInt(request.getParameter("partnerIncomeInput"));
		int partnerOutcome = Integer.parseInt(request.getParameter("partnerOutcomeInput"));
		
		String pensionType = request.getParameter("pensionType");
		
		int pensionAmount = Integer.parseInt(request.getParameter("pensionAmount"));
		int pensionAmountPartner = Integer.parseInt(request.getParameter("partnerPensionAmount"));
		
		// 은퇴 준비기간(본인)
		int preparePeriod = retireAge - age;
		int preparePeriodPartner = retireAgePartner - agePartner;
		
		if(preparePeriod< preparePeriodPartner) {
			preparePeriod = preparePeriodPartner;
		}
		
		
		// 은퇴 생활기
		int retirePeriod = expectedAge - retireAge;
		int retirePeriodPartner = expectedAgePartner - retireAgePartner;
		
		// 공적연금(본인+배우자)
		int resultPensionAmount = ((expectedAge - 65) * 12 * (pensionAmount * 10000))
				+((expectedAgePartner-65)* 12 * (pensionAmountPartner * 10000));
		
		// 은퇴생활시 필요한 자금
		int resultRequiredAmount = (retirePeriod * 12 * expectedLivingExpence * 10000)
		+(retirePeriodPartner * 12 * expectedLivingExpencePartner * 10000);
		
		
		if(retirePeriod< retirePeriodPartner) {
			retirePeriod = retirePeriodPartner;
		}
		
		
		int marriageMonthDiff = (request.getParameter("marriageMonthDiff") == null ||
		 request.getParameter("marriageMonthDiff").equals("") ||
		 request.getParameter("marriageMonthDiff").equals("null")) ? 0 :
		 Integer.parseInt(request.getParameter("marriageMonthDiff"));
		
		int houseMonthDiff = (request.getParameter("houseMonthDiff") == null
				|| request.getParameter("houseMonthDiff").equals("")
				|| request.getParameter("houseMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseMonthDiff"));
		int etcMonthDiff = (request.getParameter("etcMonthDiff") == null
				|| request.getParameter("etcMonthDiff").equals("")
				|| request.getParameter("etcMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcMonthDiff"));
		
		String marriageChecked = request.getParameter("marriageCheckedInput"); 
		String houseChecked = request.getParameter("houseCheckedInput");
		String etcChecked = request.getParameter("etcCheckedInput");
		
		RetireVO retireVO = new RetireVO();
		HouseVO houseVO = new HouseVO();
		MarriageVO marriageVO = new MarriageVO();
		EtcVO etcVO = new EtcVO();
		
		retireVO.setAge(age);
		retireVO.setRetireAge(retireAge);
		retireVO.setExpectedAge(expectedAge);
		retireVO.setRetireAge(retireAge);
		retireVO.setExpectedAge(expectedAge);
		retireVO.setPreparePeriod(preparePeriod);
		retireVO.setRetirePeriod(retirePeriod);
		retireVO.setResultPensionAmount(resultPensionAmount);
		retireVO.setResultRequiredAmount(resultRequiredAmount);
		
		retireVO.setAllAsserts(allAsserts);
		retireVO.setOutcome(outcome);
		retireVO.setIncome(income);
		retireVO.setLoanMoney(loanMoney);
		
		LocalDate now = LocalDate.now();
		int year = now.getYear();
		
		
		marriageVO.setMarriageYear(marriageYear);
		marriageVO.setMarriageExpence(marriageExpence);
		request.setAttribute("marriageVO", marriageVO);
		
		
		houseVO.setHouseYear(houseYear);
		houseVO.setHouseExpence(houseExpence);
		request.setAttribute("houseVO", houseVO);
		
		etcVO.setEtcName(etcName);
		etcVO.setEtcYear(etcYear);
		etcVO.setEtcExpence(etcExpence);
		
		request.setAttribute("etcVO", etcVO);
		
		request.setAttribute("partnerIncome", partnerIncome);
		request.setAttribute("partnerOutcome", partnerOutcome);
		
		request.setAttribute("accountMoney", accountMoney);
		request.setAttribute("stockMoney", stockMoney);
		
		request.setAttribute("houseChecked", houseChecked);
		request.setAttribute("etcChecked", etcChecked);
		
		request.setAttribute("marriageChecked", marriageChecked);
		request.setAttribute("marriageMonthDiff", marriageMonthDiff);
		 
		request.setAttribute("houseMonthDiff", houseMonthDiff);
		request.setAttribute("etcMonthDiff", etcMonthDiff);
		
		request.setAttribute("annualIncome", annualIncome);
		request.setAttribute("retireVO", retireVO);
		request.setAttribute("year", year); // 현재 년도
		
		return "/consult/consultResult";
	}

	@GetMapping("/consult/consultProduct")
	public String recommendProduct(HttpServletRequest request) {
		// 저축연금보험과 연금보험 중 어떤 값을 가져올지 if문으로 처리 필요
		PensionVO pensionVO = pensionService.pension01Recommend();
		request.setAttribute("pensionVO", pensionVO);

		return "/consult/consultProduct";
	}

	@PostMapping("/consult/consultProduct")
	public String postConsultResult(HttpServletRequest request) {

		// service단
		// 저축연금보험과 연금보험 중 어떤 값을 가져올지 if문으로 처리 필요
		PensionVO pensionVO = pensionService.pension01Recommend();

		// jsp에 넘길 form
		int income = Integer.parseInt(request.getParameter("annualIncome"));

		int marriageYear = (request.getParameter("marriageYear") == null
				|| request.getParameter("marriageYear").equals("")
				|| request.getParameter("marriageYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageYear"));

		int houseYear = (request.getParameter("houseYear") == null || request.getParameter("houseYear").equals("")
				|| request.getParameter("houseYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseYear"));

		int etcYear = (request.getParameter("etcYear") == null || request.getParameter("etcYear").equals("")
				|| request.getParameter("etcYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcYear"));

		String marriageChecked = request.getParameter("marriageCheckedInput");
		String houseChecked = request.getParameter("houseCheckedInput");
		String etcChecked = request.getParameter("etcCheckedInput");

		String etcName = request.getParameter("etcName");
		int etcExpence = Integer.parseInt(request.getParameter("etcExpence"));
		int marriageExpence = Integer.parseInt(request.getParameter("marriageExpence"));
		int houseExpence = Integer.parseInt(request.getParameter("houseExpence"));

		int marriageMonthDiff = (request.getParameter("marriageMonthDiff") == null
				|| request.getParameter("marriageMonthDiff").equals("")
				|| request.getParameter("marriageMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageMonthDiff"));
		int houseMonthDiff = (request.getParameter("houseMonthDiff") == null
				|| request.getParameter("houseMonthDiff").equals("")
				|| request.getParameter("houseMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseMonthDiff"));
		int etcMonthDiff = (request.getParameter("etcMonthDiff") == null
				|| request.getParameter("etcMonthDiff").equals("")
				|| request.getParameter("etcMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcMonthDiff"));

		int myAsserts = Integer.parseInt(request.getParameter("myAsserts"));
		int spareMoney = Integer.parseInt(request.getParameter("spareMoney"));

		System.out.println("marriageMonthDiff 값: " + marriageMonthDiff);

		// 결혼적금 추천 service
		if (marriageMonthDiff != 0) {
			if (marriageMonthDiff > 60) {
				marriageMonthDiff = 59;
			} else if (marriageMonthDiff < 6) {
				marriageMonthDiff = 6;
			}
			System.out.println("marriageMonthDiff: " + marriageMonthDiff);
			SavingsVO marriageSavingsVO = savingsService.recommendSavings(marriageMonthDiff);
			TermDepositVO marriageTermDepositVO = termDepositService.recommendTermDeposit(marriageMonthDiff);
			System.out.println("결혼:" + marriageSavingsVO);
			System.out.println("결혼예금:" + marriageTermDepositVO);
			request.setAttribute("marriageSavingsVO", marriageSavingsVO);
			request.setAttribute("marriageTermDepositVO", marriageTermDepositVO);
		}
		// 주택적금추천
		if (houseMonthDiff != 0) {
			if (houseMonthDiff > 60) {
				houseMonthDiff = 59;
			} else if (houseMonthDiff < 6) {
				houseMonthDiff = 6;
			}
			System.out.println("houseMonthDiff: " + houseMonthDiff);
			SavingsVO houseSavingsVO = savingsService.recommendSavings(houseMonthDiff);
			TermDepositVO houseTermDepositVO = termDepositService.recommendTermDeposit(houseMonthDiff);
			request.setAttribute("houseSavingsVO", houseSavingsVO);
			request.setAttribute("houseTermDepositVO", houseTermDepositVO);
		}
		// 기타적금추천
		if (etcMonthDiff != 0) {
			if (etcMonthDiff > 60) {
				etcMonthDiff = 59;
			} else if (etcMonthDiff < 6) {
				etcMonthDiff = 6;
			}
			System.out.println("etcMonthDiff: " + etcMonthDiff);
			SavingsVO etcSavingsVO = savingsService.recommendSavings(etcMonthDiff);
			TermDepositVO etcTermDepositVO = termDepositService.recommendTermDeposit(etcMonthDiff);
			System.out.println("etcSavings" + etcSavingsVO);
			request.setAttribute("etcTermDepositVO", etcTermDepositVO);
		}

		EtcVO etcVO = new EtcVO();
		etcVO.setEtcName(etcName);
		etcVO.setEtcExpence(etcExpence);
		etcVO.setEtcYear(etcYear);

		MarriageVO marriageVO = new MarriageVO();
		marriageVO.setMarriageExpence(marriageExpence);
		marriageVO.setMarriageYear(marriageYear);

		HouseVO houseVO = new HouseVO();
		houseVO.setHouseExpence(houseExpence);
		houseVO.setHouseYear(houseYear);

		request.setAttribute("etcVO", etcVO);
		request.setAttribute("marriageVO", marriageVO);
		request.setAttribute("houseVO", houseVO);

		System.out.println("houseChecked" + houseChecked);
		request.setAttribute("houseChecked", houseChecked);
		request.setAttribute("marriageChecked", marriageChecked);
		request.setAttribute("etcChecked", etcChecked);

		request.setAttribute("marriageMonthDiff", marriageMonthDiff);
		request.setAttribute("houseMonthDiff", houseMonthDiff);
		request.setAttribute("etcMonthDiff", etcMonthDiff);

		System.out.println("marriage:" + marriageChecked);
		System.out.println("etc:" + etcChecked);

		request.setAttribute("pensionVO", pensionVO);
		request.setAttribute("income", income);
		request.setAttribute("myAsserts", myAsserts);
		request.setAttribute("spareMoney", spareMoney);

		return "/consult/consultProduct";
	}
	@GetMapping("/consult/consultProduct2")
	public String recommendProduct2(HttpServletRequest request) {
		// 저축연금보험과 연금보험 중 어떤 값을 가져올지 if문으로 처리 필요
		PensionVO pensionVO = pensionService.pension01Recommend();
		request.setAttribute("pensionVO", pensionVO);
		List<PensionVO> pensionVOList = pensionService.pension01Recommend3();
		request.setAttribute("pensionVOList", pensionVOList);
		return "/consult/consultProduct2";
	}
	
	@PostMapping("/consult/consultProduct2")
	public String postConsultResult2(HttpServletRequest request) {
		
		// service단
		// 저축연금보험과 연금보험 중 어떤 값을 가져올지 if문으로 처리 필요
		PensionVO pensionVO = pensionService.pension01Recommend();
		
		List<PensionVO> pensionVOList = pensionService.pension01Recommend3();
		request.setAttribute("pensionVOList", pensionVOList);
		
		// jsp에 넘길 form
		int income = Integer.parseInt(request.getParameter("annualIncome"));
		
		int marriageYear = (request.getParameter("marriageYear") == null
				|| request.getParameter("marriageYear").equals("")
				|| request.getParameter("marriageYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageYear"));
		
		int houseYear = (request.getParameter("houseYear") == null || request.getParameter("houseYear").equals("")
				|| request.getParameter("houseYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseYear"));
		
		int etcYear = (request.getParameter("etcYear") == null || request.getParameter("etcYear").equals("")
				|| request.getParameter("etcYear").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcYear"));
		
		String marriageChecked = request.getParameter("marriageCheckedInput");
		String houseChecked = request.getParameter("houseCheckedInput");
		String etcChecked = request.getParameter("etcCheckedInput");
		
		String etcName = request.getParameter("etcName");
		int etcExpence = Integer.parseInt(request.getParameter("etcExpence"));
		int marriageExpence = Integer.parseInt(request.getParameter("marriageExpence"));
		int houseExpence = Integer.parseInt(request.getParameter("houseExpence"));
		
		int marriageMonthDiff = (request.getParameter("marriageMonthDiff") == null
				|| request.getParameter("marriageMonthDiff").equals("")
				|| request.getParameter("marriageMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("marriageMonthDiff"));
		int houseMonthDiff = (request.getParameter("houseMonthDiff") == null
				|| request.getParameter("houseMonthDiff").equals("")
				|| request.getParameter("houseMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("houseMonthDiff"));
		int etcMonthDiff = (request.getParameter("etcMonthDiff") == null
				|| request.getParameter("etcMonthDiff").equals("")
				|| request.getParameter("etcMonthDiff").equals("null")) ? 0
						: Integer.parseInt(request.getParameter("etcMonthDiff"));
		
		int myAsserts = Integer.parseInt(request.getParameter("myAsserts"));
		int spareMoney = Integer.parseInt(request.getParameter("spareMoney"));
		
		System.out.println("marriageMonthDiff 값: " + marriageMonthDiff);
		
		// 결혼적금 추천 service
		if (marriageMonthDiff != 0) {
			if (marriageMonthDiff > 60) {
				marriageMonthDiff = 59;
			} else if (marriageMonthDiff < 6) {
				marriageMonthDiff = 6;
			}
			System.out.println("marriageMonthDiff: " + marriageMonthDiff);
			SavingsVO marriageSavingsVO = savingsService.recommendSavings(marriageMonthDiff);
			TermDepositVO marriageTermDepositVO = termDepositService.recommendTermDeposit(marriageMonthDiff);
			//3개 추천			
			List<SavingsVO> marriageSavingsVOList = savingsService.recommendSavings3(marriageMonthDiff);
			List<TermDepositVO> marriageTermDepositVOList = termDepositService.recommendTermDeposit3(marriageMonthDiff);
			System.out.println("결혼:" + marriageSavingsVO);
			System.out.println("결혼예금:" + marriageTermDepositVO);
			request.setAttribute("marriageSavingsVO", marriageSavingsVO);
			request.setAttribute("marriageTermDepositVO", marriageTermDepositVO);
			request.setAttribute("marriageSavingsVOList", marriageSavingsVOList);
			request.setAttribute("marriageTermDepositVOList", marriageTermDepositVOList);
		
			for(TermDepositVO marriageVO :marriageTermDepositVOList) {
				System.out.println(marriageVO);
			}
		
		}
		// 주택적금추천
		if (houseMonthDiff != 0) {
			if (houseMonthDiff > 60) {
				houseMonthDiff = 59;
			} else if (houseMonthDiff < 6) {
				houseMonthDiff = 6;
			}
			System.out.println("houseMonthDiff: " + houseMonthDiff);
			SavingsVO houseSavingsVO = savingsService.recommendSavings(houseMonthDiff);
			TermDepositVO houseTermDepositVO = termDepositService.recommendTermDeposit(houseMonthDiff);
			request.setAttribute("houseSavingsVO", houseSavingsVO);
			request.setAttribute("houseTermDepositVO", houseTermDepositVO);
			//3개추천
			List<SavingsVO> houseSavingsVOList = savingsService.recommendSavings3(houseMonthDiff);
			List<TermDepositVO> houseTermDepositVOList = termDepositService.recommendTermDeposit3(houseMonthDiff);
			request.setAttribute("houseSavingsVOList", houseSavingsVOList);
			request.setAttribute("houseTermDepositVOList", houseTermDepositVOList);
		}
		// 기타적금추천
		if (etcMonthDiff != 0) {
			if (etcMonthDiff > 60) {
				etcMonthDiff = 59;
			} else if (etcMonthDiff < 6) {
				etcMonthDiff = 6;
			}
			System.out.println("etcMonthDiff: " + etcMonthDiff);
			SavingsVO etcSavingsVO = savingsService.recommendSavings(etcMonthDiff);
			TermDepositVO etcTermDepositVO = termDepositService.recommendTermDeposit(etcMonthDiff);
			System.out.println("etcSavings" + etcSavingsVO);
			request.setAttribute("etcTermDepositVO", etcTermDepositVO);
			//3개추천
			List<SavingsVO> etcSavingsVOList = savingsService.recommendSavings3(etcMonthDiff);
			List<TermDepositVO> etcTermDepositVOList = termDepositService.recommendTermDeposit3(etcMonthDiff);
			System.out.println("etcSavingsVOList" + etcSavingsVOList);
			request.setAttribute("etcTermDepositVOList", etcTermDepositVOList);
		}
		
		EtcVO etcVO = new EtcVO();
		etcVO.setEtcName(etcName);
		etcVO.setEtcExpence(etcExpence);
		etcVO.setEtcYear(etcYear);
		
		MarriageVO marriageVO = new MarriageVO();
		marriageVO.setMarriageExpence(marriageExpence);
		marriageVO.setMarriageYear(marriageYear);
		
		HouseVO houseVO = new HouseVO();
		houseVO.setHouseExpence(houseExpence);
		houseVO.setHouseYear(houseYear);
		
		request.setAttribute("etcVO", etcVO);
		request.setAttribute("marriageVO", marriageVO);
		request.setAttribute("houseVO", houseVO);
		
		System.out.println("houseChecked" + houseChecked);
		request.setAttribute("houseChecked", houseChecked);
		request.setAttribute("marriageChecked", marriageChecked);
		request.setAttribute("etcChecked", etcChecked);
		
		request.setAttribute("marriageMonthDiff", marriageMonthDiff);
		request.setAttribute("houseMonthDiff", houseMonthDiff);
		request.setAttribute("etcMonthDiff", etcMonthDiff);
		
		System.out.println("marriage:" + marriageChecked);
		System.out.println("etc:" + etcChecked);
		
		request.setAttribute("pensionVO", pensionVO);
		request.setAttribute("income", income);
		request.setAttribute("myAsserts", myAsserts);
		request.setAttribute("spareMoney", spareMoney);
		
		return "/consult/consultProduct2";
	}

	@PostMapping("/uploadfile")
	public void fileUpload(@RequestParam MultipartFile file, Model model) throws IllegalStateException, IOException {

		if (!file.isEmpty()) {
			String fullPath = "D:/LECTURE/workspace/spring-workspace/final-hana1qurator/src/main/file/"
					+ file.getOriginalFilename();
			file.transferTo(new File(fullPath));

		}
	}

	@GetMapping("/consult/consultLog/{consultDate}")
	public String consultLog(HttpServletRequest request, @SessionAttribute("loginVO") MemberVO member, @PathVariable("consultDate") String searchConsultDate) {
		
		System.out.println("searchConsultDate:"+searchConsultDate);
		
		Map<String, Object> consultInfo = new HashMap<String, Object>();
		consultInfo.put("searchConsultDate", searchConsultDate);
		String id = member.getId();
		consultInfo.put("id", id);
		
		System.out.println("serachDate:"+searchConsultDate);
		System.out.println("id:"+id);
		
		Map<String, Object> consult = consultService.selectConsult(consultInfo);

		// 결혼관련
		MarriageVO marriageVO = new MarriageVO();
		// 결혼 필요자금
		int marriageExpence = Integer.parseInt(String.valueOf(consult.get("MARRIAGE_EXPENCE"))) * 10000;
		// 결혼 예정연도
		int marriageMonthDiff = Integer.parseInt(String.valueOf(consult.get("MARRIAGE_MONTHDIFF")));

		marriageVO.setMarriageExpence(marriageExpence);

		// 주택관련
		HouseVO houseVO = new HouseVO();
		int houseExpence = Integer.parseInt(String.valueOf(consult.get("HOUSE_EXPENCE"))) * 10000;
		int houseMonthDiff = Integer.parseInt(String.valueOf(consult.get("HOUSE_MONTHDIFF")));

		houseVO.setHouseExpence(houseExpence);

		// 기타관련
		EtcVO etcVO = new EtcVO();
		String etcName = String.valueOf(consult.get("ETC_NAME"));
		int etcExpence = Integer.parseInt(String.valueOf(consult.get("ETC_EXPENCE"))) * 10000;
		int etcMonthDiff = Integer.parseInt(String.valueOf(consult.get("ETC_MONTHDIFF")));

		etcVO.setEtcExpence(etcExpence);
		etcVO.setEtcName(etcName);

		LocalDate now = LocalDate.now();
		int year = now.getYear();
		request.setAttribute("year", year); // 현재 년도

		request.setAttribute("marriageMonthDiff", marriageMonthDiff);
		request.setAttribute("houseMonthDiff", houseMonthDiff);
		request.setAttribute("etcMonthDiff", etcMonthDiff);

		request.setAttribute("accountMoney", Integer.parseInt(String.valueOf(consult.get("ACCOUNT_ASSERTS"))));
		request.setAttribute("stockMoney", Integer.parseInt(String.valueOf(consult.get("STOCK_ASSERTS"))));

		String houseChecked = "";
		String marriageChecked = "";
		String etcChecked = "";

		if (houseExpence == 0) {
			houseChecked = "n";
		}
		if (marriageExpence == 0) {
			marriageChecked = "n";
		}
		if (etcExpence == 0) {
			etcChecked = "n";
		}
		request.setAttribute("houseChecked", houseChecked);
		request.setAttribute("marriageChecked", marriageChecked);
		request.setAttribute("etcChecked", etcChecked);

		request.setAttribute("annualIncome", Integer.parseInt(String.valueOf(consult.get("INCOME"))));

		String consultDate1 = String.valueOf(consult.get("CONSULT_DATE"));
		System.out.println("consultDate:" + consultDate1);
		int consultYear = Integer.parseInt((String) consultDate1.subSequence(0, 4));
		System.out.println("consultYear:" + consultYear);
		int birthYear = Integer.parseInt(member.getBirth_year());
		int age = consultYear - birthYear + 1;
		int retireAge = Integer.parseInt(String.valueOf(consult.get("RETIRE_AGE")));
		int expectedAge = Integer.parseInt(String.valueOf(consult.get("EXPECTED_AGE")));
		int pensionAmount = Integer.parseInt(String.valueOf(consult.get("PENSION_AMOUNT")));
		int expectedLivingExpence = Integer.parseInt(String.valueOf(consult.get("EXPECTED_LIVING_EXPENCE")));

		int preparePeriod = retireAge - age;
		// 은퇴 생활기
		int retirePeriod = expectedAge - retireAge;
		// 공적연금
		int resultPensionAmount = (expectedAge - 65) * 12 * (pensionAmount * 10000);

		// 은퇴생활시 필요한 자금
		int resultRequiredAmount = retirePeriod * 12 * expectedLivingExpence * 10000;

		RetireVO retireVO = new RetireVO();

		retireVO.setAge(age);
		retireVO.setRetireAge(retireAge);
		retireVO.setExpectedAge(expectedAge);
		retireVO.setPreparePeriod(preparePeriod);
		retireVO.setRetirePeriod(retirePeriod);
		retireVO.setResultPensionAmount(resultPensionAmount);
		retireVO.setResultRequiredAmount(resultRequiredAmount);

		int outcome = Integer.parseInt(String.valueOf(consult.get("OUTCOME")));
		int income = Math.round(Integer.parseInt(String.valueOf(consult.get("INCOME"))) / 12);
		int loanMoney = Integer.parseInt(String.valueOf(consult.get("LOAN_ASSERTS")));

		retireVO.setOutcome(outcome);
		retireVO.setIncome(income);
		retireVO.setLoanMoney(loanMoney);

		request.setAttribute("annualIncome", Integer.parseInt(String.valueOf(consult.get("INCOME"))));
		request.setAttribute("retireVO", retireVO);
		request.setAttribute("houseVO", houseVO);
		request.setAttribute("marriageVO", marriageVO);
		request.setAttribute("etcVO", etcVO);

		return "/consult/consultResult";
	}

	@GetMapping("/consult/consultLogList")
	public String consultLogList() {

		return "/consult/consultLogList";
	}

	@ResponseBody
	@GetMapping(value = "/consult/selectAllConsultLog")
	public List<Map<String, Object>> selectAllConsultLog(@SessionAttribute("loginVO") MemberVO member) {
		String id = member.getId();
		return consultService.selectAllConsult(id);
	}
}

package kr.ac.kopo.member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	// 회원 조회 메인 페이지
	@RequestMapping(value = "/member/main")
	public String manageMemberMain(HttpServletRequest request) {

		// 저번주 신규 가입 회원 수 조회
		int newMemberCnt = memberService.countNewMemberOfLastWeek();
		int allMemberCnt = memberService.countAllMember();
		int dormantCnt = memberService.getDormantCnt();
		Map<String, Integer> gender = memberService.genderRatio();
		
		request.setAttribute("newMemberCnt", newMemberCnt);
		request.setAttribute("allMemberCnt", allMemberCnt);
		request.setAttribute("dormantCnt", dormantCnt);
		request.setAttribute("gender", gender);
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map = memberService.countMemberByAge();

		request.setAttribute("ageMap", map);

		return "member/memberMain";
	}

	// 모든 회원 조회
	@RequestMapping(value = "/member/selectAll")
	public String selectAllMember(HttpServletRequest request) {

		// 저번주 신규 가입 회원 수 조회
		int newMemberCnt = memberService.countNewMemberOfLastWeek();
		int allMemberCnt = memberService.countAllMember();

		request.setAttribute("newMemberCnt", newMemberCnt);
		request.setAttribute("allMemberCnt", allMemberCnt);

		return "member/memberSelectALL";
	}

	@ResponseBody
	@RequestMapping(value = "/selectallmember.json")
	public List<MemberVO> allMemberJson() {
		return memberService.allMemberJson();
	}

	@ResponseBody
	@RequestMapping(value = "/countmemberbyage.json")
	public Map<String, Integer> countMemberByAge() {
		return memberService.countMemberByAge();
	}
	
	@PostMapping(value = "/sendMessage")
	public void sendMessage(HttpServletRequest request) {
		String [] telephone = request.getParameterValues("telephone");
		String context = request.getParameter("context");
		
		for(int i=0 ; i<telephone.length; i++) {
			memberService.sendMessage(telephone[i],context);
		}
	}

}

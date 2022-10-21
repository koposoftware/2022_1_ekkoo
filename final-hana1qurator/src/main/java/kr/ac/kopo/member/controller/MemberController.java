package kr.ac.kopo.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;
@SessionAttributes("loginVO")
@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login.do")
	public String showLoginForm(HttpServletRequest request) {

		// spring form tag에서 사용할 memberVO를 공유영역에 등록시킨다.
		request.setAttribute("memberVO", new MemberVO());

		return "/login/login";
	}

	/*
	 * 1. null 값이 들어오면 login.jsp로 forward
	 * 
	 * 2. 정상값이 들어온경우, id/password가 유효한지 select문으로 체크
	 * 
	 * 3-1. 유효한 id/password session에 유효한 memberVO 등록 3-2. 유효하지 않은 id/password 사용자에게
	 * 다시 입력하라는 메세지 출력
	 * 
	 * 4. interceptor :
	 */
	@PostMapping("/login.do")
	public String postLogin(@Valid MemberVO memberVO, BindingResult result, Model model, HttpSession session) {
		System.out.println("여기로는 들어옴");
		if (result.hasErrors()) {
			// 다시입력
			return "login/login";
		} else {
			// null이 아닐때
			MemberVO authMember = memberService.login(memberVO);
			System.out.println("authMember: " + authMember);
			if (authMember == null) {
				// id랑 password가 유효하지 않은 경우
				// model 한테 loginVO를 session에 등록해달라고 시킴
				model.addAttribute("loginmsg", "id 또는 password가 일치하지 않습니다.");
				return "login/login";
			} else {
				//최근 접속 일자 update
				String id = memberVO.getId();
				memberService.recentAccessDate(id);
				
				// 유효한경우
				// 방법1:session.setAttribute("loginVO", authMember);

				// 방법2:
				model.addAttribute("loginVO", authMember);
				//model.addAttribute("loginmsg",authMember.getName()+"님 환영합니다");
				
				String dest = (String) session.getAttribute("dest");
				System.out.println("dest : " + dest);

				if (dest.equals("/img/feature.jpg")||dest.equals("/images/icons/favicon.ico")) {
					//처음에 바로 login을 할 경우 dest가 없다.
					return "redirect:/";
				} else {
					return "redirect:" + dest;
				}
				
			}
		}

	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session, SessionStatus sessionStatus,HttpServletRequest request) {
		//model.attribute해서 session에 loginVO를 등록시켰을 경우
		sessionStatus.setComplete();
		session.invalidate();
		return "redirect:/";
		
	}
	
	@GetMapping("/register.do")
	public String getRegister(HttpServletRequest request) {
		//공유영역에 등록하기
		request.setAttribute("memberVO", new MemberVO());
		return "member/register";
	}
	
	@PostMapping("/register.do")
	public String PostRegister(@Valid MemberVO memberVO, BindingResult result,Model model){
		System.out.println();
	
		/*
		 * //1. null값이 있을 경우 if(result.hasErrors()) { System.out.println("여기null");
		 * return "member/register"; } //2. else {
		 */
			
			memberService.insert(memberVO);
			model.addAttribute("registerMsg","회원가입이 완료되었습니다");
			return "redirect:/";
		}
			
	
	@ResponseBody
	@RequestMapping(value = "/resJsonBody.json")
	public Map<String, String> resJsonBody() {
		Map<String, String> map = new HashMap<>();

		map.put("id", "hong");
		map.put("password", "password");
		map.put("name", "홍길동");

		return map;

	}
	
	
}

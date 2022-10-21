package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.ac.kopo.member.vo.MemberVO;

public class LoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("pre핸들 동작");
		
		System.out.println("contextPath: "+request.getContextPath());
		System.out.println("uri:"+request.getRequestURI());
		System.out.println("queryString: "+request.getQueryString());
		
		String dest = request.getRequestURI(); //  /srping-board/board/write/3
		dest = dest.substring(request.getContextPath().length());  // board/write/3  //+queryString
		
				
		HttpSession session = request.getSession();
		
		session.setAttribute("dest", dest);
		System.out.println("dest: "+dest);
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		if(loginVO == null) {
			//login이 안되어 있는 경우
			//return 값이 false이면 어떤 페이지로도 이동하지 않음 //spring-mvc에서 interceptor에 적용받지 않을 page들 설정함(ex.login, 회원가입 등)
			response.sendRedirect(request.getContextPath()+"/login.do");
			return false;
		} else {
			//login 되어있는 경우
			return true;
		}
	
	}
}

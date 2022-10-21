package kr.ac.kopo.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.vo.BoardVO;

@Controller
public class BoardController {
	@Autowired  //spring아 boardService 가져와줘 
	//==>  BoardService boardService = new  BoardService 대신 멤버변수와 autowried로 대신한다.
	private BoardService boardService;
	
	
	//localhost:8080/spring-board/board
	@RequestMapping(value =  "/board.do")
	public String allBoard(HttpServletRequest request) {
		List<BoardVO> boardList = new ArrayList<>();
		
		boardList = boardService.getAllBoard();
		
		request.setAttribute("boardList", boardList);
		
		return "board/list";
		// WEB-INF/jsp/board/list.jsp를 불러와라
	}
}

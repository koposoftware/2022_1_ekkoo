package kr.ac.kopo.hometax.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.hometax.service.HometaxService;
import kr.ac.kopo.hometax.vo.HometaxVO;
import kr.ac.kopo.member.vo.MemberVO;

@RestController
public class HometaxController {
	@Autowired
	private HometaxService hometaxService;
	
	@GetMapping("/hometax/getInfo.json/{telephone}")
	public HometaxVO getInfo(@PathVariable("telephone") String telephone, HttpServletRequest request) {
		return hometaxService.getInfo(telephone);
	} 
	
	@PostMapping("/hometax/getInfo.json/{telephone}")
	public HometaxVO postInfo(@PathVariable("telephone") String telephone, HttpServletRequest request) {
		HometaxVO hometaxVO = hometaxService.getInfo(telephone);
		request.setAttribute("hometaxVO", hometaxVO);
		return hometaxService.getInfo(telephone);
	}
	
	@GetMapping("/hometax/gethometaxinfo.json/{id}/{password}")
	public HometaxVO gethomtaxinfo(@PathVariable("id") String id,@PathVariable("password") String password, HttpServletRequest request) {
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPassword(password);
		return hometaxService.gethometaxinfo(member);
	}

}

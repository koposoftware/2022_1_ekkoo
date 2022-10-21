package kr.ac.kopo.hometax.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.hometax.service.HometaxService;
import kr.ac.kopo.hometax.vo.HometaxVO;
import kr.ac.kopo.member.vo.MemberVO;

@RestController
public class HometaxController {
	@Autowired
	private HometaxService hometaxService;
    
	@PostMapping("/api/anualHometaxInfo.json")
	public HometaxVO apiHomtaxinfo(HttpServletRequest request) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPassword(password);
		return hometaxService.gethometaxinfo(member);
	}
	
	@PostMapping("/api/access")
	public int apiAccess(HttpServletRequest request) {
		String companyCode = request.getParameter("companyCode");
		String apiKey = request.getParameter("apiKey");
		
		Map<String, String> apiAccess = new HashMap<String, String>();
		apiAccess.put("companyCode", companyCode);
		apiAccess.put("apiKey", apiKey);
		int validAccess = hometaxService.checkAccessKey(apiAccess);
		
		return validAccess;     
	}

	//키 발급 및 저장
	@PostMapping("/personal/key")
	public String generateRandomKey(HttpServletRequest request) {	
		String id = request.getParameter("id");
		String apiKey = hometaxService.generateApiKey(id);
		return apiKey;	
	}
	
	
	
	
	/*
	 * @GetMapping("/api/anualHometaxInfo.json/{id}/{password}") public HometaxVO
	 * apiHomtaxinfo(@RequestParam("id") String id, @RequestParam("password") String
	 * password) { MemberVO member = new MemberVO(); member.setId(id);
	 * member.setPassword(password); return hometaxService.gethometaxinfo(member); }
	 * 
	 * @GetMapping("/api/access.json/{companyCode}/{apiKey}") public int
	 * apiAccess(@RequestParam("companyCode") String
	 * companyCode,@RequestParam("apiKey") String apiKey) { Map<String, String>
	 * apiAccess = new HashMap<String, String>(); apiAccess.put("companyCode",
	 * companyCode); apiAccess.put("apiKey", apiKey); int validAccess =
	 * hometaxService.checkAccessKey(apiAccess);
	 * 
	 * return validAccess; }
	 * 
	 * //키 발급 및 저장
	 * 
	 * @GetMapping("/personal/key/{id}") public String
	 * generateRandomKey(@RequestParam("id") String id) { String apiKey =
	 * hometaxService.generateApiKey(id); return apiKey; }
	 */

}
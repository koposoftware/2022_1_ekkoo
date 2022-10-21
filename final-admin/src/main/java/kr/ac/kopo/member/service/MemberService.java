package kr.ac.kopo.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;


@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	public Map<String, Integer> genderRatio(){
		return memberDAO.genderRatio();
	}

	public List<MemberVO> allMemberJson() {
		
		return memberDAO.allMemberJson();
	}
	
	public int countNewMemberOfLastWeek() {
		return memberDAO.countNewMemberOfLastWeek();
	}
	
	public int countAllMember() {
		return memberDAO.countAllMember();
	}
	
	public Map<String, Integer> countMemberByAge(){
		return memberDAO.countMemberByAge();
	}
	
	public int getDormantCnt() {
		return memberDAO.countDormantMember();
	}

	public void sendMessage(String toNumber, String message) {
		String apiKey = "NCSVIK8OZK0DKJKW";
		String apiSecret = "VBGPUDTG1BXLIXVRTRDD4TV6K4XUIDYA";
		Message coolsms = new Message(apiKey, apiSecret);

		HashMap<String, String> params = new HashMap<String, String>();
		
		
		String fromNumber ="01020617815";
		params.put("to", toNumber);
		params.put("from", fromNumber);
		params.put("type", "SMS");
		params.put("text", message);
		params.put("ModuHana", "test app 1.2"); // application name and version

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
		} catch (CoolsmsException e) {
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
	}

}

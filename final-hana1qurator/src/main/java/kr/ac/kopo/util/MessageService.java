package kr.ac.kopo.util;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service
public class MessageService {

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

	public int sendAuthNumberMessage(String tel) {
		int randomNumber = generateAuthNo();
		sendMessage(tel, "[ModuHana] 인증번호 " + randomNumber + " 를 입력하세요.");
		return randomNumber;
	}
	
	/**
     * 6자리 인증키 생성, int 반환
     * @return
     */
    private static int generateAuthNo() {
        java.util.Random generator = new java.util.Random();
        generator.setSeed(System.currentTimeMillis());
        return generator.nextInt(1000000) % 1000000;
    }

}
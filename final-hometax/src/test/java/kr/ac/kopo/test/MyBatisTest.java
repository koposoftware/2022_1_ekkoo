package kr.ac.kopo.test;


import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fasterxml.jackson.annotation.JsonSubTypes.Type;

import kr.ac.kopo.hometax.service.HometaxService;
import kr.ac.kopo.member.vo.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring/spring-mvc.xml" })
public class MyBatisTest {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	//@Test
	public void genderRatio() {
		Map<String, String> map = sqlSessionTemplate.selectOne("member.dao.memberDAO.genderRatio");
		System.out.println(map);
	}
	
	//@Test
	public void selectallmember() {
		List<MemberVO> list = sqlSessionTemplate.selectList("member.dao.memberDAO.selectAllMember");
		for(MemberVO list1 : list) {
			System.out.println(list1);
		}
	}
	@Test
	public void countMemberByAge(){
		Map<String, String> apiAccess = new HashMap<String, String>();
		apiAccess.put("companyCode", "A0101");
		apiAccess.put("apiKey", "0qcjyVMao1Edw53");
	
		int validAccess = sqlSessionTemplate.selectOne("hometax.dao.hometaxDAO.correctApiKey",apiAccess);
		
		if(validAccess == 0) {
			System.out.println("null");
		} else if(validAccess == 1){
			System.out.println("not null");
		}
	}	
}

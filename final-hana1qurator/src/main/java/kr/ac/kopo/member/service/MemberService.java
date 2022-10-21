package kr.ac.kopo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;
@Service
public class MemberService{
	@Autowired
	private MemberDAO memberDao;
	
	 
	public MemberVO login(MemberVO memberVO) {
		MemberVO member = memberDao.login(memberVO);
		return member;
	}

	 
	public void insert(MemberVO member) {
		memberDao.insertMember(member);
	}
		 
	public void updateOpenBanking(String userId) {
		System.out.println("여기로 넘어옴");
		memberDao.update(userId);
	}


	public void recentAccessDate(String id) {
		memberDao.recentAccessDate(id);
	}
	@Scheduled(fixedDelay = 50000)
	public void checkDormantMember() {
		memberDao.checkDormantMember();
		System.out.println("==dormant update complete==");
	}

}

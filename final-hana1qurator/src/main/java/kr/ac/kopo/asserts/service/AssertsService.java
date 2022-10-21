package kr.ac.kopo.asserts.service;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.asserts.dao.AssertsDAO;
import kr.ac.kopo.card.vo.CardVO;
import kr.ac.kopo.loan.vo.LoanVO;
import kr.ac.kopo.stock.vo.StockVO;

@Service
public class AssertsService {
@Autowired
private AssertsDAO assertsDAO;

public List<AccountVO> selectAllAccount (String ownerId){
	return assertsDAO.selectAllAccount(ownerId);
}
//입출금계좌잔액
public int accountBalance01 (String ownerId) {
	return assertsDAO.accountBalance01(ownerId);
}
//예적금계좌잔액
public int accountBalance02 (String ownerId) {
	return assertsDAO.accountBalance02(ownerId);
}
//증권계좌잔액
public int accountBalance03 (String ownerId) {
	return assertsDAO.accountBalance03(ownerId);
}
//주식조회
public List<StockVO> selectStock(String ownerId){
	return assertsDAO.selectStock(ownerId);
}
//대출조회
public List<LoanVO> selectAllLoan(String ownerId){
	return assertsDAO.selectAllLoan(ownerId);
}
//주식 잔액
public int stockBalance(String ownerId) {
	return assertsDAO.stockBalance(ownerId);
}
//대출 잔액
public int loanBalance(String ownerId) {
	return assertsDAO.loanBalance(ownerId);
}

//하나금융 자산 조회
//계좌 조회
public int hanaAccountBalance(String ownerId) {
	return assertsDAO.selectHanaAccountBalance(ownerId);
}
//주식 조회
public int hanaStockBalance(String ownerId) {
	return assertsDAO.selectHanaStockBalance(ownerId);
}
//대출 조회
public int hanaLoanBalance(String ownerId) {
	return assertsDAO.selectHanaLoanBalance(ownerId);
}
//타금융 자산 조회
//계좌 조회
public int otherAccountBalance(String ownerId) {
	return assertsDAO.selectOtherAccountBalance(ownerId);
}
//주식 조회
public int otherStockBalance(String ownerId) {
	return assertsDAO.selectOtherStockBalance(ownerId);
}
//대출 조회
public int otherLoanBalance(String ownerId) {
	return assertsDAO.selectOtherLoanBalance(ownerId);
}
//대출 정보 조회
public LoanVO getLoanInfo(String ownerId) {
	return assertsDAO.getLoanInfo(ownerId);
}
//카드 정보 조회
public List<CardVO> getCardInfo(String ownerId){
	return assertsDAO.getCardInfo(ownerId);
}

public List<AccountVO> selectAllHanaAccount(String ownerId){
	return assertsDAO.selectAllHanaAccount(ownerId);
}
public List<AccountVO> selectOtherHanaAccount(String ownerId){
	return assertsDAO.selectAllOtherAccount(ownerId);
}

//@Scheduled(fixedDelay = 50000)
public List<Integer> getStockRealTime() throws ParseException {
	
	List<StockVO> stockList= assertsDAO.selectStock("lovehana");
	List<Integer> jugaList = new ArrayList<Integer>();
	
	for(StockVO stock : stockList) {
		String stockCode = stock.getStockCode();
		String URL = "https://finance.naver.com/item/main.nhn?code="+stockCode;
		Document doc;
		
		
		try {
			doc = Jsoup.connect(URL).get();
			Elements elem = doc.select(".date");
			String[] str = elem.text().split(" ");

			Elements todaylist =doc.select(".new_totalinfo dl>dd");
			
			String juga = todaylist.get(3).text().split(" ")[1];
			String DungRakrate = todaylist.get(3).text().split(" ")[6];
			String siga =  todaylist.get(5).text().split(" ")[1];
			String goga = todaylist.get(6).text().split(" ")[1];
			String zeoga = todaylist.get(8).text().split(" ")[1];
			String georaeryang = todaylist.get(10).text().split(" ")[1];

			String stype = todaylist.get(3).text().split(" ")[3]; //상한가,상승,보합,하한가,하락 구분

			String vsyesterday = todaylist.get(3).text().split(" ")[4];
			
			System.out.println("삼성전자 주가------------------");
			System.out.println("주가:"+juga);
			System.out.println("등락률:"+DungRakrate);
			System.out.println("시가:"+siga);
			System.out.println("고가:"+goga);
			System.out.println("저가:"+zeoga);
			System.out.println("거래량:"+georaeryang);
			System.out.println("타입:"+stype);
			System.out.println("전일대비:"+vsyesterday);
			System.out.println("가져오는 시간:"+str[0]+str[1]);
			
			int jugaInt = Integer.parseInt(juga.replace(",",""))*1;
			
			System.out.println(jugaInt);
			
			StockVO stockVO = new StockVO();
			stockVO.setStockCode(stockCode);
			stockVO.setStockAmount(jugaInt);
			stockVO.setOwnerId("lovehana");
			
			
			assertsDAO.updateStockAmount(stockVO);
			
	}
	
	catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	} 
	
	return jugaList;
}
public void transferToHana(Map<String, Object> map) {
	assertsDAO.transferToHana(map);
	
}

}

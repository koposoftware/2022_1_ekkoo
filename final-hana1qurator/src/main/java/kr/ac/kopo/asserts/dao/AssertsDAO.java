package kr.ac.kopo.asserts.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.card.vo.CardVO;
import kr.ac.kopo.loan.vo.LoanVO;
import kr.ac.kopo.stock.vo.StockVO;

@Repository
public class AssertsDAO {
@Autowired
private SqlSessionTemplate sqlSessionTemplate;

public List<AccountVO> selectAllAccount (String ownerId){
	return sqlSessionTemplate.selectList("asserts.dao.assertsDAO.selectAll",ownerId);
}
//입출금계과_잔액
public int accountBalance01 (String ownerId){
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectBalance01",ownerId);
}
//예적금계과_잔액
public int accountBalance02 (String ownerId){
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectBalance02",ownerId);
}
//증권계과_잔액
public int accountBalance03 (String ownerId){
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectBalance03",ownerId);
}
//주식조회
public List<StockVO> selectStock(String ownerId){
	return sqlSessionTemplate.selectList("asserts.dao.assertsDAO.selectStock",ownerId);
}
//주식 모든 금액의 합 조회
public int stockBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectStockBalance",ownerId);
}
//대출조회
public List<LoanVO> selectAllLoan(String ownerId){
	return sqlSessionTemplate.selectList("asserts.dao.assertsDAO.selectAllLoan",ownerId);
}
//주식 모든 금액의 합 조회
public int loanBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectLoanBalance",ownerId);
}

//하나금융자산조회
//계좌조회
public int selectHanaAccountBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectHanaAccountBalance",ownerId);
}
//주식조회
public int selectHanaStockBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectHanaStockBalance",ownerId);
}
//대출조회
public int selectHanaLoanBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectHanaLoanBalance",ownerId);
}

//타금융자산조회
//계좌조회
public int selectOtherAccountBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectOtherAccountBalance",ownerId);
}
//주식조회
public int selectOtherStockBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectOtherStockBalance",ownerId);
}
//대출조회
public int selectOtherLoanBalance (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.selectOtherLoanBalance",ownerId);
}
//대출 정보 조회
public LoanVO getLoanInfo (String ownerId) {
	return sqlSessionTemplate.selectOne("asserts.dao.assertsDAO.getLoanInfo",ownerId);
}
//크롤링 해서 평가금 업데이트
public void updateStockAmount(StockVO stockVO) {
	sqlSessionTemplate.update("asserts.dao.assertsDAO.updateStockAmount",stockVO);
}
//카드 정보 조회
public List<CardVO> getCardInfo(String ownerId) {
	return sqlSessionTemplate.selectList("card.dao.cardDAO.selectAllCard",ownerId);
}
public List<AccountVO> selectAllHanaAccount(String ownerId) {
	return sqlSessionTemplate.selectList("asserts.dao.assertsDAO.selectAllHanaAccount",ownerId);
}
public List<AccountVO> selectAllOtherAccount(String ownerId) {
	return sqlSessionTemplate.selectList("asserts.dao.assertsDAO.selectAllOtherAccount",ownerId);
}
public void transferToHana(Map<String, Object> map) {
	sqlSessionTemplate.update("asserts.dao.assertsDAO.transferToHana",map);
	
}
}

package kr.ac.kopo.cardtransaction.vo;

public class CardTransactionVO {
	private String transDate;
	private String transAmount;
	private String transType;
	private String consumeType;
	private String consumeStore;
	private String cardNo;
	
	public String getTransDate() {
		return transDate;
	}
	public void setTransDate(String transDate) {
		this.transDate = transDate;
	}
	public String getTransAmount() {
		return transAmount;
	}
	public void setTransAmount(String transAmount) {
		this.transAmount = transAmount;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public String getConsumeType() {
		return consumeType;
	}
	public void setConsumeType(String consumeType) {
		this.consumeType = consumeType;
	}
	public String getConsumeStore() {
		return consumeStore;
	}
	public void setConsumeStore(String consumeStore) {
		this.consumeStore = consumeStore;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	@Override
	public String toString() {
		return "CardTransactionVO [transDate=" + transDate + ", transAmount=" + transAmount + ", transType=" + transType
				+ ", consumeType=" + consumeType + ", consumeStore=" + consumeStore + ", cardNo=" + cardNo + "]";
	}
	
	

}

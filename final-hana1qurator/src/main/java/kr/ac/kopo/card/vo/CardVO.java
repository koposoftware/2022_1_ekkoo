package kr.ac.kopo.card.vo;

public class CardVO {
	private String cardNo;
	private String bankName;
	private String cardName;
	private String ownerId;
	private String cardPhoto;
	private String cardType;
	
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getCardName() {
		return cardName;
	}
	public void setCardName(String cardName) {
		this.cardName = cardName;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	
	public String getCardPhoto() {
		return cardPhoto;
	}
	public void setCardPhoto(String cardPhoto) {
		this.cardPhoto = cardPhoto;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	@Override
	public String toString() {
		return "CardVO [cardNo=" + cardNo + ", bankName=" + bankName + ", cardName=" + cardName + ", ownerId=" + ownerId
				+ ", cardPhoto=" + cardPhoto + ", cardType=" + cardType + "]";
	}
	

}

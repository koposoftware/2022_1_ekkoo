package kr.ac.kopo.stock.vo;

public class StockVO {
	private String stockCode;
	private String stockName;
	private int stockAmount;
	private String bankName;
	private String bankAccount;
	private String bankPhoto;
	private int purchasePrice;
	private int purchaseQuantity;
	private String ownerId;
	
	public String getStockCode() {
		return stockCode;
	}
	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}
	public String getStockName() {
		return stockName;
	}
	public void setStockName(String stockName) {
		this.stockName = stockName;
	}
	public int getStockAmount() {
		return stockAmount;
	}
	public void setStockAmount(int stockAmount) {
		this.stockAmount = stockAmount;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	
	public String getBankPhoto() {
		return bankPhoto;
	}
	public void setBankPhoto(String bankPhoto) {
		this.bankPhoto = bankPhoto;
	}
	
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public int getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(int purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public int getPurchaseQuantity() {
		return purchaseQuantity;
	}
	public void setPurchaseQuantity(int purchaseQuantity) {
		this.purchaseQuantity = purchaseQuantity;
	}
	@Override
	public String toString() {
		return "StockVO [stockCode=" + stockCode + ", stockName=" + stockName + ", stockAmount=" + stockAmount
				+ ", bankName=" + bankName + ", bankAccount=" + bankAccount + ", bankPhoto=" + bankPhoto
				+ ", purchasePrice=" + purchasePrice + ", purchaseQuantity=" + purchaseQuantity + ", ownerId=" + ownerId
				+ "]";
	}
	
	

}

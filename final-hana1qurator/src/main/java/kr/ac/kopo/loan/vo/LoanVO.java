package kr.ac.kopo.loan.vo;

public class LoanVO {
	private String loanNo;
	private String bankName;
	private String loanAlias;
	private String loanBalance;
	private String loanPrincipal;
	private String subscriptionDate;
	private String expirationDate;
	private String ownerId;
	private String bankPhoto;
	
	
	public String getBankPhoto() {
		return bankPhoto;
	}
	public void setBankPhoto(String bankPhoto) {
		this.bankPhoto = bankPhoto;
	}
	public String getLoanNo() {
		return loanNo;
	}
	public void setLoanNo(String loanNo) {
		this.loanNo = loanNo;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getLoanAlias() {
		return loanAlias;
	}
	public void setLoanAlias(String loanAlias) {
		this.loanAlias = loanAlias;
	}
	public String getLoanBalance() {
		return loanBalance;
	}
	public void setLoanBalance(String loanBalance) {
		this.loanBalance = loanBalance;
	}
	public String getLoanPrincipal() {
		return loanPrincipal;
	}
	public void setLoanPrincipal(String loanPrincipal) {
		this.loanPrincipal = loanPrincipal;
	}
	public String getSubscriptionDate() {
		return subscriptionDate;
	}
	public void setSubscriptionDate(String subscriptionDate) {
		this.subscriptionDate = subscriptionDate;
	}
	public String getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	@Override
	public String toString() {
		return "LoanVO [loanNo=" + loanNo + ", bankName=" + bankName + ", loanAlias=" + loanAlias + ", loanBalance="
				+ loanBalance + ", loanPrincipal=" + loanPrincipal + ", subscriptionDate=" + subscriptionDate
				+ ", expirationDate=" + expirationDate + ", ownerId=" + ownerId + ", bankPhoto=" + bankPhoto + "]";
	}
	
	
	
	

}

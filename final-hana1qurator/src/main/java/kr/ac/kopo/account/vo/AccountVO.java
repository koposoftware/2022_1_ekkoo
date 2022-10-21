package kr.ac.kopo.account.vo;

public class AccountVO {
	private String accountNo;
	private String accountType;
	private String bankCode;
	private String accountName;
	private String balance;
	private String accountPwd;
	private String ownerId;
	private String bankPhoto;
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getBankCode() {
		return bankCode;
	}
	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getAccountPwd() {
		return accountPwd;
	}
	public void setAccountPwd(String accountPwd) {
		this.accountPwd = accountPwd;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	
	public String getBankPhoto() {
		return bankPhoto;
	}
	public void setBankPhoto(String bankPhoto) {
		this.bankPhoto = bankPhoto;
	}
	@Override
	public String toString() {
		return "AccountVO [accountNo=" + accountNo + ", accountType=" + accountType + ", bankCode=" + bankCode
				+ ", accountName=" + accountName + ", balance=" + balance + ", accountPwd=" + accountPwd + ", ownerId="
				+ ownerId + ", bankPhoto=" + bankPhoto + "]";
	}
	
	
	
	

}

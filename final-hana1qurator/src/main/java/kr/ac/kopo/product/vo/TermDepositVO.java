package kr.ac.kopo.product.vo;

public class TermDepositVO {
	private String productName;
	private String repDesc;
	private int maxInterestRate;
	private int minPeriod;
	private int maxPeriod;
	private double interestRate;
	private String productNo;
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getRepDesc() {
		return repDesc;
	}
	public void setRepDesc(String repDesc) {
		this.repDesc = repDesc;
	}
	public int getMaxInterestRate() {
		return maxInterestRate;
	}
	public void setMaxInterestRate(int maxInterestRate) {
		this.maxInterestRate = maxInterestRate;
	}
	public int getMinPeriod() {
		return minPeriod;
	}
	public void setMinPeriod(int minPeriod) {
		this.minPeriod = minPeriod;
	}
	public int getMaxPeriod() {
		return maxPeriod;
	}
	public void setMaxPeriod(int maxPeriod) {
		this.maxPeriod = maxPeriod;
	}
	public double getInterestRate() {
		return interestRate;
	}
	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	@Override
	public String toString() {
		return "TermDepositVO [productName=" + productName + ", repDesc=" + repDesc + ", maxInterestRate="
				+ maxInterestRate + ", minPeriod=" + minPeriod + ", maxPeriod=" + maxPeriod + ", interestRate="
				+ interestRate + ", productNo=" + productNo + "]";
	}
	
	
	
}

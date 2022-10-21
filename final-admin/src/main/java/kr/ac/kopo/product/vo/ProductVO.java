package kr.ac.kopo.product.vo;

public class ProductVO {
	private String productNo;
	private String productName;
	private String repDesc;
	private String interest_rate;
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
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
	public String getInterest_rate() {
		return interest_rate;
	}
	public void setInterest_rate(String interest_rate) {
		this.interest_rate = interest_rate;
	}
	@Override
	public String toString() {
		return "ProductVO [productNo=" + productNo + ", productName=" + productName + ", repDesc=" + repDesc
				+ ", interest_rate=" + interest_rate + "]";
	}
	
	
}

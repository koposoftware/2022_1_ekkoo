package kr.ac.kopo.product.vo;

public class PensionVO {
	private String pensionType;
	private String pensionName;
	private String insuranceCompany;
	private int interestRate;
	private String repDetail;
	public String getPensionType() {
		return pensionType;
	}
	public void setPensionType(String pensionType) {
		this.pensionType = pensionType;
	}
	public String getPensionName() {
		return pensionName;
	}
	public void setPensionName(String pensionName) {
		this.pensionName = pensionName;
	}
	public String getInsuranceCompany() {
		return insuranceCompany;
	}
	public void setInsuranceCompany(String insuranceCompany) {
		this.insuranceCompany = insuranceCompany;
	}
	public int getInterestRate() {
		return interestRate;
	}
	public void setInterestRate(int interestRate) {
		this.interestRate = interestRate;
	}
	public String getRepDetail() {
		return repDetail;
	}
	public void setRepDetail(String repDetail) {
		this.repDetail = repDetail;
	}
	@Override
	public String toString() {
		return "PensionVO [pensionType=" + pensionType + ", pensionName=" + pensionName + ", insuranceCompany="
				+ insuranceCompany + ", interestRate=" + interestRate + ", repDetail=" + repDetail + "]";
	}

	
}

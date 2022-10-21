package kr.ac.kopo.asserts.vo;

public class MarriageVO {
	private int marriageYear;
	private int marriageExpence;
	public int getMarriageYear() {
		return marriageYear;
	}
	public void setMarriageYear(int marriageYear) {
		this.marriageYear = marriageYear;
	}
	public int getMarriageExpence() {
		return marriageExpence;
	}
	public void setMarriageExpence(int marriageExpence) {
		this.marriageExpence = marriageExpence;
	}
	@Override
	public String toString() {
		return "MarriageVO [marriageYear=" + marriageYear + ", marriageExpence=" + marriageExpence + "]";
	}
	
	

}

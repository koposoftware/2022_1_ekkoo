package kr.ac.kopo.asserts.vo;

public class EtcVO {	
	private String etcName;
	private int etcYear;
	private int etcExpence;
	public String getEtcName() {
		return etcName;
	}
	public void setEtcName(String etcName) {
		this.etcName = etcName;
	}
	public int getEtcYear() {
		return etcYear;
	}
	public void setEtcYear(int etcYear) {
		this.etcYear = etcYear;
	}
	public int getEtcExpence() {
		return etcExpence;
	}
	public void setEtcExpence(int etcExpence) {
		this.etcExpence = etcExpence;
	}
	@Override
	public String toString() {
		return "EtcVO [etcName=" + etcName + ", etcYear=" + etcYear + ", etcExpence=" + etcExpence + "]";
	}
	
	

}

package kr.ac.kopo.asserts.vo;

public class HouseVO {
	private int houseYear;
	private int houseExpence;
	public int getHouseYear() {
		return houseYear;
	}
	public void setHouseYear(int houseYear) {
		this.houseYear = houseYear;
	}
	public int getHouseExpence() {
		return houseExpence;
	}
	public void setHouseExpence(int houseExpence) {
		this.houseExpence = houseExpence;
	}
	@Override
	public String toString() {
		return "HouseVO [houseYear=" + houseYear + ", houseExpence=" + houseExpence + "]";
	}
	
	


}

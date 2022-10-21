package kr.ac.kopo.member.vo;

import javax.validation.constraints.NotEmpty;

public class MemberVO {
	@NotEmpty(message = "필수입력항목입니다")
	private String id;
	
	private String name;

	private String email;
	private String telephone;
	private String gender;
	private String type;
	private String regDate;
	private String recentAccessDate;
	private String openBanking;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getRecentAccessDate() {
		return recentAccessDate;
	}
	public void setRecentAccessDate(String recentAccessDate) {
		this.recentAccessDate = recentAccessDate;
	}
	public String getOpenBanking() {
		return openBanking;
	}
	public void setOpenBanking(String openBanking) {
		this.openBanking = openBanking;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", email=" + email + ", telephone=" + telephone + ", gender="
				+ gender + ", type=" + type + ", regDate=" + regDate + ", recentAccessDate=" + recentAccessDate
				+ ", openBanking=" + openBanking + "]";
	}
}

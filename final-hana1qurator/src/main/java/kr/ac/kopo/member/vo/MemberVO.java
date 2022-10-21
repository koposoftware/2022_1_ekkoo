package kr.ac.kopo.member.vo;

import javax.validation.constraints.NotEmpty;

public class MemberVO {
	@NotEmpty(message = "필수입력항목입니다")
	private String id;
	
	private String name;
	
	@NotEmpty(message = "필수입력항목입니다")
	private String password;
	
	private String email;
	private String telephone;
	private String post;
	private String basic_addr;
	private String detail_addr;
	private String type;
	private String reg_date;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	private String open_banking;
	
	
	public String getOpen_banking() {
		return open_banking;
	}
	public void setOpen_banking(String open_banking) {
		this.open_banking = open_banking;
	}
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getBasic_addr() {
		return basic_addr;
	}
	public void setBasic_addr(String basic_addr) {
		this.basic_addr = basic_addr;
	}
	public String getDetail_addr() {
		return detail_addr;
	}
	public void setDetail_addr(String detail_addr) {
		this.detail_addr = detail_addr;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}
	public String getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(String birth_month) {
		this.birth_month = birth_month;
	}
	public String getBirth_day() {
		return birth_day;
	}
	public void setBirth_day(String birth_day) {
		this.birth_day = birth_day;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", telephone="
				+ telephone + ", post=" + post + ", basic_addr=" + basic_addr + ", detail_addr=" + detail_addr
				+ ", type=" + type + ", reg_date=" + reg_date + ", birth_year=" + birth_year + ", birth_month="
				+ birth_month + ", birth_day=" + birth_day + ", open_banking=" + open_banking + "]";
	}
	
	
	
	
}

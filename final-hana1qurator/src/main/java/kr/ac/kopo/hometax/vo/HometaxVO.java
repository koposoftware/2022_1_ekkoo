package kr.ac.kopo.hometax.vo;

public class HometaxVO {
	private String id;
	private String password;
	private String telephone;
	private String name;
	private String creditCard;
	private String debitCard;
	private String cashReceipt;
	private String nationalPension;
	private String medicalExpense;
	private String educationExpense;
	private String income;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCreditCard() {
		return creditCard;
	}
	public void setCreditCard(String creditCard) {
		this.creditCard = creditCard;
	}
	public String getDebitCard() {
		return debitCard;
	}
	public void setDebitCard(String debitCard) {
		this.debitCard = debitCard;
	}
	public String getCashReceipt() {
		return cashReceipt;
	}
	public void setCashReceipt(String cashReceipt) {
		this.cashReceipt = cashReceipt;
	}
	public String getNationalPension() {
		return nationalPension;
	}
	public void setNationalPension(String nationalPension) {
		this.nationalPension = nationalPension;
	}
	public String getMedicalExpense() {
		return medicalExpense;
	}
	public void setMedicalExpense(String medicalExpense) {
		this.medicalExpense = medicalExpense;
	}
	public String getEducationExpense() {
		return educationExpense;
	}
	public void setEducationExpense(String educationExpense) {
		this.educationExpense = educationExpense;
	}
	
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	@Override
	public String toString() {
		return "HometaxVO [id=" + id + ", password=" + password + ", telephone=" + telephone + ", name=" + name
				+ ", creditCard=" + creditCard + ", debitCard=" + debitCard + ", cashReceipt=" + cashReceipt
				+ ", nationalPension=" + nationalPension + ", medicalExpense=" + medicalExpense + ", educationExpense="
				+ educationExpense + ", income=" + income + "]";
	}
	
	
	
}

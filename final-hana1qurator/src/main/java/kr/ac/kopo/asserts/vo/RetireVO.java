package kr.ac.kopo.asserts.vo;

public class RetireVO {
	
	private int age;
	private int retireAge;
	private int expectedAge;
	private int preparePeriod;
	private int retirePeriod;
	
	private int resultPreparedAmount;
	private int resultPensionAmount;
	private int resultSavingAmount;
	
	private int resultRequiredAmount;
	

	private int allAsserts;
	private int income;
	private int outcome;
	private int loanMoney;
	private String expireDate;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getRetireAge() {
		return retireAge;
	}
	public void setRetireAge(int retireAge) {
		this.retireAge = retireAge;
	}
	public int getExpectedAge() {
		return expectedAge;
	}
	public void setExpectedAge(int expectedAge) {
		this.expectedAge = expectedAge;
	}
	public int getPreparePeriod() {
		return preparePeriod;
	}
	public void setPreparePeriod(int preparePeriod) {
		this.preparePeriod = preparePeriod;
	}
	public int getRetirePeriod() {
		return retirePeriod;
	}
	public void setRetirePeriod(int retirePeriod) {
		this.retirePeriod = retirePeriod;
	}
	public int getResultPreparedAmount() {
		return resultPreparedAmount;
	}
	public void setResultPreparedAmount(int resultPreparedAmount) {
		this.resultPreparedAmount = resultPreparedAmount;
	}
	public int getResultPensionAmount() {
		return resultPensionAmount;
	}
	public void setResultPensionAmount(int resultPensionAmount) {
		this.resultPensionAmount = resultPensionAmount;
	}
	public int getResultSavingAmount() {
		return resultSavingAmount;
	}
	public void setResultSavingAmount(int resultSavingAmount) {
		this.resultSavingAmount = resultSavingAmount;
	}
	public int getResultRequiredAmount() {
		return resultRequiredAmount;
	}
	public void setResultRequiredAmount(int resultRequiredAmount) {
		this.resultRequiredAmount = resultRequiredAmount;
	}
	
	public int getAllAsserts() {
		return allAsserts;
	}
	public void setAllAsserts(int allAsserts) {
		this.allAsserts = allAsserts;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public int getOutcome() {
		return outcome;
	}
	public void setOutcome(int outcome) {
		this.outcome = outcome;
	}
	public int getLoanMoney() {
		return loanMoney;
	}
	public void setLoanMoney(int loanMoney) {
		this.loanMoney = loanMoney;
	}
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	@Override
	public String toString() {
		return "RetireVO [age=" + age + ", retireAge=" + retireAge + ", expectedAge=" + expectedAge + ", preparePeriod="
				+ preparePeriod + ", retirePeriod=" + retirePeriod + ", resultPreparedAmount=" + resultPreparedAmount
				+ ", resultPensionAmount=" + resultPensionAmount + ", resultSavingAmount=" + resultSavingAmount
				+ ", resultRequiredAmount=" + resultRequiredAmount + ", allAsserts=" + allAsserts + ", income=" + income
				+ ", outcome=" + outcome + ", loanMoney=" + loanMoney + ", expireDate=" + expireDate + "]";
	}
	
	
	
	
	
	
	
	
}

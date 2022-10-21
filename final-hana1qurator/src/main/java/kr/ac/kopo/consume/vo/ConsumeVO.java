package kr.ac.kopo.consume.vo;

public class ConsumeVO {
	private int fashion;
	private int cafe;
	private int food;
	private int driving;
	private int health;
	private int living;
	public int getFashion() {
		return fashion;
	}
	public void setFashion(int fashion) {
		this.fashion = fashion;
	}
	public int getCafe() {
		return cafe;
	}
	public void setCafe(int cafe) {
		this.cafe = cafe;
	}
	public int getFood() {
		return food;
	}
	public void setFood(int food) {
		this.food = food;
	}
	public int getDriving() {
		return driving;
	}
	public void setDriving(int driving) {
		this.driving = driving;
	}
	public int getHealth() {
		return health;
	}
	public void setHealth(int health) {
		this.health = health;
	}
	public int getLiving() {
		return living;
	}
	public void setLiving(int living) {
		this.living = living;
	}
	@Override
	public String toString() {
		return "ConsumeVO [fashion=" + fashion + ", cafe=" + cafe + ", food=" + food + ", driving=" + driving
				+ ", health=" + health + ", living=" + living + "]";
	}
	
	

}

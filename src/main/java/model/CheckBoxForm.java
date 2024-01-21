package model;

public class CheckBoxForm {
	private String email;
	private int[] electricityID;
	private int[] waterID;
	private int[] recycleID;

	public CheckBoxForm() {
	}

	public int[] getElectricityID() {
		return electricityID;
	}

	public void setElectricityID(int[] electricityID) {
		this.electricityID = electricityID;
	}

	public int[] getWaterID() {
		return waterID;
	}

	public void setWaterID(int[] waterID) {
		this.waterID = waterID;
	}

	public int[] getRecycleID() {
		return recycleID;
	}

	public void setRecycleID(int[] recycleID) {
		this.recycleID = recycleID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}


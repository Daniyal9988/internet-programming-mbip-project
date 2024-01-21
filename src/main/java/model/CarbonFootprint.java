package model;

public class CarbonFootprint {
	private int  id;
	private String email;
	private int electricity_consumtion;
	private int water_consumtion;
	private int recycle_consumtion;
	public CarbonFootprint() {
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getElectricity_consumtion() {
		return electricity_consumtion;
	}
	public void setElectricity_consumtion(int electricity_consumtion) {
		this.electricity_consumtion = electricity_consumtion;
	}
	public int getWater_consumtion() {
		return water_consumtion;
	}
	public void setWater_consumtion(int water_consumtion) {
		this.water_consumtion = water_consumtion;
	}
	public int getRecycle_consumtion() {
		return recycle_consumtion;
	}
	public void setRecycle_consumtion(int recycle_consumtion) {
		this.recycle_consumtion = recycle_consumtion;
	}
	
	
	
}

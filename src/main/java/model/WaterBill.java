package model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Blob;

public class WaterBill {
	private int id;
	private String email;
	private int water;
	private Blob file;
	private String vstatus;
	private String submit_date;
	
	public WaterBill() {
		super();
	}
	public WaterBill(int id, String email, int water, Blob file, String vstatus, String submit_date) {
		super();
		this.id = id;
		this.email = email;
		this.water = water;
		this.file = file;
		this.vstatus = vstatus;
		this.submit_date = submit_date;
	}
	public int getId() {
		return id;
	}
	public String getBillName()
	{
		return "Water Bill";
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
	public int getWater() {
		return water;
	}
	public void setWater(int water) {
		this.water = water;
	}
	public Blob getFile() {
		return file;
	}
	public void setFile(Blob file) {
		this.file = file;
	}
	public String getVstatus() {
		return vstatus;
	}
	public void setVstatus(String vstatus) {
		this.vstatus = vstatus;
	}
	public String getSubmit_date() {
		return submit_date;
	}
	public void setSubmit_date(String submit_date) {
		this.submit_date = submit_date;
	}
	
	public String getBillFile() throws SQLException, IOException {
		if (file == null) {
			// Handle the case where activityFile is null, e.g., return an error message or
			// throw an exception
			return "Error: Activity file is null";
		}
		String downloadsFolder = System.getProperty("user.home")
				+ "\\Documents\\Project\\src\\main\\webapp\\WEB-INF\\resources\\files\\";
		String fileName = this.id + "water" + this.submit_date + ".pdf";
		String filePath = downloadsFolder + fileName;

		try (InputStream inputStream = file.getBinaryStream();
				FileOutputStream outputStream = new FileOutputStream(new File(filePath))) {

			byte[] buffer = new byte[4096];
			int bytesRead;

			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outputStream.write(buffer, 0, bytesRead);
			}

			return "http://localhost:8080/Project/resources/files/" + fileName;
		}
	}
}

package model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;
import java.io.InputStream;

import com.mysql.cj.jdbc.Blob;

public class Activity {
	@Override
	public String toString() {
		return "Activity [id=" + id + ", activityName=" + activityName + ", activityDate=" + activityDate
				+ ", activityLocation=" + activityLocation + "]";
	}

	private int id;
	private String activityName;
	private String activityDate;
	private String activityLocation;
	private Blob activityFile;

	// Constructors, getters, and setters

	public Activity() {
	}

	public Activity(int id, String activityName, String activityDate, String activityLocation, Blob activityFile)
			throws SQLException {
		this.id = id;
		this.activityName = activityName;
		this.activityDate = activityDate;
		this.activityLocation = activityLocation;
		this.activityFile = activityFile;
	}

	// Getters and Setters

	public Blob getActivityFile() {
		return activityFile;
	}
	
	public void setActivityFile(Blob activityFile) {
		this.activityFile = activityFile;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getActivityName() {
		return activityName;
	}

	public void setActivityName(String activityName) {
		this.activityName = activityName;
	}

	public String getActivityDate() {
		return activityDate;
	}

	public void setActivityDate(String activityDate) {
		this.activityDate = activityDate;
	}

	public String getActivityLocation() {
		return activityLocation;
	}

	public void setActivityLocation(String activityLocation) {
		this.activityLocation = activityLocation;
	}
	
	public String downloadPdf() throws SQLException, IOException {
		 if (activityFile == null) {
		        // Handle the case where activityFile is null, e.g., return an error message or throw an exception
		        return "Error: Activity file is null";
		    }
		String downloadsFolder = System.getProperty("user.home") + "\\Documents\\Project\\src\\main\\webapp\\WEB-INF\\resources\\files\\";
        String fileName = this.id + this.activityName +".pdf";
        String filePath = downloadsFolder + fileName;

        try (InputStream inputStream = activityFile.getBinaryStream();
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

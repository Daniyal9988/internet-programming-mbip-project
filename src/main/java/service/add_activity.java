package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


import model.Activity;


@Service
public class add_activity {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void addActivity(String name, String date , String location, byte[] file) {
		System.out.print("File Uploaded Successfully : " + file);
		String sql1 = "INSERT INTO activity(activity_name, activity_date, activity_location, activity_file) VALUES (?, ?, ?, ?)";
		int row1 = jdbcTemplate.update(sql1, name,date,location,file);
		
	}
	public List<Activity> getAllActivities() {
        String sql = "SELECT * FROM activity";
        List<Activity> acitivtyList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Activity>(Activity.class));
        return acitivtyList;
    }
	
}

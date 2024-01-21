package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.view.RedirectView;

import model.CarbonFootprint;
import model.ElectricityBIll;
import model.RecycleBill;
import model.UserReport;
import model.WaterBill;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CarbonFootprintDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void storeElectricityBill(String email, int electricity, byte[] file) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sql = "INSERT INTO electricity(email, electricity, file, vstatus, submit_date) VALUES (?, ?, ?, ?, ?);";
		int row = jdbcTemplate.update(sql, email, electricity, file, "PENDING", formatter.format(date));
	}

	public void storewaterbill(String email, int water, byte[] file) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sql = "INSERT INTO water(email, water, file, vstatus, submit_date) VALUES(?, ?, ?, ? , ?)";
		int row = jdbcTemplate.update(sql, email, water, file, "PENDING", formatter.format(date));
	}

	public void storerecyclebill(String email, int recycle, byte[] file) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String sql = "INSERT INTO recycle(email, recycle, file, vstatus, submit_date) VALUES(?, ?, ?, ?, ?)";
		int row = jdbcTemplate.update(sql, email, recycle, file, "PENDING", formatter.format(date));
	}

	public List<ElectricityBIll> getElectricityBill(String email) {
		String sql = "SELECT * FROM electricity WHERE email=?";
		List<ElectricityBIll> list = jdbcTemplate.query(sql,
				new BeanPropertyRowMapper<ElectricityBIll>(ElectricityBIll.class), email);
		return list;
	}
	
	public List<ElectricityBIll> getElectricityBillApproved(String email) {
		String sql = "SELECT * FROM electricity WHERE email=? AND vstatus='APPROVED'";
		List<ElectricityBIll> list = jdbcTemplate.query(sql,
				new BeanPropertyRowMapper<ElectricityBIll>(ElectricityBIll.class), email);
		return list;
	}
	
	public ElectricityBIll getElectricityBill(String email,int id) {
		String sql = "SELECT * FROM electricity WHERE email=? AND id=?";
		ElectricityBIll obj = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<ElectricityBIll>(ElectricityBIll.class), email,id);
		return obj;
	}

	public List<WaterBill> getWaterBill(String email) {
		String sql = "SELECT * FROM water WHERE email=?";
		List<WaterBill> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<WaterBill>(WaterBill.class), email);
		return list;
	}
	
	public List<WaterBill> getWaterBillApproved(String email) {
		String sql = "SELECT * FROM water WHERE email=? AND vstatus='APPROVED'";
		List<WaterBill> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<WaterBill>(WaterBill.class), email);
		return list;
	}
	
	public WaterBill getWaterBill(String email,int id) {
		String sql = "SELECT * FROM water WHERE email=? AND id=?";
		WaterBill obj = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<WaterBill>(WaterBill.class), email, id);
		return obj;
	}

	public List<RecycleBill> getRecycleBill(String email) {
		String sql = "SELECT * FROM recycle WHERE email=?";
		List<RecycleBill> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<RecycleBill>(RecycleBill.class), email);
		return list;
	}
	
	public List<RecycleBill> getRecycleBillApproved(String email) {
		String sql = "SELECT * FROM recycle WHERE email=? AND vstatus='APPROVED'";
		List<RecycleBill> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<RecycleBill>(RecycleBill.class), email);
		return list;
	}
	
	public List<UserReport> getUserReport(String email){
		System.out.println("getUserReport For Email=" + email);
		String sql = "SELECT * FROM user_reports WHERE email=?;";
		List<UserReport> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<UserReport>(UserReport.class), email);
		return list;
	}
	
	public List<UserReport> getUserWinnerOrder(String email){
		String sql = "SELECT * FROM user_reports ORDER BY electricity_consumtion,recycle_consumtion DESC";
		List<UserReport> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<UserReport>(UserReport.class));
		return list;
	}
	
	public RecycleBill getRecycleBill(String email,int id) {
		String sql = "SELECT * FROM recycle WHERE email=? AND id=?";
		RecycleBill obj = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<RecycleBill>(RecycleBill.class), email, id);
		return obj;
	}

	public void updateElectricityStatusApproved(String email, int id) {
		System.out.println(email + "In DB query");
		String sql = "UPDATE electricity SET vstatus = ? WHERE email=?;";
		int row = jdbcTemplate.update(sql, "APPROVED", email);
		System.out.println(row);
	}

	public void updateElectricityStatusRejected(String email, int id) {
		System.out.println(email + "In DB query");
		String sql = "UPDATE electricity SET vstatus = ? WHERE email=? AND id=?;";
		int row = jdbcTemplate.update(sql, "REJECTED", email, id);
		System.out.println(row);
	}

	public void updateWaterStatusApproved(String email, int id) {
		System.out.println(email + "In DB query");
		String sql = "UPDATE water SET vstatus = ? WHERE email=? AND id=?;";
		int row = jdbcTemplate.update(sql, "APPROVED", email, id);
		System.out.println(row);
	}

	public void updateWaterStatusRejected(String email, int id) {
		System.out.println(email + "In DB query");
		String sql = "UPDATE water SET vstatus = ? WHERE email=? AND id=?;";
		int row = jdbcTemplate.update(sql, "REJECTED", email, id);
		System.out.println(row);
	}

	public void updateRecycleStatusApproved(String email, int id) {
		System.out.println(email + "In DB query");
		String sql = "UPDATE recycle SET vstatus = ? WHERE email=? AND id=?;";
		int row = jdbcTemplate.update(sql, "APPROVED", email, id);
		System.out.println(row);
	}

	public void updateRecycleStatusRejected(String email, int id) {
		System.out.println(email + "In DB query");
		String sql = "UPDATE recycle SET vstatus = ? WHERE email=? AND id=?;";
		int row = jdbcTemplate.update(sql, "REJECTED", email, id);
		System.out.println(row);
	}
	
	
	public void generateNewReport(String email,int totalElecConsumption, int totalWaterConsumption,int totalRecConsumption) {
		System.out.println(email + "In DB query" + "generateNewReport");
		String sql = "INSERT INTO user_reports(email, electricity_consumtion, water_consumtion,recycle_consumtion) VALUES (?, ?, ?, ?)";
		int row = jdbcTemplate.update(sql, email, totalElecConsumption,totalWaterConsumption,totalRecConsumption);
	}	
	
	public List<CarbonFootprint> getCarbonReport(String email){
		System.out.println("getUserReport For Email=" + email);
		String sql = "SELECT * FROM user_reports WHERE email=?;";
		List<CarbonFootprint> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<CarbonFootprint>(CarbonFootprint.class), email);
		return list;
	}
}

package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import model.User;

@Service
public class UserDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public String createUser(String authority,String fullName, String dob,Integer phone,String address,String email,String password) {

		String sql1 = "INSERT INTO users(email, password, enabled) VALUES (?, ?, ?)";
		String sql2 = "INSERT INTO authorities(email,authority) VALUES (?, ?)";
		String sql3 = "INSERT INTO user_info(email, fullname, dob, phone, address) VALUES (?, ?, ?, ?, ?)";
		int row1 = jdbcTemplate.update(sql1, email, new BCryptPasswordEncoder().encode(password), true);
		int row2 = jdbcTemplate.update(sql2, email, authority);
		int row3 = jdbcTemplate.update(sql3,email, fullName,dob, phone, address);
		return "Rows Effected :" + row1 + row2 +row3;
	}
	
	public List<User> loadUserInfoForBillApproval() {
		String sql = "SELECT authorities.email, user_info.fullname, user_info.dob, user_info.phone, user_info.address FROM authorities RIGHT JOIN user_info ON authorities.email = user_info.email;";
		List<User> list = jdbcTemplate.query(sql,new BeanPropertyRowMapper<User>(User.class));
		return list;
	}
	
	public List<User> viewUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String userEmail = authentication.getName();
	    String sql = "SELECT * FROM user_info WHERE email = ?";
	    List<User> list = jdbcTemplate.query(sql, new Object[]{userEmail}, new BeanPropertyRowMapper<>(User.class));   
	    return list;
	}
	
	public String updateUser(String fullName, String dob,Integer phone,String address,String email) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	    String userEmail = authentication.getName();
	    String sql3 = "UPDATE user_info SET fullname = ?, dob = ?, phone = ?, address = ? WHERE email = ?";
	    int row3 = jdbcTemplate.update(sql3, fullName, dob, phone, address, userEmail);
	    return "Rows Effected: " + row3;
	}

	
}

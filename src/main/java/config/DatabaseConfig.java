package config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.annotation.PreDestroy;
import javax.sql.DataSource;

@Configuration
public class DatabaseConfig {

    private final DataSource dataSource;

    @Autowired
    public DatabaseConfig() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/springjdbc1");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        this.dataSource = dataSource;
    }

    @Bean
    public DataSource dataSource() {
        return dataSource;
    }

    @Bean
    @Autowired
    public JdbcTemplate jdbcTemplate(DataSource dataSource) {
        return new JdbcTemplate(dataSource);
    }

    @PreDestroy
    public void cleanUp() {
        // Attempt to deregister the JDBC driver to prevent memory leaks
        try {
            java.sql.DriverManager.deregisterDriver(java.sql.DriverManager.getDriver("jdbc:mysql://localhost:3306/springdb"));
        } catch (Exception e) {
            // Handle the exception as needed
        }

        // Attempt to stop the abandoned connection cleanup thread
        try {
            com.mysql.cj.jdbc.AbandonedConnectionCleanupThread.checkedShutdown();
        } catch (Exception e) {
            // Handle the exception as needed
        }
    }
}

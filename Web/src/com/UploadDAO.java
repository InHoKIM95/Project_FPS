package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UploadDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public int insert(UploadDTO dto) {
		int cnt = 0;
		
		getConnection();
		
		
		String sql = "insert into log(num, filename, time_in) values(log_num.nextval,?,systimestamp)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getFilename());
			

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public void update(UploadDTO dto3) {
		getConnection();
		
		String sql = "update log set time_out=systimestamp, time_dif=?, file_type=?, width_pic=?, height_pic=? where filename=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto3.getTime_dif());
			psmt.setString(2, dto3.getFile_type());
			psmt.setInt(3, dto3.getWidth_pic());
			psmt.setInt(4, dto3.getHeight_pic());
			psmt.setString(5, dto3.getFilename());
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		
	}

	public void delete() {
		getConnection();
		String sql = "delete upload";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		} finally {
			close();
		}

	}
}

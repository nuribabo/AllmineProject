package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CartDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt;
	ResultSet rs;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@121.147.213.53:1521:xe";
			String db_id = "pro2";
			String db_pw = "pro2";
			conn = DriverManager.getConnection(url,db_id,db_pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) {
				conn.close();
			}
			if(conn != null) {
				conn.close();
			}
			if(psmt != null) {
				psmt.close();
			}
		}catch (Exception e) {
			
		}
	}
	
	
	
	
	public void insert() { // 장바구니 담기 메소드
		conn();
		String sql = "select * from product where product_id";
		try {
			psmt = conn.prepareStatement(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int remove(String product_id) {
		conn();
		String sql = "delete from cart where product_id =?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,product_id );
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
}

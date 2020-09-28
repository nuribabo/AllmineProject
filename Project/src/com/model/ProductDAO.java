package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class ProductDAO {
	
	Connection conn =null;
	ResultSet rs = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	
	public void conn() {
		
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String db_url = "jdbc:oracle:thin:121.147.213.53:1521:xe";
				String db_id = "pro2";
				String db_pw = "pro2";
				conn = DriverManager.getConnection(db_url, db_id, db_pw);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}
	
	public void close() {
		try {
			if(rs != null) {
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

	
	//제품 이름으로 검색하기
	public ProductDTO select_by_name(String name) {
		// TODO Auto-generated method stub
		ProductDTO p = new ProductDTO();
		conn();
		try {
			String sql = "select * from product where name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				p.setProduct_id(rs.getString("id"));
				p.setProduct_name(rs.getString("name"));
				p.setPrice(rs.getString("price"));
				p.setDiscount_rate(rs.getString("discount_rate"));
				p.setWeight(rs.getString("weight"));
				p.setOrigin(rs.getString("origin"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return p;
	}
	

	//제품올리기
	public void put_product(ProductDTO dto) {
		
		conn();
		try {
			String sql = "insert into product values (?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getProduct_id());
			psmt.setString(2,dto.getProduct_name());
			psmt.setString(3,dto.getPrice());
			psmt.setString(4,dto.getDiscount_rate());
			psmt.setString(5,dto.getWeight());
			psmt.setString(6,dto.getOrigin());
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
	}
	
	//제품 삭제하기
	public void delete_game(String name) {
		
		conn();
		try {
			String sql = "delete product where name=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			psmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	
}

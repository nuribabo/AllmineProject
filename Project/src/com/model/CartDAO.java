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
	ProductDTO pdto = null;
	
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
	
	
	
	
	public ProductDTO select (String id) { //장바구니에 넣을 아이템 찾아오기
		conn();
		try {
			String sql = "select * from product where product_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			while(rs.next()) {
				String product_id = rs.getString(1);
				String product_name = rs.getString(2);
				int price = rs.getInt(3);
				int discount_rate = rs.getInt(4);
				int weight = rs.getInt(5);
				String origin = rs.getString(6);
				String img_addr = rs.getString(7);
				pdto = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin, img_addr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}return pdto;
	}
	public int insert_cart(CartDTO cdto) {
		
		try {
			conn();
			String sql = "insert into cart_product(QUANTITY, MEMBER_ID,PRODUCT_ID) values(?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cdto.getQuantity());
			psmt.setString(2, cdto.getMember_id());
			psmt.setString(3, cdto.getProduct_id());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return cnt;
		
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

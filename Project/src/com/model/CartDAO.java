package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CartDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt;
	ResultSet rs;
	ProductDTO pdto = null;
	ArrayList<CartDTO> list = new ArrayList<CartDTO>();
	
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
	// 장바구에 저장;
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
	public ArrayList<CartDTO> cartView(String name){
		try {
			conn();
			String sql = "select p.img_addr, p.product_name, p.product_id, p.price, p.discount_rate, cp.quantity from cart_product cp, product p, member m where ? = m.member_id and p.product_id = cp.product_id";
			
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, name);
			rs = psmt.executeQuery();
			while(rs.next()) {
				String img_addr = rs.getString(1);
				String product_name = rs.getString(2);
				String product_id=rs.getString(3);
				int price = rs.getInt(4);
				int discount_rate = rs.getInt(5);
				int quantity = rs.getInt(6);
				CartDTO dto = new CartDTO(product_name, product_id, quantity ,img_addr, price, discount_rate);
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return list;
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

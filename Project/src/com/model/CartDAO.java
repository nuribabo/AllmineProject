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
	CartDTO check = null;
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
		} finally {
			close();
		}
		
		return pdto;
	}
	// 장바구니에 같은 물건 있는지 확인
	public CartDTO cartcheck(CartDTO cdto) {
		
		try {
			conn();
			String sql = "select * from cart_product where member_id = ? and product_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cdto.getMember_id());
			psmt.setString(2, cdto.getProduct_id());
			rs = psmt.executeQuery();
			if(rs.next()) {
				int quantity = rs.getInt(1);
				String member_id = rs.getString(2);
				String product_id = rs.getString(3);
				check = new CartDTO( member_id, product_id, quantity);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return check;
		
	}
	public int update_cart(CartDTO cdto) {
		
		try {
			conn();
			String sql = "update cart_product set quantity = ? where member_id = ? and product_id = ? ";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cdto.getQuantity());
			psmt.setString(2, cdto.getMember_id());
			psmt.setNString(3, cdto.getProduct_id());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
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
		}finally {
			close();
		}
		return cnt;
		
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
		} finally {
			close();
		}
		return list;
	}
	public int delete_all(String id) {
		
		try {
			conn();
			String sql = "delete from CART_PRODUCT where MEMBER_ID = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		} return cnt;
	}
	
	public int delete_select (CartDTO info) {
		
		try {
			conn();
			String sql = "delete * from cart_product where member_id = ? and product_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, info.getMember_id());
			psmt.setNString(2, info.getProduct_id());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		} return cnt;
	}
	
	
	
	
	
	public int remove(CartDTO cdto) {
		conn();
		String sql = "delete from cart_product where product_id =? and member_id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cdto.getProduct_id());
			psmt.setString(2, cdto.getMember_id());
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	
	//plus 버튼 
	
	public int quan_plus(String m, String p) {
		conn();
		try {
			String sql = "update cart_product set quantity = quantity + 1 where member_id = ? and product_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, m);
			psmt.setString(2, p);
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		} return cnt;
		
	}
	
	public int quan_minus(String m, String p) {
		conn();
		try {
			String sql = "update cart_product set quantity = quantity - 1 where member_id = ? and product_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, m);
			psmt.setString(2, p);
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		} return cnt;
		
	}
	
//	public int quan_update(CartDTO cdto) {
//		conn();
//		try {
//			String sql = "update cart_product set quantity = ? where member_id = ? and product_id = ?";
//			psmt = conn.prepareStatement(sql);
//			psmt.setInt(1, cdto.getQuantity());
//			psmt.setString(2, cdto.getMember_id());
//			psmt.setNString(3, cdto.getProduct_id());
//			cnt = psmt.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}return cnt;
//		
//	}
	
	public int cart_product_quan(String id) {
		conn();
		int ans = -1;
		try {
			String sql = "select quantity from cart_product where member_id = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			if (rs != null) {
				ans = rs.getInt(3);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		} return ans;
		
	}
	
	
}

package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;




public class ProductDAO {
	
	Connection conn =null;
	ResultSet rs = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ArrayList<ProductDTO> list = new ArrayList<ProductDTO>() ;
	ProductDTO p = new ProductDTO();
	public void conn() {
		
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String db_url = "jdbc:oracle:thin:@121.147.213.53:1521:xe";
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
	   public ArrayList<ProductDTO> select_by_name(String name) {
	      // TODO Auto-generated method stub
	      
	      conn();
	      try {
	         String sql = "select * from product where product_name like ?";
	         psmt = conn.prepareStatement(sql);
	         psmt.setString(1,'%'+name+'%');
	         ResultSet rs = psmt.executeQuery();
	         while (rs.next()) {
	            String product_id = rs.getString(1);
	            System.out.println(product_id);
	            String product_name = rs.getString(2);
	            int price = rs.getInt(3);
	            int discount_rate = rs.getInt(4);
	            int weight = rs.getInt(5);
	            String origin = rs.getString(6);
	            String IMG_ADDR = rs.getString(7);
	            ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
	            list.add(item);
	         }

	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
				close();
			}
	      return list;
	   }
	
	
	//제품 이름으로 검색하기
	public ProductDTO select_by_name2(String name) {
		// TODO Auto-generated method stub
		ProductDTO item = null;
		conn();
		try {
			String sql = "select * from product where product_name = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,name);
			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {
				String product_id = rs.getString(1);
				String product_name = rs.getString(2);
				int price = rs.getInt(3);
				int discount_rate = rs.getInt(4);
				int weight = rs.getInt(5);
				String origin = rs.getString(6);
				String IMG_ADDR = rs.getString(7);
				item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return item;
	}
	// 전체 상품 검색
	
	public ArrayList<ProductDTO> select_by_All() {
		conn();
		try {
			String sql = "select * from product";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				String product_id = rs.getString(1);
				String product_name = rs.getString(2);
				int price = rs.getInt(3);
				int discount_rate = rs.getInt(4);
				int weight = rs.getInt(5);
				String origin = rs.getString(6);
				String IMG_ADDR = rs.getString(7);
				ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
				list.add(item);	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	

	//제품올리기
	public void put_product(ProductDTO dto) {
		conn();
		try {
			String sql = "insert into product values (?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getProduct_id());
			psmt.setString(2,dto.getProduct_name());
			psmt.setInt(3,dto.getPrice());
			psmt.setInt(4,dto.getDiscount_rate());
			psmt.setInt(5,dto.getWeight());
			psmt.setString(6,dto.getOrigin());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
		} finally {
			close();
		}
	}

	
	
	public ArrayList<ProductDTO> select_by_Fruit(String cnt) {
		conn();
		try {
			String sql = "select * from Product where product_id like ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cnt+"%");
			rs = psmt.executeQuery();
			while (rs.next()) {
				String product_id = rs.getString(1);
				String product_name = rs.getString(2);
				int price = rs.getInt(3);
				int discount_rate = rs.getInt(4);
				int weight = rs.getInt(5);
				String origin = rs.getString(6);
				String IMG_ADDR = rs.getString(7);
				ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
				list.add(item);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	
	//할인율 높은 순서대로
	   
	public ArrayList<ProductDTO> select_by_discount_rate_Desc() {
	      conn();
	      try {
	         
	         String sql = "select * from product ORDER BY discount_rate DESC";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         
	         while (rs.next()) {
	            String product_id = rs.getString(1);
	            String product_name = rs.getString(2);
	            int price = rs.getInt(3);
	            int discount_rate = rs.getInt(4);
	            int weight = rs.getInt(5);
	            String origin = rs.getString(6);
	            String IMG_ADDR = rs.getString(7);
	            ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
	            list.add(item);
	            
	            
	         }
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      
	      return list;
	   }
	   
	   // 할인율 낮은 순서대로
	   
	   public ArrayList<ProductDTO> select_by_discount_rate_Asc() {
	      // TODO Auto-generated method stub
	      conn();
	      try {
	         
	         String sql = "select * from product ORDER BY discount_rate ASC";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         
	         while (rs.next()) {
	            String product_id = rs.getString(1);
	            String product_name = rs.getString(2);
	            int price = rs.getInt(3);
	            int discount_rate = rs.getInt(4);
	            int weight = rs.getInt(5);
	            String origin = rs.getString(6);
	            String IMG_ADDR = rs.getString(7);
	            ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
	            list.add(item);
	            
	            
	         }
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      
	      return list;
	   }
	   //가격 높은 순서대로
	   public ArrayList<ProductDTO> select_by_Price_Desc() {
	      conn();
	      try {
	         
	         String sql = "select * from product ORDER BY price-price*discount_rate/100.0 DESC";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         
	         while (rs.next()) {
	            String product_id = rs.getString(1);
	            String product_name = rs.getString(2);
	            int price = rs.getInt(3);
	            int discount_rate = rs.getInt(4);
	            int weight = rs.getInt(5);
	            String origin = rs.getString(6);
	            String IMG_ADDR = rs.getString(7);
	            ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
	            list.add(item);
	            
	            
	         }
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      
	      return list;
	   }
	   
	   
	   //가격 낮은 순서대로
	   
	   public ArrayList<ProductDTO> select_by_Price_Asc() {
	      conn();
	      try {
	         
	         String sql = "select * from product ORDER BY price-price*discount_rate/100.0 ASC";
	         psmt = conn.prepareStatement(sql);
	         rs = psmt.executeQuery();
	         
	         while (rs.next()) {
	            String product_id = rs.getString(1);
	            String product_name = rs.getString(2);
	            int price = rs.getInt(3);
	            int discount_rate = rs.getInt(4);
	            int weight = rs.getInt(5);
	            String origin = rs.getString(6);
	            String IMG_ADDR = rs.getString(7);
	            ProductDTO item = new ProductDTO(product_id, product_name, price, discount_rate, weight, origin,IMG_ADDR);
	            list.add(item);
	            
	            
	         }
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      
	      return list;
	   }

	
	
	

	
}

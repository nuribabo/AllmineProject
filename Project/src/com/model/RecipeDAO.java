package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecipeDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt;
	ResultSet rs;
	RecipeDTO rdto = null;
	ArrayList<RecipeDTO> list = new ArrayList<RecipeDTO>() ;
	
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
	
	public ArrayList<RecipeDTO> recipe_import() {
	ArrayList<RecipeDTO> rdt = new ArrayList<RecipeDTO>();
	conn();
	try {
	String sql = "select * from recipe order by Recipe_name asc";
	psmt = conn.prepareStatement(sql);
	rs = psmt.executeQuery();
	while(rs.next()) {
		String r_name = rs.getString(1);
		String r_rate = rs.getString(2);
		String r_pref = rs.getString(3);
		String r_img = rs.getString(4);
		String r_ing = rs.getString(5);
		rdto = new RecipeDTO(r_name, r_rate, r_pref, r_img, r_ing);
		rdt.add(rdto); }
	}
	catch (SQLException e){
		e.printStackTrace();
	} finally {
		close();	
	}
	return rdt;
}
	
	
	//제품 이름으로 검색하기
		public ArrayList<RecipeDTO> select_by_name(String name) {
			conn();
			try {
				String sql = "select * from recipe where recipe_name like ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1,'%'+name+'%');
				ResultSet rs = psmt.executeQuery();
				while (rs.next()) {
					String recipe_name = rs.getString(1);
					System.out.println(recipe_name);
					String recipe_rate = rs.getString(2);
					String recipe_preference = rs.getString(3);
					String recipe_img = rs.getString(4);
					String recipe_ingredient = rs.getString(5);
					RecipeDTO item = new RecipeDTO(recipe_name, recipe_rate, recipe_preference, recipe_img, recipe_ingredient);
					list.add(item);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	
}

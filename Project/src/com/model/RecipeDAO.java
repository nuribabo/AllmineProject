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
	
	
// Connection
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
	
// Close
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
	
	
	
	
// 기본 레시피 정렬
	public ArrayList<RecipeDTO> recipe_import(String check) {
	ArrayList<RecipeDTO> rdt = new ArrayList<RecipeDTO>();
	try {
	conn();
		// 기본정렬
		if (check.equals("de")) {
			try {
				String sql = "select * from recipe order by Recipe_IMG desc";
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
				}
		}
		// 평점순정렬
		else if (check.equals("ra")) {
			try {
				String sql = "select * from recipe order by Recipe_rate desc";
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
				}	
		}
		// 선호도순 정렬
		else if (check.equals("pr")) {
			try {
				String sql = "select RECIPE_NAME, RECIPE_RATE, TO_NUMBER(replace(RECIPE_PREFERENCE, '명', '')) AS PRE, RECIPE_IMG, RECIPE_INGREDIENT FROM RECIPE\r\n" + 
							 "ORDER BY PRE DESC;";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				while(rs.next()) {
					String r_name = rs.getString(1);
					String r_rate = rs.getString(2);
					String r_pref = rs.getString(3)+"명";
					String r_img = rs.getString(4);
					String r_ing = rs.getString(5);
					rdto = new RecipeDTO(r_name, r_rate, r_pref, r_img, r_ing);
					rdt.add(rdto); }
			}
				catch (SQLException e){
					e.printStackTrace();
				}	
			}
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
		
// 제품이름을 받아서, 제품데이터 불러오기	
		public RecipeDTO recipe_one(String check) {
			conn();
			try {
				String sql = "select * from recipe where recipe_name = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, check);
				rs = psmt.executeQuery();
				if(rs.next()) {
					String r_name = rs.getString(1);
					String r_rate = rs.getString(2);
					String r_pref = rs.getString(3);
					String r_img = rs.getString(4);
					String r_ing = rs.getString(5);
					rdto = new RecipeDTO(r_name, r_rate, r_pref, r_img, r_ing);}
				}
				catch (SQLException e){
					e.printStackTrace();
				} finally {
					close();
				}
			return rdto;
		}
		
// Message 값 parameter 받아서 세션대로 메시지 올려주기
		public CommentVO comment(CommentVO cvo) {
			CommentVO some = null;
			
			
			return some;
		}

}

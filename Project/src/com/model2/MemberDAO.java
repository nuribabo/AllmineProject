package com.model2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	MemberDTO info = null;
	ResultSet rs = null;
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@121.147.213.53:1521:xe";
			String db_id = "pro2";
			String db_pw = "pro2";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void close() {
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
	
public int join(MemberDTO dto) {
		
		try {
			conn();
			String sql = "insert into member values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getPhone());
			psmt.setString(6, dto.getMember_addr1());
			psmt.setString(7, dto.getMember_addr2());
			psmt.setString(8, dto.getMember_addr3());
			psmt.setString(9, dto.getGender());
			psmt.setString(10, dto.getBirth());

			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
public MemberDTO login(MemberDTO dto) {
		
		try {
			conn();
			String sql = "select * from member where id = ? and pw = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				
				info = new MemberDTO(id,pw,name);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return info;
	}




}

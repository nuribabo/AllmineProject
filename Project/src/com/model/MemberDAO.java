package com.model;

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
			String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?)";
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
			String sql = "select * from member where member_id = ? and pw = ?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();

			if (rs.next()) {
				String id = rs.getString(1);
				String pw = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String member_addr1 = rs.getString(6);
				String member_addr2 = rs.getString(7);
				String member_addr3 = rs.getString(8);
				String gender = rs.getString(9);
				String birth = rs.getString(10);
				
				info = new MemberDTO(id, pw, name, email, phone, member_addr1, member_addr2, member_addr3, gender, birth);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return info;
	}

	public int update(MemberDTO dto) {

		try {
			conn();
			String sql = "select * from member where member_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			rs = psmt.executeQuery();
			if (rs.next()) {
				sql = "update member set pw=?,name=?,email=?,phone=?,member_addr1=?,member_addr2=?,member_addr3=?,gender=?,birth=? where member_id=?";
				psmt = conn.prepareStatement(sql);

				psmt.setString(1, dto.getPw());
				psmt.setString(2, dto.getName());
				psmt.setString(3, dto.getEmail());
				psmt.setString(4, dto.getPhone());
				psmt.setString(5, dto.getMember_addr1());
				psmt.setString(6, dto.getMember_addr2());
				psmt.setString(7, dto.getMember_addr3());
				psmt.setString(8, dto.getGender());
				psmt.setString(9, dto.getBirth());
				psmt.setString(10, dto.getMember_id());

				cnt = psmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

}

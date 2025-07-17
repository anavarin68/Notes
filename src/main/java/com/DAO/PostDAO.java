package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class PostDAO {

	private Connection conn;

	public PostDAO(Connection conn) {
		super();
		// TODO Auto-generated constructor stub
		this.conn = conn;
	}

	public boolean AddNotes(String ti, String co, int ui) {
		boolean f = false;
		try {
			String query = "insert into post(title,content,uid) values(?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(query);

			pstmt.setString(1, ti);
			pstmt.setString(2, co);
			pstmt.setInt(3, ui);

			int i = pstmt.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}

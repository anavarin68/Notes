package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.User.Post;

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

	// To get all posts from post Table
	public List<Post> getData(int id) {

		List<Post> list = new ArrayList<Post>();
		Post po;
		try {
			String query = "Select * from post where uid=?";
			PreparedStatement pstmt = conn.prepareStatement(query);

			pstmt.setInt(1, id);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				po = new Post();
				po.setId(rs.getInt(1));
				po.setTitle(rs.getString(2));
				po.setContent(rs.getString(3));
				po.setPdate(rs.getTimestamp(4));

				list.add(po);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}

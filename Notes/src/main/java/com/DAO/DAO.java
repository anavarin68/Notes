package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.User.UserDetails;

public class DAO {
	private Connection conn;

	public DAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(UserDetails us) {
		boolean f = false;
		try {
			String query = "insert into user (name, email, password) VALUES (?, ?, ?)";

			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, us.getName());
			ps.setString(2, us.getemail());
			ps.setString(3, us.getpassword());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}

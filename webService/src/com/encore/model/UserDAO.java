package com.encore.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.encore.util.OracleDBUtil;

public class UserDAO {

	public static UserVO selectUser(String id, String psw) {
		// TODO Auto-generated method stub
		UserVO user = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = OracleDBUtil.getConnection();
			pstmt = conn.prepareStatement("select * from userinfo where id = ? and password = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, psw);
			rs = pstmt.executeQuery();
			if (rs.next())
				user = new UserVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getDate(6), rs.getString(7));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, pstmt);
		}
		return user;
	}

}

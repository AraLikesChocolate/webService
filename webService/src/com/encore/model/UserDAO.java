package com.encore.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	

	public static List<UserVO> selectAllUser(){
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		String sql = "select * from userinfo order by 1";
//		UserVO user = null;
		List<UserVO> userlist = new ArrayList<>();
		
		
		try {
			conn = OracleDBUtil.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) 
				userlist.add(makeUser(rs));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, st);
		}
		return userlist;
		
 	}
	
	
	private static UserVO makeUser(ResultSet rs) throws SQLException {
		UserVO user = new UserVO();
		user.setId(rs.getString("id"));
		user.setPassword(rs.getString("password"));
		user.setName(rs.getString("name"));
		user.setEmail(rs.getString("email"));
		user.setGender(rs.getString("gender"));
		user.setBirthday(rs.getDate("birthday"));
		user.setUserinfo(rs.getString("userinfo"));
		
		return user;
	}


	public static int insertUser(UserVO user) {
		int count = 0;
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conn = OracleDBUtil.getConnection();
			st = conn.prepareStatement("insert into userinfo values(?,?,?,?,?,?,?)");
			st.setString(1, user.getId());
			st.setString(2, user.getPassword());
			st.setString(3, user.getName());
			st.setString(4, user.getEmail());
			st.setString(5, user.getGender());
			st.setDate(6, user.getBirthday());
			st.setString(7, user.getUserinfo());
			count = st.executeUpdate();
			System.out.println(count);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, st);
		}
		
		return count;
	}


	public static int updateUser(UserVO user) {
		int count = 0;
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conn = OracleDBUtil.getConnection();
			st = conn.prepareStatement(
					"update userinfo set password = ?, name = ?, email = ?, "
					+ " gender = ?, birthday =?, userinfo = ? "
					+ " where id = ?");
			st.setString(1, user.getPassword());
			st.setString(2, user.getName());
			st.setString(3, user.getEmail());
			st.setString(4, user.getGender());
			st.setDate(5, user.getBirthday());
			st.setString(6, user.getUserinfo());
			st.setString(7, user.getId());
			count = st.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, st);
		}
		
		return count;
	}

	public static boolean CheckUserId(String id) {
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		boolean bool = false;
        try {
        	//쿼리
            conn = OracleDBUtil.getConnection();
			st = conn.prepareStatement("select id from userinfo where id = ?");
		    st.setString(1, id);
		    rs = st.executeQuery();
		    if(rs.next() == false) {
		    	bool = true; //해당 아이디 존재
		    }
		    System.out.println(id + "  " + bool);
	        return bool;
		} catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
        	OracleDBUtil.dbDisconnect(conn, rs, st);
        }
	}
	
}

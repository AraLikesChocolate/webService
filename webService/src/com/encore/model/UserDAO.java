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
//			System.out.println(count);
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
		boolean isNew = false;
        try {
        	//쿼리
            conn = OracleDBUtil.getConnection();
			st = conn.prepareStatement("select id from userinfo where id = ?");
		    st.setString(1, id);
		    rs = st.executeQuery();
		    if(rs.next() == false) {
		    	isNew = true; //해당 아이디 존재X
		    }
		    System.out.println(id + "  " + isNew);
	        return isNew;
		} catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
        	OracleDBUtil.dbDisconnect(conn, rs, st);
        }
	}


	public static int deleteUser(String id) {
		int count =0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = OracleDBUtil.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement("delete from userinfo where id= ? ");
			pstmt.setString(1, id);
			count = pstmt.executeUpdate();
			System.out.println("id: " + id + "  count: " + count);
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, pstmt);
		}
		return count;
	}


	public static boolean checkUserPw(String id, String password) {
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		boolean isSame = true;
        try {
        	//쿼리
            conn = OracleDBUtil.getConnection();
			st = conn.prepareStatement("select * from userinfo where id = ? and password = ?");
		    st.setString(1, id);
		    st.setString(2, password);
		    rs = st.executeQuery();
		    if(rs.next() == false) {
		    	isSame = false; //해당 아이디 존재
		    }
		    System.out.println("id: " + id + "   psw: " + password + "  isSame??  " + isSame);
	        return isSame;
		} catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
        	OracleDBUtil.dbDisconnect(conn, rs, st);
        }

	}

	public static List<AddressVO> selectAllAdd() {
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		String sql = "select * from address order by 1";

		List<AddressVO> addlist = new ArrayList<>();
		
		
		try {
			conn = OracleDBUtil.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) 
				addlist.add(makeAdd(rs));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, st);
		}
		return addlist;
	
 	}

	private static AddressVO makeAdd(ResultSet rs) throws SQLException {
		AddressVO useradd = new AddressVO();
		useradd.setId(rs.getString("id"));
		useradd.setAddNo(rs.getInt("addNo"));
		useradd.setAddress(rs.getString("address"));
		useradd.setIsMain(rs.getString("isMain"));
		return useradd;
	}

	public static int insertUser(AddressVO useradd) {
		int count = 0;
		Connection conn = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			conn = OracleDBUtil.getConnection();
			st = conn.prepareStatement("insert into address values(?,?,?,?)");
			st.setString(1, useradd.getId());
			st.setInt(2, useradd.getAddNo());
			st.setString(3, useradd.getAddress());
			st.setString(4, useradd.getIsMain());
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


	public static int countRows(String id) {
		// TODO Auto-generated method stub
		int count = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			conn = OracleDBUtil.getConnection();
			psmt = conn.prepareStatement("select count(*) from address where id = ?");
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next())
				count = rs.getInt(1);
			System.out.println(count);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			OracleDBUtil.dbDisconnect(conn, rs, psmt);
		}
		
		return count;

	}


}

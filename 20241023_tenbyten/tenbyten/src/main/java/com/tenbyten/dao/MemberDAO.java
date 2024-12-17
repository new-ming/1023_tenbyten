package com.tenbyten.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.tenbyten.dto.MemberVO;


import util.DBManager;

public class MemberDAO {
	
	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	// 로그인 아이디 체크
	public int userCheck(String userid, String pwd) {
		String sql = "SELECT * FROM member WHERE userid = ?";
		
		// 1 : 아이디,비번 동일 0 : 아이디만 동일 -1 : 존재하지 않는 아이디
		int result = -1;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString("pwd") != null &&rs.getString("pwd").equals(pwd)) {
					result = 1; // 아이디 o, 비번 일치
				}else {
					result = 0; // 아이디는 존자하나 비번 불일치
				}
				
			}else {
				result = -1;	// 존재하지 않는 아이디
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
				
		
		return result;
	}
	
	
	// 아이디로 회원정보 가져오기
	public MemberVO getMember(String userid) {
		String sql = "SELECT * FROM member WHERE userid = ?";
		MemberVO mVo = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				
				mVo.setAdmin(rs.getInt("admin"));
				mVo.setEmail(rs.getString("email"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setUser_no(rs.getInt("user_no"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setUsername(rs.getString("username"));
				mVo.setBirth(rs.getString("birth"));

			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		
		return mVo;
	}
	
	// user_no로 회원정보 가져오기
		public MemberVO getMember(int user_no) {
			String sql = "SELECT * FROM member WHERE user_no = ?";
			MemberVO mVo = null;
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, user_no);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					mVo = new MemberVO();
					
					mVo.setAdmin(rs.getInt("admin"));
					mVo.setEmail(rs.getString("email"));
					mVo.setPhone(rs.getString("phone"));
					mVo.setPwd(rs.getString("pwd"));
					mVo.setUser_no(rs.getInt("user_no"));
					mVo.setUserid(rs.getString("userid"));
					mVo.setUsername(rs.getString("username"));
					mVo.setBirth(rs.getString("birth"));

				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			
			
			return mVo;
		}
	
	
	// 아이디 중복 체크
	// 데이터 베이스에 아이디 존재 1 , 존재하지 않을 때 -1
	public int confirmID(String userid) {
		int result = -1;
		String sql = "SELECT userid FROM member WHERE userid = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) result = 1;
			else result = -1;
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		

		return result;
	}

	// 회원가입정보 데이터베이스에 추가
	public int insertMember(MemberVO mVo) {
		int result= -1;
		
		String sql ="INSERT INTO MEMBER(username, userid, pwd, email, phone, birth, admin) "
				+ "VALUES(?,?,?,?,?,?,?)"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getUsername());
			pstmt.setString(2, mVo.getUserid());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getEmail());
			pstmt.setString(5, mVo.getPhone());
			pstmt.setDate(6, mVo.getBirth());
			pstmt.setInt(7, mVo.getAdmin());
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
	}
	
	
	
	
	// 패스워드 입력 확인
	public int pwdCheck(MemberVO mVo,String pwd) {
		int result =-1;
		String sql ="SELECT pwd FROM member WHERE user_no = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mVo.getUser_no() );
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pwd").equals(pwd)) {
					result = 1;
				}else {
					result = -1;
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return result;
	}
	
	// 멤버삭제
	public int memberDelete(int user_no) {
		int result = -1;
		String sql = "DELETE FROM member WHERE user_no =?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user_no );
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		
		return result;
	}
	
	// 멤버 정보 업데이트
	public int memberUpdate(int user_no, String pwd, String phone, String username, String email, String birth) {
		int result = -1;
		
		String sql ="UPDATE member SET pwd=?, phone=?, username=?, email=?, birth=? WHERE  user_no=?"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, phone);
			pstmt.setString(3, username);
			pstmt.setString(4,email);
			pstmt.setString(5,birth);
			pstmt.setInt(6, user_no);

			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
		}
		
		
		return result;
	}
	
	// 멤버 정보 업데이트 비밀번호 X
	public int memberUpdate(int user_no, String phone, String username, String email, String birth) {
		int result = -1;
		
		String sql ="UPDATE member SET phone=?, username=?, email=?, birth=? WHERE  user_no=?"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, username);
			pstmt.setString(3,email);
			pstmt.setString(4,birth);
			pstmt.setInt(5, user_no);

			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
		}
		
		
		return result;
	}
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
}

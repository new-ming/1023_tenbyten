package com.tenbyten.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.tenbyten.dto.ServiceBoardVO;

import util.DBManager;

public class ServiceBoardDAO {
	private ServiceBoardDAO() {}
	private static ServiceBoardDAO instance = new ServiceBoardDAO();
	public static ServiceBoardDAO getInstance() {
		return instance;
	}
	
	//serviceboard List가져오기
	public List<ServiceBoardVO> getServiceBoard(int user_no) {
		String sql = "SELECT * FROM serviceBoard WHERE user_no = ?";
		ServiceBoardVO sbVo = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ServiceBoardVO> sbVoList = new ArrayList<ServiceBoardVO>();
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user_no);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				sbVo = new ServiceBoardVO();
				sbVo.setBoard_no(rs.getInt("board_no"));
				sbVo.setContent(rs.getString("content"));
				sbVo.setEmail(rs.getString("email"));
				sbVo.setImgUrl1(rs.getString("imgUrl1"));
				sbVo.setImgUrl2(rs.getString("imgUrl2"));
				sbVo.setPhone(rs.getString("phone"));
				sbVo.setTitle(rs.getString("title"));
				sbVo.setServicetype(rs.getString("servicetype"));
				sbVo.setUser_no(rs.getInt("user_no"));
				sbVo.setWriteDate(rs.getDate("writedate"));
				sbVo.setState(rs.getString("state"));
				
				sbVoList.add(sbVo);

			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		
		return sbVoList;
	}

	
	//serviceboard 개별 내용 가져오기
	public ServiceBoardVO getServiceBoardView(int board_no) {
		ServiceBoardVO sbVo = null;
		String sql = "SELECT * FROM serviceBoard WHERE board_no = ?";

		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board_no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				sbVo = new ServiceBoardVO();
				sbVo.setBoard_no(rs.getInt("board_no"));
				sbVo.setContent(rs.getString("content"));
				sbVo.setEmail(rs.getString("email"));
				sbVo.setImgUrl1(rs.getString("imgUrl1"));
				sbVo.setImgUrl2(rs.getString("imgUrl2"));
				sbVo.setPhone(rs.getString("phone"));
				sbVo.setTitle(rs.getString("title"));
				sbVo.setServicetype(rs.getString("servicetype"));
				sbVo.setUser_no(rs.getInt("user_no"));
				sbVo.setWriteDate(rs.getDate("writedate"));
				sbVo.setState(rs.getString("state"));

				}
				
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
			
			
		return sbVo;
	}
	
	
	//serviceboard 새글 올리기
	public int insertServieBoard(ServiceBoardVO sbVo) {
		int result = -1;
		
		String sql ="INSERT INTO SERVICEBOARD(user_no, title, content, email, phone, servicetype, imgUrl1 ,imgUrl2, state) "
				+ "VALUES(?,?,?,?,?,?,?,?,?)"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,sbVo.getUser_no());
			pstmt.setString(2,sbVo.getTitle());
			pstmt.setString(3,sbVo.getContent());
			pstmt.setString(4,sbVo.getEmail());
			pstmt.setString(5,sbVo.getPhone());
			pstmt.setString(6,sbVo.getServicetype());
			pstmt.setString(7,sbVo.getImgUrl1());
			pstmt.setString(8,sbVo.getImgUrl2());
			pstmt.setString(9,sbVo.getState());
			result = pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt);
		}
		
		return result;
	}

	public int updateServieBoard(ServiceBoardVO sbVo, int user_no) {
		int result = -1;
		String sql ="UPDATE serviceBoard SET content=?, email=?, imgUrl1=?, imgUrl2=?, phone=?, title=? WHERE board_no =? AND  user_no=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		if(user_no == sbVo.getUser_no()) {
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, sbVo.getContent());
				pstmt.setString(2, sbVo.getEmail());
				pstmt.setString(3, sbVo.getImgUrl1());
				pstmt.setString(4, sbVo.getImgUrl2());
				pstmt.setString(5, sbVo.getPhone());
				pstmt.setString(6, sbVo.getTitle());
				pstmt.setInt(7, sbVo.getBoard_no());
				pstmt.setInt(8, sbVo.getUser_no());
				

				result = pstmt.executeUpdate();
				
			}catch (Exception e) {
				e.printStackTrace();
				
			}finally {
				DBManager.close(conn, pstmt);
			}
			
		}
		
	
		
		return result;
	}
	
	
	public int DeleteServieBoard(ServiceBoardVO sbVo, int user_no) {
		int result = -1;
		String sql = "DELETE FROM serviceBoard WHERE board_no =? AND user_no =?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		if(user_no == sbVo.getUser_no()) {
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sbVo.getBoard_no());
				pstmt.setInt(2, sbVo.getUser_no());
				result = pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
		
		}
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

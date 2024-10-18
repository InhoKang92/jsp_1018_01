package com.mdh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mdh.dto.ReviewVO;

import util.DBManager;

public class ReviewDAO {

	private ReviewDAO() {}
	private static ReviewDAO instance = new ReviewDAO();
	public static ReviewDAO getInstance() {
		return instance;
	}
	
	 public List<ReviewVO> selectAllBoards() {
			String sql = "select * from join_table order by num desc";
			List<ReviewVO> list = new ArrayList<ReviewVO>();
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				conn = DBManager.getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
					ReviewVO rVo = new ReviewVO();
					rVo.setNum(rs.getInt("num"));
					rVo.setUserid(rs.getString("userid"));
					rVo.setPass(rs.getString("pass"));
					rVo.setContent(rs.getString("content"));
					rVo.setReadcount(rs.getInt("readcount"));
					rVo.setWritedate(rs.getTimestamp("writedate"));
					rVo.setAddress(rs.getString("address"));
					rVo.setEmail(rs.getString("email"));
					list.add(rVo);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, stmt, rs);
			}
			return list;
		}
	 
	 public void insertBoard(ReviewVO rVo) {
			String sql = "insert into board(userid, pass, content) values(?, ?, ?)";
			    Connection conn = null;
			    PreparedStatement pstmt = null;
			    try {
			        conn = DBManager.getConnection();
			        pstmt = conn.prepareStatement(sql);
			        pstmt.setString(1, rVo.getUserid());
			        pstmt.setString(2, rVo.getPass());
			        pstmt.setString(3, rVo.getContent());
			        pstmt.executeUpdate();
			    } catch (SQLException e) {
			        e.printStackTrace();
			        throw new RuntimeException("글 작성 중에 오류가 발생했습니다.", e);
			    } finally {
			        DBManager.close(conn, pstmt);
			    }
	 }
		
	 public void updateReadCount(String num) {	
			String sql = "update board set readcount=readcount+1 where num=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, num);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
		}
	 
	 public ReviewVO selectOneBoardByNum(String num) {
			String sql = "select * from join_table where num = ?";
			ReviewVO rVo = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, num);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					rVo = new ReviewVO();
					rVo.setNum(rs.getInt("num"));
					rVo.setUserid(rs.getString("userid"));
					rVo.setPass(rs.getString("pass"));
					rVo.setContent(rs.getString("content"));
					rVo.setWritedate(rs.getTimestamp("writedate"));
					rVo.setReadcount(rs.getInt("readcount"));
					rVo.setAddress(rs.getString("address"));
					rVo.setEmail(rs.getString("email"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return rVo;
		}
	 
	 public ReviewVO selectOneBoardByUserid(String userid) {
			String sql = "select * from join_table where userid = ?";
			ReviewVO rVo = null;
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					rVo = new ReviewVO();
					rVo.setNum(rs.getInt("num"));
					rVo.setUserid(rs.getString("userid"));
					rVo.setPass(rs.getString("pass"));
					rVo.setContent(rs.getString("content"));
					rVo.setWritedate(rs.getTimestamp("writedate"));
					rVo.setReadcount(rs.getInt("readcount"));
					rVo.setAddress(rs.getString("address"));
					rVo.setEmail(rs.getString("email"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return rVo;
		}
	 
	  public void updateBoard(ReviewVO rVo) {
			String sql = "update board set userid=?, pass=?, "
					+ "content=? where num=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, rVo.getUserid());
				pstmt.setString(2, rVo.getPass());
				pstmt.setString(3, rVo.getContent());
				pstmt.setInt(4, rVo.getNum());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
		
		}
	  
	  public ReviewVO checkPassWord(String pass, String num) {
			String sql = "select * from board where pass=? and num=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ReviewVO rVo = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pass);
				pstmt.setString(2, num);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					rVo = new ReviewVO();
					rVo.setNum(rs.getInt("num"));
					rVo.setUserid(rs.getString("userid"));
					rVo.setPass(rs.getString("pass"));
					rVo.setContent(rs.getString("content"));
					rVo.setReadcount(rs.getInt("readcount"));
					rVo.setWritedate(rs.getTimestamp("writedate"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
			return rVo;
		}
	  
	  public void deleteBoard(String num) {
			String sql = "delete from board where num=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, num);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				DBManager.close(conn, pstmt);
			}
		}
	
}

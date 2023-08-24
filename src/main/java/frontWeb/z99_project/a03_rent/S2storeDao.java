package frontWeb.z99_project.a03_rent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import frontWeb.z99_project.vo.S2Store;

public class S2storeDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	// 지점 등록(추가)
	public int insertS2store(S2Store s2) {
		int S2Insert = 0;
		String sql = "INSERT INTO S2_STORE VALUES (?,?,?,?)";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, s2.getStore());
			pstmt.setString(2, s2.getStore_name());
			pstmt.setString(3, s2.getStore_address());
			pstmt.setString(4, s2.getStore_phone());
			S2Insert = pstmt.executeUpdate();
			if (S2Insert == 1) {
				con.commit();
				System.out.println("등록 성공");
			}
		} catch (SQLException e) {
			System.out.println("DB 오류: " + e.getMessage());
			DB.rollback(con);
		} catch (Exception e) {
			System.out.println("일반 오류: " + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return S2Insert;
	}
	
	public List<S2Store> s2list() {
	    List<S2Store> slist = new ArrayList<>();
	    String sql = "SELECT * FROM S2_STORE ORDER BY STORE";
	    
	    try {
	        con = DB.con();
	        pstmt = con.prepareStatement(sql); 
	        rs = pstmt.executeQuery();
	
	        while (rs.next()) {
	        	slist.add(new S2Store(
	                    rs.getInt("store"),
	                    rs.getString("store_name"),
	                    rs.getString("store_address"),
	                    rs.getString("store_phone")
	            ));
	        }
	    } catch (SQLException e) {
	        System.out.println("DB 관련 오류: " + e.getMessage());
	    } catch (Exception e) {
	        System.out.println("일반 오류: " + e.getMessage());
	    } finally {
	        DB.close(rs, pstmt, con);
	    }
	    return slist;
	}

	// 지점 삭제
	public void deleteS2store(int store) {
		int S2Delete = 0;
		String sql = "DELETE FROM S2_STORE WHERE store = ?";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, store);
			S2Delete = pstmt.executeUpdate();
			if (S2Delete > 0) {
				con.commit();
				System.out.println("삭제 성공");
			}
		} catch (SQLException e) {
			System.out.println("DB 오류: " + e.getMessage());
			DB.rollback(con);
		} catch (Exception e) {
			System.out.println("일반 오류: " + e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
	}

}

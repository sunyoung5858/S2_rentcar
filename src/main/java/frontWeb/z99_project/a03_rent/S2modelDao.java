package frontWeb.z99_project.a03_rent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import frontWeb.z99_project.vo.S2Model;

public class S2modelDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int insertS2model(S2Model s2m) {
		int S2mInsert = 0;
		String sql = "INSERT INTO S2_MODEL VALUES (?,?,?,?)";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, s2m.getModel());
			pstmt.setString(2, s2m.getBrand());
			pstmt.setString(3, s2m.getKind());
			pstmt.setInt(4, s2m.getExpense());
			S2mInsert = pstmt.executeUpdate();
			if (S2mInsert == 1) {
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
		return S2mInsert;
	}
	
	public List<S2Model> s2mlist() {
	    List<S2Model> mlist = new ArrayList<>();
	    String sql = "SELECT * FROM S2_MODEL ORDER BY MODEL";
	    
	    try {
	        con = DB.con();
	        pstmt = con.prepareStatement(sql); 
	        rs = pstmt.executeQuery();
	
	        while (rs.next()) {
	        	mlist.add(new S2Model(
	                    rs.getString("model"),
	                    rs.getString("brand"),
	                    rs.getString("kind"),
	                    rs.getInt("expense")
	            ));
	        }
	    } catch (SQLException e) {
	        System.out.println("DB 관련 오류: " + e.getMessage());
	    } catch (Exception e) {
	        System.out.println("일반 오류: " + e.getMessage());
	    } finally {
	        DB.close(rs, pstmt, con);
	    }
	    return mlist;
	}
}

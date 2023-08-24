package backWeb.a01_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import backWeb2.z01_vo.Salgrade;

	public class SalgradeDao {
	    private Connection con;
	    private PreparedStatement pstmt;
	    private ResultSet rs;
    
	    public Salgrade salgrade(int grade) {
	    	Salgrade salg = null;
	        String sql = "SELECT * FROM SALGRADE\r\n"
	              + "WHERE GRADE = ? ";
	        try {
	           con=DB.con();
	           pstmt = con.prepareStatement(sql);
	           pstmt.setInt(1, grade);
	           rs = pstmt.executeQuery();
	           if(rs.next()) {
	              salg = new Salgrade(
	                 rs.getInt("grade"),
	                 rs.getInt("losal"),
	                 rs.getInt("hisal")
	              );
	           }
	        } catch (SQLException e) {
	           System.out.println("DB:"+e.getMessage());
	        } catch (Exception e) {
	           System.out.println("기타:"+e.getMessage());
	        } finally {
	           DB.close(rs, pstmt, con);
	        }
	        
	        return salg;
	        
	     }
	     
	     public static void main(String[] args) {
	        // TODO Auto-generated method stub

	     }

	  }
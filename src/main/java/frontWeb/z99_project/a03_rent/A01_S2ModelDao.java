package frontWeb.z99_project.a03_rent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import frontWeb.z99_project.vo.Model;


public class A01_S2ModelDao {
   private Connection con;
   private PreparedStatement pstmt;
   private ResultSet rs;
   
   public int insertModel(Model mod) { //모델 추가
       int isInsert = 0;
       String sql = "INSERT INTO S2_MODEL values(?,?,?,?)";
       try {
           con = DB.con();
           con.setAutoCommit(false);
           pstmt = con.prepareStatement(sql);
           pstmt.setString(1, mod.getModel());
           pstmt.setString(2, mod.getBrand());
           pstmt.setString(3, mod.getKind());
           pstmt.setInt(4, mod.getExpense());
           isInsert = pstmt.executeUpdate();
           if (isInsert == 1) {
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
       return isInsert;
   }
   
   public int modifyModel(Model mod) {
	   int result =0;
       String sql = "UPDATE S2_MODEL SET MODEL = ?, BRAND = ?, KIND = ?, EXPENSE =? WHERE MODEL = ?";
       try {
           con = DB.con();
           con.setAutoCommit(false);
           pstmt = con.prepareStatement(sql);
           pstmt.setString(1, mod.getModel());
           pstmt.setString(2, mod.getBrand());
           pstmt.setString(3, mod.getKind());
           pstmt.setInt(4, mod.getExpense());
           pstmt.setString(5, mod.getModel());
           result = pstmt.executeUpdate();
           if (result == 1) {
               con.commit();
               System.out.println("수정 성공");
           }
       } catch (SQLException e) {
           System.out.println("DB 오류: " + e.getMessage());
           DB.rollback(con);
       } catch (Exception e) {
           System.out.println("일반 오류: " + e.getMessage());
       } finally {
           DB.close(rs, pstmt, con);
       }
       return result;
   }
   
   public int deleteModel(String model) {
       int isDelete = 0;
       String sql = "DELETE FROM S2_MODEL WHERE MODEL=?";
       try {
           con = DB.con();
           con.setAutoCommit(false);
           pstmt = con.prepareStatement(sql);
           pstmt.setString(1, model);
           isDelete = pstmt.executeUpdate();
           if (isDelete == 1) {
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
       return isDelete;
   }
  
   public ArrayList<Model> getAllModel() {
       ArrayList<Model> mlist = new ArrayList<>();
       String sql = "SELECT * FROM S2_MODEL";
       System.out.println("# DB 접속 #");
       try {
           con = DB.con();
           pstmt = con.prepareStatement(sql); 
           rs = pstmt.executeQuery();
           while (rs.next()) {
               Model m= new Model();
               m.setModel(rs.getString(1));
               m.setBrand(rs.getString(2));
               m.setKind(rs.getString(3));
               m.setExpense(rs.getInt(4));
               mlist.add(m);
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
   public Model getOneModel(String mod) {
       Model m = new Model();
       String sql = "SELECT * FROM S2_MODEL where model=?";
       System.out.println("# DB 접속 #");
       try {
           con = DB.con();
           pstmt = con.prepareStatement(sql); 
           pstmt.setString(1,mod);
           rs = pstmt.executeQuery();
           while (rs.next()) {
               m.setModel(rs.getString(1));
               m.setBrand(rs.getString(2));
               m.setKind(rs.getString(3));
               m.setExpense(rs.getInt(4));
           }
       } catch (SQLException e) {
           System.out.println("DB 관련 오류: " + e.getMessage());
       } catch (Exception e) {
           System.out.println("일반 오류: " + e.getMessage());
       } finally {
           DB.close(rs, pstmt, con);
       }
       return m;
   }
   public static void main(String[] args) {
      // TODO Auto-generated method stub
      
   }

}
package S2_Rentcar.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import S2_Rentcar.vo.S2_Member;
import S2_Rentcar.vo.S2_RSearchList;
import backWeb.a01_dao.DB;

public class S2_MemberDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	//회원검색_관리자
	 public List<S2_Member> getMList(Map<String, String> sch) {
	        List<S2_Member> mlist = new ArrayList<>();
	        String sql = "SELECT id, pass, name, phone, email, address, auth, point, TO_CHAR(signup_date,'YYYY-MM-DD') AS signup_date \r\n"
	        		+ "FROM S2_MEMBER\r\n"
	        		+ "WHERE id like ? AND name like ? AND phone like ?"
	        		+ "ORDER BY signup_date desc";
	        
	        System.out.println("# DB 접속 #");
	        System.out.println(sch.get("id"));
	        System.out.println(sch.get("name"));
	        System.out.println(sch.get("phone"));
	        try {
	            con = DB.con();
	            pstmt = con.prepareStatement(sql); 
	            pstmt.setString(1, "%" +sch.get("id") + "%");
	            pstmt.setString(2, "%" +sch.get("name") + "%");
	            pstmt.setString(3, "%" +sch.get("phone") + "%");
	            rs = pstmt.executeQuery();

	            while (rs.next()) {
	            	mlist.add(new S2_Member(
	            			rs.getString("id"),
	    					rs.getString("pass"),	
	    					rs.getString("name"),	
	    					rs.getString("phone"),
	    					rs.getString("email"),
	    					rs.getString("address"),
	    					rs.getString("signup_date"),
	    					rs.getString("auth"),
	    					rs.getInt("point")
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
	 //모든 회원리스트 조회_관리자
		 public List<S2_Member> mlist() {
				List<S2_Member> memlist = new ArrayList<S2_Member>();
				String sql = "SELECT id, pass, name, phone, email, address, auth, point, TO_CHAR(signup_date,'YYYY-MM-DD') AS signup_date \r\n"
						+ "FROM S2_MEMBER";
				//1. 연결(기본예외/자원해제)
				try {
					con = DB.con();
					// 2. 대화(sql 전달 후, 매개변수로 전달)
					pstmt = con.prepareStatement(sql);
					// 3. 결과
					rs = pstmt.executeQuery();
					// 4. (ResultSet ==> VO) ? 단일/여러개 if/while
					// 
					while(rs.next()) {
						memlist.add(new S2_Member(
							rs.getString("id"),
	    					rs.getString("pass"),	
	    					rs.getString("name"),	
	    					rs.getString("phone"),
	    					rs.getString("email"),
	    					rs.getString("address"),
	    					rs.getString("signup_date"),
	    					rs.getString("auth"),
	    					rs.getInt("point")
						));
					}
					// 
				} catch (SQLException e) {
					System.out.println("DB:"+e.getMessage());
				}catch(Exception e) {
					System.out.println("기타:"+e.getMessage());
				}finally {
					DB.close(rs, pstmt, con);
				}
				return memlist;
			}
		 // 선택한 회원 삭제_관리자
		 public int deleteMember(String id) {
		        int isDelete = 0;
		        String sql = "DELETE FROM S2_MEMBER sm  WHERE id = ?";
		        try {
		            con = DB.con();
		            con.setAutoCommit(false);
		            pstmt = con.prepareStatement(sql);
		            pstmt.setString(1, id);
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
	
	
	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

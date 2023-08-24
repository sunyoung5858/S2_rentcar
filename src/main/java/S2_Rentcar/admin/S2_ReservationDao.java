package S2_Rentcar.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import S2_Rentcar.vo.S2_RSearchList;
import S2_Rentcar.vo.S2_Reservation;
import backWeb.a01_dao.DB;

public class S2_ReservationDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	//예약검색_관리자
	 public List<S2_RSearchList> getRList(Map<String, String> sch) {
	        List<S2_RSearchList> rlist = new ArrayList<>();
	        String sql = "SELECT R.reservation_number, TO_CHAR(R.startdate,'YYYY-MM-DD') AS startdate\r\n"
	        		+ ",TO_CHAR(R.enddate,'YYYY-MM-DD')  AS enddate, R.car_number, R.id, M.name, M.phone, S.store_name\r\n"
	        		+ "FROM S2_RESERVATION R\r\n"
	        		+ "JOIN S2_MEMBER M ON R.id = M.id\r\n"
	        		+ "JOIN S2_CAR C ON R.car_number = C.car_number\r\n"
	        		+ "JOIN S2_STORE S ON C.store = S.store\r\n"
	        		+ "WHERE R.startdate >= TO_DATE(? ,'YYYY-MM-DD')\r\n"
	        		+ "AND R.enddate <= TO_DATE(?,'YYYY-MM-DD')\r\n"
	        		+ "AND R.id  like ?\r\n"
	        		+ "AND m.name like ?\r\n"
	        		+ "AND s.store_name like ?";
	        
	        System.out.println("# DB 접속 #");
	        System.out.println(sch.get("startdate"));
	        System.out.println(sch.get("enddate"));
	        System.out.println(sch.get("id"));
	        System.out.println(sch.get("name"));
	        System.out.println(sch.get("storename"));
	        try {
	            con = DB.con();
	            pstmt = con.prepareStatement(sql); 
	            pstmt.setString(1, sch.get("startdate"));
	            pstmt.setString(2, sch.get("enddate"));
	            pstmt.setString(3, "%" +sch.get("id") + "%");
	            pstmt.setString(4, "%" +sch.get("name") + "%");
	            pstmt.setString(5, "%" +sch.get("storename") + "%");
	            rs = pstmt.executeQuery();

	            while (rs.next()) {
	                rlist.add(new S2_RSearchList(
	                		rs.getInt("reservation_number"),
							rs.getString("startdate"),
	    					rs.getString("enddate"),	
	    					rs.getInt("car_number"),
	    					rs.getString("id"),
	    					rs.getString("name"),
	    					rs.getString("phone"),
	    					rs.getString("store_name")
	                ));
	            }
	        } catch (SQLException e) {
	            System.out.println("DB 관련 오류: " + e.getMessage());
	        } catch (Exception e) {
	            System.out.println("일반 오류: " + e.getMessage());
	        } finally {
	            DB.close(rs, pstmt, con);
	        }
	        return rlist;
	    }
	 //모든 예약리스트 조회_관리자
		 public List<S2_RSearchList> rlist() {
				List<S2_RSearchList> reslist = new ArrayList<S2_RSearchList>();
				String sql = "SELECT R.reservation_number, TO_CHAR(R.startdate,'YYYY-MM-DD') AS startdate \r\n"
						+ ",TO_CHAR(R.enddate,'YYYY-MM-DD')  AS enddate, R.car_number, R.id, M.name, M.phone, S.store_name\r\n"
						+ "FROM S2_RESERVATION R\r\n"
						+ "JOIN S2_MEMBER M ON R.id = M.id\r\n"
						+ "JOIN S2_CAR C ON R.car_number = C.car_number\r\n"
						+ "JOIN S2_STORE S ON C.store = S.store";
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
						reslist.add(new S2_RSearchList(
						//int reservation_number, String startdateS, String enddateS, int car_number, String id,
						//String name, String phone, String store_name
							rs.getInt("reservation_number"),
							rs.getString("startdate"),
	    					rs.getString("enddate"),	
	    					rs.getInt("car_number"),
	    					rs.getString("id"),
	    					rs.getString("name"),
	    					rs.getString("phone"),
	    					rs.getString("store_name")
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
				return reslist;
			}
		 // 선택한 예약 삭제_관리자
		 public int deleteReservation(int reservation_number) {
		        int isDelete = 0;
		        String sql = "DELETE FROM S2_RESERVATION WHERE reservation_number = ?";
		        try {
		            con = DB.con();
		            con.setAutoCommit(false);
		            pstmt = con.prepareStatement(sql);
		            pstmt.setInt(1, reservation_number);
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

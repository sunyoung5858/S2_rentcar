package frontWeb.z99_project.a03_rent;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import frontWeb.z99_project.vo.S2Car;

public class S2carDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 보유차량 추가
	public int insertS2car(S2Car s2c) {
		int S2cInsert = 0;
		String sql = "INSERT INTO S2_CAR VALUES (?,?,?,?,?)";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, s2c.getCar_number());
			pstmt.setInt(2, s2c.getDistance_driven());
			pstmt.setString(3, s2c.getCar_plate());
			pstmt.setInt(4, s2c.getStore());
			pstmt.setString(5, s2c.getModel());
			S2cInsert = pstmt.executeUpdate();
			if (S2cInsert == 1) {
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
		return S2cInsert;
	}
	// 보유차량 리스트로 가져오기
	public List<S2Car> s2clist() {
	    List<S2Car> clist = new ArrayList<>();
	    String sql =  "SELECT S2_CAR.car_number, S2_CAR.distance_driven, S2_CAR.car_plate, S2_CAR.store, S2_CAR.model\r\n"
	    		+ "FROM S2_CAR\r\n"
	    		+ "JOIN S2_STORE ON S2_CAR.store = S2_STORE.store\r\n"
	    		+ "JOIN S2_MODEL ON S2_CAR.model = S2_MODEL.model";

	    try {
	        con = DB.con();
	        pstmt = con.prepareStatement(sql); 
	        rs = pstmt.executeQuery();
	
	        while (rs.next()) {
	        	clist.add(new S2Car(
	                    rs.getInt("car_number"),
	                    rs.getInt("distance_driven"),
	                    rs.getString("car_plate"),
	                    rs.getInt("store"),
	                    rs.getString("model")
	            ));
	        }
	    } catch (SQLException e) {
	        System.out.println("DB 관련 오류: " + e.getMessage());
	    } catch (Exception e) {
	        System.out.println("일반 오류: " + e.getMessage());
	    } finally {
	        DB.close(rs, pstmt, con);
	    }
	    return clist;
	}
	
	// 보유 차량 삭제
	public void deleteS2Car(int car_number) {
		int S2cDelete = 0;
		String sql = "DELETE FROM S2_CAR WHERE car_number = ?";
		try {
			con = DB.con();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, car_number);
			S2cDelete = pstmt.executeUpdate();
			if(S2cDelete >0) {
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

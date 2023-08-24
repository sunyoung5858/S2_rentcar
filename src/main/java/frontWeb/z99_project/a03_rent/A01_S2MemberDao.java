package frontWeb.z99_project.a03_rent;
// frontWeb.z99_project.a03_rent.A01_S2MemberDao

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import frontWeb.z99_project.vo.S2_Member;

public class A01_S2MemberDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public String idCheck(String id) { // 아이디 중복확인 메서드
		String  result = "사용할 수 없는 아이디입니다.";
		if(id=="") {
			result = "아이디를 입력 후 중복확인을 눌러주세요";
			return result;
		}
		try {
			con = DB.con();
			String sql = "SELECT id FROM S2_Member where id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()==false) {	// 중복된 id가 존재하지 않으면 false
				result = "사용가능한 아이디입니다";
			}
		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
		} catch (Exception e) {
			System.out.println("기타:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return result; // 중복확인을 불러온 곳에 결과값을 리턴. true는 사용 가능한 아이디, false는 사용 불가능한 아이디
	}
	
	
	public void memberIns(String id, String pass, String name, String phone, String email, String address) {
		// 회원정보 추가 메서드
		try {
			con=DB.con();
			String sql = "INSERT INTO S2_MEMBER VALUES(?,?,?,?,?,?,to_char(SYSDATE,'YYYY-MM-DD'),'USER',0)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.setString(6, address);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
		} catch (Exception e) {
			System.out.println("기타:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
	}
	
	public boolean login(String id, String pass) { // 로그인 메서드
		boolean result = false;
		try {
			con = DB.con();
			String sql = "SELECT id, pass FROM S2_Member where id = ? and pass = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			result = rs.next();// 등록된 id&비밀번호가 존재하지 않으면 false
		} catch (SQLException e) {
			System.out.println("DB:"+e.getMessage());
		} catch (Exception e) {
			System.out.println("기타:"+e.getMessage());
		} finally {
			DB.close(rs, pstmt, con);
		}
		return result; // 로그인에 결과값 리턴
		// true는 로그인 가능, false는 로그인 불가능
	}
	
	public S2_Member getMemList(String id) {
	    S2_Member mem = new S2_Member();
	    String sql = "SELECT * FROM S2_Member WHERE id= ?";
	    
	    try {
	        con = DB.con();
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, id);
	        rs = pstmt.executeQuery();
	        if (rs.next()) {
	            mem = new S2_Member(
	                rs.getString("id"),
	                rs.getString("pass"),
	                rs.getString("name"),
	                rs.getString("phone"),
	                rs.getString("email"),
	                rs.getString("address"),
	                rs.getDate("signup_date"),
	                rs.getString("auth"),
	                rs.getInt("point")
	            );
	        }
	    } catch (SQLException e) {
	        System.out.println("DB 관련 오류: " + e.getMessage());
	    } catch (Exception e) {
	        System.out.println("일반 오류: " + e.getMessage());
	    } finally {
	        DB.close(rs, pstmt, con);
	    }
	    return mem;
	}
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	}

}

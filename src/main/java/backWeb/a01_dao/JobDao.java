package backWeb.a01_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import backWeb2.z01_vo.Job;

// frontWeb.A04_PreparedDao
public class JobDao {
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public List<Job> getJobList() {
        List<Job> jlist = new ArrayList<>();
        String sql = "SELECT * FROM JOBS ORDER BY job_title";
        System.out.println("# DB 접속 #");
        try {
            con = DB.con();
            pstmt = con.prepareStatement(sql); 
            rs = pstmt.executeQuery();
            while (rs.next()) {
                jlist.add(new Job(
                        rs.getString("job_id"),
                        rs.getString("job_title"),
                        rs.getInt("min_salary"),
                        rs.getInt("max_salary")
                ));
            }
        } catch (SQLException e) {
            System.out.println("DB 관련 오류: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("일반 오류: " + e.getMessage());
        } finally {
            DB.close(rs, pstmt, con);
        }
        return jlist;
    }
}

package pro;
import java.util.*;
import java.sql.*;

import pro.ComEntity;

public class ComManager {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	public void Connect() {
		
		String jdbc_driver = "com.mysql.jdbc.Driver";
		String jdbc_url = "jdbc:mysql://localhost/jspbook";
		
		try {
			
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "root", "1234");
			
		} catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public void Disconnect() {

		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.println(e);
			}
		}
			
		if(conn != null) {
			
			try {
				conn.close();
			}catch(Exception e) {
				System.out.println(e);
			}
		}
	}
	
	public ArrayList<ComlistEntity> getcomList() {
		
		Connect();
		ArrayList<ComlistEntity> datas = new ArrayList<ComlistEntity>();
		String sql = "select commute_date, personnel.employee_name, commute_code.commute_name, "
				+ "commute_count, commute_start, commute_finish from commute natural join personnel "
				+ "inner join commute_code on commute_code.commute_id = commute.commute_code;";

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ComlistEntity ce = new ComlistEntity();
				
				ce.setCom_date(rs.getString(1));
				ce.setEmployee_name(rs.getString(2));
				ce.setCom_code(rs.getString(3));
				ce.setCom_count(rs.getString(4));
				ce.setCom_start(rs.getString(5));
				ce.setCom_finish(rs.getString(6));
				datas.add(ce);
				
			}
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return datas;
	}
	
	public ArrayList<Commute_codeEntity> getcomcode_List() {
		
		Connect();
		ArrayList<Commute_codeEntity> datas = new ArrayList<Commute_codeEntity>();
		
		String sql = "select * from commute_code";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Commute_codeEntity ce = new Commute_codeEntity();
				
				ce.setCom_id(rs.getString(1));
				ce.setCom_name(rs.getString(2));
				ce.setHoliday_yn(rs.getString(3));
				
				datas.add(ce);
				
			}
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return datas;
	}
	
	public ArrayList<Per_holidayEntity> getper_holiday_List(String id) {
		
		Connect();
		ArrayList<Per_holidayEntity> datas = new ArrayList<Per_holidayEntity>();
		
		String sql = "select depart_code.depart_name, rank, employee_num, employee_name, joined_date, he.holiday_duration"
				+ " from personnel inner join depart inner join depart_code inner join holiday inner join he "
				+ "on depart_code.depart_id = depart.depart_id and holiday.holiday_id = he.holiday_code where he.holiday_code = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Per_holidayEntity ph = new Per_holidayEntity();
				
				ph.setDepart(rs.getString(1));
				ph.setRank(rs.getString(2));
				ph.setEmployee_num(rs.getString(3));
				ph.setEmployee_name(rs.getString(4));
				ph.setJoined_date(rs.getString(5));
				ph.setHoliday_duraion(rs.getString(6));
				
				datas.add(ph);
				
			}
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return datas;
	}
	
	public ArrayList<HolidayEntity> getholiday_List() {
		
		Connect();
		ArrayList<HolidayEntity> datas = new ArrayList<HolidayEntity>();
		
		String sql = "select * from holiday;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				HolidayEntity he = new HolidayEntity();
				
				he.setHoliday_code(rs.getString(1));
				he.setHoliday_date(rs.getString(2));
				he.setHoliday_name(rs.getString(3));
				he.setHoliday_size(rs.getString(5));
				datas.add(he);
				
			}
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return datas;
	}
	
	public boolean com_insert(ComEntity ce) {
		try {
			
			Connect();
			String sql = "INSERT INTO commute(commute_code, commute_count, commute_start, commute_finish, "
					+ "employee_id, commute_date) VALUES(?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ce.getCommute_code());
			pstmt.setString(2, ce.getCommut_count());
			pstmt.setString(3, ce.getCommute_start());
			pstmt.setString(4, ce.getCommute_finish());
			pstmt.setString(5, ce.getEmployee_id());
			pstmt.setString(6, ce.getCommdate());

			pstmt.executeUpdate();
			
			return true;
			
		} catch(Exception e) {
			System.out.println(e);
			return false;
		} finally {
			Disconnect();
		}
	}
	
	public ArrayList<CurrentEntity> getcurrent_List() {
		
		Connect();
		ArrayList<CurrentEntity> datas = new ArrayList<CurrentEntity>();
		
		String sql = "select commute_date, depart_code.depart_name, rank, employee_num, employee_name, "
				+ "commute_name, commute_count, commute_start, commute_finish from commute "
				+ "inner join personnel inner join depart inner join depart_code inner join commute_code "
				+ "on commute.commute_code = commute_code.commute_id and depart.depart_code = depart_code.depart_id and personnel.employee_id = commute.employee_id;";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				CurrentEntity ce = new CurrentEntity();
				
				ce.setCom_date(rs.getString(1));
				ce.setDpeart(rs.getString(2));
				ce.setRank(rs.getString(3));
				ce.setEmployee_num(rs.getString(4));
				ce.setEmployee_name(rs.getString(5));
				ce.setCom_code(rs.getString(6));
				ce.setCom_count(rs.getString(7));
				ce.setCom_start(rs.getString(8));
				ce.setCom_finish(rs.getString(9));
				
				datas.add(ce);
				
			}
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		} 
		return datas;
	}	
}

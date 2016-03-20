package pro;
import java.util.*;
import java.sql.*;

import pro.PayEntity;
import pro.Pay_Per_Entity;

public class PayManager {
	
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
	
	public ArrayList<PayEntity> getpayList() {
		
		Connect();
		ArrayList<PayEntity> datas = new ArrayList<PayEntity>();
		
		String sql = "select * from salary";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				PayEntity pe = new PayEntity();
				pe.setSalary_id(rs.getString("salary_id"));
				pe.setBonus_id(rs.getString("bonus_id"));
				pe.setDeduct_id(rs.getString("deduct_id"));
				pe.setAccount_num(rs.getString("account_num"));
				pe.setAccount_holder(rs.getString("account_holder"));
				pe.setBank_code(rs.getString("bank_code"));
				pe.setBasepay(rs.getString("basepay"));
				pe.setEmployee_id(rs.getString("employee_id"));
				
				datas.add(pe);
				
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
	
	public ArrayList<Pay_Per_Entity> getpay_perList() {
		
		Connect();
		ArrayList<Pay_Per_Entity> datas = new ArrayList<Pay_Per_Entity>();
		
		String sql = "Select personnel.employee_id, personnel.employee_name, salary.salary_grade, personnel.depart_code, personnel.rank," + 
				"salary_class, basepay, joined_date, account_num from personnel inner join salary on personnel.employee_id = salary.employee_id;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Pay_Per_Entity pe = new Pay_Per_Entity();
				pe.setEmplyee_id(rs.getString("employee_id"));
				pe.setEmplyee_name(rs.getString("employee_name"));
				pe.setSalary_grade(rs.getString("salary_grade"));
				pe.setDepart_name(rs.getString("depart_code"));
				pe.setRank(rs.getString("rank"));
				pe.setSalary_class(rs.getString("salary_class"));
				pe.setBasepay(rs.getString("basepay"));
				pe.setJoined_date(rs.getString("joined_date"));
				pe.setAccount_num(rs.getString("account_num"));
				
				datas.add(pe);
				
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
	
	public PayEntity getpayById(String id) {	
		
		try {
				Connect();
				PayEntity pe = new PayEntity();

				String sql = "SELECT * FROM salary WHERE employee_id = ?";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				
				rs.next();
				pe.setSalary_id(rs.getString("salary_id"));
				pe.setBonus_id(rs.getString("bonus_id"));
				pe.setDeduct_id(rs.getString("deduct_id"));
				pe.setAccount_num(rs.getString("account_num"));
				pe.setAccount_holder(rs.getString("account_holder"));
				pe.setBank_code(rs.getString("bank_code"));
				pe.setBasepay(rs.getString("basepay"));
				pe.setEmployee_id(rs.getString("employee_id"));
				rs.close();

				return pe;
				
			} catch(Exception e) {
				System.out.println(e);
				return null;		
			} finally {
				Disconnect();
			}
		}
	
	public ArrayList<PayrollEntity> getpayroll_List() {
		
		Connect();
		ArrayList<PayrollEntity> datas = new ArrayList<PayrollEntity>();
		
		String sql = "select * from payroll;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				PayrollEntity pre = new PayrollEntity();
				pre.setPayroll_id(rs.getString(1));
				pre.setPayroll_con(rs.getString(2));
				pre.setPayroll_date(rs.getString(3));
				pre.setPayroll_day(rs.getString(4));
				pre.setPayroll_year(rs.getString(5));
				pre.setPayroll_sum(rs.getString(7));
				pre.setPayroll_name(rs.getString(6));
				
				datas.add(pre);
				
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
	
	public boolean payroll_insert(PayrollEntity pe) {
		try {
			
			Connect();
			String sql = "INSERT INTO payroll(payroll_con, payroll_date, payroll_day, payroll_year, "
					+ "payroll_sum, payroll_name) VALUES(?, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pe.getPayroll_con());
			pstmt.setString(2, pe.getPayroll_date());
			pstmt.setString(3, pe.getPayroll_day());
			pstmt.setString(4, pe.getPayroll_year());
			pstmt.setString(5, pe.getPayroll_sum());
			pstmt.setString(6, pe.getPayroll_name());

			pstmt.executeUpdate();
			
			return true;
			
		} catch(Exception e) {
			System.out.println(e);
			return false;
		} finally {
			Disconnect();
		}
	}
	
	public PayrollEntity getpayrollById(String id) {	
		
		try {
				Connect();
				PayrollEntity pe = new PayrollEntity();

				String sql = "SELECT payroll_name, payroll_day FROM payroll WHERE payroll_id = ?";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				
				rs.next();
				pe.setPayroll_name(rs.getString(1));
				pe.setPayroll_day(rs.getString(2));
				rs.close();

				return pe;
				
			} catch(Exception e) {
				System.out.println(e);
				return null;		
			} finally {
				Disconnect();
			}
		}
	
	public ArrayList<Pay_total_list> gettotal_List() {
		
		Connect();
		ArrayList<Pay_total_list> datas = new ArrayList<Pay_total_list>();
		
		String sql = "select * from total";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Pay_total_list ptl = new Pay_total_list();
				
				ptl.setEmployee_name(rs.getString(1));
				ptl.setEmployee_num(rs.getString(2));
				ptl.setRank(rs.getString(3));
				ptl.setBasepay(rs.getInt(4));
				
				datas.add(ptl);
				
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

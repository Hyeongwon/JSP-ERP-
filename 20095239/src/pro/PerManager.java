package pro;
import java.util.*;
import java.sql.*;

import pro.PerEntity;
import pro.Per_listEntity;
import pro.DepartEntity;
import pro.SchoolEntity;
import pro.CareerEntity;

public class PerManager {
	
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
	
	public ArrayList<PerEntity> getperList() {
		
		Connect();
		PreparedStatement pstmt1 = null;
		ArrayList<PerEntity> datas = new ArrayList<PerEntity>();
		
		String sql = "select * from personnel";
		String sql1 = "select depart_name from depart_code inner join depart on depart_code.depart_id = depart.depart_id;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt1 = conn.prepareStatement(sql1);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				PerEntity pe = new PerEntity();
				ResultSet rs1 = pstmt1.executeQuery();
				pe.setEmployee_id(rs.getString("employee_id"));
				pe.setEmployee_num(rs.getString("employee_num"));
				pe.setEmployee_name(rs.getString("employee_name"));
				pe.setEng_name(rs.getString("eng_name"));
				pe.setRRnum(rs.getString("RRnum"));
				pe.setJoined_date(rs.getString("joined_date"));
				pe.setClassification(rs.getString("classification"));
				pe.setPosition(rs.getString("position"));
				pe.setRank(rs.getString("rank"));
				pe.setDuty(rs.getString("duty"));
				pe.setMobile1(rs.getString("mobile1"));
				pe.setMobile2(rs.getString("mobile2"));
				pe.setPassport_num(rs.getString("passport_num"));
				pe.setEmail(rs.getString("email"));
				rs1.next();
				pe.setDepart_code(rs1.getString("depart_name"));
				rs1.close();
				pe.setAddress(rs.getString("address"));
				pe.setZip_code(rs.getString("zip_code"));
				
				datas.add(pe);
				
			}
			rs.close();
			pstmt1.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return datas;
	}
	
	public PerEntity getperById(String id) {	
		
		try {
				
				Connect();
				PerEntity pe = new PerEntity();
				PreparedStatement pstmt1 = null;

				String sql = "SELECT * FROM personnel WHERE employee_id = ?";
				String sql1 = "select depart_name from depart_code inner join depart on depart_code.depart_id = depart.depart_id where employee_id= ?;";
				
				pstmt1 = conn.prepareStatement(sql1);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt1.setString(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				ResultSet rs1 = pstmt1.executeQuery();
				
				rs.next();
				pe.setEmployee_id(rs.getString("employee_id"));
				pe.setEmployee_num(rs.getString("employee_num"));
				pe.setEmployee_name(rs.getString("employee_name"));
				pe.setEng_name(rs.getString("eng_name"));
				pe.setRRnum(rs.getString("RRnum"));
				pe.setJoined_date(rs.getString("joined_date"));
				pe.setClassification(rs.getString("classification"));
				pe.setPosition(rs.getString("position"));
				pe.setRank(rs.getString("rank"));
				pe.setDuty(rs.getString("duty"));
				pe.setMobile1(rs.getString("mobile1"));
				pe.setMobile2(rs.getString("mobile2"));
				pe.setPassport_num(rs.getString("passport_num"));
				pe.setEmail(rs.getString("email"));
				pe.setAddress(rs.getString("address"));
				pe.setZip_code(rs.getString("zip_code"));
				rs.close();
				
				rs1.next();
				pe.setDepart_code(rs1.getString("depart_name"));
				rs1.close();
				
				pstmt1.close();
				return pe;
				
			} catch(Exception e) {
				System.out.println(e);
				return null;		
			} finally {
				Disconnect();
			}
		}
	
	public ArrayList<Per_listEntity> getperList2() {
		
		Connect();
		ArrayList<Per_listEntity> datas = new ArrayList<Per_listEntity>();
		
		String sql = "Select personnel.employee_id, personnel.employee_num, personnel.employee_name,personnel.RRnum, depart_code.depart_name, personnel.rank, personnel.email," + 
				"personnel.joined_date, salary.account_num from personnel inner join salary inner join depart_code inner join depart"
				+ " on personnel.employee_id = salary.employee_id where depart.depart_id = depart_code.depart_id;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Per_listEntity ple = new Per_listEntity();
				
				ple.setEmployee_id(rs.getString("employee_id"));
				ple.setEmployee_num(rs.getString("employee_num"));
				ple.setEmployee_name(rs.getString("employee_name"));
				ple.setRRnum(rs.getString("RRnum"));
				ple.setDepart_code(rs.getString("depart_code.depart_name"));
				ple.setRank(rs.getString("rank"));
				ple.setJoined_date(rs.getString("joined_date"));
				ple.setAccoutnum(rs.getString("account_num"));
				ple.setEmail(rs.getString("email"));

				datas.add(ple);
				
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
	
	public ArrayList<DepartEntity> getdepartList() {
		
		Connect();
		ArrayList<DepartEntity> datas = new ArrayList<DepartEntity>();
		
		String sql = "Select * from depart_code;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				DepartEntity de = new DepartEntity();
				
				de.setDepart_id(rs.getString("depart_id"));
				de.setDepart_name(rs.getString("depart_name"));

				datas.add(de);
				
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
	
	public String getdepartname(String id) {
		
		Connect();
		String departname = null;
		
		String sql = "Select * from depart_code where depart_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			departname = rs.getString("depart_name");
				
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return departname;
	}
	
	public ArrayList<SchoolEntity> getSchoolList(String id) {
		
		Connect();
		ArrayList<SchoolEntity> datas = new ArrayList<SchoolEntity>();
		
		String sql = "Select * from Education where employee_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				SchoolEntity se = new SchoolEntity();
				
				se.setEducation_id(rs.getString("education_id"));
				se.setEducation(rs.getString("education"));
				se.setEducation_name(rs.getString("education_name"));
				se.setEducation_date(rs.getString("education_date"));
				se.setGraduation_date(rs.getString("graduation_date"));
				se.setDay_night(rs.getString("day_night"));
				se.setLocation(rs.getString("location"));
				se.setClassfication(rs.getString("classification"));

				datas.add(se);
				
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
	
	public CareerEntity getCareerList(String id) {
		
		Connect();
		CareerEntity ce = new CareerEntity();
		String sql = "Select * from career where employee_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			
			ce.setCareer_joined(rs.getString("career_joined"));
			ce.setCompany_resign(rs.getString("career_resign"));
			ce.setCompany_name(rs.getString("company_name"));
			ce.setDuty(rs.getString("duty"));
			ce.setDepart(rs.getString("depart"));
			ce.setReason(rs.getString("reason"));
			
			rs.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return ce;
	}
	
	public ArrayList<FamilyEntity> getFamilyList(String id) {
		
		Connect();
		ArrayList<FamilyEntity> datas = new ArrayList<FamilyEntity>();
		
		String sql = "Select * from family where employee_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				FamilyEntity fe = new FamilyEntity();
				
				fe.setFamily_name(rs.getString("family_name"));
				fe.setRelation(rs.getString("relation"));
				fe.setLevel_education(rs.getString("level_education"));
				fe.setJob(rs.getString("job"));
				fe.setCompany_name(rs.getString("company_name"));
				fe.setPosition(rs.getString("position"));
				fe.setLive(rs.getString("live"));
				fe.setSupport(rs.getString("support"));
				fe.setBirthday(rs.getString(9));

				datas.add(fe);
				
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
	
	public ArrayList<LicenseEntity> getLicenseList(String id) {
		
		Connect();
		ArrayList<LicenseEntity> datas = new ArrayList<LicenseEntity>();
		
		String sql = "Select license_num, get_date, expiration, renew, cancel_date, cancel_reason, license_code.license_code from "
						+ "license inner join license_code on license_code.license_id = license.license_code where employee_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				LicenseEntity le = new LicenseEntity();
				
				le.setLicense_name(rs.getString("license_code.license_code"));
				le.setLicense_num(rs.getString("license_num"));
				le.setGet_date(rs.getString("get_date"));
				le.setExpiration(rs.getString("expiration"));
				le.setRenew(rs.getString("renew"));
				le.setCancel_date(rs.getString("cancel_date"));
				le.setCancel_reason(rs.getString("cancel_reason"));
				
				datas.add(le);
				
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
	
	public ArrayList<LanguageEntity> getLanguageList(String id) {
		
		Connect();
		ArrayList<LanguageEntity> datas = new ArrayList<LanguageEntity>();
		
		String sql = "Select operated, language_score, language_code.language_code, language_name from "
						+ "language inner join language_code on language_code.language_id = language.language_code where employee_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				LanguageEntity le = new LanguageEntity();
				
				le.setLanguage_name(rs.getString("language_code.language_code"));
				le.setLanguage_operated(rs.getString("operated"));
				le.setLanguage_score(rs.getString("language_score"));
				le.setLanguage(rs.getString(4));
				
				datas.add(le);
				
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
	
	public ArrayList<AppointEntity> getAppointList() {
		
		Connect();
		ArrayList<AppointEntity> datas = new ArrayList<AppointEntity>();
		
		String sql = "Select appoint_date, appoint_class, appoint_rank_to, appoint_rank_from, appoint_depart_to, appoint_depart_from, "
					+ "personnel.employee_num, personnel.employee_name, personnel.classification, personnel.employee_id from appoint inner join personnel on personnel.employee_id = appoint.employee_id;;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				AppointEntity ae = new AppointEntity();
				
				ae.setAppoint_date(rs.getString(1));
				ae.setAppoint_cla(rs.getString(2));
				ae.setAppoint_rank_to(rs.getString(3));
				ae.setAppoint_rank_from(rs.getString(4));
				ae.setAppoint_depart_to(rs.getString(5));
				ae.setAppoint_depart_from(rs.getString(6));
				ae.setAppoint_per_num(rs.getString(7));
				ae.setAppoint_per_name(rs.getString(8));
				ae.setAppoint_per_cla(rs.getString(9));
				ae.setEmployee_id(rs.getString(10));
				
				datas.add(ae);
				
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
	
	public ArrayList<AppointEntity> getAppointByidList(String id) {
		
		Connect();
		ArrayList<AppointEntity> datas = new ArrayList<AppointEntity>();
		
		String sql = "Select appoint_date, appoint_class, appoint_rank_to, appoint_rank_from, appoint_depart_to, appoint_depart_from, "
					+ "personnel.employee_num, personnel.employee_name, personnel.classification, personnel.employee_id"
					+ " from appoint inner join personnel on personnel.employee_id = appoint.employee_id where appoint.employee_id = ?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				AppointEntity ae = new AppointEntity();
				
				ae.setAppoint_date(rs.getString(1));
				ae.setAppoint_cla(rs.getString(2));
				ae.setAppoint_rank_to(rs.getString(3));
				ae.setAppoint_rank_from(rs.getString(4));
				ae.setAppoint_depart_to(rs.getString(5));
				ae.setAppoint_depart_from(rs.getString(6));
				ae.setAppoint_per_num(rs.getString(7));
				ae.setAppoint_per_name(rs.getString(8));
				ae.setAppoint_per_cla(rs.getString(9));
				ae.setEmployee_id(rs.getString(10));
				
				datas.add(ae);
				
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
	
	public ArrayList<CertEntity> getCertList() {
		
		Connect();
		ArrayList<CertEntity> datas = new ArrayList<CertEntity>();
		
		String sql = "Select cert_num, cert_type, cert_date, cert_use, personnel.employee_name, personnel.RRnum,"
				+ "personnel.address, depart_code.depart_name, personnel.rank, personnel.employee_num, personnel.employee_id from cert "
				+ "inner join personnel inner join depart_code inner join depart on depart.depart_code = depart_code.depart_id and personnel.employee_id = cert.employee_id;";

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				CertEntity ce = new CertEntity();
				
				ce.setCert_num(rs.getString(1));
				ce.setCert_type(rs.getString(2));
				ce.setCert_date(rs.getString(3));
				ce.setCert_use(rs.getString(4));
				ce.setCert_employee_name(rs.getString(5));
				ce.setRRnuml(rs.getString(6));
				ce.setAdrress(rs.getString(7));
				ce.setDepart_name(rs.getString(8));
				ce.setRank(rs.getString(9));
				ce.setEmployee_num(rs.getString(10));
				ce.setEmployee_id(rs.getString(11));
				
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
	
	public CertEntity getCertByidList(String id) {
		
		Connect();
		CertEntity ce = new CertEntity();
		
		String sql = "Select cert_num, cert_type, cert_date, cert_use, personnel.employee_name, personnel.RRnum,"
				+ "personnel.address, depart_code.depart_name, personnel.rank, personnel.employee_num, personnel.employee_id, personnel.joined_date "
				+ "from cert inner join personnel inner join depart_code inner join depart on depart.depart_code = depart_code.depart_id "
				+ "where personnel.employee_id = ?;";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
				ce.setCert_num(rs.getString(1));
				ce.setCert_type(rs.getString(2));
				ce.setCert_date(rs.getString(3));
				ce.setCert_use(rs.getString(4));
				ce.setCert_employee_name(rs.getString(5));
				ce.setRRnuml(rs.getString(6));
				ce.setAdrress(rs.getString(7));
				ce.setDepart_name(rs.getString(8));
				ce.setRank(rs.getString(9));
				ce.setEmployee_num(rs.getString(10));
				ce.setEmployee_id(rs.getString(11));
				ce.setJoined_date(rs.getString(12));
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return ce;
	}
	
	public ArrayList<CardEntity> getcard_list(String num) {
		
		Connect();
		ArrayList<CardEntity> datas = new ArrayList<CardEntity>();
		String sql = "select employee_num, employee_name, RRnum, depart_code.depart_name, rank, joined_date,"
				+ "email, personnel.employee_id from personnel inner join depart inner join depart_code on depart.depart_id = depart_code.depart_id"
				+ " where employee_num = '" + num +"';";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CardEntity ce = new CardEntity();
				ce.setEmployee_num(rs.getString(1));
				ce.setEmployee_name(rs.getString(2));
				ce.setRRnum(rs.getString(3));
				ce.setDepart(rs.getString(4));
				ce.setRank(rs.getString(5));
				ce.setJoined_date(rs.getString(6));
				ce.setEmail(rs.getString(7));
				ce.setEmployee_id(rs.getString(8));
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
	
	public String getidByname(String name) {
		
		Connect();
		String name1 = name;
		String sql = "Select employee_id from personnel where employee_num = '" + name1 +"';";

		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			name1 = rs.getString(1);
			rs.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		finally {
			Disconnect();
		}
		
		return name1;
	}
}

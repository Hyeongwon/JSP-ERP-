package pro;

public class CareerEntity {	
	public String getCareer_joined() {
		return Career_joined;
	}
	public void setCareer_joined(String career_joined) {
		Career_joined = career_joined;
	}
	public String getCompany_resign() {
		return Company_resign;
	}
	public void setCompany_resign(String company_resign) {
		Company_resign = company_resign;
	}
	public String getCompany_name() {
		return Company_name;
	}
	public void setCompany_name(String company_name) {
		Company_name = company_name;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	String Career_joined;
	String Company_resign;
	String Company_name;
	String duty;
	String depart;
	String reason;
}

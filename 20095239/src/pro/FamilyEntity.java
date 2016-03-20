package pro;

public class FamilyEntity {
	public String getFamily_name() {
		return Family_name;
	}
	public void setFamily_name(String family_name) {
		Family_name = family_name;
	}
	public String getRelation() {
		return Relation;
	}
	public void setRelation(String relation) {
		Relation = relation;
	}
	public String getLevel_education() {
		return Level_education;
	}
	public void setLevel_education(String level_education) {
		Level_education = level_education;
	}
	public String getJob() {
		return Job;
	}
	public void setJob(String job) {
		Job = job;
	}
	public String getCompany_name() {
		return Company_name;
	}
	public void setCompany_name(String company_name) {
		Company_name = company_name;
	}
	public String getPosition() {
		return Position;
	}
	public void setPosition(String position) {
		Position = position;
	}
	public String getLive() {
		return Live;
	}
	public void setLive(String live) {
		Live = live;
	}
	public String getSupport() {
		return support;
	}
	public void setSupport(String support) {
		this.support = support;
	}
	String Family_name;
	String Relation;
	String Level_education;
	String Job;
	String Company_name;
	String Position;
	String Live;
	String support;
	String birthday;
	
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
}

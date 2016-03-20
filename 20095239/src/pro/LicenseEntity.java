package pro;

public class LicenseEntity {
	public String getLicense_name() {
		return License_name;
	}
	public void setLicense_name(String license_name) {
		License_name = license_name;
	}
	public String getLicense_num() {
		return License_num;
	}
	public void setLicense_num(String license_num) {
		License_num = license_num;
	}
	public String getGet_date() {
		return Get_date;
	}
	public void setGet_date(String get_date) {
		Get_date = get_date;
	}
	public String getExpiration() {
		return Expiration;
	}
	public void setExpiration(String expiration) {
		Expiration = expiration;
	}
	public String getRenew() {
		return Renew;
	}
	public void setRenew(String renew) {
		Renew = renew;
	}
	public String getCancel_date() {
		return Cancel_date;
	}
	public void setCancel_date(String cancel_date) {
		Cancel_date = cancel_date;
	}
	public String getCancel_reason() {
		return Cancel_reason;
	}
	public void setCancel_reason(String cancel_reason) {
		Cancel_reason = cancel_reason;
	}
	String License_name;
	String License_num;
	String Get_date;
	String Expiration;
	String Renew;
	String Cancel_date;
	String Cancel_reason;
}

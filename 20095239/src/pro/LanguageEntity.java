package pro;

public class LanguageEntity {
	public String getLanguage_name() {
		return Language_name;
	}
	public void setLanguage_name(String language_name) {
		Language_name = language_name;
	}
	public String getLanguage_operated() {
		return Language_operated;
	}
	public void setLanguage_operated(String language_operated) {
		Language_operated = language_operated;
	}
	public String getLanguage_score() {
		return Language_score;
	}
	public void setLanguage_score(String language_score) {
		Language_score = language_score;
	}
	
	String Language_name;
	String Language_operated;
	String Language_score;
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String language) {
		Language = language;
	}

	String Language;
}

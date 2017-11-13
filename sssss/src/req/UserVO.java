package req;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserVO {

	
	String id;
	String pw;
	
	
	public UserVO() {
		super();
	}



	public UserVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	
}

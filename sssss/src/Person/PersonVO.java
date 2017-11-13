package Person;

import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class PersonVO {
	private String 
	user_id, user_pw, user_name, gender,
	user_phone, user_email, photo, 
	development, design, planning, specialty, 
	location, portfoliofile, user_emblem, 
	user_grade, p_id, sysFile, oriFile;
	/*
	HashMap<String, HashMap<String, ProjectVO>> user_proj = new HashMap<>();
	HashMap<String, ProjectVO> project = new HashMap<>();*/

	private Date birth;
	
	private int ability, social, diligent, creativity, user_sum, user_avg;
	
	public int[] evaluate= new int[4];
	
	public PersonVO() {}
	
	public PersonVO(String user_id, String user_pw, String user_name, String gender, String user_phone,
			String user_email, String photo, String development, String design, String planning, String specialty,
			String location, String portfoliofile, Date birth) {
		
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.gender = gender;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.photo = photo;
		this.development = development;
		this.design = design;
		this.planning = planning;
		this.specialty = specialty;
		this.location = location;
		this.portfoliofile = portfoliofile;
		this.birth = birth;
		
	}
	
	public int[] getEvaluate() {
		return evaluate;
	}
	//개발자 덕목받아서 vo에 집어넣고 평균 합계 구하는 메서드
	public void setEvaluate(String[] cal) {
		
		for (int i = 0; i < cal.length; i++) {
			int inputNum=Integer.parseInt(cal[i]);
			this.evaluate[i]=inputNum;
			this.user_sum+=inputNum;
		}
		
		this.ability=evaluate[0];
		this.social=evaluate[1];
		this.diligent=evaluate[2];
		this.creativity=evaluate[3];
		
		this.user_avg=this.user_sum/cal.length;
		this.setUser_grade(user_avg);
	}
	
	//파일체크 메소드
	//이미지일때는 이미지/ 이미지 아닐땐 파일명
	public boolean isImgChk() {

		boolean res = false;
		
		ArrayList<String> fileArr = new ArrayList<>();
		fileArr.add("jpg");
		fileArr.add("jpeg");
		fileArr.add("bmp");
		fileArr.add("gif");
		fileArr.add("png");
		
		//파일명이 없지 않을때
		if (sysFile != null && !sysFile.equals("") && !sysFile.equals("null")) {
			String ext = sysFile.toLowerCase().substring(sysFile.lastIndexOf(".") + 1);
			res = fileArr.contains(ext);
		}
		return res;
	}
	
	
	public String getUser_grade() {
		return user_grade;
	}

	public void setUser_grade(int avg) {
		this.user_grade = "bronze";
		if (avg>66) {
			this.user_grade = "gold";
		} else if(avg>33){
			this.user_grade = "silver";
		}
	}
	//메서드 오버로딩
	public void setUser_grade(String grade) {
		this.user_grade=grade;
	}

	public String getSysFile() {
		return sysFile;
	}

	public void setSysFile(String sysFile) {
		this.sysFile = sysFile;
	}

	public String getOriFile() {
		return oriFile;
	}

	public void setOriFile(String oriFile) {
		this.oriFile = oriFile;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDevelopment() {
		return development;
	}

	public void setDevelopment(String development) {
		this.development = development;
	}

	public String getDesign() {
		return design;
	}

	public void setDesign(String design) {
		this.design = design;
	}

	public String getPlanning() {
		return planning;
	}

	public void setPlanning(String planning) {
		this.planning = planning;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPortfoliofile() {
		return portfoliofile;
	}

	public void setPortfoliofile(String portfoliofile) {
		this.portfoliofile = portfoliofile;
	}

	public String getUser_emblem() {
		return user_emblem;
	}

	public void setUser_emblem(String user_emblem) {
		this.user_emblem = user_emblem;
	}

	public int getAbility() {
		return ability;
	}

	public void setAbility(int ability) {
		this.ability = ability;
	}

	public int getSocial() {
		return social;
	}

	public void setSocial(int social) {
		this.social = social;
	}

	public int getDiligent() {
		return diligent;
	}

	public void setDiligent(int diligent) {
		this.diligent = diligent;
	}

	public int getCreativity() {
		return creativity;
	}

	public void setCreativity(int creativity) {
		this.creativity = creativity;
	}

	public int getUser_sum() {
		return user_sum;
	}

	public void setUser_sum(int user_sum) {
		this.user_sum = user_sum;
	}

	public int getUser_avg() {
		return user_avg;
	}

	public void setUser_avg(int user_avg) {
		this.user_avg = user_avg;
	}
	
	public String strBirth(){
		return new SimpleDateFormat("yyyy-MM-dd").format(birth);
	}
	
	public void parseBirth(String strBirth){
		try {
			birth = new SimpleDateFormat("yyyy-MM-dd").parse(strBirth);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}
}
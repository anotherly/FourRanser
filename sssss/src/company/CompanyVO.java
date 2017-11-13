package company;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import Project.ProjectVO;

public class CompanyVO {

	String com_id, com_pw, com_name, represent, enroll_Num
	, info, charger, char_Phone, com_Phone, com_Address, 
	com_Email, homepage, com_Grade, found_Day, com_Proj, logo ;
	
	Integer com_Salary, work_Time, promise, com_Sum, com_Avg;
	//기업명으로 프로젝트에 관한 걸 가져옴
	HashMap<String, HashMap<String, ProjectVO>> com_proj = new HashMap<>();
	//프로젝트명으로 프로젝트 객체(프로젝트 정보)을 가져옴
	HashMap<String, ProjectVO> project = new HashMap<>();	
	
	public CompanyVO() {
		// TODO Auto-generated constructor stub
	}	
	
	public CompanyVO(String com_id, String com_name) {
		super();
		this.com_id = com_id;
		this.com_name = com_name;
	}

	public String getCom_id() {
		return com_id;
	}

	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}

	public String getCom_pw() {
		return com_pw;
	}

	public void setCom_pw(String com_pw) {
		this.com_pw = com_pw;
	}

	public String getCom_name() {
		return com_name;
	}

	public void setCom_name(String com_name) {
		this.com_name = com_name;
	}

	public String getRepresent() {
		return represent;
	}

	public void setRepresent(String represent) {
		this.represent = represent;
	}

	public String getEnroll_Num() {
		return enroll_Num;
	}

	public void setEnroll_Num(String enroll_Num) {
		this.enroll_Num = enroll_Num;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getCharger() {
		return charger;
	}

	public void setCharger(String charger) {
		this.charger = charger;
	}

	public String getChar_Phone() {
		return char_Phone;
	}

	public void setChar_Phone(String char_Phone) {
		this.char_Phone = char_Phone;
	}

	public String getCom_Phone() {
		return com_Phone;
	}

	public void setCom_Phone(String com_Phone) {
		this.com_Phone = com_Phone;
	}

	public String getCom_Address() {
		return com_Address;
	}

	public void setCom_Address(String com_Address) {
		this.com_Address = com_Address;
	}

	public String getCom_Email() {
		return com_Email;
	}

	public void setCom_Email(String com_Email) {
		this.com_Email = com_Email;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getCom_Grade() {
		return com_Grade;
	}

	public void setCom_Grade(String com_Grade) {
		this.com_Grade = com_Grade;
	}

	public String getFound_Day() {
		return found_Day;
	}

	public void setFound_Day(String found_Day) {
		this.found_Day = found_Day;
	}

	public String getCom_Proj() {
		return com_Proj;
	}

	public void setCom_Proj(String com_Proj) {
		this.com_Proj = com_Proj;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Integer getCom_Salary() {
		return com_Salary;
	}

	public void setCom_Salary(Integer com_Salary) {
		this.com_Salary = com_Salary;
	}

	public Integer getWork_Time() {
		return work_Time;
	}

	public void setWork_Time(Integer work_Time) {
		this.work_Time = work_Time;
	}

	public Integer getPromise() {
		return promise;
	}

	public void setPromise(Integer promise) {
		this.promise = promise;
	}

	public Integer getCom_Sum() {
		return com_Sum;
	}

	public void setCom_Sum(Integer com_Sum) {
		this.com_Sum = com_Sum;
	}

	public Integer getCom_Avg() {
		return com_Avg;
	}

	public void setCom_Avg(Integer com_Avg) {
		this.com_Avg = com_Avg;
	}

	public HashMap<String, HashMap<String, ProjectVO>> getCom_proj() {
		return com_proj;
	}

	public void setCom_proj(HashMap<String, HashMap<String, ProjectVO>> com_proj) {
		this.com_proj = com_proj;
	}

	public HashMap<String, ProjectVO> getProject() {
		return project;
	}

	public void setProject(HashMap<String, ProjectVO> project) {
		this.project = project;
	}	
	
}

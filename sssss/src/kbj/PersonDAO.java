package kbj;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import Project.ProjectVO;

public class PersonDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "1234";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public PersonDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	//개인 회원 전체리스트 가져옴
	public ArrayList<PersonVO> list()
	{
		ArrayList<PersonVO> res =new ArrayList<>();

		try {
			sql = "select * from person";
			stmt=con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				PersonVO vo = new PersonVO();
				
				vo.setUser_id(rs.getString("user_id"));
				vo.setUser_email(rs.getString("user_email"));
				
				res.add(vo);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	//유저 아이디로 유저 전체정보 조회
	public PersonVO detail(String user_id)
	{
		PersonVO res =null;

		try {
			sql = "select * from person where user_id = ?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, user_id);
			rs = stmt.executeQuery();
			
			if(rs.next()){
				res = new PersonVO();
				
				res.setUser_id(rs.getString("user_id"));
				res.setUser_name(rs.getString("user_name"));
				res.setUser_email(rs.getString("user_email"));
				res.setUser_phone(rs.getString("user_phone"));
				res.setGender(rs.getString("gender"));
				res.setBirth(rs.getDate("birth"));
				res.setPhoto(rs.getString("photo"));
				res.setDevelopment(rs.getString("development"));
				res.setDesign(rs.getString("design"));
				res.setSpecialty(rs.getString("specialty"));
				res.setPlanning(rs.getString("planning"));
				res.setLocation(rs.getString("location"));
				res.setPortfoliofile(rs.getString("portfoliofile"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	//개인회원 vo 받아와서 등록(회원가입)
	public void insert(PersonVO mem ){
		try {
			sql = "insert into person (user_id,user_pw,user_name,user_phone, gender, user_email,birth, photo,development,design,planning,specialty,location,portfoliofile) values (" 
					+"?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					
			System.out.println(sql);
			stmt=con.prepareStatement(sql);
			stmt.setString(1,mem.getUser_id());
			stmt.setString(2,mem.getUser_pw());
			stmt.setString(3, mem.getUser_name());
			stmt.setString(4, mem.getUser_phone());
			stmt.setString(5, mem.getGender());
			stmt.setString(6, mem.getUser_email());
			stmt.setString(7,mem.strBirth());
			stmt.setString(8,mem.getPhoto());
			stmt.setString(9,mem.getDevelopment());
			stmt.setString(10,mem.getDesign());
			stmt.setString(11,mem.getPlanning());
			stmt.setString(12,mem.getSpecialty());
			stmt.setString(13,mem.getLocation());
			stmt.setString(14,mem.getPortfoliofile());
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	//회원 삭제
	public boolean delete(PersonVO mem ){
		boolean res = false;
		try {
			sql = "delete from person where user_id=? and user_pw =?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, mem.getUser_id());
			stmt.setString(2, mem.getUser_pw());
			
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public PersonVO login(PersonVO vo){
		PersonVO res =null;

		try {
			sql = "select * from Person where user_id = ? and user_pw = ?";
		
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, vo.getUser_id());
			stmt.setString(2, vo.getUser_pw());
			/*stmt.setString(3, vo.getCom_name());*/
			
			rs = stmt.executeQuery();
			
			if(rs.next()){
				res = new PersonVO();
				
				res.setUser_id(rs.getString("user_id"));	
				res.setUser_pw(rs.getString("user_pw"));	
				res.setUser_name(rs.getString("user_name"));			
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public boolean modify(PersonVO mem ){
		boolean res = false;
		try {
			
			sql = "update person set user_name =?,user_phone=?, user_email =?,gender=?, development=?,design=?,planning=?,specialty=?, location=? where user_id =? and user_pw =?";
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1,mem.getUser_name() );
			stmt.setString(2,mem.getUser_phone() );
			stmt.setString(3, mem.getUser_email());
			stmt.setString(4,mem.getGender() );
			stmt.setString(5,mem.getDevelopment());
			stmt.setString(6,mem.getDesign());
			stmt.setString(7,mem.getPlanning());
			stmt.setString(8,mem.getSpecialty());
			stmt.setString(9,mem.getLocation());
			/*stmt.setString(10,mem.getPhoto());*/
			stmt.setString(10,mem.getUser_id());
			stmt.setString(11, mem.getUser_pw());
			System.out.println(sql);
			System.out.println(stmt.executeUpdate());
			
			if(stmt.executeUpdate()>0){
				res = true;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public boolean IDChecker(String User_id){
		boolean res=false;
		try{
			
			sql = "select * from person where User_id=?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, User_id);
			rs = stmt.executeQuery();
			
			if(rs.next()){
				res= true;
				System.out.println(res);
			}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				close();
			
			}
			return res;
			
		}
	
	public PersonVO findPerGrade(String user_id,String p_id){
		PersonVO res =null;
		try {
			sql = "select * from person_grade where user_id = ? and p_id = ?";
			stmt=con.prepareStatement(sql);
			stmt.setString(1, user_id);
			stmt.setString(2, p_id);
			rs = stmt.executeQuery();
			
			/*if(rs.next()){
				res = new PersonVO(ability, social, diligent, creativity, evalFile);
						new ProjectVO
				(rs.getString("user_id"), rs.getString("p_id"), rs.getInt("ability"), 
				rs.getInt("social"), rs.getInt("diligent"), 
				rs.getInt("creativity"), rs.getInt("sum"),rs.getInt("avg"));
			}*/
			System.out.println(stmt.executeUpdate());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}

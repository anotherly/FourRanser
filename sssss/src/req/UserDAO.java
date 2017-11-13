package req;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public UserDAO() {
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
	
	
	public UserVO showAll(){
		UserVO res = new UserVO();

		try {
			sql = "select * from loginUser";
			
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				res.setId(rs.getString("id"));
				res.setPw(rs.getString("pw"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public void insert(UserVO mem )
	{
		try {
			
			sql = "insert into loginUser values (?,?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			
			
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	public boolean delete(UserVO mem )
	{
		boolean res = false;
		try {
			
			sql = "delete from User where id= ?  and pw = ?";
		
			stmt= con.prepareStatement(sql);
			
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			
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
	
	
	public boolean modify(UserVO uv )
	{
		boolean res = false;
		try {
			
			
			sql = "update User set pw = ? where id=?";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,uv.getId());
			
			stmt.setString(2, uv.getPw());
			
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
	
	
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}


package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import dbutil.DBUtil;
import pojo.loginPOJO;


public class loginDAO {
	public static boolean isUserValid(loginPOJO userDetails) {
		boolean validStatus=false;
		try
		{
			Connection con=DBUtil.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT * from login where username='"+userDetails.getUsername()+"'AND password='"+userDetails.getPassword()+"'");
			while(rs.next())	
			{
				validStatus=true;
			}
			DBUtil.closeConnection(con);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	return validStatus;
	}
	public static int proSignup(loginPOJO user) throws Exception {
		int status = 0;

		Connection con = DBUtil.getConnection();
		PreparedStatement ps = con.prepareStatement("INSERT into login values(?,?)");
		ps.setString(1, user.getUsername());
		ps.setString(2, user.getPassword());

		status = ps.executeUpdate();
		return status;
	}

}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBUtil;

import pojo.groceryPOJO;



public class groceryDAO {
	public static List<groceryPOJO> getProductlist() throws Exception
	{
		List<groceryPOJO> grocerylist=new ArrayList<groceryPOJO>();
		Connection con=DBUtil.getConnection();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("SELECT * from grocery");
		while(rs.next())	
		{
			groceryPOJO grocery=new groceryPOJO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5));
			grocerylist.add(grocery);
		}
		DBUtil.closeConnection(con);
		return grocerylist; 
	}

public static int addgrocery(groceryPOJO grocery) throws Exception
{
	int status=0;
	
	Connection con=DBUtil.getConnection();
	java.sql.PreparedStatement ps=con.prepareStatement("INSERT into grocery values(?,?,?,?,?)");
	ps.setString(1, grocery.getPid());
	ps.setString(2, grocery.getPname());
	ps.setString(3, grocery.getPcategory());
	ps.setString(4, grocery.getPweight());
	ps.setInt(5, grocery.getPprice());
	status=ps.executeUpdate();
	return status;
}
public static groceryPOJO getProductById(String groceryid) throws Exception 
{ 
groceryPOJO grocery = null; 
	 
			Connection conn = DBUtil.getConnection(); 
		PreparedStatement ps= conn.prepareStatement("SELECT * FROM grocery WHERE grocery_product_id = ?"); 
		    ps.setString(1,groceryid); 
			ResultSet rs = ps.executeQuery(); 
			while(rs.next()) 
			{ 
			grocery = new groceryPOJO (rs.getString("grocery_product_id"),rs.getString("grocery_product_name"),rs.getString("grocery_product_category"),rs.getString("grocery_product_weight"),rs.getInt("grocery_product_price")); 
		} 				 
	return grocery; 
}

public static int editgrocery(groceryPOJO grocery) throws Exception
{
	int status=0;
	
	Connection con=DBUtil.getConnection();
	PreparedStatement ps=con.prepareStatement("UPDATE grocery set grocery_product_name=?,grocery_product_category=?,grocery_product_weight=?,grocery_product_price=? where grocery_product_id=?");
	
	ps.setString(5, grocery.getPid());
	ps.setString(1, grocery.getPname());
	ps.setString(2, grocery.getPcategory());
	ps.setString(3, grocery.getPweight());
	ps.setInt(4, grocery.getPprice());
	status=ps.executeUpdate();
	return status;
}
public static int deletegrocery(String Pid) throws Exception 
 	{ 
 		int status = 0; 
 			Connection con = DBUtil.getConnection(); 
 			PreparedStatement ps= con.prepareStatement("DELETE FROM grocery where grocery_product_id = ?"); 
		ps.setString(1,Pid); 
		status = ps.executeUpdate(); 
 		return status; 
 	} 

}
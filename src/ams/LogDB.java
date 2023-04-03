package ams;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LogDB {
 public static String logDB(String p1)
 {
	 try {
	 Connection con=DBConnect.getCon();
	 PreparedStatement ps1=con.prepareStatement("select * from regAms");
		ResultSet rs=ps1.executeQuery();
		while(rs.next())
		{
			if(rs.getString(4).equals(p1)) {
			System.out.println(rs.getString(1));
			return rs.getString(1);}
		}
	 }
	 catch(Exception e1)
		{System.out.println(e1);}
	 return "not found";
 }
}
           
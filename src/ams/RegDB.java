package ams;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.catalina.Session;


public class RegDB {
	public static String regIns(String n,String e,String p,String o)
	{
		
		int rnum=0;
		int r=0;
		try{
			java.util.Date d =new java.util.Date();
			int d1=(d.getYear()-100)*10000;
			String d2=d.getDate()+"/"+d.getMonth()+"/"+(d.getYear()-100);
		Connection con1=DBConnect.getCon();
		PreparedStatement ps1=con1.prepareStatement("select reg_no from regAms order by reg_no desc");
		ResultSet rs=ps1.executeQuery();
		if(rs.next())
	        rnum=rs.getInt(1)+1;
	     else
	       rnum=d1;  
		Connection con=DBConnect.getCon();
		PreparedStatement ps=con.prepareStatement("insert into regAms values(?,?,?,?,?,?,?)");
		ps.setInt(1, rnum);
		ps.setString(2,n);
		ps.setString(3,e);
		ps.setString(4, p);
		ps.setString(5, o);
		ps.setString(6, d2);
		ps.setInt(7, 0);
		 r=ps.executeUpdate();
			return "success";
					}
		catch(Exception e1)
		{System.out.println(e1);}
		return "done";
	}

}

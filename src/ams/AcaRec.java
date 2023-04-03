package ams;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class AcaRec {
	public static int acaRec(String rn,String rnum,String o,String fn,String mn,String ln,String a,String e,String ap,String g,String dob,String rank,String ten, String tw)
	{
		  try{ 
		  int r=0;
		  Connection con=DBConnect.getCon();
		  PreparedStatement  ps=con.prepareStatement("insert into regAca values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		  ps.setString(1, rnum);
		  ps.setString(2, o); 
		  ps.setString(3,fn); 
		  ps.setString(4,mn);
		  ps.setString(5,ln); 
		  ps.setString(6, a); 
		  ps.setString(7, e);
		  ps.setString(8, ap);
		  ps.setString(9, g); 
		  ps.setString(10, dob);
		  ps.setString(11, ten);
		  ps.setString(12, tw); 
		  ps.setString(13, rank);
		  PreparedStatement ps1=con.prepareStatement("update regAms set status=? where reg_no=?");
		  ps1.setInt(1,4);
	      ps1.setString(2,rn);
	      ps1.executeUpdate();
		  r=ps.executeUpdate(); 
		  return r;
		  } catch(Exception e1) 
		  {System.out.println(e1);}
		 
		return 0;
}}

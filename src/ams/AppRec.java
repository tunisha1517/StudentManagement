package ams;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class AppRec {
public static int appRec(String rn,String rnum,String fn,String mn,String ln,String a,String e,String ap,String g,String dob,String c1,String c2,String c3)
{
	 try{ 
		 
	  int r=0;
	  Connection con=DBConnect.getCon();
	  PreparedStatement  ps=con.prepareStatement("insert into regApp values(?,?,?,?,?,?,?,?,?,?,?,?)");
	  ps.setString(1, rnum); 
	  ps.setString(2,fn); 
	  ps.setString(3,mn);
	  ps.setString(4,ln); 
	  ps.setString(5, a); 
	  ps.setString(6, e);
	  ps.setString(7, ap);
	  ps.setString(8, g); 
	  ps.setString(9, dob); 
	  ps.setString(10, c1);
	  ps.setString(11, c2);
	  ps.setString(12, c3);
	  r=ps.executeUpdate();
	  PreparedStatement ps1=con.prepareStatement("update regAms set status=? where reg_no=?");
	  ps1.setInt(1,1);
      ps1.setString(2,rn);
      ps1.executeUpdate();
	  return r;
	  
	  } catch(Exception e1) {System.out.println(e1);}
	 
	return 0;
}
}

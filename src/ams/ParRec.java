package ams;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class ParRec {

	public static int parRec(String rn,String rnum,String fn,String mn,String ln,String a,String e,String ap)
	{
		try{ 
			  int r=0;
			  Connection con=DBConnect.getCon();
			  PreparedStatement  ps=con.prepareStatement("insert into regPar values(?,?,?,?,?,?,?)");
			  ps.setString(1, rnum); 
			  ps.setString(2,fn); 
			  ps.setString(3,mn);
			  ps.setString(4,ln); 
			  ps.setString(5, a); 
			  ps.setString(6, e);
			  ps.setString(7, ap);
			  PreparedStatement ps1=con.prepareStatement("update regAms set status=? where reg_no=?");
			  ps1.setInt(1,2);
		      ps1.setString(2,rn);
		      ps1.executeUpdate();
			  r=ps.executeUpdate(); 
			  return r;
			  
			  } catch(Exception e1) {System.out.println(e1);}
			 
			return 0;
		
		
	}
}

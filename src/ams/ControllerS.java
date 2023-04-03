package ams;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ControllerS
 */
@WebServlet("/ControllerS")
public class ControllerS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    		String b=request.getParameter("b");
    		 
		 if(b.equals("Register"))
		 {
			    String n=request.getParameter("n");
				String e=request.getParameter("e");
				String p=request.getParameter("p");
				String o=request.getParameter("o");
			//otp check
			 String r=RegDB.regIns(n,e,p,o);
			 if(r.equals("success"))
				 response.sendRedirect("login.jsp");
			 
		 }
		 if(b.equals("Login"))
		 {
		 String p1=request.getParameter("pn");
			 System.out.println("l"+p1);
			 String r=LogDB.logDB(p1);
			 if(r.equals("not found"))
				 System.out.println("wrong login");
			 else
				 response.sendRedirect("al.jsp?n="+r+"");

		 }
		 if(b.equals("sP"))
		 {
			 String rn=request.getParameter("mob");
			 String regN=request.getParameter("regN");
			 String fn=request.getParameter("nf");
			 String fp=request.getParameter("fp");
			 String nm=request.getParameter("nm");
			 String mp=request.getParameter("mp");
			 String fo=request.getParameter("fo");
			 String mo=request.getParameter("mo");
			int s1= ParRec.parRec(rn,regN,fn,fp,nm,mp,fo,mo);
			if(s1>=1)
			   response.sendRedirect("par1.jsp");
			 //System.out.println(p1);	 
	}
		 if(b.equals("sA"))
		 {
			 
			 String rn=request.getParameter("mob");
			 String regN=request.getParameter("regN");
			 String fn=request.getParameter("fn");
			 String mn=request.getParameter("mn");
			 String ln=request.getParameter("ln");
			 String a=request.getParameter("a");
			 String e=request.getParameter("e");
			 String ap=request.getParameter("ap");
			 String g=request.getParameter("g");
			 String dob=request.getParameter("dob");
			 String c1=request.getParameter("c1");
			 String c2=request.getParameter("c2");
			 String c3=request.getParameter("c3");
			int s1= AppRec.appRec(rn,regN,fn,mn,ln,a,e,ap,g,dob,c1,c2,c3);
			if(s1>=1)
			   response.sendRedirect("app.jsp");
			 //System.out.println(p1);	 
	}
		 if(b.equals("sAc"))
		 {
			 String rn=(String)request.getAttribute("p1");
			 String regN=request.getParameter("regN");
			 String o=request.getParameter("o");
			 String fn=request.getParameter("or");
			 String mn=request.getParameter("oa");
			 String ln=request.getParameter("r");
			 String a=request.getParameter("s");
			 String e=request.getParameter("c");
			 String ap=request.getParameter("pt");
			 String g=request.getParameter("pw");
			 String dob=request.getParameter("pr");
			 String rank=request.getParameter("file1");
			 String ten=request.getParameter("file2");
			 String tw=request.getParameter("file3");
			int s1= AcaRec.acaRec(rn,regN,o,fn,mn,ln,a,e,ap,g,dob,rank,ten,tw);
			if(s1>=1)
			   response.sendRedirect("aca.jsp");
			 //System.out.println(p1);	 
	}
		 if(b.equals("sAd"))
		 {
			 String rn=(String)request.getAttribute("p1");
			 String regN=request.getParameter("regN");
			 String fn=request.getParameter("c");
			 String mn=request.getParameter("s");
			 String ln=request.getParameter("h");
			 String a=request.getParameter("a");
			 String e=request.getParameter("st");
			 String ap=request.getParameter("l");
			 String g=request.getParameter("p");
			int s1= AddRec.addRec(rn,regN,fn,mn,ln,a,e,ap,g);
			if(s1>=1)
			   response.sendRedirect("add.jsp");
			 //System.out.println(p1);	 
	}

}}

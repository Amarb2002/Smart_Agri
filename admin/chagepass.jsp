<title>PROCESSING.....</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String bt=request.getParameter("Submit");
	if(bt==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{
		String un=session.getAttribute("uname").toString();
		String op=request.getParameter("opass");
		String np=request.getParameter("npass");
		String cp=request.getParameter("cpass");

		ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and Password='"+op+"'");
     	if(rs.next())
     	{
     		if(np.equals(cp))
     		{
     			int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
     			out.println("<script>alert('Password changed successfully');document.location='home.jsp';</script>");
     		}
     		else
     		{
     		    out.println("<script>alert('new and confirm  Password does not match ');document.location='changepassf.jsp';</script>");
     		}
     	}
     	else
     	{
               
     	    out.println("<script>alert('invalid old/cureent password does not match ');document.location='changepassf.jsp';</script>");
     	}
     }					
%>
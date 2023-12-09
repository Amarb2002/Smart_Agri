<title>PROCESSING.....</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String ch=request.getParameter("Submit");
	if(ch==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{
		String a=request.getParameter("fn");
		String b=request.getParameter("ln");
		String c=request.getParameter("em");
		String d=request.getParameter("mb");
		String e=request.getParameter("ds");
		//String f=request.getParameter("ph");
		
		ResultSet rs=s.stm.executeQuery("select * from officer_details where o_email='"+c+"'");
		if(rs.next())
		{
		   out.println("<script>alert('Email ID Already Used or Exists');history.back();</script>");
		}
		else
		{
		   	ResultSet rs1=s.stm.executeQuery("select * from officer_details where o_mobile='"+d+"'");
			if(rs1.next())
			{
			   out.println("<script>alert('Mobile No. Already Used or Exists');history.back();</script>");
			}
			else
			{
			   int z=s.stm.executeUpdate("insert into officer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','user.png')");
		       int z1=s.stm.executeUpdate("insert into login values('"+c+"','"+d+"','officer','-','-','active')");
		       out.println("<script>alert('Offier Added Successfully');alert('Username: Email & Password: Mobile No.');document.location='officer_view.jsp';</script>");
			}
		}
		
	}
%>
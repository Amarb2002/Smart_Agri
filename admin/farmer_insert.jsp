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
		String c=request.getParameter("mn");
		String d=request.getParameter("ad");
		String e=request.getParameter("im");
		int z=s.stm.executeUpdate("insert into farmer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
		out.println("<script>alert('insert successfully');document.location='farmer_view.jsp';</script>");
		
	}
					
%>
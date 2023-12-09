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
		String a=request.getParameter("fi");
		String b=request.getParameter("pi");
		String c=request.getParameter("qa");
		String d=request.getParameter("st");
		int z=s.stm.executeUpdate("insert into order_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
		out.println("<script>alert('insert successfully');document.location='order_view.jsp';</script>");
		
	}
%>
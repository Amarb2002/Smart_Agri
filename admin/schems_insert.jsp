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
		String a=request.getParameter("sn");
		String b=request.getParameter("sd");
		String c=request.getParameter("sp");
		String d=request.getParameter("ss");
		int z=s.stm.executeUpdate("insert into schems values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
		out.println("<script>alert('insert successfully');document.location='scheme_view.jsp';</script>");
		
	}
%>
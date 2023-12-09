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
		String a=request.getParameter("si");
		String b=request.getParameter("fi");
		String c=request.getParameter("sd");
		String d=request.getParameter("ss");
		int z=s.stm.executeUpdate("insert into scheme_applied values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
		out.println("<script>alert('insert successfully');document.location='sca_view.jsp';</script>");
		
	}
%>
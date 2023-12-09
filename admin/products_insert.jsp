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
		String a=request.getParameter("pn");
		String b=request.getParameter("pd");
		String c=request.getParameter("pc");
		String d=request.getParameter("pp");
		//String e=request.getParameter("ph");
		int z=s.stm.executeUpdate("insert into products values(null,'"+a+"','"+b+"','"+c+"','"+d+"','noimg.webp')");
		out.println("<script>alert('Click ok to Upload Photo');document.location='products_select_photo.jsp';</script>");
		
	}
%>
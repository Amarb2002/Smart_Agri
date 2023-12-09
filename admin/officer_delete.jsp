<title>PROCESSING.....</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String ch=request.getParameter("id");
	String em=request.getParameter("em");
	if(ch==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{
		
		int z=s.stm.executeUpdate("delete from officer_details where o_id='"+ch+"'");
		int z1=s.stm.executeUpdate("delete from login where username='"+em+"'");
		out.println("<script>alert('Delated Successfully');document.location='officer_view.jsp';</script>");
		
	}
					
%>

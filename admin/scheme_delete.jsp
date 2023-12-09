<title>PROCESSING.....</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String ch=request.getParameter("id");
	if(ch==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{
		
		int z=s.stm.executeUpdate("delete from schems where sc_id='"+ch+"'");
		out.println("<script>alert('delated successfully');document.location='scheme_view.jsp';</script>");
		
	}
					
%>
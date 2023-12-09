<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String ch=request.getParameter("Update");
	if(ch==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{
		String x=request.getParameter("id");
		String a=request.getParameter("fi");
		String b=request.getParameter("ls");
		String c=request.getParameter("st");
		String d=request.getParameter("wr");
		int z=s.stm.executeUpdate("update land_details set f_id='"+a+"',l_size='"+b+"',l_soiltype='"+c+"',l_waterresource='"+d+"' where l_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='landview.jsp';</script>");
		
	}
					
%>

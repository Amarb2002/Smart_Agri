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
		String a=request.getParameter("fn");
		String b=request.getParameter("ln");
		String c=request.getParameter("mn");
		String d=request.getParameter("ad");
		String e=request.getParameter("im");
		int z=s.stm.executeUpdate("update farmer_details set f_name='"+a+"',f_lname='"+b+"',f_mobile='"+c+"',f_address='"+d+"',f_photo='"+e+"' where f_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='farmer_view.jsp';</script>");
		
	}
					
%>
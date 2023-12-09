<title>PROCESSING.....</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String ch=request.getParameter("update");
	if(ch==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{   String x=request.getParameter("id");
		String a=request.getParameter("fn");
		String b=request.getParameter("ln");
		String c=request.getParameter("em");
		String d=request.getParameter("mb");
		String e=request.getParameter("ds");
		String f=request.getParameter("ph");
		int z=s.stm.executeUpdate("update officer_details set o_fname='"+a+"',o_lname='"+b+"',o_email='"+c+"',o_mobile='"+d+"',o_degisnation='"+e+"',o_photo='"+f+"' where o_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='officer_view.jsp';</script>");
	}
%>
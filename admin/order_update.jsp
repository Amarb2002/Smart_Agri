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
		String a=request.getParameter("fi");
		String b=request.getParameter("pi");
		String c=request.getParameter("qa");
		String d=request.getParameter("st");
		int z=s.stm.executeUpdate("update order_details set f_id='"+a+"',pr_id='"+b+"',quantity='"+c+"',status='"+d+"' where or_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='order_view.jsp';</script>");
		
	}
%>

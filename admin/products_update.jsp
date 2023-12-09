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
		String a=request.getParameter("pn");
		String b=request.getParameter("pd");
		String c=request.getParameter("pc");
		String d=request.getParameter("pp");
		String e=request.getParameter("ph");
		int z=s.stm.executeUpdate("update products set 	pr_name='"+a+"',pr_description='"+b+"',	pr_code='"+c+"',pr_price='"+d+"', pr_photo='"+e+"' where pr_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='products_view.jsp';</script>");
		
	}
%>

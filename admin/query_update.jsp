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
		String a=request.getParameter("qf");
		String b=request.getParameter("qu");
		String c=request.getParameter("ad");
		String d=request.getParameter("qp");
		String e=request.getParameter("re");
		String f=request.getParameter("rd");
		int z=s.stm.executeUpdate("update queries set q_form='"+a+"',queriy='"+b+"',a_date='"+c+"',q_photo='"+d+"',replay='"+e+"',r_date='"+f+"' where q_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='query_view.jsp';</script>");
		
	}
					
%>
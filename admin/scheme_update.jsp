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
		String a=request.getParameter("sn");
		String b=request.getParameter("sd");
		String c=request.getParameter("sp");
		String d=request.getParameter("ss");
		int z=s.stm.executeUpdate("update schems set sc_name='"+a+"', sc_description='"+b+"',sc_photo='"+c+"',sc_status='"+d+"' where sc_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='scheme_view.jsp';</script>");
	}
%>
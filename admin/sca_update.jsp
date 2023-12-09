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
		String a=request.getParameter("si");
		String b=request.getParameter("fi");
		String c=request.getParameter("sd");
		String d=request.getParameter("ss");
		int z=s.stm.executeUpdate("update scheme_applied set sc_id='"+a+"',f_id='"+b+"',sca_date='"+c+"',sca_status='"+d+"' where sca_id='"+x+"'");
		out.println("<script>alert('updated successfully');document.location='sca_view.jsp';</script>");
		
	}
%>

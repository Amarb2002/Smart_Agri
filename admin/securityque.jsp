<%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
<%
	String chk=request.getParameter("valid");
	if(chk!=null)
	{
		out.println("<script>history.back();</script>");
	}	
	else 
	{
		String un=session.getAttribute("uname").toString();
		String sq=request.getParameter("sq");
		String sa=request.getParameter("sa");

				int z=s.stm.executeUpdate("update login set s_qstn='"+sq+"',s_ans='"+sa+"' where username='"+un+"'");
				out.println("<script>alert('Security Details Updated...');document.location='home.jsp';</script>");
	}
%>
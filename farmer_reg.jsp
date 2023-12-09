<title>PROCESSING.....</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String ch=request.getParameter("Submit");
	if(ch==null)
	{
		out.println("<script>history.back();</script>");
	}
	else
	{
		String a=request.getParameter("fn");
		String b=request.getParameter("ln");
		String c=request.getParameter("mn");
		String d=request.getParameter("ad");
		String ps=a+"321";

		ResultSet rs=s.stm.executeQuery("select * from farmer_details where f_mobile='"+c+"'");
		if(!rs.next())
		{
			int z=s.stm.executeUpdate("insert into farmer_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','user.png')");
			
			int z1=s.stm.executeUpdate("insert into login values('"+c+"','"+ps+"','farmer','-','-','active')");
	
			out.println("<script>alert('Registed Successfully');alert('Username is Reg. Mobile no. & Password id Your Firstname321');document.location='index.jsp';</script>");
		}
		else
		{
			out.println("<script>alert('Mobile No. Already Used or Exists');history.back();</script>");
		}
	}
					
%>
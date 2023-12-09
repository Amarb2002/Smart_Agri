<title>Validating...</title>
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
     String chk=request.getParameter("valid");
     if(chk!=null)
    {
     	    String un=request.getParameter("uname");
     		String ps=request.getParameter("pass");
     		ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
     		if(rs.next())
     		{
     			ResultSet rs1=s.stm.executeQuery("select * from login where username='"+un+"' and Password='"+ps+"'");
     			if(rs1.next())
     			{
     				ResultSet rs2=s.stm.executeQuery("select * from login where username='"+un+"' and Password='"+ps+"' and status='active'");
     				if(rs2.next())
    				{
    					String utp=rs2.getString("utype");
    					session.setAttribute("uname",un);
    					if(utp.equals("admin"))
    					{
    						response.sendRedirect("admin/home.jsp");
    					}
    					else if(utp.equals("officer"))
    					{
    						response.sendRedirect("officer/home.jsp");
    					}
    					else if(utp.equals("farmer"))
    					{
    						response.sendRedirect("farmer/home.jsp");
    					}
    		       	else
    				{
    				    out.println("<script>alert('Invalid module');document.location='index.jsp';</script>");
    				}
    			}
    			else
    			{
    			   out.println("<script>alert('In-active account. try later');document.location='index.jsp';</script>");
    			}
    		}
    		else
    		{
    		  out.println("<script>alert('Invalid or wrong password');document.location='index.jsp';</script>");
    		}
    	}
    	else
    	{
    	   out.println("<script>alert('Invalid username or username not found...!');document.location='index.jsp';</script>");
    	}		
    }
    else
    {
      out.println("<script>history.back();</script>");
    }
    				
%>
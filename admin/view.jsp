<table width="569" border="1" align="center">
  <tr>
    <td><div align="center"><strong>s.no</strong></div></td>
    <td><div align="center"><strong>first name</strong></div></td>
    <td><div align="center"><strong>last name</strong></div></td>
    <td><div align="center"><strong>mobile number </strong></div></td>
    <td><div align="center"><strong>address</strong></div></td>
    <td><div align="center"><strong>photo</strong></div></td>
    <td><div align="center"><strong>action</strong></div></td>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  
  <jsp:getProperty name="s" property="conn"/>
  <%
	int sn=0;
	ResultSet rs=s.stm.executeQuery("select * from farmer_details");
	while(rs.next())
	{
		int i=rs.getInt("f_id");
		sn++;
%>
  <tr>
    <td><div align="center"><%=sn%></div></td>
    <td><div align="center"><%=rs.getString("f_name")%></div></td>
    <td><div align="center"><%=rs.getString("f_lname")%></div></td>
    <td><div align="center"><%=rs.getString("f_mobile")%></div></td>
    <td><div align="center"><%=rs.getString("f_address")%></div></td>
    <td><div align="center"><%=rs.getString("f_photo")%></div></td>
    <td><a href="edit.jsp?id=<%=i%>">EDIT</a>|<a onClick="return confirm('do you want to delete your data....?')" href="delete.jsp?id=<%=i%>">Delete</a></td>
  </tr>
  <% 
  }
  %>
</table>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>


<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>

  <div class="main-content">
        <div class="section__content section__content--p30">
          <div class="container-fluid">
            <div class="row">
			  
				 <!-- Start -->
				 <div class="col-md-12">
				   <!--<div class="card"> --> 
					 
					  <!-- USER DATA-->
                                <div class="user-data m-b-30">
                                  <h3 class="title-3 m-b-30"><strong>officer Details</strong> 
								  | <a href="officer_form.jsp"><button class="btn btn-success">Add New</button></a></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="721" class="table">
  <thead>
  <tr>
      <th width="29"><div align="center"><strong>#</strong></div></th>
      <th width="104"><div align="center"><strong>Firstname</strong></div></th>
      <th width="103"><div align="center"><strong>Lastname</strong></div></th>
      <th width="60"><div align="center"><strong>Email</strong></div></th>
      <th width="75"><div align="center"><strong>Mobile</strong></div></th>
      <th width="143"><div align="center"><strong>Degisnation</strong></div></th>
      <th width="63"><div align="center"><strong>Photo</strong></div></th>
      <th width="108"><div align="center"><strong>Action</strong></div></th>
    </tr>
	</thead>
<%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
	int sn=0;
	ResultSet rs=s.stm.executeQuery("select * from officer_details");
	while(rs.next())
	{
		int i=rs.getInt("o_id");
		String eml=rs.getString("o_email");
		sn++;
%>	
<tbody>
  <tr>
    <td><div align="center"><%=sn%></div></td>
    <td><div align="center"><%=rs.getString("o_fname")%></div></td>
    <td><div align="center"><%=rs.getString("o_lname")%></div></td>
    <td><div align="center"><%=eml%></div></td>
    <td><div align="center"><%=rs.getString("o_mobile")%></div></td>
	<td><div align="center"><%=rs.getString("o_degisnation")%></div></td>
    <td><div align="center"><img src="../uploads/<%=rs.getString("o_photo")%>" width="80px" height="80px"/></div></td>
   <td><div align="center"><!--<a href="officer_edit.jsp?id=<%=i%>" title="Edit" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>  --><a onClick="return confirm('Do you want to delete?')" href="officer_delete.jsp?id=<%=i%>&em=<%=eml%>" title="Delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a></div></td>
  </tr>
  <% 
  }
  %>
	</tbody>
              </table>
                                  </div>
                                    
                                </div>
                                <!-- END USER DATA-->
					
				  <!--</div> -->
                </div>
				<!-- End -->
                
            </div>
          </div>
    </div>

</div>

    </div>		


<jsp:include page="footer.jsp"></jsp:include>
<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>




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
                                  <h3 class="title-3 m-b-30"><strong>Farmer Details</strong> 
								<!--   | <a href="farmer_form.jsp"><button class="btn btn-success">Add New</button></a> --></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="896" class="table">
  <thead>
  <tr>
    <th width="47"><div align="center"><strong>#</strong></div></th>
    <th width="170"><div align="center"><strong>Firstname</strong></div></th>
    <th width="168"><div align="center"><strong>Lastname</strong></div></th>
    <th width="124"><div align="center"><strong>Mobile</strong></div></th>
    <th width="141"><div align="center"><strong>Address</strong></div></th>
    <th width="89"><div align="center"><strong>Photo</strong></div></th>
    <th width="125"><div align="center"><strong>Action</strong></div></th>
  </tr>
  </thead>
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
<tbody>
  <tr>
    <td><div align="center"><%=sn%></div></td>
    <td><div align="center"><%=rs.getString("f_name")%></div></td>
    <td><div align="center"><%=rs.getString("f_lname")%></div></td>
    <td><div align="center"><%=rs.getString("f_mobile")%></div></td>
    <td><div align="center"><%=rs.getString("f_address")%></div></td>
    <td><div align="center"><img src="../uploads/<%=rs.getString("f_photo")%>" width="80px" height="80px"/></div></td>
    <td><div align="center"><a href="landview.jsp?fid=<%=i%>" style="color:#FFFFFF" class="btn btn-primary btn-sm"><i class="fa fa-map"></i> View Land</a></div></td>
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

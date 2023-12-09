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
                                  <h3 class="title-3 m-b-30"><strong>Order Details</strong> 
								 <!-- | <a href="order_form.jsp"><button class="btn btn-success">Add New</button></a> --></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="896" class="table">
  <thead>
    <tr>
      <th width="156" height="38"><div align="center"><strong>#</strong></div></th>
      <th width="175"><div align="center"><strong>Farmer Name</strong></div></th>
      <th width="111"><div align="center"><strong>Product Name</strong></div></th>
	   <th width="111"><div align="center"><strong>Price</strong></div></th>
      <th width="118"><div align="center"><strong>Quantity</strong></div></th>
	   <th width="90"><div align="center"><strong>Bill Price</strong></div></th>
      <th width="80"><div align="center"><strong>Status</strong></div></th>
       <th width="150"><div align="center"><strong>Action</strong></div></th>
    </tr>
    <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
	int sn=0;
	ResultSet rs=s.stm.executeQuery("select * from order_details o,farmer_details f,products p where o.f_id=f.f_id and o.pr_id=p.pr_id");
	while(rs.next())
	{
		int i=rs.getInt("or_id");
		sn++;
		int fid=rs.getInt("f_id");
		String sts=rs.getString("status");
%>
  <tr>
    <td><div align="center"><%=sn%></div></td>
    <td><div align="center"><a href="farmer_profile.jsp?fid=<%=fid%>&pg=od" title="View Profile"><%=rs.getString("f_name")%> <%=rs.getString("f_lname")%></a></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    	<td><div align="center"><%=rs.getString("pr_price")%></div></td>
    <td><div align="center"><%=rs.getString("quantity")%></div></td>
	<td><div align="center"><%=rs.getString("tl_price")%></div></td>
	<td><div align="center"><% if(sts.equals("accepted")) { %><label class="badge badge-success">Order Confirmed</label><% } else { %><label class="badge badge-primary">Requested</label><% }%> </div></td>
    <td><div align="center"><% if(sts.equals("requested")) { %><a onClick="return confirm('Are you sure?')" href="order_prms.jsp?id=<%=i%>&pr=acpt" title="Confirm" class="btn btn-success btn-sm"><i class="fa fa-check"></i> Accept</a> <a onClick="return confirm('Are you sure?')" href="order_prms.jsp?id=<%=i%>&pr=rjct" title="Reject" class="btn btn-danger btn-sm"><i class="fa fa-close"></i> Reject</a><% } else { out.println("-"); } %></div></td>

  </tr>
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






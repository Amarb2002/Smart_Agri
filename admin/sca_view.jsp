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
                                  <h3 class="title-3 m-b-30"><strong>Scheme Applied</strong> 
								  <!--| <a href="sca_form.jsp"><button class="btn btn-success">Add New</button></a> --></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="896" class="table">
  <thead>
    <tr>
      <th width="50"><div align="center"><strong>#</strong></div></th>
      <th width="214"><div align="center"><strong>Scheme Name</strong></div></th>
      <th width="198"><div align="center"><strong>Farmer Name</strong></div></th>
      <th width="111"><div align="center"><strong>Applied Date</strong></div></th>
      <th width="111"><div align="center"><strong>Status</strong></div></th>
    </tr>
   <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <%
	int sn=0;
	ResultSet rs=s.stm.executeQuery("select * from scheme_applied sa,schems s,farmer_details f where sa.f_id=f.f_id and sa.sc_id=s.sc_id");
	while(rs.next())
	{
		int i=rs.getInt("sca_id");
		sn++;
		String sts=rs.getString("sca_status");
		int fid=rs.getInt("f_id");
%>
  <tr>
    <td height="26"><div align="center"><%=sn%></div></td>
	<td><div align="center"><%=rs.getString("sc_name")%></div></td>
    <td><div align="center"><a href="farmer_profile.jsp?fid=<%=fid%>&pg=sa" title="View Profile"><%=rs.getString("f_name")%> <%=rs.getString("f_lname")%></a></div></td>
    <td><div align="center"><%=rs.getString("sca_date")%></div></td>
    <td><div align="center"><% if(sts.equals("accepted")) { %><label class="badge badge-success">Accepted</label><% } else if(sts.equals("rejected")) { %><label class="badge badge-danger">Rejected</label><% } else { %><label class="badge badge-primary">Requested</label><% }%> </div></td>
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







  


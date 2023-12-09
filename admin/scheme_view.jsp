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
                                  <h3 class="title-3 m-b-30"><strong>Schemes</strong> 
								 <!--<a href="schems_form.jsp"><button class="btn btn-success">Add New</button></a> --></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="896" class="table">
  <thead>
    <tr>
      <td width="100"><div align="center"><strong>#</strong></div></td>
      <td width="222"><div align="center"><strong>Scheme Name</strong></div></td>
      <td width="217"><div align="center"><strong>Description</strong></div></td>
      <td width="198"><div align="center"><strong>Photo / File</strong></div></td>
      <td width="137"><div align="center"><strong>Status</strong></div></td>
      <!--<td width="115"><div align="center"><strong>Action</strong></div></td> -->
    </tr>
  <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <jsp:useBean id="ss" class="agri.dbconnect"/>
  <jsp:getProperty name="ss" property="conn"/>
  <%
	int sn=0;
	String un=session.getAttribute("uname").toString();
	ResultSet rs=s.stm.executeQuery("select * from schems");
	while(rs.next())
	{
		int i=rs.getInt("sc_id");
		String fl=rs.getString("sc_photo");
		sn++;
%>
  <tr>
     <td><div align="center"><%=sn%></div></td>
	<td><div align="center"><%=rs.getString("sc_name")%></div></td>
    <td><div align="center"><%=rs.getString("sc_description")%></div></td>
    <td><div align="center"><a href="../uploads/<%=fl%>" target="_blank" title="View / Download"><img src="../wfs_tmp/images/pdf_files.ico" width="80px" height="80px"/></a></div></td>
    <td><div align="center"><label class="badge badge-success"><%=rs.getString("sc_status")%></label></div></td>
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






  



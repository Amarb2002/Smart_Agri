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
                                  <h3 class="title-3 m-b-30"><strong>land Details</strong> 
								  <a href="landform.jsp" class="btn btn-success btn-sm">Add New</a></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="721" class="table">
  <thead>
  <tr>
    <td width="95"><div align="center"><strong>#</strong></div></td>
    <td width="127"><div align="center"><strong>Farmer</strong></div></td>
    <td width="111"><div align="center"><strong>Land Size</strong></div></td>
    <td width="151"><div align="center"><strong>Land Soil Type</strong></div></td>
    <td width="195"><p align="center"><strong>Water Resources</strong></p></td>
  </tr>
  <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  
  <jsp:getProperty name="s" property="conn"/>
  <%
	int sn=0;
	String un=session.getAttribute("uname").toString();
	ResultSet rs=s.stm.executeQuery("select * from land_details l,farmer_details f where l.f_id=f.f_id and f.f_mobile='"+un+"'");
	while(rs.next())
	{
		int i=rs.getInt("l_id");
		sn++;
%>
  <tr>
     <td><div align="center"><%=sn%></div></td>
	<td><div align="center"><%=rs.getString("f_name")%><%=rs.getString("f_lname")%></div></td>
    <td><div align="center"><%=rs.getString("l_size")%></div></td>
    <td><div align="center"><%=rs.getString("l_soiltype")%></div></td>
    <td><div align="center"><%=rs.getString("l_waterresource")%></div></td>
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


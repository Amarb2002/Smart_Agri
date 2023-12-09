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
                                  <h3 class="title-3 m-b-30"><strong> Products </strong> 
								  | <a href="products_form.jsp"><button class="btn btn-success">Add New</button></a></h3>
                                 
                             <!-- <div class="table-responsive table-data"> -->
<div class="table-responsive">
<table width="896" class="table">
  <thead>
    <tr>
      <th width="70"><div align="center"><strong>#</strong></div></th>
      <th width="90"><div align="center"><strong>Pro. Code</strong></div></th>
	  <th width="90"><div align="center"><strong>Product Name</strong></div></th>
      <th width="124"><div align="center"><strong>Description</strong></div></th>
      <th width="80"><div align="center"><strong>Price</strong></div></th>
      <th width="100"><div align="center"><strong>Photo</strong></div></th>
      <th width="90"><div align="center"><strong>Action</strong></div></th>
    </tr>
   <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  
  <jsp:getProperty name="s" property="conn"/>
  <%
	int sn=0;
	ResultSet rs=s.stm.executeQuery("select * from products");
	while(rs.next())
	{
		int i=rs.getInt("pr_id");
		sn++;
%>
  <tr>
    <td><div align="center"><%=sn%></div></td>
    <td><div align="center"><%=rs.getString("pr_name")%></div></td>
    <td><div align="center"><%=rs.getString("pr_description")%></div></td>
    <td><div align="center"><%=rs.getString("pr_code")%></div></td>
    <td><div align="center"><%=rs.getString("pr_price")%></div></td>
    <td><div align="center"><img src="../uploads/<%=rs.getString("pr_photo")%>" width="250" height="250"/></div></td>
     <td><div align="center"><!--<a href="products_edit.jsp?id=<%=i%>" title="Edit" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a> --> <a onClick="return confirm('Are you sure?')" href="product_delete.jsp?id=<%=i%>" title="Delete" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a></div></td>
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







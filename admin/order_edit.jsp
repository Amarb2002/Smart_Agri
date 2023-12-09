<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
  

  <div class="main-content">
        <div class="section__content section__content--p30">
          <div class="container-fluid">
            <div class="row">
        
                  
          
         <!-- Start -->
         <div class="col-md-12">
           <div class="card">
        
           <div class="card-header">
                                        <strong>Order Details</strong>
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->

<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%String m=request.getParameter("id");%>
<%
	ResultSet rs=s.stm.executeQuery("select * from order_details where or_id="+m+"");
	rs.next();
	%>
	<form name="form1" method="post" action="order_update.jsp">
	<input type="hidden" name="id" value="<%=m%>"/>
	<div class="form-group">
  	<label>Farmer Name</label>
  <input class="form-control" name="fi" value="<%=rs.getString("f_id")%>" type="text" class="style1" id="fi">
    </div>
	
	 <div class="form-group">
  	<label>Product Name</label>
  <input class="form-control" name="pi" value="<%=rs.getString("pr_id")%>" type="text" class="style1" id="pi">
     </div>

   <div class="form-group">
  	<label>Quantity</label>
  <input class="form-control" name="qa" value="<%=rs.getString("quantity")%>" type="text" class="style1" id="qa">
   </div>

    <div class="form-group">
  	<label>Ststus</label>
  <input class="form-control" name="st" value="<%=rs.getString("status")%>" type="text" class="style1" id="st">
     </div>
	 
 <div class="card-footer" align="center">
      <button type="submit" class="btn btn-primary btn-sm" name="submit"><i class="fa fa-dot-circle-o"></i> update</button>
      <button type="reset" class="btn btn-danger btn-sm"><i class="fa fa-ban"></i> Reset</button>
      </div>
</form>
</div>
          </div>
                </div>
        <!-- End -->
                
                    </div>
                </div>
            </div>

        </div>

    </div>    

<jsp:include page="footer.jsp"></jsp:include>



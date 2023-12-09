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
                                        <strong>Officer Details</strong>
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->

<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%String m=request.getParameter("id");%>
<%
	ResultSet rs=s.stm.executeQuery("select * from officer_details where o_id="+m+"");
	rs.next();
	%>
	<form name="form1" method="post" action="officer_update.jsp">
	<input type="hidden" name="id" value="<%=m%>"/>
	<div class="form-group">
  	<label>First Name</label>
  <input class="form-control" name="fn" type="text"  value="<%=rs.getString("o_fname")%>" id="fn">
   </div>

    <div class="form-group">
     <strong><label>Last Name</label>
  <input class="form-control" name="ln" type="text"  value="<%=rs.getString("o_lname")%>" id="ln">
   </div>

   <div class="form-group">
     <label>Email</label>
  <input class="form-control" name="em" type="text"  value="<%=rs.getString("o_email")%>" id="em">
    </div>

    <div class="form-group">
     <label>Mobile</label>
  <input class="form-control" name="mb" type="text"  value="<%=rs.getString("o_mobile")%>" id="mb">
    </div>

    <div class="form-group"></strong>
     <label>Degisnation</label>
  <input class="form-control" name="ds" type="text"  value="<%=rs.getString("o_degisnation")%>" id="ds">
    </div>

    <div class="form-group"></strong>
     <label>Photo</label>
  <input class="form-control" name="ph" type="text"  value="<%=rs.getString("o_photo")%>" id="ph">
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


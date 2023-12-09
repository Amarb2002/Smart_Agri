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
				   <div class="card">
				
					 <div class="card-header">
                                        <strong>Officer</strong> Details
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->

 <%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <jsp:include page="val.jsp"></jsp:include> 
<form id="WFS_Riz" name="form1" method="post" action="officer_insert.jsp">
  <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">First Name</label></div>
	    <div class="col-12 col-md-10">
	  <input class="validate[required,custom[onlyLetter]] form-control" name="fn" type="text" id="fn">
	   </div>
    </div>
	
    <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Last Name</label></div>
	  <div class="col-12 col-md-10">
<input class="validate[required,custom[onlyLetter] form-control" name="ln" type="text" id="ln">
       </div>
    </div>
	
	 <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Email</label></div>
	  <div class="col-12 col-md-10"><input class="validate[required,custom[email] form-control" name="em" type="text" id="em">
      </div>
    </div>
	
     
    <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Mobile</label></div>
	  <div class="col-12 col-md-10"><input class="validate[required,custom[mobile] form-control" name="mb" type="text" id="mb">
    </div>
    </div>
	  
    <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Degisanation</label></div>
	  <div class="col-12 col-md-10"><select class="validate[required] form-control" name="ds" id="ds">
	  <option value="">-- Select --</option> <option>Head Officer</option> <option>Jnr. Officer</option>
	  </select>
     </div>
    </div>
        
    <!-- <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Photo</label></div>
	  <div class="col-12 col-md-10"><input class="validate[required] form-control" name="ph" type="text" id="ph">
    </div>
    </div> -->
	
      <div class="card-footer" align="center">
        <button type="submit" class="btn btn-primary btn-sm" name="Submit"><i class="fa fa-dot-circle-o"></i> Submit</button>
	   <button type="reset" class="btn btn-danger btn-sm"><i class="fa fa-ban"></i> Reset</button>
      </div>
   
</form>
  <!-- Form End -->                                 
    
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

<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>
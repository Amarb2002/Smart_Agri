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
                                        <strong>Select & Upload Photo <a onclick="return confirm('Are you sure?')" href="products_view.jsp" class="btn btn-danger btn-sm">Cancel</a></strong>
                                    </div>
                                    <div class="card-body card-block">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" enctype="multipart/form-data" action="products_select_upload.jsp">
	 
    <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Select Photo</label></div>
	    <div class="col-12 col-md-10">
		<input class="validate[required] form-control" required name="photo" type="file" id="photo">
    </div>
	 </div>

	 
<div class="card-footer" align="center">
        <button type="submit" class="btn btn-primary btn-sm" name="Submit"><i class="fa fa-dot-circle-o"></i>Uplaod</button>
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
<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>

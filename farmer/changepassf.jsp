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
                                        <strong>Change Password</strong>
                                    </div>
                                    <div class="card-body card-block">

<jsp:include page="val.jsp"></jsp:include>
<form id="WFS_Riz" name="form1" method="post" action="chagepass.jsp">
	 
    <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Old password</label></div>
	    <div class="col-12 col-md-10">
		<input class="validate[required] form-control" name="opass" type="password" id="op">
    </div>
	 </div>
	 
    <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">New Password</label></div>
	    <div class="col-12 col-md-10">
		<input class="validate[required] form-control" name="npass" type="password" id="np">
		   <div class="row form-group">
		    </div>
	 </div>
		   
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Confirm Password</label></div>
	    <div class="col-12 col-md-10">
		<input class="validate[required] form-control" name="cpass" type="password" id="cp">
		 </div>
	 </div>

	 
<div class="card-footer" align="center">
        <button type="submit" class="btn btn-primary btn-sm" name="Submit"><i class="fa fa-dot-circle-o"></i> change password</button>
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
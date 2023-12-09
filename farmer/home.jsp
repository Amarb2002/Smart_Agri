<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")!=null)
{
%>
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="header1.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>

  <div class="main-content">
        <div class="section__content section__content--p30">
          <div class="container-fluid">
            <div class="row">
			  <div class="col-md-12">
        <div class="section__content section__content--p30">
          <div class="container-fluid">
            <div class="row">
			  <div class="col-md-12">
                
				<div class="card">
                  
				  
				  
                  <div class="card-body">
				   <h4>Welcome to Farmer Panel</h4>
				   </br>
                    <img src="../wfs_tmp/images/farmer.jpeg" width="100%"/>
				 </div>
					
                </div>
              </div>
              <!--/.col-->
                        
				 
				 
                    </div>
                </div>
            </div>

        </div>  </div> </div>	

    </div>		
<jsp:include page="footer1.jsp"></jsp:include>
<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>
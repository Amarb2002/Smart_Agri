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
                                        <strong>Product Details</strong> 
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->    
	
	<%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <jsp:include page="val.jsp"></jsp:include> 
  
<%@page import="java.util.Random.*;"%>	
<%
int randomcode=(int)
(Math.random()*400000)+100000;
String prcd=""+randomcode;
%>	
  
<form id="WFS_Riz" name="form1" method="post" action="products_insert.jsp">
    
	<div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Product Code</label></div>
	    <div class="col-12 col-md-10"><input class="validate[required] form-control" readonly="" value="<%=prcd%>" name="pc" type="text" id="pc"></td>
     </div>
    </div>
	
	<div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Product Name</label></div>
	    <div class="col-12 col-md-10"><input class="validate[required] form-control" name="pn" type="text" id="pn">
     </div>
    </div>
	
      <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Description</label></div>
	    <div class="col-12 col-md-10">
	      <textarea name="pd" class="validate[required] form-control" id="pd"></textarea>
	      </td>
    </div>
    </div>
	
	
      <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Price</label></div>
	    <div class="col-12 col-md-10"><input class="validate[required,custom[onlyNumber] form-control" maxlength="4" name="pp" type="text" id="pp"></td>
     </div>
    </div>
	
	
     <div class="card-footer" align="center">
	   <button type="submit" class="btn btn-primary btn-sm" name="Submit"><i class="fa fa-dot-circle-o"></i> Submit</button>
	   <button type="reset" class="btn btn-danger btn-sm"><i class="fa fa-ban"></i> Reset</button>
	</div>
</form>

<%
}
else
{
out.println("<script>alert('Your Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
%>
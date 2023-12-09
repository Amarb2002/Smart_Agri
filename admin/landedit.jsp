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
                                        <strong>Land</strong> Details
                                    </div>
                                    <div class="card-body card-block">
<form name="form1" method="post" action="landupdate.jsp">
<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%String m=request.getParameter("id");%>
<%
	ResultSet rs=s.stm.executeQuery("select * from land_details where l_id="+m+"");
	rs.next();
	%>
	<form name="form1" method="post" action="landupdate.jsp">
	<input type="hidden" name="id" value="<%=m%>"/>
  <div class="form-group">
	 <label>Farmer Id</label>
         <td><input class="form-control" value="<%=rs.getString("f_id")%>" name="fi" type="text" id="fi"></td>
  </div>
  
      <div class="form-group">
	 <label>Land Size</label>
          <td><input class="form-control" value="<%=rs.getString("l_size")%>" name="ls" type="text" id="ls"></td>
   </div>
   
       <div class="form-group">
	 <label>Soil Type</label>
        <td><input class="form-control" value="<%=rs.getString("l_soiltype")%>" name="st" type="text" id="st"></td>
    </div>
	
      <div class="form-group">
	 <label>WaterResource</label>
    <td><input class="form-control" value="<%=rs.getString("l_waterresource")%>" name="wr" type="text" id="wr"></td>
    </div>

	
      <div class="card-footer" align="center">
      <button type="submit" class="btn btn-primary btn-sm" name="submit"><i class="fa fa-dot-circle-o"></i> Update</button>
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


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
                                        <strong>Scheme Applied</strong>
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->

<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%String m=request.getParameter("id");%>
<%
	ResultSet rs=s.stm.executeQuery("select * from scheme_applied where sca_id="+m+"");
	rs.next();
	%>
	<form name="form1" method="post" action="sca_update.jsp">
	<input type="hidden" name="id" value="<%=m%>"/>
	 <div class="form-group">
  	<label>Scheme Id</label>
  <input class="form-control" name="si" value="<%=rs.getString("sc_id")%>" type="text" id="si">
      </div>
	 
     <div class="form-group">
  	<label>Farmer id</label>
  <input class="form-control" name="fi" value="<%=rs.getString("f_id")%>" type="text" id="fi">
     </div>
	 
      <div class="form-group">
  	<label>Scheme Date</label>
  <input class="form-control" name="sd" value="<%=rs.getString("sca_date")%>" type="text" id="sd">
     </div>
	 
    <div class="form-group">
  	<label>Status</label>
  <input class="form-control" name="ss" value="<%=rs.getString("sca_status")%>" type="text" id="ss">
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








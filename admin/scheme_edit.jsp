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
                                        <strong>Schems</strong>
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->

<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%String m=request.getParameter("id");%>
<%
	ResultSet rs=s.stm.executeQuery("select * from schems where sc_id="+m+"");
	rs.next();
	%>
	<form name="form1" method="post" action="scheme_update.jsp">
	<input type="hidden" name="id" value="<%=m%>"/>
<div class="form-group">
  	<label>Scheme name</label>
  <input class="form-control" name="sn" value="<%=rs.getString("sc_name")%>" type="text" id="sn"></td>
      </div>
	 
   <div class="form-group">
  	<label>Description</label>
  <input class="form-control" name="sd" value="<%=rs.getString("sc_description")%>" type="text" id="sd"></td>
     </div>
	 
    <div class="form-group">
  	<label>Photo</label>
  <input class="form-control" name="sp" value="<%=rs.getString("sc_photo")%>" type="text" id="sp"></td>
      </div>
	 
     <div class="form-group">
  	<label>Status</label>
  <input class="form-control" name="ss" value="<%=rs.getString("sc_status")%>" type="text" id="ss"></td>
      </div>
	 
     <div class="card-footer" align="center">
      <button type="submit" class="btn btn-primary btn-sm" name="update"><i class="fa fa-dot-circle-o"></i> update</button>
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





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
                                        <strong>Query</strong>
                                    </div>
                                    <div class="card-body card-block">
<!-- Form Start -->

<%@page import="java.sql.*"%>
<%@page import="agri.dbconnect"%>
<jsp:useBean id="s" class="agri.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%String m=request.getParameter("id");%>
<%
	ResultSet rs=s.stm.executeQuery("select * from queries where q_id="+m+"");
	rs.next();
	%>
	<form name="form1" method="post" action="query_update.jsp">
	<input type="hidden" name="id" value="<%=m%>"/>
  <div class="form-group">
  	<label>Query From</label>
  <input class="form-control" name="qf" value="<%=rs.getString("q_form")%>" type="text" id="qf"></td>
     </div>
	 
    <div class="form-group">
  	<label>Query</label>
  <input class="form-control" name="qu" value="<%=rs.getString("queriy")%>" type="text" id="qu"></td>
     </div>
	 
  <div class="form-group">
  	<label>Applyed Date</label>
  <input class="form-control" name="ad" value="<%=rs.getString("a_date")%>" type="text" id="ad"></td>
   </div>
	 
     <div class="form-group">
  	<label>Photo</label>
  <input class="form-control" name="ad" value="<%=rs.getString("q_photo")%>" type="text" id="qp"></td>
     </div>
	 
   <div class="form-group">
  	<label>Replay</label>
  <input class="form-control" name="re" value="<%=rs.getString("replay")%>" type="text" id="re"></td>
     </div>
	 
     <div class="form-group">
  	<label>Replay Date</label>
  <input class="form-control" name="rd" value="<%=rs.getString("r_date")%>" type="text" id="rd"></td>
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







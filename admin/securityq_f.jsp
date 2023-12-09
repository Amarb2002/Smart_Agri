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
                                        <strong>Admin</strong>Panel
                                    </div>
                                    <div class="card-body card-block">

<%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
  <jsp:include page="val.jsp"></jsp:include> 
<form id="WFS_Riz" name="form1" method="post" action="securityque.jsp">
   <div class="row form-group">
	 <div class="col col-md-2"><label for="text-input" class="form-control-label">Security Question </label></div>
	    <div class="col-12 col-md-10">
		<select class="validate[required] form-control" name="sq" id="sq">
	<%
		String un=session.getAttribute("uname").toString();
		ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
		if(rs.next())
		{
			String qstn=rs.getString("s_qstn");
			if(qstn.equals("-"))
			{
	%>
		 <option value="">-- Select Security Question --</option>
	<% } else { %><option><%=qstn%></option><option value="">-- Change Security Question --</option><% } %>
		 <option>What is your First School Name?</option>
		 <option>Where did you born?</option>
		 <option>What is your First pet name?</option>
		 <option>What is your First Crush name?</option>
		 <option>Which is your Fev. Sports Car?</option>
		 <option>Which is your Fev. Game?</option>
	<% } %>
	</select>
	<span style="margin-top:10px; "><font color="#666666">Existing Answer:</font> <font color="#009900" size="4"><%=rs.getString("s_ans")%></font></span>
</div>
	</div>
	<div class="row form-group">
	 <div class="col col-md-2">
	         <div align="justify">
	           <label for="text-input" class="form-control-label">Answer</label>
	           </div>
	 </div>
	    <div class="col-12 col-md-10">
	            <div align="justify">
	              <input class="validate[required] form-control" placeholder="Enter New Answer" name="sa" type="text" id="sa">
                </div>
	    </div>
     </div>
	
	
		<div class="card-footer" align="center">
        <button type="submit" class="btn btn-primary btn-sm" name="Submit">
        <div align="left"><i class="fa fa-dot-circle-o"></i>Submit</div>
        </button>
       <button type="reset" class="btn btn-danger btn-sm">
       <div align="left"><i class="fa fa-ban"></i> Reset</div>
       </button>
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
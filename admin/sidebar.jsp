<%@page import="java.sql.*"%>
  <%@page import="agri.dbconnect"%>
  <jsp:useBean id="s" class="agri.dbconnect"/>
  <jsp:getProperty name="s" property="conn"/>
 <%
    ResultSet rs1=s.stm.executeQuery("select count(or_id) as tor from order_details where status='requested'");
	rs1.next();
	int or=rs1.getInt("tor");
  %>
<!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="#">
                    <img src="../wfs_tmp/images/icon/logo.png" />
                </a>
				&nbsp;&nbsp;<h3>Smart Agri.</h3>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        
                        <li>
                            <a href="home.jsp">
                                <i class="fas fa-home"></i>Home</a>
                        </li>
						<%
							String un=session.getAttribute("uname").toString();
							ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_qstn='-' and s_ans='-'");
							if(!rs.next())
							{
				
            		    %>
        
						<li>
                            <a href="officer_view.jsp"><i class="fas fa-user"></i>Officer Details</a>
                        </li>
						
						<li>
                            <a href="farmer_view.jsp"><i class="fas fa-users"></i>Farmer Details</a>
                        </li>
						
						<!--<li>
                            <a href="landview.jsp"><i class="fas fa-list"></i>Land Details</a>
                        </li> -->
						
						<li>
                            <a href="products_view.jsp"><i class="fas fa-box"></i>Products</a>
                        </li>
						
						<!--<li>
                            <a href="query_view.jsp"><i class="fas fa-list"></i>Queries</a>
                        </li> -->
						
						<li>
                            <a href="order_view.jsp"><i class="fas fa-download"></i>Order Details &nbsp;<label class="badge badge-warning"><%=or%></label></a>
                        </li>
						
						<li>
                            <a href="scheme_view.jsp"><i class="fas fa-certificate"></i>Schemes</a>
                        </li>
						
						<li>
                            <a href="sca_view.jsp"><i class="fas fa-info"></i>Schemes Applied</a>
                        </li> 
						<% } %>
                
						    <li>
                            <a href="securityq_f.jsp"><i class="fas fa-question"></i>Security Question</a>
                        </li>
						
						
                         <li>
                            <a href="changepassf.jsp">
                                <i class="fa fa-key"></i>Change Password</a>
                        </li>
                    
						<li>
                            <a onClick="return confirm('Are you sure?')" href="../logout.jsp">
                                <i class="fa fa-lock"></i>Logout</a>
                        </li> 
                     
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
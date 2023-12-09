
  
<!--<body> -->
<body class="animsition"> 
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="#">
                            <img src="../wfs_tmp/images/icon/logo.png"/>
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        
                        <li>
                            <a href="home.jsp">
                                <i class="fas fa-home"></i>Home</a>
                        </li>
                        
						<!-- <li>
                            <a href="#">
                                <i class="fas fa-copy"></i>Menu</a>
                        </li> -->
                        
						<!--<li>
                            <a href="#">
                                <i class="fa fa-key"></i>Change Password</a>
                        </li>
                        
						<li>
                            <a href="#">
                                <i class="fa fa-lock"></i>Logout</a>
                        </li>
                         -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->
		
		<!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                           <form class="form-header" action="#" method="POST">
                                <input class="au-input au-input--xl" type="hidden" required name="srch" placeholder="Search for Student by USN" />
                               <!-- <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button> -->
                            </form>
							
							
                            <div class="header-button">
                                <div class="noti-wrap"> 
									
                                    <!--<div class="noti__item js-item-menu">
                                        <a title="See All Notice" href="#"><i class="zmdi zmdi-notifications"></i>      
										<span class="quantity">1</span> </a>
                                    </div>
									
									<div class="noti__item js-item-menu">
                                        <a title="See All Feedbacks" href="#"><i class="zmdi zmdi-email"></i>     
										<span class="quantity">1</span> </a>
                                    </div> -->
									
                                </div>
								
								
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="../wfs_tmp/images/logo.png" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Admin</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="../wfs_tmp/images/logo.png" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Hello, Admin</a>
                                                    </h5>
                                                    <span class="email">Administrator Panel</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="changepassf.jsp">
                                                        <i class="zmdi zmdi-key"></i>Change Password</a>
                                                </div>
                                                
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a onClick="return confirm('Are you sure?')" href="../logout.jsp">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->
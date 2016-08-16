<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="<%=request.getContextPath()%>/js/jquery.form.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.js"></script>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
        <title>Login</title>
	</head>
	<body>
		<div class="container-fluid">
			<nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button> <a class="navbar-brand" href="index.html">Hermocorp</a><br>
                    
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navegar">
                        <li class="active">
                            <a href="<%=request.getContextPath()%>">Inicio</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="jumbotron imagen">
                <h1>
                    <kbd> Hermocorp</kbd>
                </h1>
                
            </div>
            
                <div class="container">
			        <div class="card card-container">
			            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
			            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
			            <p id="profile-name" class="profile-name-card"></p>
			            <form class="form-signin" action = "LoginServlet">
			                <span id="reauth-email" class="reauth-email"></span>
			                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required name="email" autofocus>
			                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="password">
			                <div id="remember" class="checkbox">
			                    <label>
			                        <input type="checkbox" value="remember-me"> Remember me
			                    </label>
			                </div>
			                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
			            </form><!-- /form -->
			            
			        </div><!-- /card-container -->
			    </div><!-- /container -->
                                
            <div class="panel-footer">
            </div>			
            <div class="row">
                <div  class="col-md-12 piepagina">
                    Copyright <span class="glyphicon glyphicon-copyright-mark"></span> 2016 Hermosoking.com
                </div>
            </div>
        </div><!--div container fluid-->

		<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	</body>
</html>

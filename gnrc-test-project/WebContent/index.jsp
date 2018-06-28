<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>GNRC</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="gnrc-common-include-css.html"%>
<link rel="stylesheet" href="css/app.css">

</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img alt="" src="image/logo.jpg"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<!-- 	<li><a href="#" data-toggle="modal" data-target="#modal-create">Sign
						Up <i class="fas fa-user-plus"></i>
				</a></li>  -->
				<li><a href="gnrc-login.jsp">Login <i class="fas fa-user"></i></a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<%@include file="create-modal.html"%>
	<%@include file="gnrc-common-include-js.html"%>


</body>
</html>
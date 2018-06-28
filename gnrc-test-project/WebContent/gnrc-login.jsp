<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GNRC</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="gnrc-common-include-css.html"%>
<link rel="stylesheet" href="css/app.css">

</head>
<body>

	<%@include file="nav-bar.html"%>


	<div class="container">

		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<a href="#">Forgot password?</a>
					</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form id="loginform" class="form-horizontal" role="form">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="username" value=""
								placeholder="User Id">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" name="password"
								placeholder="Password">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="fas fa-map-marker-alt"></i></span> <select 
								class="form-control">
								<option value="#">GNRC Dispur</option>
								<option value="#">GNRC Six Mile</option>
								<option value="#">GNRC North Guwahati</option>
								<option value="#">GNRC Barasat</option>
							</select>
						</div>

						<div style="margin-top: 10px; float: right;" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<a id="btn-login" href="#" class="btn btn-default">Reset </a> <a
									id="btn-login" href="#" class="btn btn-success">Login </a>

							</div>
						</div>


						<!-- 	<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									Don't have an account! <a href="#"
										onClick="$('#loginbox').hide();" data-toggle="modal"
										data-target="#modal-create"> Sign Up Here </a>
								</div>
							</div>
						</div>
						 -->
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="create-modal.html"%>
	<%@include file="gnrc-common-include-js.html"%>
</body>
</html>
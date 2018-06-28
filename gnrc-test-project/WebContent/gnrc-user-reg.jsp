<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GNRC</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS  -->
<%@include file="gnrc-common-include-css.html"%>
<link rel="stylesheet" href="css/dashboard.css">
<link rel="stylesheet" href="css/create-user.css">
<link rel="stylesheet" href="css/chosen.min.css">
<!-- End of CSS -->
</head>
<body>

	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<!-- side menu -->
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell valign-top"
				id="side-menu">
				<h1 class="hidden-xs hidden-sm">Navigation</h1>
				<ul>
					<li class="link"><a href="index.jsp"> <span
							class="glyphicon glyphicon-th" aria-hidden="true"></span> <span
							class="hidden-xs hidden-sm">Dashboard</span>
					</a></li>

					<li class="link"><a href="#collapse-post"
						data-toggle="collapse" aria-controls="collapse-post"> <i
							class="far fa-id-card"></i> <span class="hidden-xs hidden-sm">Human
								Resource</span>
					</a>

						<ul class="collapse collapseable" id="collapse-post">
							<li><a href="gnrc-create-user.jsp">User Create Request</a></li>
						</ul></li>


					<li class="link active"><a href="#collapse-comments"
						data-toggle="collapse" aria-controls="collapse-comments"> <i
							class="fas fa-desktop"></i></span> <span class="hidden-xs hidden-sm">Admin</span>

					</a>

						<ul class="collapse collapseable" id="collapse-comments">
							<li><a href="gnrc-user-reg.jsp">User Registration</a></li>
							<!-- <li><a href="new-article.html">Approved<span
									class="label label-success pull-right hidden-xs hidden-sm">10</span></a></li>
							<li><a href="new-article.html">Unapproved<span
									class="label label-warning pull-right hidden-xs hidden-sm">10</span></a></li> -->
						</ul></li>




					<li class="link"><a href="index5.jsp"> <span
							class="glyphicon glyphicon-user" aria-hidden="true"></span> <span
							class="hidden-xs hidden-sm">Commenters</span>
					</a></li>

					<li class="link"><a href="index5.jsp"> <span
							class="glyphicon glyphicon-tags" aria-hidden="true"></span> <span
							class="hidden-xs hidden-sm">Tags</span>
					</a></li>

					<li class="link setting-btn"><a href="index5.jsp"> <span
							class="glyphicon glyphicon-cog" aria-hidden="true"></span> <span
							class="hidden-xs hidden-sm">Settings</span>
					</a></li>
				</ul>
			</div>
			<!-- main content area -->
			<div class="col-md-10 col-sm-11 box display-table-cell valign-top">

				<div class="row">

					<header id="nav-header" class="clearfix">
					<div class="col-md-5">

						<!-- NAV BAR -->
						<nav class="navbar-default pull-left">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="offcanvas" data-target="#side-menu"
							aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>

						</nav>


						<input type="text" class="hidden-sm hidden-xs"
							id="header-search-field" placeholder="Search for something....">
					</div>
					<div class="col-md-7">
						<ul>
							<li id="welcome" class="hidden-xs">Welcome to GNRC
								Administration Panel</li>
							<li class="fixed-width"><a href="#"> <span
									class="glyphicon glyphicon-bell" aria-hidden="true"></span> <span
									class="label label-warning">3</span>
							</a></li>
							<li class="fixed-width"><a href="#"> <span
									class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
									<span class="label label-message">3</span>
							</a></li>
							<li><a href="#" class="logout"> <span
									class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
									log out
							</a></li>
						</ul>
					</div>
					</header>

				</div>


				<!-- Main Content -->
				<div id="content">
					<header>
					<h2 class="page_title">User Registration</h2>
					</header>

					<div class="content-inner">
						<div class="form-wrapper">
							<form>
								<div class="form-group">
									<label class="sr-only">User ID</label> <input type="text"
										class="form-control" id="user_id" name="user_id" placeholder="User ID">
								</div>

								<div class="form-group">
									<label class="sr-only">Password</label> <input type="password"
										class="form-control" id="password" name="password" placeholder="Password">
								</div>

								<div class="form-group">
									<label class="sr-only">Employee ID</label> <input type="text"
										class="form-control" id="employee_id" name="employee_id" placeholder="Employee ID">
								</div>

								<div class="form-group">
									<label class="sr-only">Name</label> <input type="text"
										class="form-control" id="name" name="name" placeholder="Name">
								</div>


								<div class="form-group">
									<label for="role">Role</label> <select
										data-placeholder="Select Roles" name="role" id="role"
										class="form-control">
										<option value="#">GNRC Dispur</option>
										<option value="#">GNRC Six Mile</option>
										<option value="#">GNRC North Guwahati</option>
										<option value="#">GNRC Barasat</option>
									</select>
								</div>
								<div class="form-group">
									<label for="store">Store</label> <select
										data-placeholder="Select tags" name="store"
										id="store" class="form-control">
										<option value="#">GNRC Dispur</option>
										<option value="#">GNRC Six Mile</option>
										<option value="#">GNRC North Guwahati</option>
										<option value="#">GNRC Barasat</option>
									</select>
								</div>
								<div class="form-group">
									<label for="counter">Counter</label> <select
										data-placeholder="Select Counter" name="counter"
										class="form-control" id="counter">
										<option value="#">GNRC Dispur</option>
										<option value="#">GNRC Six Mile</option>
										<option value="#">GNRC North Guwahati</option>
										<option value="#">GNRC Barasat</option>
									</select>
								</div>


								<label class="sr-only">User Type</label>
								<div class="radio">
									<label> <input type="radio" name="user_type"
										id="optionsRadios1" value="normal user" checked>
										Normal User
									</label>
								</div>
								<div class="radio">
									<label> <input type="radio" name="user_type"
										id="optionsRadios2" value="super user"> Super User
									</label>
								</div>

								<div class="clearfix">
									<button type="submit" class="btn btn-primary pull-right">Save
										/ Request</button>
								</div>

							</form>

						</div>

					</div>
				</div>

				<!-- End of Main Content -->

				<div class="row">
					<footer id="admin-footer" class="clearfix">
					<div class="pull-left">
						<b>Copyright</b>&copy;2018
					</div>
					<div class="pull-right">Admin System</div>
					</footer>
				</div>
			</div>

		</div>

	</div>























	<!-- JS -->
	<%@include file="gnrc-common-include-js.html"%>
	<script type="text/javascript" src="js/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="js/dashboard.js"></script>

	<script type="text/javascript">
		var config = {
			'.chosen-select' : {},
			'.chosen-select-deselect' : {
				allow_single_deselect : true
			},
			'.chosen-select-no-single' : {
				disable_search_threshold : 10
			},
			'.chosen-select-no-result' : {
				no_results_texts : 'Oops, nothing found'
			},
			'.chosen-select-width' : {
				width : "95%"
			}
		}

		for ( var selector in config) {
			$(selector).chosen(config[selector]);
		}
	</script>

	<!-- End of JS -->
</body>
</html>
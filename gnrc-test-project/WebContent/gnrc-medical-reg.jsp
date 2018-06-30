<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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

					<li class="link"><a href="#collapse-hr" data-toggle="collapse"
						aria-controls="collapse-hr"> <i class="far fa-id-card"></i> <span
							class="hidden-xs hidden-sm">Human Resource</span>
					</a>

						<ul class="collapse collapseable" id="collapse-hr">
							<li><a href="gnrc-create-user.jsp">User Create Request</a></li>
						</ul></li>


					<li class="link"><a href="#collapse-admin"
						data-toggle="collapse" aria-controls="collapse-admin"> <i
							class="fas fa-desktop"></i><span class="hidden-xs hidden-sm">Admin</span>
					</a>

						<ul class="collapse collapseable" id="collapse-admin">
							<li><a href="gnrc-user-reg.jsp">User Registration</a></li>
						</ul></li>


					<li class="link active"><a href="#collapse-registration"
						data-toggle="collapse" aria-controls="collapse-registration">
							<i class="fas fa-plus"></i> <span class="hidden-xs hidden-sm">Registration</span>

					</a>

						<ul class="collapse collapseable" id="collapse-registration">
							<li><a href="#">Medical Registration </a></li>
							<li><a href="#">Outdoor Registration </a></li>
							<li><a href="#">External Registration </a></li>
							<li><a href="#">Indoor Registration </a></li>
							<li><a href="#">Police Case Detail </a></li>
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
					<h2 class="page_title">Medical Registration</h2>
					</header>

					<div class="content-inner">
						<div class="form-wrapper">
							<form>
								<div class="row">
									<div class="col-xs-4">
										<input type="text" class="form-control" name="mrd_number"
											placeholder="MRD Number">
									</div>
									<div class="col-xs-4">
										<input type="text" class="form-control" name="reg_date"
											placeholder="Registration Date">
									</div>
									<div class="col-xs-4">
										<input type="text" class="form-control" name="status"
											placeholder="Satus">
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-xs-2">
										<select data-placeholder="" name="" id="location"
											class="form-control">
											<option value="MR">MR</option>
											<option value="MR">MRS</option>
											<option value="MR">DR</option>
										</select>
									</div>
									<div class="col-xs-3">
										<input type="text" class="form-control" name="first_name"
											placeholder="First Name">
									</div>
									<div class="col-xs-2">
										<input type="text" class="form-control" name="middle_name"
											placeholder="Middle Name">
									</div>
									<div class="col-xs-3">
										<input type="text" class="form-control" name="last_name"
											placeholder="Last Name">
									</div>
									<div class="col-xs-2">
										<select data-placeholder="" name="gender" id="gender"
											class="form-control">
											<option value="MALE">MALE</option>
											<option value="FEMALE">FEMALE</option>
										</select>
									</div>
								</div>
								<br>
								<div class="row">
									<div class="col-xs-2">
										<input type="text" class="form-control" name="date_of_birth" id="date_of_birth"
											placeholder="DOB">
									</div>
									<div class="col-xs-2">
										<input type="text" class="form-control" name="middle_name"
											placeholder="Middle Name">
									</div>
									<div class="col-xs-3">
										<input type="text" class="form-control" name="last_name"
											placeholder="Last Name">
									</div>
									<div class="col-xs-2">
										<select data-placeholder="" name="gender" id="gender"
											class="form-control">
											<option value="MALE">MALE</option>
											<option value="FEMALE">FEMALE</option>
										</select>
									</div>
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
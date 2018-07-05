<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GNRC</title>
<!-- CSS  -->
<%@include file="gnrc-common-include-css.html"%>
<link rel="stylesheet" href="css/dashboard.css">
<link rel="stylesheet" href="css/create-user.css">
<link rel="stylesheet" href="css/chosen.min.css">
<link rel="stylesheet" href="css/gnrc-user-reg.css">
<!-- End of CSS -->
</head>
<body>

	<!-- Side bar, Header, Main Content, Footer -->
	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<!-- side menu -->
			<div
				class="col-md-2 col-sm-1 hidden-xs display-table-cell valign-top"
				id="side-menu">
				<h1 class="hidden-xs hidden-sm">GNRC</h1>
				<ul>
					<li class="link"><a href="index5.jsp"> <span
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
							class="fas fa-desktop"></i> <span class="hidden-xs hidden-sm">Admin</span>

					</a>

						<ul class="collapse collapseable" id="collapse-admin">
							<li><a href="#">User Registration </a></li>
						</ul></li>

					<li class="link active"><a href="#collapse-registration"
						data-toggle="collapse" aria-controls="collapse-registration">
							<i class="fas fa-plus"></i> <span class="hidden-xs hidden-sm">Registration</span>

					</a>

						<ul class="collapse collapseable" id="collapse-registration">
							<li><a href="gnrc-medical-reg.jsp">Medical Registration
							</a></li>
							<li><a href="gnrc-op-reg.jsp">Outdoor Registration </a></li>
							<li><a href="gnrc-ep-reg.jsp">External Registration </a></li>
							<li><a href="gnrc-ip-reg.jsp">Indoor Registration </a></li>
							<li><a href="gnrc-police-case.jsp">Police Case Detail </a></li>
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


				<!-- User Registration Form -->
				<form action="" method="post">

					<!-- DASHBOARD -->
					<div id="dashboard-con">
						<div class="row">
							<div class="col-md-6 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Patient Detail</h5>
									</header>


									<div class="form-horizontal">

										<div class="form-group">
											<label class="control-label col-xs-3" for="mrd"> MRD
												Number:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm" id="mrd"
													name="mrd_number" placeholder="MRD Number">
											</div>

											<label class="control-label col-xs-3" for="reg_date">
												Regn. Date:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													id="reg_date" name="reg_date" placeholder="Regn. Date">
											</div>

										</div>



										<div class="form-group">
											<label class="control-label col-xs-3" for="p_name">
												Patient Name:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm" id="p_name"
													name="p_name" placeholder="Patient Name">
											</div>
											<label class="control-label col-xs-3" for="p_sex">Patient
												Sex:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm" id="p_sex"
													name="p_sex" placeholder="Patient Sex">

											</div>

										</div>

										<div class="form-group">
											<label class="control-label col-xs-3" for="dt_of_bt">
												Date of Birth:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													id="dt_of_bt" name="dt_of_bt" placeholder="Date of Birth">
											</div>
											<label class="control-label col-xs-3" for="m_status">
												Marital Status:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													id="m_status" name="m_status" placeholder="Status">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="age"> Age:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control input-sm" id="age"
													name="age" placeholder="Age">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6 dashboard-right-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Outdoor Patient Registration Detail</h5>
									</header>


									<div class="form-horizontal">

										<div class="form-group">
											<label class="control-label col-xs-3" for="mrd">
												Patient Number:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm" id="mrd"
													name="mrd_number" placeholder="MRD Number">
											</div>

											<label class="control-label col-xs-3" for="reg_date">
												OP Regn. Date:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													id="reg_date" name="reg_date"
													placeholder="Registration Date">
											</div>

										</div>



										<div class="form-group">
											<label class="control-label col-xs-3" for="title">
												Category:</label>
											<div class="col-xs-3">
												<select data-placeholder="" name="marital_status"
													id="marital_status" class="form-control input-sm">
													<option value="0" selected="selected">Category</option>
													<option value="MARRIED">MARRIED</option>
													<option value="UNMARRIED">UNMARRIED</option>
												</select>
											</div>
											<label class="control-label col-xs-3" for="title">Validity
												Date:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													name="first_name" placeholder="First Name">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-xs-3" for="sub_category">
												Sub Category:</label>
											<div class="col-xs-3">
												<select data-placeholder="" name="marital_status"
													id="sub_category" class="form-control input-sm">
													<option value="0" selected="selected">Sub Category</option>
													<option value="MARRIED">MARRIED</option>
													<option value="UNMARRIED">UNMARRIED</option>
												</select>
											</div>
											<label class="control-label col-xs-3" for="op_status">OP
												Status:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													id="op_status" name="op_status" placeholder="OP Status">
											</div>
										</div>


										<div class="form-group">
											<label class="control-label col-xs-3" for="card_no">
												Card Number:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control input-sm"
													id="card_no" name="card_no" placeholder="Card Number">
											</div>

										</div>



									</div>
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-6 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Treatment Detail</h5>
									</header>

									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="speciality">
												Speciality:</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="speciality" name="speciality" placeholder="Speciality">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="treatment">
												Treatment:</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="treatment" name="treatment" placeholder="Treatment">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="remark">Remark:</label>
											<div class="col-xs-7">
												<textarea rows="2" class="form-control" id="remark"
													placeholder="Remark"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6 dashboard-right-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Visit Detail</h5>
									</header>


									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="visit_no">Visit
												Number:</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="visit_no" name="dt_of_birth" placeholder="Visit Number">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="visit_date">Visit
												Date:</label>

											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													name="visit_date" id="visit_date" placeholder="Visit Date">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="appt_no">Appointment
												No.: </label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													name="appt_number" id="appt_number"
													placeholder="Appointment Number">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="doctor">Doctor:
											</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													name="doctor" id="doctor" placeholder="Doctor">
											</div>
										</div>


									</div>
								</div>

							</div>
						</div>

						<div class="row">
							<div class="col-md-6 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Patient Relation Detail</h5>
									</header>

									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="letter_no">Letter
												Number:</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="letter_no" name="letter_no" placeholder="Letter No">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="letter_date">Letter
												Date:</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="letter_date" name="letter_date"
													placeholder="Letter Date">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="letter_no">Relation
												Code:</label>
											<div class="col-xs-7">
												<select data-placeholder="" name="relation_no"
													id="relation_no" class="form-control input-sm">
													<option value="0" selected="selected">Category</option>
													<option value="MARRIED">MARRIED</option>
													<option value="UNMARRIED">UNMARRIED</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="letter_no">Employee
												Id: </label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="letter_no" name="letter_no" placeholder="Employee Id">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="emp_desig">Employee
												Designation: </label>
											<div class="col-xs-7">
												<select data-placeholder="" name="emp_desig" id="emp_desig"
													class="form-control input-sm">
													<option value="0" selected="selected">Category</option>
													<option value="MARRIED">MARRIED</option>
													<option value="UNMARRIED">UNMARRIED</option>
												</select>
											</div>
										</div>
									</div>




								</div>





							</div>
							<div class="col-md-6 dashboard-right-cell">

								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Source</h5>
									</header>

									<div class="form-horizontal">

										<table id="op-source-table" class="table table-striped table-bordered"
											style="width: 100%">
											<thead>
												<tr>
													<th>Source</th>
													<th>Detail</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>System Architect</td>
													<td><input type="text" class="form-control input-sm"
													id="letter_no" name="letter_no" placeholder="Employee Id"></td>
												</tr>
												<tr>
													<td>System Architect</td>
													<td><input type="text" class="form-control input-sm"
													id="letter_no" name="letter_no" placeholder="Employee Id"></td>
												</tr>
											</tbody>
										</table>
										<div style="padding-right: 16px;" class="form-group">
											<a class="btn btn-primary pull-right" data-toggle="modal"
												data-target="#myModal"> Source</a>
											<%@include file="create-source-model.jsp"%>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-12">
								<div class="admin-content-con">
									<div class="form-horizontal">
										<div class="form-group">
											<div style="padding-right: 16px;" class="pull-right">
												<input type="reset" class="btn btn-default" value="Reset">
												<input type="submit" class="btn btn-primary" value="Submit">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- End of Dashboard -->
				</form>

				<!-- End of Registration Form -->



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

	<!-- End of Side bar, Header, Main Content, Footer -->






	<!-- JS -->
	<%@include file="gnrc-common-include-js.html"%>
	<script type="text/javascript" src="js/chosen.jquery.min.js"></script>
	<script type="text/javascript" src="js/dashboard.js"></script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							$('#fromDate')
									.on(
											"change",
											function() {

												var mdate = $('#fromDate')
														.val().toString();
												if (mdate.length === 10) {
													mdate = "0" + mdate;
												}
												var dayThen = parseInt(mdate
														.substring(0, 2), 10);
												var month = mdate.substring(3,
														6);
												var monthThen = "JanFebMarAprMayJunJulAugSepOctNovDec"
														.indexOf(month) / 3 + 1;
												var yearThen = parseInt(mdate
														.substring(7, 11), 10);
												var today = new Date();
												var birthday = new Date(
														yearThen,
														monthThen - 1, dayThen);
												var differenceInMilisecond = today
														.valueOf()
														- birthday.valueOf();
												var year_age = Math
														.floor(differenceInMilisecond / 31557600000);
												var day_age = Math
														.floor((differenceInMilisecond % 31557600000) / 86400000);

												if ((today.getMonth() == birthday
														.getMonth())
														&& (today.getDate() == birthday
																.getDate())) {
													alert("Happy B'day!!!");
												}

												var month_age = Math
														.floor(day_age / 30);

												day_age = day_age % 30;

												if (isNaN(year_age)
														|| isNaN(month_age)
														|| isNaN(day_age)) {
													alert("Invalid birthday - Please try again!");
												} else {
													$("#age-yy").val(year_age);
													$("#age-mm").val(month_age);
													$("#age-dd").val(day_age);
												}

											});

							/* Convert Age to Date */

							var yr = 0;
							var mn = 0;
							var dy = 0;

							$('#age-yy').keyup(
									function() {

										var monthNames = [ "Jan", "Feb", "Mar",
												"Apr", "May", "Jun", "Jul",
												"Aug", "Sep", "Oct", "Nov",
												"Dec" ];

										yr = $.trim($('#age-yy').val());
										console.log(yr);
										mn = $.trim($('#age-mm').val());
										console.log(mn);
										dy = $.trim($('#age-dd').val());
										console.log(dy);
										if (dy < 10) {
											dy = '0' + dy
										}
										if (mn < 10) {
											mn = '0' + mn
										}

										var todayTime = new Date(new Date()
												.getFullYear()
												- yr, new Date().getMonth()
												- mn, (new Date().getDay() + 3)
												- dy);
										var month = todayTime.getMonth() + 1;
										var day = todayTime.getDate();
										var year = todayTime.getFullYear();
										$('#fromDate').val(
												day + '-'
														+ monthNames[month - 1]
														+ '-' + year);

									});

							$('#age-mm').keyup(
									function() {

										var monthNames = [ "Jan", "Feb", "Mar",
												"Apr", "May", "Jun", "Jul",
												"Aug", "Sep", "Oct", "Nov",
												"Dec" ];
										yr = $.trim($('#age-yy').val());
										console.log(yr);
										mn = $.trim($('#age-mm').val());
										console.log(mn);
										dy = $.trim($('#age-dd').val());
										console.log(dy);
										if (dy < 10) {
											dy = '0' + dy
										}
										if (mn < 10) {
											mn = '0' + mn
										}

										var todayTime = new Date(new Date()
												.getFullYear()
												- yr, new Date().getMonth()
												- mn, (new Date().getDay() + 3)
												- dy);
										var month = todayTime.getMonth() + 1;
										var day = todayTime.getDate();
										var year = todayTime.getFullYear();
										$('#fromDate').val(
												day + '-'
														+ monthNames[month - 1]
														+ '-' + year);
									});

							$('#age-dd').keyup(
									function() {

										var monthNames = [ "Jan", "Feb", "Mar",
												"Apr", "May", "Jun", "Jul",
												"Aug", "Sep", "Oct", "Nov",
												"Dec" ];

										//alert($(this).val());
										yr = $.trim($('#age-yy').val());
										mn = $.trim($('#age-mm').val());
										dy = $.trim($('#age-dd').val());

										if (dy < 10) {
											dy = '0' + dy
										}
										if (mn < 10) {
											mn = '0' + mn
										}

										var todayTime = new Date(new Date()
												.getFullYear()
												- yr, new Date().getMonth()
												- mn, (new Date().getDay() + 3)
												- dy);
										var month = todayTime.getMonth() + 1;
										var day = todayTime.getDate();
										var year = todayTime.getFullYear();

										$('#fromDate').val(
												day + '-'
														+ monthNames[month - 1]
														+ '-' + year);

									});

						});

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
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
<link rel="stylesheet" href="css/gnrc-user-reg.css">
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



				<!-- User Registration Form -->
				<form action="" method="post">

					<!-- DASHBOARD -->
					<div id="dashboard-con">
						<div class="row">
							<div class="col-md-9 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
									<h5 class="pull-left">Basic Info</h5>
									</header>

									<div class="row">
										<div class="col-xs-4">
											<input type="text" class="form-control input-sm"
												name="mrd_number" placeholder="MRD Number">
										</div>
										<div class="col-xs-4">
											<input type="text" class="form-control input-sm"
												name="reg_date" placeholder="Registration Date">
										</div>
										<div class="col-xs-4">
											<input type="text" class="form-control input-sm"
												name="status" placeholder="Satus">
										</div>
									</div>
									<br>
									<div class="row">
										<div class="col-xs-2">
											<select data-placeholder="" name="" id="location"
												class="form-control input-sm">
												<option value="MR">MR</option>
												<option value="MR">MRS</option>
												<option value="MR">DR</option>
											</select>

										</div>
										<div class="col-xs-4">
											<input type="text" class="form-control input-sm"
												name="first_name" placeholder="First Name">

										</div>
										<div class="col-xs-3">
											<input type="text" class="form-control input-sm"
												name="middle_name" placeholder="Middle Name">
										</div>
										<div class="col-xs-3">
											<input type="text" class="form-control input-sm"
												name="last_name" placeholder="Last Name">
										</div>

									</div>
									<br>
									<div class="row">
										<div class="col-xs-3">
											<select data-placeholder="" name="gender" id="gender"
												class="form-control input-sm">
												<option value="GENDER" selected="selected">Select
													Gender</option>
												<option value="MALE">MALE</option>
												<option value="FEMALE">FEMALE</option>
											</select>
										</div>

										<div class="col-xs-3">
											<input type="text" class="form-control input-sm" id="fromDate"
												name="fromDate" placeholder="Date of Birth">
										</div>

										<div class="col-xs-1">
											<input type="text" class="form-control input-sm" id="age-yy" 
												name="age_yy" placeholder="Y">
										</div>
										<div class="col-xs-1">
											<input type="text" class="form-control input-sm" id="age-mm" 
												name="age_mm" placeholder="M">
										</div>
										<div class="col-xs-1">
											<input type="text" class="form-control input-sm" id="age-dd"
												name="age_dd" placeholder="D">
										</div>

										<div class="col-xs-3">
											<select data-placeholder="" name="marital_status"
												id="marital_status" class="form-control input-sm">
												<option value="0" selected="selected">Select
													Marital Status</option>
												<option value="MARRIED">MARRIED</option>
												<option value="UNMARRIED">UNMARRIED</option>
											</select>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-3 dashboard-right-cell">
								<div class="admin-content-con">
									<header class="clearfix">
									<h5 class="pull-left">Photo Upload</h5>
									</header>

									<img id="blah" src="http://placehold.it/180" alt="your image" />
									<input type='file' onchange="readURL(this);" />

								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-md-5 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
									<h5 class="pull-left">Personal Info</h5>
									</header>

									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="nationality">
												Nationality:</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="nationality"
													id="nationality" class="form-control input-sm">
													<option value="0" selected="selected">Select
														Nationality</option>
													<option value="INDIAN">INDIAN</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="religion">Religion:</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="religion" id="religion"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Religion</option>
													<option value="HINDU">HINDU</option>
													<option value="MUSLIM">MUSLIM</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="mother_tongue">Mother
												Tongue: </label>
											<div class="col-xs-9">
												<select data-placeholder="" name="mother_tongue"
													id="mother_tongue" class="form-control input-sm">
													<option value="0" selected="selected">Select
														Mother Tongue</option>
													<option value="ASSAMESE">ASSAMESE</option>
													<option value="BENGALI">BENGALI</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="occupation">Occupation:
											</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="occupation"
													id="occupation" class="form-control input-sm">
													<option value="0" selected="selected">Select
														Occupation</option>
													<option value="INDIAN">INDIAN</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="community">Community:</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="community" id="community"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Community</option>
													<option value="HINDU">HINDU</option>
													<option value="MUSLIM">MUSLIM</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="blood_group">Blood
												Group: </label>
											<div class="col-xs-9">
												<select data-placeholder="" name="blood_group"
													id="blood_group" class="form-control input-sm">
													<option value="0" selected="selected">Select Blood
														Group</option>
													<option value="ASSAMESE">ASSAMESE</option>
													<option value="BENGALI">BENGALI</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3">Type / Mode:</label>
											<div class="col-xs-4">
												<select class="form-control">
													<option selected="selected">Type</option>
												</select>
											</div>
											<div class="col-xs-4">
												<select class="form-control">
													<option selected="selected">Mode</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3">STD:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="STD" required>
											</div>
											<label class="control-label col-xs-3">ISD:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="ISD" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3">Number:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="Phone Number" required>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-7 dashboard-right-cell">
								<div class="admin-content-con">
									<header class="clearfix">
									<h5 class="pull-left">Additional Info</h5>
									</header>


									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="blood_group">Guardian:</label>
											<div class="col-xs-3">
												<select data-placeholder="" name="blood_group"
													id="blood_group" class="form-control input-sm">
													<option value="0" selected="selected">Select
														Guardian</option>
													<option value="ASSAMESE">ASSAMESE</option>
													<option value="BENGALI">BENGALI</option>
												</select>
											</div>
											<div class="col-xs-6">
												<input type="text" class="form-control" id="guardian_name"
													placeholder="Name">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="other">Contact
												Person:</label>
											<div class="col-xs-3">
												<select data-placeholder="" name="other" id="other"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Person</option>
													<option value="ASSAMESE">ASSAMESE</option>
													<option value="BENGALI">BENGALI</option>
												</select>
											</div>
											<div class="col-xs-6">
												<input type="text" class="form-control" id="other_name"
													placeholder="Name">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-xs-3">Type / Mode:</label>
											<div class="col-xs-4">
												<select class="form-control">
													<option selected="selected">Type</option>
												</select>
											</div>
											<div class="col-xs-4">
												<select class="form-control">
													<option selected="selected">Mode</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-xs-3">STD:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="STD" required>
											</div>
											<label class="control-label col-xs-3">ISD:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="ISD" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3">Number:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="Phone Number" required>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-xs-3" for="identity">Identity
												Proof: </label>
											<div class="col-xs-3">
												<select data-placeholder="" name="identity" id="identity"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Identity</option>
													<option value="ASSAMESE">ASSAMESE</option>
													<option value="BENGALI">BENGALI</option>
												</select>
											</div>
											<div class="col-xs-6">
												<input type="text" class="form-control" name="id_number"
													id="id_number" placeholder="ID Number">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="disability_info">Disability
												Info: </label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="disability_info"
													placeholder="Disability Info" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="monthly_income">Monthly
												Income (Rs.): </label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="monthly_income"
													placeholder="Monthly Income" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="remarks">Remarks:
											</label>
											<div class="col-xs-9">
												<textarea rows="3" class="form-control" id="remarks"
													placeholder="Remarks" required></textarea>
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
									<h5 class="pull-left">Personal Address</h5>
									</header>
									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="type">
												Type:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="type"
													placeholder="Type" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="address">Address:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="address"
													placeholder="Address" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="area">Area:
											</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="area" id="area"
													class="form-control input-sm">
													<option value="0" selected="selected">Select Area</option>
													<option value="INDIAN">FATHER</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="city">City:
											</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="city" id="city"
													class="form-control input-sm">
													<option value="0" selected="selected">Select City</option>
													<option value="INDIAN">FATHER</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3">State:</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="guardian" id="guardian"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Guardian</option>
													<option value="INDIAN">FATHER</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="country">Country:
											</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="country"
													placeholder="Country" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="pin">Pin:</label>
											<div class="col-xs-9">
												<input type="number" class="form-control" id="pin"
													placeholder="Pin Code" required>
											</div>
										</div>


										<div class="form-group">
											<div class="col-xs-offset-3 col-xs-9">
												<label class="checkbox-inline"> <input
													type="checkbox" value="agree"> Personal Address
													same as Correspondence Address.
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 dashboard-right-cell">
								<div class="admin-content-con">
									<header class="clearfix">
									<h5 class="pull-left">Correspondence Address</h5>
									</header>


									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="type">
												Type:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="type"
													placeholder="Type" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="address">Address:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="address"
													placeholder="Address" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="area">Area:
											</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="area" id="area"
													class="form-control input-sm">
													<option value="0" selected="selected">Select Area</option>
													<option value="INDIAN">FATHER</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="city">City:
											</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="city" id="city"
													class="form-control input-sm">
													<option value="0" selected="selected">Select City</option>
													<option value="INDIAN">FATHER</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3">State:</label>
											<div class="col-xs-9">
												<select data-placeholder="" name="guardian" id="guardian"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Guardian</option>
													<option value="INDIAN">FATHER</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="country">Country:
											</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="country"
													placeholder="Country" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="pin">Pin:</label>
											<div class="col-xs-9">
												<input type="text" class="form-control" id="pin"
													placeholder="Pin Code" required>
											</div>
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
											<div class="pull-right">
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
							

							$('#age-yy').keyup(function() {

								  var monthNames = [
									    "Jan", "Feb", "Mar",
									    "Apr", "May", "Jun", "Jul",
									    "Aug", "Sep", "Oct",
									    "Nov", "Dec"
									  ];

									 	yr = $.trim($('#age-yy').val());
									 	console.log(yr);
							            mn = $.trim($('#age-mm').val());
							           	console.log(mn);
							            dy = $.trim($('#age-dd').val());
							            console.log(dy);
							            if (dy < 10) { dy = '0' + dy } if (mn < 10) { mn = '0' + mn }
							           
										var todayTime = new Date(new Date().getFullYear() - yr, new Date().getMonth()  - mn , (new Date().getDay()+3)-dy);
										var month = todayTime.getMonth() + 1;
										var day = todayTime.getDate();
										var year = todayTime.getFullYear();
							           $('#fromDate').val(day+'-'+monthNames[month-1]+'-'+year);
							           
							});

							$('#age-mm').keyup(function() {

								  var monthNames = [
									    "Jan", "Feb", "Mar",
									    "Apr", "May", "Jun", "Jul",
									    "Aug", "Sep", "Oct",
									    "Nov", "Dec"
									  ];
									 	yr = $.trim($('#age-yy').val());
									 	console.log(yr);
							            mn = $.trim($('#age-mm').val());
							            console.log(mn);
							            dy = $.trim($('#age-dd').val());
							            console.log(dy);
							            if (dy < 10) { dy = '0' + dy } if (mn < 10) { mn = '0' + mn }

										var todayTime = new Date(new Date().getFullYear() - yr, new Date().getMonth()  - mn , (new Date().getDay()+3)-dy);
										var month = todayTime.getMonth() + 1;
										var day = todayTime.getDate();
										var year = todayTime.getFullYear();
							           $('#fromDate').val(day+'-'+monthNames[month-1]+'-'+year);
							});

							$('#age-dd').keyup(function() {

								  var monthNames = [
									    "Jan", "Feb", "Mar",
									    "Apr", "May", "Jun", "Jul",
									    "Aug", "Sep", "Oct",
									    "Nov", "Dec"
									  ];

								  
								
									//alert($(this).val());
									 	yr = $.trim($('#age-yy').val());
									 	mn = $.trim($('#age-mm').val());
							            dy = $.trim($('#age-dd').val());
							            
							            if (dy < 10) { dy = '0' + dy } if (mn < 10) { mn = '0' + mn }

										var todayTime = new Date(new Date().getFullYear() - yr, new Date().getMonth()  - mn , (new Date().getDay()+3)-dy);
										var month = todayTime.getMonth() + 1;
										var day = todayTime.getDate();
										var year = todayTime.getFullYear();
										
										$('#fromDate').val(day+'-'+monthNames[month-1]+'-'+year);
							            
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
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

					<!-- Upper Layout -->
						<%@include file="gnrc-page-upper-layout.jsp"%>
					<!-- End of Upper Layout -->





				<!-- User Registration Form -->
				<form action="" method="post">

					<!-- DASHBOARD -->
					<div id="dashboard-con">
						<div class="row">
							<div class="col-md-10 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">External Patient Info</h5>
									</header>


									<div class="form-horizontal">

										<div class="form-group">
											<label class="control-label col-xs-2" for="ex_no">
												External Number:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm" id="ex_no"
													name="mrd_number" placeholder="External Number">
											</div>

											<label class="control-label col-xs-4" for="reg_date">
												Registration Date:</label>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													id="reg_date" name="reg_date"
													placeholder="Registration Date">
											</div>
										</div>



										<div class="form-group">
											<label class="control-label col-xs-2" for="title">
												Patient Name:</label>
											<div class="col-xs-2">
												<select data-placeholder="" name="title" id="title"
													class="form-control input-sm">
													<option value="MR">MR</option>
													<option value="MR">MRS</option>
													<option value="MR">DR</option>
												</select>
											</div>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													name="first_name" placeholder="First Name">

											</div>
											<div class="col-xs-2">
												<input type="text" class="form-control input-sm"
													name="middle_name" placeholder="Middle Name">
											</div>
											<div class="col-xs-3">
												<input type="text" class="form-control input-sm"
													name="last_name" placeholder="Last Name">
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-xs-2" for="status">
												Gender:</label>
											<div class="col-xs-2">
												<select data-placeholder="" name="gender" id="gender"
													class="form-control input-sm">
													<option value="GENDER" selected="selected">Select
														Gender</option>
													<option value="MALE">MALE</option>
													<option value="FEMALE">FEMALE</option>
												</select>
											</div>
											<label class="control-label col-xs-1" for="status">
												DOB:</label>
											<div class="col-xs-2">
												<input type="text" class="form-control input-sm"
													id="fromDate" name="fromDate" placeholder="Date of Birth">
											</div>
											<label class="control-label col-xs-2" for="status">
												Age:</label>
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
										</div>
										<div class="form-group">
											<label class="control-label col-xs-2" for="contact">Contact
												Detail:</label>
											<div class="col-xs-5">
												<textarea rows="2" class="form-control" id="contact"
													name="contact" placeholder="Contact Detail"></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-2 dashboard-right-cell">
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
							<div class="col-md-6 dashboard-left-cell">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">External Patient Registration
											Detail</h5>
									</header>

									<div class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-xs-3" for="category">
												Category:</label>
											<div class="col-xs-5">
												<select data-placeholder="" name="category" id="category"
													class="form-control input-sm">
													<option value="0" selected="selected">Select
														Category</option>
													<option value="MARRIED">MARRIED</option>
													<option value="UNMARRIED">UNMARRIED</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="sub_category">
												Sub Category:</label>
											<div class="col-xs-5">
												<select data-placeholder="" name="sub_category"
													id="sub_category" class="form-control input-sm">
													<option value="0" selected="selected">Select
														Sub-Category</option>
													<option value="INDIAN">INDIAN</option>
													<option value="PAKISTANI">PAKISTAN</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-xs-3" for="card-no">Card
												Number:</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm"
													id="card-no" name="card_no" placeholder="Card Number">
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-md-6 dashboard-right-cell">
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
											<label class="control-label col-xs-3" for="card-no">Doctor
											</label>
											<div class="col-xs-7">
												<input type="text" class="form-control input-sm" id="doctor"
													name="doctor" placeholder="Dcotor">
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="admin-content-con">
									<header class="clearfix">
										<h5 class="pull-left">Referal Detail</h5>
									</header>
									<div class="form-inline form-multiline">
										<div class="form-group">
											<label for="ref-doc"> Referal
												Doctor:</label>
												 <input  type="text" class="form-control" id="ref-doc"
												name="ref_doc" placeholder="Type">
										</div>

										<div class="form-group">
											<label  for="ref-doc">
												Referal Organisation:</label> <input type="text"
												class="form-control" id="ref-doc" name="ref_doc"
												placeholder="Type">
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
													<input type="text" class="form-control" id="pin"
														placeholder="Pin Code" required>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 dashboard-right-cell">
									<div class="admin-content-con">
										<header class="clearfix">
											<h5 class="pull-left">Communication Detail</h5>
										</header>


										<div class="form-horizontal">

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






<!-- Lower Layout -->
	<%@include file="gnrc-page-lower-layout.jsp"%>
<!-- End of Lower Layout -->

























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
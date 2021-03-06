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
				<div class="col-md-12">
					<div class="admin-content-con">
						<header class="clearfix">
							<h5 class="pull-left">Patient Detail</h5>
						</header>
						<div class="form-horizontal">
							<div class="form-group form-police">
								<label class="control-label col-xs-2 control-label-number"
									for="ip_no"> IP Number:</label>
								<div class="col-xs-2">
									<input type="text" class="form-control input-sm" id="ip_no"
										name="ip_no" placeholder="IP Number">
								</div>
								<label class="control-label col-xs-2" for="p-name">
									Patient Name:</label>
								<div class="col-xs-5">
									<input type="text" class="form-control input-sm" id="p-name"
										name="p_name" placeholder="Patient Name">
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
							<h5 class="pull-left">Accident Detail</h5>
						</header>

						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-xs-3" for="dt-of-acc">
									Date of Accident:</label>
								<div class="col-xs-5">
									<input type="text" class="form-control input-sm" id="dt-of-acc"
										name="dt_of_acc" placeholder="Date">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="cause">
									Cause:</label>
								<div class="col-xs-7">
									<input type="text" class="form-control input-sm" id="cause"
										name="cause" placeholder="Cause">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="nature-of-injury">Nature
									of Injury:</label>
								<div class="col-xs-9">
									<textarea rows="1" class="form-control input-sm"
										id="nature-of-injury" name="nature_of_injury"
										placeholder="Card Number"> </textarea>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 dashboard-right-cell">
					<div class="admin-content-con">
						<header class="clearfix">
							<h5 class="pull-left">Accident Detail</h5>
						</header>


						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-xs-3" for="place-of-acc">
									Place of Accident:</label>
								<div class="col-xs-7">
									<input type="text" class="form-control input-sm"
										id="place-of-acc" name="place_of_acc" placeholder="Place">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="police-station">
									Police Station:</label>
								<div class="col-xs-7">
									<input type="text" class="form-control input-sm"
										id="police-station" name="police_station"
										placeholder="Police Station">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="dt-of-intimate">
									Date of Intimating Police:</label>
								<div class="col-xs-5">
									<input type="text" class="form-control input-sm"
										id="dt-of-intimate" name="dt_of_intimate"
										placeholder="Date">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="doctor-on-duty">Doctor
									on Duty:</label>
								<div class="col-xs-5">
										<select data-placeholder="" name="doctor_on_duty" id="doctor-on-duty"
										class="form-control input-sm">
										<option value="0" selected="selected">Select Area</option>
										<option value="INDIAN">FATHER</option>
										<option value="PAKISTANI">PAKISTAN</option>
									</select>
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

	<!-- Upper Layout -->
	<%@include file="gnrc-page-lower-layout.jsp"%>
	<!-- End of Upper Layout -->


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
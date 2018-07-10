<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>GNRC</title>
<link rel="icon" href="image/favicon.jpg" type="image/jpeg"
	sizes="16x16">
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
							<h5 class="pull-left">Basic Info</h5>
						</header>


						<div class="form-horizontal">

							<div class="form-group">
								<label class="control-label col-xs-1" for="mrd"><span
									class="required-label" id="mrd">MRD</span> :</label>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm" id="mrd"
										name="mrd_number" placeholder="MRD Number" required>
								</div>

								<label class="control-label col-xs-2" for="reg_date"><span
									class="required-label" id="reg_date"> Registration Date</span>
									:</label>
								<div class="col-xs-2">
									<input type="text" class="form-control input-sm" id="reg_date"
										name="reg_date" placeholder="Registration Date" required>
								</div>
								<label class="control-label col-xs-1" for="status"><span
									class="required-label" id="status"> Status</span> :</label>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm" id="status"
										name="status" placeholder="Status" required>
								</div>
							</div>



							<div class="form-group">
								<label class="control-label col-xs-1" for="title"><span
									class="required-label" id="title"> Patient Name</span> :</label>
								<div class="col-xs-2">
									<select data-placeholder="" name="title" id="title"
										class="form-control input-sm">
										<option value="0">Select</option>
										<option value="MR">MR</option>
										<option value="MR">MRS</option>
										<option value="MR">DR</option>
									</select>
								</div>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm"
										id="first-name" name="first_name" placeholder="First Name"
										required>

								</div>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm"
										name="middle_name" placeholder="Middle Name">
								</div>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm"
										name="last_name" placeholder="Last Name" required>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-xs-1" for="status"><span
									class="required-label" id="gender"> Gender</span> :</label>
								<div class="col-xs-2">
									<select data-placeholder="" name="gender" id="gender"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select Gender</option>
										<option value="MALE">MALE</option>
										<option value="FEMALE">FEMALE</option>
									</select>
								</div>
								<label class="control-label col-xs-2" for="status"><span
									class="required-label"> Date of Birth</span> :</label>
								<div class="col-xs-2">
									<input type="text" class="form-control input-sm" id="fromDate"
										name="dt_of_birth" placeholder="Date of Birth" required>
								</div>
								<label class="control-label col-xs-2" for="status"><span
									class="required-label"> Age</span> :</label>
								<div class="col-xs-1">
									<input type="text" class="form-control input-sm" id="age-yy"
										name="age_yy" placeholder="Y" required>
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
				<div class="col-md-4 dashboard-left-cell">
					<div class="admin-content-con">
						<header class="clearfix">
							<h5 class="pull-left">Personal Info</h5>
						</header>

						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-xs-5" for="mar-status"><span
									class="required-label" id="mar-status"> Marital Status</span> :</label>
								<div class="col-xs-7">
									<select data-placeholder="" name="mar_status" id="mar-status"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select Marital
											Status</option>
										<option value="MARRIED">MARRIED</option>
										<option value="UNMARRIED">UNMARRIED</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-5" for="nationality"><span
									class="required-label" id="nationality"> Nationality</span> :</label>
								<div class="col-xs-7">
									<select data-placeholder="" name="nationality" id="nationality"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select
											Nationality</option>
										<option value="INDIAN">INDIAN</option>
										<option value="PAKISTANI">PAKISTAN</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-5" for="religion"><span
									class="required-label" id="religion">Religion</span> :</label>
								<div class="col-xs-7">
									<select data-placeholder="" name="religion" id="religion"
										class="form-control input-sm">
										<option value="0" selected="selected">Select Religion</option>
										<option value="HINDU">HINDU</option>
										<option value="MUSLIM">MUSLIM</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-5" for="mother-tongue"><span
									class="required-label" id="mother-tongue">Mother Tongue</span>
									: </label>
								<div class="col-xs-7">
									<select data-placeholder="" name="mother_tongue"
										id="mother-tongue" class="form-control input-sm" required>
										<option value="0" selected="selected">Select Mother
											Tongue</option>
										<option value="ASSAMESE">ASSAMESE</option>
										<option value="BENGALI">BENGALI</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-5" for="occupation"><span
									class="required-label" id="occupation">Occupation</span> : </label>
								<div class="col-xs-7">
									<select data-placeholder="" name="occupation" id="occupation"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select
											Occupation</option>
										<option value="INDIAN">INDIAN</option>
										<option value="PAKISTANI">PAKISTAN</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-5" for="community"><span
									class="required-label" id="community">Community</span> :</label>
								<div class="col-xs-7">
									<select data-placeholder="" name="community" id="community"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select
											Community</option>
										<option value="HINDU">HINDU</option>
										<option value="MUSLIM">MUSLIM</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-5" for="blood-group"><span
									class="required-label" id="blood-group">Blood Group</span> : </label>
								<div class="col-xs-7">
									<select data-placeholder="" name="blood_group" id="blood-group"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select Blood
											Group</option>
										<option value="ASSAMESE">ASSAMESE</option>
										<option value="BENGALI">BENGALI</option>
									</select>
								</div>
							</div>

						</div>
					</div>
				</div>

				<div class="col-md-8 dashboard-right-cell">
					<div class="admin-content-con">
						<header class="clearfix">
							<h5 class="pull-left">Additional Info</h5>
						</header>


						<div class="form-horizontal">
							<div class="form-group">
								<label class="control-label col-xs-3" for="guardian"><span
									class="required-label" id="guardian-name">Guardian</span> :</label>
								<div class="col-xs-3">
									<select data-placeholder="" name="blood_group" id="guardian"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select Guardian</option>
										<option value="ASSAMESE">ASSAMESE</option>
										<option value="BENGALI">BENGALI</option>
									</select>
								</div>
								<div class="col-xs-6">
									<input type="text" class="form-control input-sm"
										id="guardian-name" placeholder="Name" required>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="other">Contact
									Person:</label>
								<div class="col-xs-3">
									<select data-placeholder="" name="other" id="other"
										class="form-control input-sm">
										<option value="0" selected="selected">Select Person</option>
										<option value="ASSAMESE">ASSAMESE</option>
										<option value="BENGALI">BENGALI</option>
									</select>
								</div>
								<div class="col-xs-6">
									<input type="text" class="form-control input-sm"
										id="other_name" placeholder="Name">
								</div>
							</div>



							<div class="form-group">
								<label class="control-label col-xs-3" for="identity">Identity
									Proof: </label>
								<div class="col-xs-3">
									<select data-placeholder="" name="identity" id="identity"
										class="form-control input-sm">
										<option value="0" selected="selected">Select Identity</option>
										<option value="ASSAMESE">ASSAMESE</option>
										<option value="BENGALI">BENGALI</option>
									</select>
								</div>
								<div class="col-xs-6">
									<input type="text" class="form-control input-sm"
										name="id_number" id="id_number" placeholder="ID Number">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="add_proof">Address
									Proof: </label>
								<div class="col-xs-3">
									<select data-placeholder="" name="identity" id="add_proof"
										class="form-control input-sm">
										<option value="0" selected="selected">Select Identity</option>
										<option value="ASSAMESE">ASSAMESE</option>
										<option value="BENGALI">BENGALI</option>
									</select>
								</div>
								<div class="col-xs-6">

									<textarea rows="1" class="form-control input-sm" id="add-proof"
										name="add_proof" placeholder="Address"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="disability_info">Disability
									Info: </label>
								<div class="col-xs-9">
									<input type="text" class="form-control input-sm"
										id="disability_info" placeholder="Disability Info">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="monthly_income">Monthly
									Income (Rs.): </label>
								<div class="col-xs-9">
									<input type="text" class="form-control input-sm"
										id="monthly_income" placeholder="Monthly Income">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="remarks">Remarks:
								</label>
								<div class="col-xs-9">
									<textarea rows="1" class="form-control input-sm" id="remarks"
										placeholder="Remarks"></textarea>
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
								<label class="control-label col-xs-3" for="add-type"><span
									class="required-label" id="add-type"> Type</span> :</label>
								<div class="col-xs-5">
									<select data-placeholder="" name="add_type" id="add-type"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select Type</option>
										<option value="INDIAN">FATHER</option>
										<option value="PAKISTANI">PAKISTAN</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="address"><span
									class="required-label" id="address">Address</span> :</label>
								<div class="col-xs-9">
									<input type="text" class="form-control input-sm" id="address"
										name="address" placeholder="Address" required>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="area">Area : </label>
								<div class="col-xs-5">
									<input type="text" class="form-control input-sm" id="address"
										name="area" placeholder="Area Autocomplete">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="city"><span
									class="required-label" id="city">City</span> : </label>
								<div class="col-xs-5">
									<select data-placeholder="" name="city" id="city"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select City</option>
										<option value="INDIAN">FATHER</option>
										<option value="PAKISTANI">PAKISTAN</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="state"><span
									class="required-label" id="state">State</span> :</label>
								<div class="col-xs-5">
									<select data-placeholder="" name="guardian" id="state"
										class="form-control input-sm" required>
										<option value="0" selected="selected">Select Guardian</option>
										<option value="INDIAN">FATHER</option>
										<option value="PAKISTANI">PAKISTAN</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="country"><span
									class="required-label" id="country">Country</span> : </label>
								<div class="col-xs-9">
									<input type="text" class="form-control input-sm" id="country"
										name="country" placeholder="Country Autocomplete" required>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="pin"><span
									class="required-label" id="pin">Pin</span> :</label>
								<div class="col-xs-9">
									<input type="text" class="form-control input-sm" id="pin"
										name="pin" placeholder="Pin Code" required>
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
								<label class="control-label col-xs-3" for="type-mode"><span
									class="required-label" id="type-mode">Type / Mode</span> :</label>
								<div class="col-xs-4">
									<select class="form-control input-sm" name="type" required>
										<option value="0" selected="selected">Type</option>
										<option value="home">Home</option>
										<option value="office">Office</option>
									</select>
								</div>
								<div class="col-xs-4">
									<select class="form-control input-sm name="type_mode" id="type-mode" required>
										<option selected="selected" value="0">Mode</option>
										<option value="home">Home</option>
										<option value="office">Office</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-xs-3" for="std">STD :</label>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm" id="std"
										name="std" placeholder="STD">
								</div>
								<label class="control-label col-xs-3" for="isd">ISD :</label>
								<div class="col-xs-3">
									<input type="text" class="form-control input-sm" id="isd"
										name="isd" placeholder="ISD">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-xs-3" for="phone-no"><span
									class="required-label" id="phone-no">Number</span> :</label>
								<div class="col-xs-9">
									<input type="text" class="form-control input-sm" name="phone_no"
										id="phone-no" placeholder="Phone Number" required>
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
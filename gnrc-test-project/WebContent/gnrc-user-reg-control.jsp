<%@page import="java.sql.Connection"%>
<%@page import="com.gnrchospitals.dao.OracleJDbcConnection"%>
<<jsp:useBean id="userReg" class="com.gnrchospitals.UserRegistration" scope="request"></jsp:useBean>


<%
	try {
		

		String token = request.getParameter("token") == null ? "" : request.getParameter("token");
		String msg = request.getParameter("msg") == null ? "" : request.getParameter("msg");
		
		
		

		

	} catch (Exception ex) {
		ex.printStackTrace();
	}
%>
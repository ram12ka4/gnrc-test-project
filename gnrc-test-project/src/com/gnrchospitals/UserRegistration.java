package com.gnrchospitals;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import com.gnrchospitals.dao.OracleJDbcConnection;

public class UserRegistration {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private ResultSetMetaData rsmd;

	public ArrayList<String> getData(String orgId, String token) throws Exception {

		ArrayList<String> list = new ArrayList<>();
		String query = "SELECT GPM_PARAMETER_CD, GPM_PARAMETER_VALUE from ga_parameter_master where GPM_PARAMETER_TYPE=?";

		try {
			con = OracleJDbcConnection.getConnection();
			ps = con.prepareStatement(query.toString());
			ps.setString(1, token);
			rs = ps.executeQuery();
			rsmd = rs.getMetaData();

			if (rs.next()) {
				do {
					for (int i = 1; i <= rsmd.getColumnCount(); i++) {
						list.add(rs.getString(rsmd.getColumnName(i)));
					}
				} while (rs.next());
			}
		} finally {
			ps.close();
			con.close();
		}
		return list;
	}

}

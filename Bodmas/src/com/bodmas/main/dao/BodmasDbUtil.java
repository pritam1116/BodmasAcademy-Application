/**
 * 
 */
package com.bodmas.main.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.sql.DataSource;

import com.bodmas.main.model.BodmasAdmin;
import com.bodmas.main.model.BodmasStudent;

/**
 * @author Pritam Sinha
 *
 */
public class BodmasDbUtil {
	
	private DataSource      dataSource;
	
	Connection              conn            =     null;
	PreparedStatement       ps              =     null;
	Statement               stmt            =     null;
	ResultSet               rs              =     null;

	
	public BodmasDbUtil(DataSource theDataSource) {
			System.out.println("Datasource method invoked");
		  dataSource = theDataSource;
	}

	public void addStudent(BodmasStudent bodmasStudent) throws Exception {
		

			
		try {
				System.out.println("add student method invoked");
				conn           =        dataSource.getConnection();
				String    sql  =        "insert into bodmas_registration "
									+ "(name,email,mobile,password,confirm_password) "
									+ " values (?,?,?,?,?) "
									;
				ps             =        conn.prepareStatement(sql);
				
				
				ps.setString(1,bodmasStudent.getName());
				ps.setString(2,bodmasStudent.getEmail());
				ps.setString(3,bodmasStudent.getMobile());
				ps.setString(4,bodmasStudent.getPassword());
				ps.setString(5,bodmasStudent.getConfirm_password());
				
				ps.executeQuery();
				
			}
			finally {
				
				close(conn, ps, rs);
					
			}
		
		
	}

	private void close(Connection conn, PreparedStatement ps2, ResultSet rs) {
		
		try {
			
			if(rs != null) {
				rs.close();
			}
			if(ps2 != null) {
				ps2.close();
			}
			if(conn != null) {
				conn.close();
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}

	public boolean loginAdmin(BodmasAdmin bodmasAdmin) throws Exception {
		
		try {
			System.out.println("Login Admin method invoked");
			conn           =        dataSource.getConnection();
			String    sql  =        "select * from bodmas_admin_login "
								+ " where email=? and password=? "
								;
			
			ps             =        conn.prepareStatement(sql);
			
			
			
			ps.setString(1,bodmasAdmin.getEmail());
			
			ps.setString(2,bodmasAdmin.getPassword());
			
			rs = ps.executeQuery();
			
			
			if(rs.next()) {
				System.out.println("if invoked "+rs.getString("email"));
				if(bodmasAdmin.getEmail().equals(rs.getString("email")) 
						&& bodmasAdmin.getPassword().equals(rs.getString("password")))
				return true; 
			}
			
			return false;   
			
		}
		finally {
			
			close(conn, ps, rs);
				
		}
		
		
		
	}

}

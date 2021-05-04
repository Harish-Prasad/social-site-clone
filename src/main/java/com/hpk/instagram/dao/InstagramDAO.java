package com.hpk.instagram.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class InstagramDAO implements InstagramDAOInterface {

	public int createProfile(String firstName, String secondName, String email, String password, String phone) {
		
		int i = 0;
		int i1 = 0;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			PreparedStatement ps = con.prepareStatement("insert into instagram (firstName,lastName,email,password,phone) values(?,?,?,?,?)");
			ps.setString(1,firstName);
			ps.setString(2,secondName);
			ps.setString(3,email);
			ps.setString(4,password);
			ps.setString(5,phone);

			i = ps.executeUpdate();
			con.close();
			Connection con1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			PreparedStatement ps2 = con1.prepareStatement("select * from Instagram");
			ResultSet res = ps2.executeQuery();
			int c = 0;
			while(res.next()) {
				c = res.getInt("id");
			}
			con.close();
			Connection con2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			
			if(i > 0) {
				PreparedStatement ps1 = con2.prepareStatement("insert into login values (?,?,?)" );
				ps1.setString(1,email);
				ps1.setString(2,password);
				ps1.setInt(3,c);
				i1= ps1.executeUpdate();
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return i1;	
	}
	
	public boolean loginProfile(String email,String password) {
		
		boolean b = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			PreparedStatement ps = con.prepareStatement("select * from login where login_id = ? and login_password = ?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet res = ps.executeQuery();
			if(res.next()) {
				b = true;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return b;
	}

	public ResultSet viewProfile(String e) {
		ResultSet res = null;
		System.out.println(e);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			
			PreparedStatement ps = con.prepareStatement("select * from instagram i,login l where i.id=l.id and l.login_id = ? ");
			ps.setString(1, e);
			
			 res = ps.executeQuery();	
//			 System.out.println(res.next());
			 
			 
		}
		
		catch(Exception er) {
			er.printStackTrace();
		}
		return res;
	}

	public ResultSet viewFriendList(String e) {
		
		ResultSet res = null;
		try {
			System.out.println(e);
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			PreparedStatement ps = con.prepareStatement("select * from friend f,login l where l.login_id = f.login_id and l.login_id = ? ");
			ps.setString(1, e); 
			res = ps.executeQuery();	
//			 System.out.println(res.next());
		
		}
		
		catch(Exception er) {
			er.printStackTrace();
		}
		return res;
		
		
	}

	public int deleteProfile(String id) {
		int i = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			
			PreparedStatement ps = con.prepareStatement("delete from friend where login_id = ?");
			ps.setString(1, id);
			ps.executeUpdate();
			
			PreparedStatement ps1 = con.prepareStatement("delete from login where login_id = ?");
			ps1.setString(1, id);
			ps1.executeUpdate();
			
			PreparedStatement ps2 = con.prepareStatement("delete from instagram where email = ?");
			ps2.setString(1, id);
			i = ps2.executeUpdate();
			
		}
		
		catch(Exception er) {
			er.printStackTrace();
		}
		
		return i;
	}

	public int editProfile(String firstName, String lastName, String email, String password, String phoneNumber) {
		int i = 0;
		try {
			//step1:load driver 
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//step2:create connection with database 
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","harish","hpk");
			//step3:create query: this is dynamic type of query 
			PreparedStatement ps=con.prepareStatement("update instagram set firstname=?, lastname=?, password=?,phone=? where email=?");
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, password);
			ps.setString(4, phoneNumber);
			ps.setString(5, email);
			//execute query 
			i=ps.executeUpdate(); 	//return type is int ; for 
			System.out.println(i);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return i;
		
	
	}

}



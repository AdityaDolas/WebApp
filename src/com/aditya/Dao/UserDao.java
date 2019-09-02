package com.aditya.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.aditya.config.DBConnect;
import com.aditya.pojo.UserA;

public class UserDao {

	Connection con=DBConnect.getConncet();

	public boolean addUser(UserA u)
	{

		String sql="insert into User values(?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getContact());
			ps.setString(3, u.getEmailid());
			ps.setString(4, u.getPass());
			int i=ps.executeUpdate();
			if(i>0)
			{

				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean deleteUser(String email) {
		String sql="delete from user where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			int i=ps.executeUpdate();
			if(i>0) {
				return true;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public List<UserA> getUserList(){
		
		String sql="select * from user";
		List<UserA> al=new ArrayList<>();
		try {
			
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				UserA u=new UserA();
				u.setName(rs.getString(1));
				u.setContact(rs.getString(2));
				u.setEmailid(rs.getString(3));
				u.setPass(rs.getString(4));
				al.add(u);
				
			}
			return al;
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	



}

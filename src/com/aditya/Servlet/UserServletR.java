package com.aditya.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aditya.Dao.UserDao;
import com.aditya.pojo.UserA;


@WebServlet("/UserServletR")
public class UserServletR extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserA u=new UserA();
	UserDao ud=new UserDao();




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		String action=request.getParameter("action");

		if(action!=null && action.equals("delete")) {
			String email=request.getParameter("email");
			
			boolean b=ud.deleteUser(email);
			if(b) {
				response.sendRedirect("UserServletR");
			}
			
		}else {
			List<UserA> al=ud.getUserList();
			session.setAttribute("ulist",al);
			response.sendRedirect("userList.jsp");
		}


	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String contact=request.getParameter("no");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("confirm");

		if(pass!=null && pass.equals(cpass))
		{
			u.setName(name);
			u.setContact(contact);
			u.setEmailid(email);
			u.setPass(pass);


			boolean b = ud.addUser(u);


			if(b)
			{
				response.sendRedirect("Success.jsp");
			}
			else
			{
				response.sendRedirect("Error.jsp");
			}
		}





	}

}

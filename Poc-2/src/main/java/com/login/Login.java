package com.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	
	public Login(){
		super();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("userName");
		String pass = request.getParameter("password");
		
		loginDao dao = new loginDao();
		
			try {
				if(dao.check(uname, pass)) {
					HttpSession ses = request.getSession();
					ses.setAttribute("username", uname);
					ses.setAttribute("password", pass);
					response.sendRedirect(request.getContextPath()+"/home.html");
				}
				else {
					response.sendRedirect(request.getContextPath()+"/login.jsp");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
	}



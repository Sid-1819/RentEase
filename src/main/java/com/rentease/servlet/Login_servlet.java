package com.rentease.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Logger;

import org.apache.catalina.ha.backend.Sender;

import com.rentease.dao.LoginDao;
import com.rentease.dao.RegisterDao;
import com.rentease.model.Login_users;

/**
 * Servlet implementation class Login_servlet
 */
@WebServlet("/login")
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final Logger logger = Logger.getLogger(Login_users.class.getName());

	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login_servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		logger.info("Do Post started");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Login_users users = new Login_users();
		users.setUsername(username);
		users.setPassword(password);

		try {
			if (loginDao.loginEmployee(users)) {
				response.sendRedirect("home.jsp");

			} else {
				HttpSession sessionHttpServlet = request.getSession();
				sessionHttpServlet.setAttribute("user", username);
				response.sendRedirect("failure.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}

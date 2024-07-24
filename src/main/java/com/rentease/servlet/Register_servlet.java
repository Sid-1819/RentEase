package com.rentease.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.util.Set;
import java.util.logging.Logger;

import com.rentease.dao.RegisterDao;
import com.rentease.model.Registered_users;

/**
 * Servlet implementation class Register_servlet
 *
 */
@WebServlet("/register")
public class Register_servlet extends HttpServlet {
	private static final Logger logger = Logger.getLogger(Register_servlet.class.getName());
	private static final long serialVersionUID = 1L;
	private RegisterDao registerDao;

	@Override
	public void init() {
		registerDao = new RegisterDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register_servlet() {
		super();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		logger.info("Received POST request");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		

		Registered_users user = new Registered_users();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		logger.info("User Registered");
		try {
			int result = registerDao.registerEmployee(user);
			if (result > 0) {
				response.sendRedirect("home.jsp");
			}

			else {
				response.sendRedirect("failure.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		

	}

}

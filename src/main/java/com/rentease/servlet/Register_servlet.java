package com.rentease.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

import com.rentease.dao.RegisterDao;
import com.rentease.model.Registered_users;

/**
 * Servlet implementation class Register_servlet
 *
 */
@WebServlet("/register")
public class Register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RegisterDao registerDao= new RegisterDao();
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register_servlet() {
        super();
      
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email  = request.getParameter("email");
		String password = request.getParameter("password");
		
		Registered_users user = new Registered_users();
		user.getUsername();
		user.getEmail();
		user.getPassword();
		
		try {
				
				registerDao.registerEmployee(user);
				System.out.println("Posting");
				
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}

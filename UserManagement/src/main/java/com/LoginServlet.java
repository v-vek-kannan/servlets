package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	        String username = req.getParameter("username");
	        String password = req.getParameter("password");
	        try(Connection con=DBUtil.getConnection()) {
				String sql="SELECT * FROM users WHERE username = ? AND password = ?";
				PreparedStatement s = con.prepareStatement(sql);
				s.setString(1, username);
				s.setString(2, password);
				
				ResultSet executeQuery = s.executeQuery();
	
				if (executeQuery.next()) {
	                HttpSession session = req.getSession();
	                session.setAttribute("username", username);
	                res.sendRedirect("dashboard.jsp");
	            } else {
	                res.sendRedirect("index.jsp?error=Invalid credentials");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            res.sendRedirect("index.jsp?error=Database error");
	        }
	 }
}

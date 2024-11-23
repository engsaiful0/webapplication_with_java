package com.example.main.web_java;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/submit-form") // Maps the servlet to the URL pattern
public class SubmitFormServlet extends HttpServlet {

    // Database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/db_cse_2340?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve the form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Save the data to the database
        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String sql = "INSERT INTO contact_form (name, email, message) VALUES (?, ?, ?)";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, name);
                    statement.setString(2, email);
                    statement.setString(3, message);
                    statement.executeUpdate();
                }

                // Send success response
                response.getWriter().println("Form data saved successfully!");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("MySQL driver not found.");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Failed to save data: " + e.getMessage());
        }
    }
}

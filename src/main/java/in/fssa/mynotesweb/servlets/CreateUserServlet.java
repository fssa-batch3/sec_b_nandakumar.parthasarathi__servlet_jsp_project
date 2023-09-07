package in.fssa.mynotesweb.servlets; // Corrected package name

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.mynotes.exception.ServiceException; // Adjusted package name
import in.fssa.mynotes.exception.ValidationException; // Adjusted package name
import in.fssa.mynotes.model.User; // Adjusted package name
import in.fssa.mynotes.service.UserService; // Adjusted package name

@WebServlet("/user/create")
public class CreateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Initialize services and PrintWriter
        UserService userService = new UserService();
        PrintWriter out = response.getWriter();
        
        try {
            // Retrieve user data from the request
            String userName = request.getParameter("user_name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            // Create a new User object
            User user = new User();
            user.setName(userName);
            user.setEmail(email);
            user.setPassword(password);

            // Create a new user using the UserService
            userService.createUser(user);

            // Respond with a success message
            out.print("User has been created successfully");

            // Redirect to the login page
            response.sendRedirect(request.getContextPath() + "/login");
            
        } catch (ValidationException | ServiceException e) {
            e.printStackTrace(); // Log the error for debugging
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR); // Set an appropriate error status
            out.println("Error: " + e.getMessage()); // Send an error message to the client
        }
    }
}

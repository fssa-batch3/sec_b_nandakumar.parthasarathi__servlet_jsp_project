package in.fssa.mynotesweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	request.getRequestDispatcher("register.jsp").forward(request, response);
    }

//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        // Retrieve user registration data from the form
//        String username = request.getParameter("username");
//        String email = request.getParameter("email");
//        String password = request.getParameter("password");
//
//        try {
//            // TODO: Perform user registration logic here (e.g., store user data in a database)
//
//            // For now, let's just print the received data to the console.
//            System.out.println("Received registration data:");
//            System.out.println("Username: " + username);
//            System.out.println("Email: " + email);
//            System.out.println("Password: " + password);
//
//            // You can redirect the user to a success page or display a success message here.
//            // For example, you can redirect to a success JSP page:
//            // response.sendRedirect("registration-success.jsp");
//
//            // Or you can send a simple success message to the client:
//            PrintWriter out = response.getWriter();
//            out.println("<html><body>");
//            out.println("<h1>Registration Successful</h1>");
//            out.println("<p>Thank you for registering!</p>");
//            out.println("</body></html>");
//        } catch (Exception e) {
//            e.printStackTrace();
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Registration failed. Please try again later.");
//        }
//    }
}

package in.fssa.mynotesweb.servlets;

import in.fssa.mynotes.service.UserService;
import in.fssa.mynotes.exception.ServiceException;
import in.fssa.mynotes.exception.ValidationException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserService userService = new UserService();

        String email = request.getParameter("email"); 
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        try {
            userService.loginUser(email, password);

            session.setAttribute("loggedEmail", email); 
            response.sendRedirect(request.getContextPath() + "/home");

        } catch (ServiceException | ValidationException e) {
            e.printStackTrace();
            response.sendRedirect("login?errorMessage=" + e.getMessage());
            throw new ServletException(e.getMessage());
        }
    }
}

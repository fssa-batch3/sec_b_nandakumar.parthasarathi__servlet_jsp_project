package in.fssa.mynotesweb.servlets;

import in.fssa.mynotes.exception.PersistanceException;
import in.fssa.mynotes.service.TasksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tasks/delete")
public class DeleteTaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("id"));

        TasksService tasksService = new TasksService();
        try {
            tasksService.deleteTask(taskId);
            response.sendRedirect(request.getContextPath() + "/tasks");
        } catch (PersistanceException e) {
            // Handle exceptions, e.g., validation or persistence errors
            e.printStackTrace(); // You can log the error for debugging
            // Forward to an error page or display an error message
            request.setAttribute("errorMessage", "Failed to delete task: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}

package in.fssa.mynotesweb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.service.TasksService;

@WebServlet("/tasks/update")
public class UpdateTaskServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve task details from the form
        int taskId = Integer.parseInt(request.getParameter("id"));
        String taskName = request.getParameter("name");
        String taskDescription = request.getParameter("description");
        String taskStatus = request.getParameter("status");

        // Create a Tasks object with updated details
        Tasks updatedTask = new Tasks();
        updatedTask.setId(taskId);
        updatedTask.setName(taskName);
        updatedTask.setDescription(taskDescription);
        updatedTask.setStatus(taskStatus);

        // Update the task using the TasksService (you need to implement this)
        TasksService tasksService = new TasksService(); // Implement this service
        try {
            tasksService.updateTask(taskId, updatedTask);
            // Redirect back to the task details page after updating
            response.sendRedirect(request.getContextPath() + "/tasks");
        } catch (Exception e) {
            // Handle exceptions, e.g., validation or persistence errors
            e.printStackTrace(); // You can log the error for debugging
            // Forward to an error page or display an error message
            request.setAttribute("errorMessage", "Failed to update task: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

package in.fssa.mynotesweb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.service.TasksService;
import in.fssa.mynotes.exception.PersistanceException;

@WebServlet("/tasks/view")
public class ViewTaskServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the task ID from the request parameter
        String taskIdStr = request.getParameter("id");

        if (taskIdStr != null && !taskIdStr.isEmpty()) {
            try {
                // Convert the task ID to an integer
                int taskId = Integer.parseInt(taskIdStr);

                // Create a TasksService instance
                TasksService taskService = new TasksService();

                // Get the task details by ID
                Tasks task = taskService.getTaskById(taskId);

                if (task != null) {
                    // Set the task as an attribute in the request
                    request.setAttribute("task", task);

                    // Forward the request to the view_task.jsp page for rendering
                    request.getRequestDispatcher("/view_task.jsp").forward(request, response);
                } else {
                    // Handle the case where the task with the specified ID does not exist
                    response.getWriter().println("Task not found.");
                }
            } catch (NumberFormatException e) {
                // Handle the case where the taskId parameter is not a valid integer
                response.getWriter().println("Invalid task ID.");
            } catch (PersistanceException e) {
                // Handle any database persistence errors if needed
                e.printStackTrace();
                response.getWriter().println("Error retrieving task details.");
            }
        } else {
            // Handle the case where the taskId parameter is missing
            response.getWriter().println("Task ID parameter is missing.");
        }
        
        
    }
}
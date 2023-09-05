package in.fssa.mynotesweb.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.service.TasksService;

@WebServlet("/tasks/edit")
public class NewUpdateTaskServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the task ID from the request parameters
        String idParam = request.getParameter("id");

        if (idParam == null || idParam.isEmpty()) {
            // If 'id' parameter is missing or empty, it's a new task creation
            // Forward the request to the JSP page for creating a new task
            request.getRequestDispatcher("/create_task.jsp").forward(request, response);
            return;
        }

        try {
            int taskId = Integer.parseInt(idParam);

            // Retrieve the task using the taskFindById method (assuming it's available in your service)
            TasksService tasksService = new TasksService();
            Tasks task = tasksService.getTaskById(taskId);

            if (task == null) {
                // Handle the case where the task with the given ID was not found
                request.setAttribute("errorMessage", "Task not found for ID: " + taskId);
                request.getRequestDispatcher("/error.jsp").forward(request, response);
                return;
            }

            // Set the retrieved task as an attribute for the JSP
            request.setAttribute("task", task);

            RequestDispatcher req = request.getRequestDispatcher("/update_task.jsp");
            req.forward(request, response);
            		
        } catch (NumberFormatException e) {
            // Handle the case where 'id' parameter cannot be parsed as an integer
            request.setAttribute("errorMessage", "Invalid Task ID format");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle other exceptions as needed
            e.printStackTrace();
            request.setAttribute("errorMessage", "Failed to retrieve task: " + e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}

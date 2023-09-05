package in.fssa.mynotesweb.servlets;

import in.fssa.mynotes.exception.PersistanceException;
import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.service.TasksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/tasks/newDeleteTask")
public class NewDeleteTaskServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));

        TasksService tasksService = new TasksService();
        Tasks task = null;

        try {
            task = tasksService.getTaskById(taskId);
        } catch (PersistanceException e) {
            e.printStackTrace();
        }

        request.setAttribute("task", task);
        try {
			request.getRequestDispatcher("/delete_task.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
}

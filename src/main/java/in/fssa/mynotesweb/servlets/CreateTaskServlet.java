package in.fssa.mynotesweb.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.mynotes.exception.PersistanceException;
import in.fssa.mynotes.exception.ValidationException;
import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.model.User;
import in.fssa.mynotes.service.TasksService;
import in.fssa.mynotes.service.UserService;

import java.io.PrintWriter;

@WebServlet("/tasks/create")
public class CreateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Create a TasksService instance
		TasksService taskService = new TasksService();
		UserService userService = new UserService();

		String email = (String) request.getSession().getAttribute("loggedEmail");

		// Create a Tasks object and populate it with form data

		try {
			
			User user = userService.findUserByEmail(email);
			Tasks task = new Tasks();
			task.setName(request.getParameter("task_name"));
			task.setDescription(request.getParameter("description"));
			task.setStatus(request.getParameter("status"));
			task.setCreatedBy(user.getId());

			taskService.createTask(task);
			// Redirect to the tasks listing page on successful task creation
			response.sendRedirect(request.getContextPath() + "/tasks");
		} catch (PersistanceException e) {
			e.printStackTrace();
			// Handle database persistence errors if needed
			// You can log the error or take other actions as necessary
			// For simplicity, we'll send a basic error message to the user
			PrintWriter out = response.getWriter();
			out.println(e.getMessage());
		} catch (ValidationException e) {
			e.printStackTrace();
			// Handle validation errors if needed
			// You can log the error or take other actions as necessary
			// For simplicity, we'll send a basic validation error message to the user
			PrintWriter out = response.getWriter();
			out.println(e.getMessage());
		}
	}
}

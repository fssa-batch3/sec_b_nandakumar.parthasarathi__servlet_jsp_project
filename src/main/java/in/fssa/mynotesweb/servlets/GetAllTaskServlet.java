package in.fssa.mynotesweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.mynotes.exception.PersistanceException;
import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.service.TasksService;
@WebServlet("/tasks")
/**
 * Servlet implementation class GetAllTaskServlet
 */

public class GetAllTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		TasksService tasksService = new TasksService();
		
			Set<Tasks> tasks = new HashSet<Tasks>();
			try {
				tasks = tasksService.getAllTasks();
			} catch (PersistanceException e) {
				e.printStackTrace();
			}
			request.setAttribute("taskList", tasks);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/get_all_tasks.jsp");
			dispatcher.forward(request, response);
		
	}

}
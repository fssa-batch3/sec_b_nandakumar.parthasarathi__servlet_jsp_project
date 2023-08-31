package in.fssa.mynotesweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.mynotes.exception.PersistanceException;
import in.fssa.mynotes.exception.ValidationException;
import in.fssa.mynotes.model.Tasks;
import in.fssa.mynotes.service.TasksService;


/**
 * Servlet implementation class CreateTaskServlet
 */
@WebServlet("/task/create")
public class CreateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TasksService taskService = new TasksService();
		Tasks tasks = new Tasks();
		
		tasks.setName(request.getParameter("name"));
		tasks.setDescription(request.getParameter("description"));
		tasks.setStatus(request.getParameter("status"));
		PrintWriter out = response.getWriter();
		
		try {
			taskService.createTask(tasks);
			
			response.sendRedirect(request.getContextPath() + "/tasks");
			
			
		} catch (PersistanceException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		}
	
	
	}
}

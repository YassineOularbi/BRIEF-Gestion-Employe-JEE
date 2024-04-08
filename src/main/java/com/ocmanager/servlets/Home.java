package com.ocmanager.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employe.Employee;


@WebServlet("/")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static ArrayList<Employee> listemployee = new ArrayList<>();
	
    public Home() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		listemployee.removeIf(emp -> emp.getId().equals(id));
		request.setAttribute("emp", listemployee);
		this.getServletContext().getRequestDispatcher("/WEB-INF/Home.jsp").forward(request, response);
	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();
		employee.setId(request.getParameter("id"));
		
		if(listemployee.stream().anyMatch(emp -> emp.getId().equals(employee.getId()))) {
		    request.setAttribute("duplicateId", true);
		} else {
		    employee.setName(request.getParameter("nom"));
		    employee.setEmail(request.getParameter("email"));
		    employee.setNumber(request.getParameter("telephone"));
		    employee.setDepartment(request.getParameter("departement"));
		    employee.setJob(request.getParameter("poste"));
		    listemployee.add(employee);
		}

		request.setAttribute("emp", listemployee);
		this.getServletContext().getRequestDispatcher("/WEB-INF/Home.jsp").forward(request, response);
	}
}

package com.ocmanager.servlets;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employe.Employee;

@WebServlet("/modifierEmploye")
public class ModifyEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModifyEmployee() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		request.setAttribute("emp", Home.listemployee.stream().filter(emp -> emp.getId().equals(id)).collect(Collectors.toList()).get(0));
		this.getServletContext().getRequestDispatcher("/WEB-INF/ModifyEmployee.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String id = request.getParameter("id");
		    String name = request.getParameter("nom");
		    String email = request.getParameter("email");
		    String phoneNumber = request.getParameter("telephone");
		    String department = request.getParameter("departement");
		    String job = request.getParameter("poste");
		    
		    for (Employee emp : Home.listemployee){
		    	if(emp.getId().equals(id)) {
		    		if(!name.isEmpty()) {
		    			emp.setName(name);
		    		}
		    		if(!email.isEmpty()) {
		    			emp.setEmail(email);
		    		}
		    		if(!phoneNumber.isEmpty()) {
		    			emp.setNumber(phoneNumber);	
		    		}
		    		if(!department.isEmpty()) {
		    			emp.setDepartment(department);
		    		}
		    		if(!job.isEmpty()) {
		    			emp.setJob(job);	
		    		}
		    	}
		    }
			request.setAttribute("emp", Home.listemployee);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Home.jsp").forward(request, response);

	}

}


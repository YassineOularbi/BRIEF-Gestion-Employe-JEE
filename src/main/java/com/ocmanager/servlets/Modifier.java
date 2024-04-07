package com.ocmanager.servlets;

import java.io.IOException;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employe.Employee;

/**
 * Servlet implementation class Modifier
 */
@WebServlet("/Modifier")
public class Modifier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modifier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id"); 
		request.setAttribute("emp", Acceuil.listemployee.stream().filter(emp -> emp.getId().equals(id)).collect(Collectors.toList()).get(0));
		this.getServletContext().getRequestDispatcher("/WEB-INF/Modifier.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    String id = request.getParameter("id");
		    String name = request.getParameter("name");
		    String email = request.getParameter("email");
		    String phoneNumber = request.getParameter("number");
		    String departement = request.getParameter("departement");
		    String poste = request.getParameter("poste");
		    
		    for (Employee emp : Acceuil.listemployee){
		    	if(emp.getId().equals(id)) {
		    		emp.setName(name);
		    		emp.setEmail(email);
		    		emp.setNumber(phoneNumber);
		    		emp.setDepartement(departement);
		    		emp.setPoste(poste);
		    	}
		    }
			request.setAttribute("emp", Acceuil.listemployee);
			this.getServletContext().getRequestDispatcher("/WEB-INF/Acceuil.jsp").forward(request, response);

	}

}


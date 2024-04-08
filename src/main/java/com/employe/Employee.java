package com.employe;

public class Employee {
	
	private String id;
	private String name;
	private String email;
	private String number;
	private String departement;
	private String poste;
	
	public Employee() {
		
	}

	public String getId() {
		return this.id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDepartement() {
		return departement;
	}

	public void setDepartement(String departement) {
		this.departement = departement;
	}

	public String getPoste() {
		return poste;
	}
	
	public void setPoste(String poste) {
		this.poste = poste;
	}
}

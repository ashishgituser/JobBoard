package com.jobboard.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "JOBS")
public class Jobs {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_id;
	
	@Column(name = "title", nullable = true, length = 200)
	private String title;
	
	@Column(name = "description", nullable = true, length = 5000)
	private String description;
	
	@Column(name = "salary_from", nullable = true, length = 20)
	private String salaryFrom;
	
	@Column(name = "salary_to", nullable = true, length = 20)
	private String salaryTo;
	
	@Column(name = "exp_from", nullable = true, length = 2)
	private String expFrom;
	
	@Column(name = "exp_to", nullable = true, length = 2)
	private String expTo;
	
	@Column(name = "address", nullable = true, length = 1000)
	private String address;
	
	@Column(name = "date_posted")
	private Date datePosted = new Date();
	
	private EmployerProfile employerProfile;

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSalaryFrom() {
		return salaryFrom;
	}

	public void setSalaryFrom(String salaryFrom) {
		this.salaryFrom = salaryFrom;
	}

	public String getSalaryTo() {
		return salaryTo;
	}

	public void setSalaryTo(String salaryTo) {
		this.salaryTo = salaryTo;
	}

	public String getExpFrom() {
		return expFrom;
	}

	public void setExpFrom(String expFrom) {
		this.expFrom = expFrom;
	}

	public String getExpTo() {
		return expTo;
	}

	public void setExpTo(String expTo) {
		this.expTo = expTo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDatePosted() {
		return datePosted;
	}

	public void setDatePosted(Date datePosted) {
		this.datePosted = datePosted;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userId", nullable = false)
	public EmployerProfile getEmployerProfile() {
		return employerProfile;
	}

	public void setEmployerProfile(EmployerProfile employerProfile) {
		this.employerProfile = employerProfile;
	}
}

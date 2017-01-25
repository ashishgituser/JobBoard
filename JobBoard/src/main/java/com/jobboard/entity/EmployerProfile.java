package com.jobboard.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOYER_PROFILE")
public class EmployerProfile {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empId;
	
	@Column(name = "user_id", nullable = false)
	private int userId;
	
	@Column(name = "company_name", length = 200, nullable = true)
	private String companyName;
	
	@Column(name = "about", length = 1000, nullable = true)
	private String about;
	
	@Column(name = "website", length = 200, nullable = true)
	private String website;
	
	@Column(name = "company_phone", length = 50, nullable = true)
	private String companyPhone;
	
	@Column(name = "address", length = 500, nullable = true)
	private String address;
	
	private Set<Jobs> jobs = new HashSet<Jobs>(0);

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getCompanyPhone() {
		return companyPhone;
	}

	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employerProfile")
	public Set<Jobs> getJobs() {
		return jobs;
	}

	public void setJobs(Set<Jobs> jobs) {
		this.jobs = jobs;
	}	
}

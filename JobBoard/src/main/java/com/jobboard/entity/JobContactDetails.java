package com.jobboard.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "JOB_CONTACT_DETAILS")
public class JobContactDetails {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int job_con_id;
	
	@Column(name = "contact_person", length = 50, nullable = true)
	private String contact_persona;
	
	@Column(name = "email", length = 100, nullable = true)
	private String email;
	
	@Column(name = "phone", length = 50, nullable = true)
	private String phone;

	public int getJob_con_id() {
		return job_con_id;
	}

	public void setJob_con_id(int job_con_id) {
		this.job_con_id = job_con_id;
	}

	public String getContact_persona() {
		return contact_persona;
	}

	public void setContact_persona(String contact_persona) {
		this.contact_persona = contact_persona;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}

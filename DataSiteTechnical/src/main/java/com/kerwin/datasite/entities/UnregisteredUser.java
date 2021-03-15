package com.kerwin.datasite.entities;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

@Entity
public class UnregisteredUser extends User{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "email_address")
	@Size(max = 200)
	private String emailAddress;

	@Column(name = "language_code")
	@Size(max = 2)
	private String languageCode;

	@Column(name = "registration_id")
	@Size(max = 32)
	private String registrationId;

	@Column(name = "registration_id_generated_time")
	@Size(max = 16)
	private BigInteger registrationIdGeneratedTime;

	@Transient
	private List<Integer> projects = new ArrayList<>();

	public UnregisteredUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UnregisteredUser(int id, @Size(max = 200) String emailAddress, @Size(max = 2) String languageCode,
			@Size(max = 32) String registrationId, @Size(max = 16) BigInteger registrationIdGeneratedTime) {
		super();
		this.id = id;
		this.emailAddress = emailAddress;
		this.languageCode = languageCode;
		this.registrationId = registrationId;
		this.registrationIdGeneratedTime = registrationIdGeneratedTime;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UnregisteredUser [id=");
		builder.append(id);
		builder.append(", emailAddress=");
		builder.append(emailAddress);
		builder.append(", languageCode=");
		builder.append(languageCode);
		builder.append(", registrationId=");
		builder.append(registrationId);
		builder.append(", registrationIdGeneratedTime=");
		builder.append(registrationIdGeneratedTime);
		builder.append("]");
		return builder.toString();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UnregisteredUser other = (UnregisteredUser) obj;
		if (id != other.id)
			return false;
		return true;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getLanguageCode() {
		return languageCode;
	}

	public void setLanguageCode(String languageCode) {
		this.languageCode = languageCode;
	}

	public String getRegistrationId() {
		return registrationId;
	}

	public void setRegistrationId(String registrationId) {
		this.registrationId = registrationId;
	}

	public BigInteger getRegistrationIdGeneratedTime() {
		return registrationIdGeneratedTime;
	}

	public void setRegistrationIdGeneratedTime(BigInteger registrationIdGeneratedTime) {
		this.registrationIdGeneratedTime = registrationIdGeneratedTime;
	}

	public List<Integer> getProjects() {
		return projects;
	}

	public void setProjects(List<Integer> projects) {
		this.projects = projects;
	}

}

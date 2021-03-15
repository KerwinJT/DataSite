package com.kerwin.datasite.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;

@Entity
@Table(name = "registered_user")
public class RegisteredUser  extends User{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Size(max = 45)
	private String city;

	@Size(max = 120)
	private String company;

	@Size(max = 50)
	private String country;

	@Column(name = "first_name")
	@Size(max = 45)
	private String firstName;

	@Column(name = "last_name")
	@Size(max = 45)
	private String lastName;

	@Column(name = "organizational_type")
	@Size(max = 45)
	private String organizationalType;

	@Size(max = 45)
	private String phone;

	@Size(max = 2)
	private String state;

	@Column(name = "zip_code")
	@Size(max = 10)
	private String zipCode;

	@Column(name = "disclaimer_accepted")
	private Boolean disclaimerAccepted;

	@Column(name = "language_code")
	@Size(max = 2)
	private String languageCode;

	@Column(name = "email_address")
	@Size(max = 200)
	private String emailAddress;

	@Transient
	private List<Integer> projects = new ArrayList<>();

	public RegisteredUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RegisteredUser(int id, @Size(max = 45) String city, @Size(max = 120) String company,
			@Size(max = 50) String country, @Size(max = 45) String firstName, @Size(max = 45) String lastName,
			@Size(max = 45) String organizationalType, @Size(max = 45) String phone, @Size(max = 2) String state,
			@Size(max = 10) String zipCode, Boolean disclaimerAccepted, @Size(max = 2) String languageCode,
			@Size(max = 200) String emailAddress) {
		super();
		this.id = id;
		this.city = city;
		this.company = company;
		this.country = country;
		this.firstName = firstName;
		this.lastName = lastName;
		this.organizationalType = organizationalType;
		this.phone = phone;
		this.state = state;
		this.zipCode = zipCode;
		this.disclaimerAccepted = disclaimerAccepted;
		this.languageCode = languageCode;
		this.emailAddress = emailAddress;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RegisteredUser [id=");
		builder.append(id);
		builder.append(", city=");
		builder.append(city);
		builder.append(", company=");
		builder.append(company);
		builder.append(", country=");
		builder.append(country);
		builder.append(", firstName=");
		builder.append(firstName);
		builder.append(", lastName=");
		builder.append(lastName);
		builder.append(", organizationalType=");
		builder.append(organizationalType);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", state=");
		builder.append(state);
		builder.append(", zipCode=");
		builder.append(zipCode);
		builder.append(", disclaimerAccepted=");
		builder.append(disclaimerAccepted);
		builder.append(", languageCode=");
		builder.append(languageCode);
		builder.append(", emailAddress=");
		builder.append(emailAddress);
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
		RegisteredUser other = (RegisteredUser) obj;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getOrganizationalType() {
		return organizationalType;
	}

	public void setOrganizationalType(String organizationalType) {
		this.organizationalType = organizationalType;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Boolean getDisclaimerAccepted() {
		return disclaimerAccepted;
	}

	public void setDisclaimerAccepted(Boolean disclaimerAccepted) {
		this.disclaimerAccepted = disclaimerAccepted;
	}

	public String getLanguageCode() {
		return languageCode;
	}

	public void setLanguageCode(String languageCode) {
		this.languageCode = languageCode;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public List<Integer> getProjects() {
		return projects;
	}

	public void setProjects(List<Integer> projects) {
		this.projects = projects;
	}

}

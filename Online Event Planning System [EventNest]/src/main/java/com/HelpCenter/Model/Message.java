package com.HelpCenter.Model;

/*Author:IT22332608 | Liyanage M.I.H*/
public class Message {
	private int id;

	private String name;
	private String email;
	private String phone;
	private String issueType;
	private String Description;

	public String getDescription() {
		return Description;
	}

	public Message(int id, String name, String email, String phone, String issueType, String description) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.issueType = issueType;
		Description = description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public Message(String name, String email, String phone, String issueType, String description) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.issueType = issueType;
		Description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIssueType() {
		return issueType;
	}

	public void setIssueType(String issueType) {
		this.issueType = issueType;
	}
}

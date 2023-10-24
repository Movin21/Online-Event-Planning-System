package com.Admin.AdminPortalContent.AttendeeSection.Model;

/*Author:IT22332608 | Liyanage M.I.H*/
public class Attendee {
	private int attendeeId;
	private String attendeeName;
	private String attendeeAddress;
	private String attendeePhone;
	private String attendeeEmail;
	private String username;
	private String password;

	// Default Constructor
	public Attendee(int attendeeId, String attendeeName, String attendeeAddress, String attendeePhone,
			String attendeeEmail, String username, String password) {
		this.attendeeId = attendeeId;
		this.attendeeName = attendeeName;
		this.attendeeAddress = attendeeAddress;
		this.attendeePhone = attendeePhone;
		this.attendeeEmail = attendeeEmail;
		this.username = username;
		this.password = password;
	}

	public Attendee(String attendeeId, String attendeeName, String attendeeAddress, String attendeePhone,
			String attendeeEmail, String username, String password) {
		this.attendeeId = Integer.parseInt(attendeeId);
		this.attendeeName = attendeeName;
		this.attendeeAddress = attendeeAddress;
		this.attendeePhone = attendeePhone;
		this.attendeeEmail = attendeeEmail;
		this.username = username;
		this.password = password;
	}

	// Getters and setters for all fields

	public int getAttendeeId() {
		return attendeeId;
	}

	public void setAttendeeId(int attendeeId) {
		this.attendeeId = attendeeId;
	}

	public String getAttendeeName() {
		return attendeeName;
	}

	public void setAttendeeName(String attendeeName) {
		this.attendeeName = attendeeName;
	}

	public String getAttendeeAddress() {
		return attendeeAddress;
	}

	public void setAttendeeAddress(String attendeeAddress) {
		this.attendeeAddress = attendeeAddress;
	}

	public String getAttendeePhone() {
		return attendeePhone;
	}

	public void setAttendeePhone(String attendeePhone) {
		this.attendeePhone = attendeePhone;
	}

	public String getAttendeeEmail() {
		return attendeeEmail;
	}

	public void setAttendeeEmail(String attendeeEmail) {
		this.attendeeEmail = attendeeEmail;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}

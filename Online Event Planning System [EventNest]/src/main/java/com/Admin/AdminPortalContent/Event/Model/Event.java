package com.Admin.AdminPortalContent.Event.Model;

/*Author:IT22332608 | Liyanage M.I.H*/
public class Event {
	private int eventId;
	private String eventName;
	private String venue;
	private String eventDate;
	private String eventImageLink;
	private String eventDescription;
	private double ticketPrice;
	private String username;
	private String password;

	public Event(int eventId, String eventName, String venue, String eventDate, String eventImageLink,
			String eventDescription, double ticketPrice, String username, String password) {
		super();
		this.eventId = eventId;
		this.eventName = eventName;
		this.venue = venue;
		this.eventDate = eventDate;
		this.eventImageLink = eventImageLink;
		this.eventDescription = eventDescription;
		this.ticketPrice = ticketPrice;
		this.username = username;
		this.password = password;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getEventDate() {
		return eventDate;
	}

	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventImageLink() {
		return eventImageLink;
	}

	public void setEventImageLink(String eventImageLink) {
		this.eventImageLink = eventImageLink;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public double getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(double ticketPrice) {
		this.ticketPrice = ticketPrice;
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

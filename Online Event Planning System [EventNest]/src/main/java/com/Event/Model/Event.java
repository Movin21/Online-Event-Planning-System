package com.Event.Model;

public class Event {
	private int eventID;
	private String eventName;
	private String venue;
	private String eventDate;
	private String eventImageLink;
	private String eventDescription;
	private double ticketPrice;
	private String userName;
	private String password;
	
	public Event(int eventID, String eventName, String venue, String eventDate, String eventImageLink,
			String eventDescription, double ticketPrice, String userName, String password) {
		super();
		this.eventID = eventID;
		this.eventName = eventName;
		this.venue = venue;
		this.eventDate = eventDate;
		this.eventImageLink = eventImageLink;
		this.eventDescription = eventDescription;
		this.ticketPrice = ticketPrice;
		this.userName = userName;
		this.password = password;
	}

	public int getEventID() {
		return eventID;
	}

	public String getEventName() {
		return eventName;
	}

	public String getVenue() {
		return venue;
	}

	public String getEventDate() {
		return eventDate;
	}

	public String getEventImageLink() {
		return eventImageLink;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public double getTicketPrice() {
		return ticketPrice;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

}
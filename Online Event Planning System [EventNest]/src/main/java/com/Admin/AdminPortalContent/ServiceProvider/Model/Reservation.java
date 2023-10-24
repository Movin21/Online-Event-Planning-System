package com.Admin.AdminPortalContent.ServiceProvider.Model;

/*Author:IT22332608 | Liyanage M.I.H*/
public class Reservation {
	private int reservationId;
	private String reservationName;
	private int numberOfCrew;
	private String reservationType;
	private String reservationDescription;
	private double reservationPrice;
	private String username;
	private String password;

	public Reservation(int reservationId, String reservationName, int numberOfCrew, String reservationType,
			String reservationDescription, double reservationPrice, String username, String password) {
		super();
		this.reservationId = reservationId;
		this.reservationName = reservationName;
		this.numberOfCrew = numberOfCrew;
		this.reservationType = reservationType;
		this.reservationDescription = reservationDescription;
		this.reservationPrice = reservationPrice;
		this.username = username;
		this.password = password;
	}

	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}

	public String getReservationName() {
		return reservationName;
	}

	public void setReservationName(String reservationName) {
		this.reservationName = reservationName;
	}

	public int getNumberOfCrew() {
		return numberOfCrew;
	}

	public void setNumberOfCrew(int numberOfCrew) {
		this.numberOfCrew = numberOfCrew;
	}

	public String getReservationType() {
		return reservationType;
	}

	public void setReservationType(String reservationType) {
		this.reservationType = reservationType;
	}

	public String getReservationDescription() {
		return reservationDescription;
	}

	public void setReservationDescription(String reservationDescription) {
		this.reservationDescription = reservationDescription;
	}

	public double getReservationPrice() {
		return reservationPrice;
	}

	public void setReservationPrice(double reservationPrice) {
		this.reservationPrice = reservationPrice;
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

package domain;

import java.util.Set;

public class RoomDetails {

	private int roomId;
	private String roomName;
	private double price;
	private String status;
	private Set<Registration> registration;
	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Set<Registration> getRegistration() {
		return registration;
	}
	public void setRegistration(Set<Registration> registration) {
		this.registration = registration;
	}
	
	
}

package util;

import java.sql.Blob;

import javax.servlet.http.Part;



public class AddRoomTo {

	private int addRoomId;
	private String roomName;
	private double roomPrice;
	//private  Part filePart;
	private byte[] images;
	private String imageName;
	private String roomStatus;
	private String roomDescription;

	public AddRoomTo()
	{
		
	}
	
	public AddRoomTo(int addRoomId, String roomName, double roomPrice, byte[] images, String imageName, String roomStatus,
			String roomDescription) {
		super();
		this.addRoomId = addRoomId;
		this.roomName = roomName;
		this.roomPrice = roomPrice;
		this.images = images;
		this.imageName = imageName;
		this.roomStatus = roomStatus;
		this.roomDescription = roomDescription;
	}
	
	public AddRoomTo(String roomName, double roomPrice, byte[] images, String imageName, String roomStatus,
			String roomDescription) {
		this.roomName = roomName;
		this.roomPrice = roomPrice;
		this.images = images;
		this.imageName = imageName;
		this.roomStatus = roomStatus;
		this.roomDescription = roomDescription;
	}
	public int getAddRoomId() {
		return addRoomId;
	}
	public void setAddRoomId(int addRoomId) {
		this.addRoomId = addRoomId;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public double getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(double roomPrice) {
		this.roomPrice = roomPrice;
	}
	public byte[] getImages() {
		return images;
	}
	public void setImages(byte[] images) {
		this.images = images;
	}
	public String getRoomStatus() {
		return roomStatus;
	}
	public void setRoomStatus(String roomStatus) {
		this.roomStatus = roomStatus;
	}
	public String getRoomDescription() {
		return roomDescription;
	}
	public void setRoomDescription(String roomDescription) {
		this.roomDescription = roomDescription;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	
	
}

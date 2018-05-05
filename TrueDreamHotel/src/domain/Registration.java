package domain;

import java.util.Set;

public class Registration {
	
	private int regId;
	private String userName;
	private String email;
	private long phone;
	private String password;
	private String roleType;
	//private Set<RoomDetails> roomDetails;
	private Set<AddRoom> bookingDetail;
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRoleType() {
		return roleType;
	}
	public void setRoleType(String roleType) {
		this.roleType = roleType;
	}
	
	public Set<AddRoom> getBookingDetail() {
		return bookingDetail;
	}
	public void setBookingDetail(Set<AddRoom> bookingDetail) {
		this.bookingDetail = bookingDetail;
	}
	
	
}

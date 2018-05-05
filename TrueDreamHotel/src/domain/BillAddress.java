package domain;

public class BillAddress {
	
	private String city;
	private String state;
	private int zcode;	
	
	public BillAddress()
	{
		
	}
	public BillAddress(String city, String state, int zcode) {
		super();
		this.city = city;
		this.state = state;
		this.zcode = zcode;
	}


	
	

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZcode() {
		return zcode;
	}

	public void setZcode(int zcode) {
		this.zcode = zcode;
	}
	

}

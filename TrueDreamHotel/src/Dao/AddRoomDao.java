package Dao;

import java.util.ArrayList;

import domain.AddRoom;
import util.AddRoomTo;


public interface AddRoomDao {
	public int addRoom(AddRoomTo addRoom);
    public AddRoomTo getAddRoomById(int addRoomId);
    public ArrayList<AddRoomTo> getRoomByPagination();
    public void deleteRecord(int addRoomId);
    public void updateRecord(AddRoomTo addRoom);
	
}

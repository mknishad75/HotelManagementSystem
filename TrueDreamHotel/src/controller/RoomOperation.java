package controller;

import Dao.AddRoomDao;
import Dao.DaoFactory;
import util.AddRoomTo;

public class RoomOperation {

	public String viewRoom(int roomId) {
		System.out.println("Room Id "+ roomId);
		AddRoomDao addRoomDao=DaoFactory.getRoomDao();
		AddRoomTo retrieveRoomInstance = addRoomDao.getAddRoomById(roomId);
		
		
		return "viewRoomDetails";
	}

	public String updateRoom(int roomId) {
		
		return "updateRoomDetails";
	}

	public String deleteRoom(int roomId) {
		AddRoomDao addRoomdao=DaoFactory.getRoomDao();
		addRoomdao.deleteRecord(roomId);
		
		return "viewRoomDetails";
	}

}

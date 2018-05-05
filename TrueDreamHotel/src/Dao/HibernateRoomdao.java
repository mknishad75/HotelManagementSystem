package Dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import domain.AddRoom;
import util.AddRoomTo;
import util.HibernateTemplate;

public class HibernateRoomdao  implements AddRoomDao{

	@Override
	public int addRoom(AddRoomTo addRoom) {
		AddRoom addRoomValue=new AddRoom();
		addRoomValue.setRoomName(addRoom.getRoomName());
		addRoomValue.setRoomPrice(addRoom.getRoomPrice());
		addRoomValue.setImages(addRoom.getImages());
		addRoomValue.setImageName(addRoom.getImageName());
		addRoomValue.setRoomStatus(addRoom.getRoomStatus());
		addRoomValue.setRoomDescription(addRoom.getRoomDescription());
		
		Integer value=(Integer) HibernateTemplate.saveObjct(addRoomValue);
		
		return value;
	}

@Override
public AddRoomTo getAddRoomById(int addRoomId) {
	
	AddRoom getRoomValue=(AddRoom) HibernateTemplate.loadObject(AddRoom.class,addRoomId);
	AddRoomTo setRoomValue=new AddRoomTo();
	setRoomValue.setAddRoomId(getRoomValue.getAddRoomId());
	setRoomValue.setRoomName(getRoomValue.getRoomName());
	setRoomValue.setRoomPrice(getRoomValue.getRoomPrice());
	setRoomValue.setImages(getRoomValue.getImages());	 
	setRoomValue.setImageName(getRoomValue.getImageName());	 
	setRoomValue.setRoomStatus(getRoomValue.getRoomStatus());
	setRoomValue.setRoomDescription(getRoomValue.getRoomDescription());
	
	return setRoomValue;
}

	@Override
	public ArrayList<AddRoomTo> getRoomByPagination() {
		ArrayList<AddRoom> getRoomInstance=HibernateTemplate.loadWithPaginaton(AddRoom.class);
		ArrayList<AddRoomTo> list=new ArrayList<AddRoomTo>();
		
		Iterator<AddRoom> it=getRoomInstance.iterator();
		
		while(it.hasNext())
		{
			AddRoom roomValueInstance=it.next();
			AddRoomTo setRoomInstance=new AddRoomTo();
			setRoomInstance.setAddRoomId(roomValueInstance.getAddRoomId());
			setRoomInstance.setRoomName(roomValueInstance.getRoomName());
			setRoomInstance.setRoomPrice(roomValueInstance.getRoomPrice());
			setRoomInstance.setRoomStatus(roomValueInstance.getRoomStatus());
			setRoomInstance.setImageName(roomValueInstance.getImageName());
			setRoomInstance.setImages(roomValueInstance.getImages());
			setRoomInstance.setRoomDescription(roomValueInstance.getRoomDescription());
			list.add(setRoomInstance);
		}
	
		return list;
	}

	@Override
	public void deleteRecord(int addRoomId) {
		HibernateTemplate.deleteObject(AddRoom.class,addRoomId );
		
	}

	@Override
	public void updateRecord(AddRoomTo addRoom) {
		int status=0;
		
		AddRoom roomInstance=new AddRoom();
		roomInstance.setAddRoomId(addRoom.getAddRoomId());
		roomInstance.setRoomName(addRoom.getRoomName());
		roomInstance.setRoomPrice(addRoom.getRoomPrice());
		roomInstance.setRoomStatus(addRoom.getRoomStatus());
		roomInstance.setImageName(addRoom.getImageName());
		roomInstance.setImages(addRoom.getImages());
		roomInstance.setRoomDescription(addRoom.getRoomDescription());
		
		HibernateTemplate.updateObject(roomInstance);
		
		
		//return status;
	}

	
}
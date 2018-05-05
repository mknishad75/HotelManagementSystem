package Dao;

public class DaoFactory {
	static AddRoomDao addRoomDao;
	
	static{
	
		addRoomDao=new HibernateRoomdao();
		
	}
	
	public static AddRoomDao getRoomDao()
	{
		return addRoomDao;
	}

	
	
}

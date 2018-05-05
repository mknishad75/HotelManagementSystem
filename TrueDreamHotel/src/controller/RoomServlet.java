package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AddRoomDao;
import Dao.DaoFactory;
import util.AddRoomTo;

@SuppressWarnings("serial")
@WebServlet("/myservlet")
public class RoomServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String pageName = "";
        RoomOperation roomOperationInstance = new RoomOperation();
        int roomId = Integer.parseInt(request.getParameter("roomId"));
        
        if (request.getParameter("View") != null) {
           //pageName = roomOperationInstance.viewRoom(roomId);
        	AddRoomDao addRoomDao=DaoFactory.getRoomDao();
    		AddRoomTo retrieveRoomInstance = addRoomDao.getAddRoomById(roomId);
    		request.setAttribute("RetrieveRoomInstance",retrieveRoomInstance);    		   		
    		pageName = "availbleRoom";           
        } 
        else if (request.getParameter("Update") != null) {
        	//pageName = roomOperationInstance.updateRoom(roomId);
        	AddRoomDao addRoomDao=DaoFactory.getRoomDao();
    		AddRoomTo retrieveRoomInstance = addRoomDao.getAddRoomById(roomId);
    		request.setAttribute("RetrieveRoomInstance",retrieveRoomInstance);    		   		
    		pageName = "updateroom";           
        	     
        }
        else if (request.getParameter("Delete") != null) {
        	//pageName = roomOperationInstance.deleteRoom(roomId);
        	AddRoomDao addRoomdao=DaoFactory.getRoomDao();
    		addRoomdao.deleteRecord(roomId);
    		
    		
        } 
         System.out.println("pageName : "+ pageName);
        request.getRequestDispatcher("/"+pageName+".jsp").forward(request, response);
    }

}
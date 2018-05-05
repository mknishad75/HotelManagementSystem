package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Dao.AddRoomDao;
import Dao.DaoFactory;
import util.AddRoomTo;

@WebServlet("/updateValue")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)   // 50MB
public class UpadateValueController extends HttpServlet {
	
	private static final String SAVE_DIR = "uploadFiles";


	/**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
	
	protected void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
        String roomId=request.getParameter("roomId");
		String roomName=request.getParameter("roomName");
		String roomPrice=request.getParameter("roomPrice");
		String roomStatus=request.getParameter("roomStatus");
		String roomDescription=request.getParameter("roomDescription");
		
		System.out.println("id is"+roomId);
		
		 String appPath = request.getServletContext().getRealPath("");
	        // constructs path of the directory to save uploaded file
	        String savePath = appPath + File.separator + SAVE_DIR;
	         
	        // creates the save directory if it does not exists
	        File fileSaveDir = new File(savePath);
	        if (!fileSaveDir.exists()) {
	            fileSaveDir.mkdir();
	        }
	        
	        String filePath = "";        
	        Part part = request.getPart("roomImage");
	        String fileName = extractFileName(part);
	        // refines the fileName in case it is an absolute path
	        fileName = new File(fileName).getName();
	        part.write(savePath + File.separator + fileName);
	        filePath = savePath + File.separator + fileName;
			
	        System.out.println("filePath : "+filePath);
			
			
			File file = new File(filePath);
			byte[] bFile = new byte[(int) file.length()];
			
			FileInputStream fileInputStream = new FileInputStream(file);
			fileInputStream.read(bFile);
			fileInputStream.close();
			
		
			AddRoomTo addRoomInstance=new AddRoomTo();
			addRoomInstance.setAddRoomId(Integer.parseInt(roomId));
			addRoomInstance.setRoomName(roomName);
			addRoomInstance.setRoomPrice(Double.parseDouble(roomPrice));
			addRoomInstance.setImages(bFile);
			addRoomInstance.setImageName(fileName);
			addRoomInstance.setRoomStatus(roomStatus);
			addRoomInstance.setRoomDescription(roomDescription);
			
			AddRoomDao addRoomDao=DaoFactory.getRoomDao();
			addRoomDao.updateRecord(addRoomInstance);
		
		
	}

}

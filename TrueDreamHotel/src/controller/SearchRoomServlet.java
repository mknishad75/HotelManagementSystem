package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.codec.binary.Base64;

import Dao.AddRoomDao;
import Dao.DaoFactory;
import util.AddRoomTo;

@SuppressWarnings("serial")
//@WebServlet("/retrieveRoomDetail")
//@WebServlet("/myservlet")
//, urlPatterns="retrieveRoomDetail"
public class SearchRoomServlet extends HttpServlet{
	 private static final String SAVE_DIR = "uploadFiles";


	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// gets absolute path of the web application
        String appPath = req.getServletContext().getRealPath("");
        // constructs path of the directory to save uploaded file
        String savePath = appPath + File.separator + SAVE_DIR;
       
		int roomId = Integer.parseInt(req.getParameter("roomId"));
		AddRoomDao addRoomDao=DaoFactory.getRoomDao();
		AddRoomTo retrieveRoomInstance = addRoomDao.getAddRoomById(roomId);
		byte[] byteRoomImg = retrieveRoomInstance.getImages();
		String fileName = retrieveRoomInstance.getImageName();
		
		String filePath = savePath + File.separator + fileName;
		System.out.println("filePath : "+filePath);
		File file = new File(filePath);
		try{
			FileOutputStream fos = new FileOutputStream(file);
			fos.write(byteRoomImg);
			fos.close();
		}catch(Exception e){
			System.out.println("Exception FOS "+e);
		}
		
		
        byte[] encodeBase64 = Base64.encodeBase64(byteRoomImg);
        String base64Encoded = new String(encodeBase64, "UTF-8");
       
		res.setContentType("text/html");
		 res.setContentType("image/jpg");
		 req.setAttribute("ByteRoomImg",base64Encoded);
		 req.setAttribute("AddRoomInstance", retrieveRoomInstance);
		 RequestDispatcher rd=req.getRequestDispatcher("availbleRoom.jsp");
		 rd.forward(req, res);
		
	}
	
}

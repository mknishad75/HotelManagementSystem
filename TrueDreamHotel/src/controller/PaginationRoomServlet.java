package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import Dao.AddRoomDao;
import Dao.DaoFactory;
import util.AddRoomTo;

@SuppressWarnings("serial")
@WebServlet("/searchRoom")
public class PaginationRoomServlet extends HttpServlet{
	
	 private static final String SAVE_DIR = "uploadFiles";
	protected void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		// gets absolute path of the web application
        String appPath = req.getServletContext().getRealPath("");
        // constructs path of the directory to save uploaded file
        String savePath = appPath + File.separator + SAVE_DIR;
        /*  
        int page = 1;
        int recordsPerPage = 5;
        if(req.getParameter("page") != null)
            page = Integer.parseInt(req.getParameter("page"));
      // EmployeeDAO dao = new EmployeeDAO();
        //List<Employee> list = dao.viewAllEmployees((page-1)*recordsPerPage,recordsPerPage);
        
        //request.setAttribute("employeeList", list);
        //request.setAttribute("noOfPages", noOfPages);
        //request.setAttribute("currentPage", page);
        */
		
		AddRoomDao addRoomDao=DaoFactory.getRoomDao();
		ArrayList<AddRoomTo> retrieveRoomInstance = addRoomDao.getRoomByPagination();
		//int noOfRecords = dao.getNoOfRecords();
        //int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		
		Iterator<AddRoomTo> it=retrieveRoomInstance.iterator();
		while(it.hasNext())
		{
			AddRoomTo getValue=it.next();
			AddRoomTo addRoomInstance=new AddRoomTo();
			addRoomInstance.setAddRoomId(getValue.getAddRoomId());
			addRoomInstance.setRoomName(getValue.getRoomName());
			addRoomInstance.setRoomPrice(getValue.getRoomPrice());
			addRoomInstance.setRoomStatus(getValue.getRoomStatus());
			addRoomInstance.setImageName(getValue.getImageName());
			addRoomInstance.setRoomDescription(getValue.getRoomDescription());
			
			
			byte[] byteRoomImg = getValue.getImages();
			String fileName = getValue.getImageName();
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
		 req.setAttribute("AddRoomInstance", addRoomInstance);
		
	        
		}
		 RequestDispatcher rd=req.getRequestDispatcher("roomBooking.jsp");
		 rd.forward(req, res);
		
	}
	
		
	

}

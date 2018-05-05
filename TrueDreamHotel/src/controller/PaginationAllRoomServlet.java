package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Dao.AddRoomDao;
import Dao.DaoFactory;
import util.AddRoomTo;

@WebServlet("/PaginationValue")
public class PaginationAllRoomServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	 private static final String SAVE_DIR = "uploadFiles";
	protected void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException
	{
		  String appPath = request.getServletContext().getRealPath("");
		  String savePath = appPath + File.separator + SAVE_DIR;
		
		response.setContentType("application/json");
		PrintWriter out=response.getWriter();
		AddRoomDao addRoomDao=DaoFactory.getRoomDao();
		ArrayList<AddRoomTo> retrieveRoomInstance = addRoomDao.getRoomByPagination();
		
	        
		PersonJsonObject personJsonObject = new PersonJsonObject();
		personJsonObject.setiTotalDisplayRecords(retrieveRoomInstance.size());
		personJsonObject.setiTotalRecords(retrieveRoomInstance.size());
		personJsonObject.setAaData(retrieveRoomInstance);

		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json2 = gson.toJson(personJsonObject);
		out.print(json2);
		
	}
}

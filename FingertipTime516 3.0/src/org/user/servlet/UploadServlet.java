package org.user.servlet;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		boolean isMultipart=ServletFileUpload.isMultipartContent(request);
		if(isMultipart) {//判断前台form中是否有multipart属性
			FileItemFactory factory=new DiskFileItemFactory();
			ServletFileUpload upload=new ServletFileUpload(factory);
			List<FileItem> items = null;
			try {
				items = upload.parseRequest(request);
			} catch (FileUploadException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			Iterator<FileItem> iter=items.iterator();
			String uid=null;
			String uname=null;
			//判断前台字段是普通form表单字段，还是文件字段
			while(iter.hasNext()) {
				FileItem item=iter.next();
				String itemName=item.getFieldName();
				if(item.isFormField()) {
					if(itemName.equals("uid")) {
						uid=item.getString("UTF-8");
					}else if(itemName.equals("uname")) {
						uname=item.getString("UTF-8");
					}else {
						System.out.println("其他字段");
					}
				}
				else {//文件上传
					String path="";
					String fileName=item.getName();
					File file=new File(path,fileName);
						try {
							item.write(file);
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}

				}
				
			}
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

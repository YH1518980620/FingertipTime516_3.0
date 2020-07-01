package org.user.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.user.entity.User;
import org.user.service.IUserService;
import org.user.service.impl.UserServiceImpl;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("uid");
		String pwd=request.getParameter("upwd");
		String name=request.getParameter("uname");
		String sex=request.getParameter("usex");
		//System.out.println(sex);
		String date=request.getParameter("ubirth");

		//将String类转换为Date类
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date birth=null;
		try {
			birth = sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println(birth);
		User user=new User(id,name,sex,pwd,null,birth,null);
		
		IUserService service=new UserServiceImpl();
		boolean result=service.updateUserByUid(user);
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		if(result) {
			request.setAttribute("uid",id);
			request.setAttribute("upwd",pwd);
			request.setAttribute("uname",name);
			request.setAttribute("usex",sex);
			request.setAttribute("ubirth",date);
			request.getRequestDispatcher("psInfoCheck.jsp").forward(request, response);
		}else {
			response.getWriter().println("更新失败,账号或密码错误");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

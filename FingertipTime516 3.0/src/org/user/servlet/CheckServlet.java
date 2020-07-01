package org.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.user.entity.User;
import org.user.service.IUserService;
import org.user.service.impl.UserServiceImpl;


@WebServlet("/CheckServlet")
public class CheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("uid");
		String pwd=request.getParameter("upwd");
		//System.out.println(id+pwd);
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		IUserService service=new UserServiceImpl();
		User currentuser=service.queryUserByUid(id);
		boolean result=service.login(id, pwd);
		if(result) {
			request.setAttribute("currentUser", currentuser);
			request.getRequestDispatcher("userAccount.jsp").forward(request, response);
			//System.out.println("登陆成功");
		}else {
			//System.out.println("登陆失败");
			request.setAttribute("loginErro","此用户不存在或密码错误，请注册用户！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

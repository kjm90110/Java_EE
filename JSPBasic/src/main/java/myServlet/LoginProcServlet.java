package myServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginProcServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// session 객체 획득
		HttpSession session = req.getSession();
		
		String uid = req.getParameter("uid")== null ? "" : req.getParameter("uid");
		String upass = req.getParameter("upass")== null ? "" : req.getParameter("upass");

		if(uid.equals("hong") && upass.equals("1234")) {
			// 로그인 성공
			session.setAttribute("sess_uid", uid);
			resp.sendRedirect("/jsp/home2.jsp");
		} else {
			// 로그인 실패
			resp.sendRedirect("/jsp/loginForm.jsp");
		}
		
	} // doPost
	
} // LoginProcServlet

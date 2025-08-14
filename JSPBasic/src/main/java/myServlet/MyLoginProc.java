package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyLoginProc extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uid = req.getParameter("uid");
		String upass = req.getParameter("upass");
		int count = 0;

		HttpSession session = req.getSession();
		
		String status = (String)session.getAttribute("status");
		String loginErrorCount = (String)session.getAttribute("loginErrorCount");
		
		if(status==null) {
			session.setAttribute(status, "");
		} else if(loginErrorCount==null) {
			session.setAttribute(loginErrorCount, "0");
		}
		
		if(uid.equals("hong") && upass.equals("1234")) { // 로그인 정보가 맞을 경우
			
			// session setting
			session.setAttribute("sess_uid", uid);
			
			// redirection to myHome
			resp.sendRedirect("/jsp/myHome.jsp");
			
		} else if(!uid.equals("hong")) { // id 틀렸을 경우
			
			session.setAttribute("status", "uidError");
			
			// redirection to form
			resp.sendRedirect("/jsp/myLoginForm.jsp");
			
		} else if(!upass.equals("1234")) {
			
			session.setAttribute("status", "upassError");
			
			// redirection to form
			resp.sendRedirect("/jsp/myLoginForm.jsp");
			
		} else {
			
			session.setAttribute("loginErrorCount", Integer.toString(count+1));
			
			// redirection to form
			resp.sendRedirect("/jsp/myLoginForm.jsp");
		}

	}
	
}

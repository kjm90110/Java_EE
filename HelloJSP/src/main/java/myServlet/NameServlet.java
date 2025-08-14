package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;

public class NameServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
//		name 파라미터의 값을 문자열로 저장
		String name = req.getParameter("name");
//		System.out.println(name);
		
//		age 파라미터의 값을 문자열로 저장
		String age = req.getParameter("age");
//		System.out.println(age);
//		System.out.println("10년 후 나이: "+ (Integer.parseInt(age)+10));
	
//		실습: 누구누구님은 십년 후에 몇 살입니다! 를 클라이언트에 전송
//		resp.setContentType("text/html; charset=utf-8");
//		PrintWriter pw = resp.getWriter();
//		pw.append("<!DOCTYPE html>");
//		pw.append("<head>");
//		pw.append("<meta charset='utf-8>");
//		pw.append("</head>");
//		pw.append("<!DOCTYPE html>");
//		pw.append("<html>");
//		pw.append("<body>");
//		pw.append("<h2>" + name + "님은 10년 후에" 
//		+ (Integer.parseInt(age)+10) + "살입니다!"+ "</h2>");
//		pw.append("</body>");
//		pw.append("</html>");
//		pw.flush();
//		pw.close();
		
//		실습2: 클라이언트에서 전달 받은 이름과 나이를
//			  JSON 문자열로 변환해서 클라이언트에 전송
//		String jsonStr = "{\"name\":" + name + ", \"age\":" + age + "}";
//		resp.setContentType("application/json; charset=utf-8");
//		PrintWriter pw = resp.getWriter();
//		pw.append(jsonStr);
//		pw.flush();
//		pw.close();
	
//		실습3:클라이언트에서 전달 받은 이름과 나이를
//		  	 xml 문자열로 변환해서 클라이언트에 전송 
		resp.setContentType("application/xml; charset=utf-8");
		PrintWriter pw = resp.getWriter();
		pw.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		pw.append("<person>");
		pw.append("<name>" + name + "</name>");
		pw.append("<age>" + age + "</age>");
		pw.append("</person>");
		pw.flush();
		pw.close();
	}
	
}

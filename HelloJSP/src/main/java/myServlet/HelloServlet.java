package myServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

//	
	@Override
	public void init() throws ServletException {
		System.out.println("servlet 초기화 됨");
	}
	
//	서블릿 호출 할 때마다 실행
//	@Override
//	protected void service(HttpServletRequest req, HttpServletResponse resp) 
//			throws ServletException, IOException {
//		System.out.println("service 메소드 호출됨");
////		System.out.println(req.getMethod());
//		
//		if(req.getMethod().equalsIgnoreCase("GET")) {
//			System.out.println("GET");
//		} else if(req.getMethod().equalsIgnoreCase("POST")) {
//			System.out.println("POST");
//		}
//		
//	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("get 요청 여기서 처리");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter pw = resp.getWriter();
		pw.append("<!DOCTYPE html>");
		pw.append("<html>");
		pw.append("<head>");
		pw.append("<meta charset='UTF-8'>");
		pw.append("</head>");
		pw.append("<body>");
		pw.append("<h1>GET 요청 처리결과 응답</h1>");
		pw.append("</body>");
		pw.append("</html>");
		pw.flush();
		pw.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("post 요청 여기서 처리");
	}
	
	@Override
		protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("put 요청 여기서 처리");
	}
	
	@Override
		protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("delete 요청 여기서 처리");
	}
	
//	서블릿이 메모리에서 제거 될 때 (서버 종료 직전) 실행
	@Override
	public void destroy() {
		System.out.println("servlet 소멸됨");
	}
	
}

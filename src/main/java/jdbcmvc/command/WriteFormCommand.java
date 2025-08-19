package jdbcmvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormCommand extends AbstractPerson {
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		return "/jsp/writeForm.jsp";
	}

}

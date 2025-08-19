package jdbcmvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ListCommand extends AbstractPerson {
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
		throws Exception {

		req.setAttribute("personCount", personService.countPerson(personService.listPerson()));
		req.setAttribute("personList", personService.listPerson());
		
		return "/jsp/list.jsp";
	}

}
















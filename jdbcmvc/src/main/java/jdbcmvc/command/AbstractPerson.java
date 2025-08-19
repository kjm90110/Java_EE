package jdbcmvc.command;

import jdbcmvc.service.PersonService;
import jdbcmvc.service.impl.PersonServiceImpl;

public abstract class AbstractPerson implements PersonCommand {
	
	public PersonService personService;
	
	public AbstractPerson() {
		personService = new PersonServiceImpl();
	}

}

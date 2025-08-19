package jdbcmvc.service.impl;

import java.util.List;

import jdbcmvc.dao.PersonDao;
import jdbcmvc.dao.impl.PersonDaoImpl;
import jdbcmvc.model.Person;
import jdbcmvc.service.PersonService;

public class PersonServiceImpl implements PersonService {
	
	private PersonDao personDao;
	
	public PersonServiceImpl() {
		personDao = new PersonDaoImpl();
	}
	
	@Override
	public List<Person> listPerson() throws Exception {
		return personDao.listPerson();
	}
	
	@Override
	public Person getPerson(int pid) throws Exception {
		return personDao.getPerson(pid);
	}
	
	@Override
	public int writePerson(Person person) throws Exception {
		return personDao.writePerson(person);
	}
	
	@Override
	public int updatePerson(Person person) throws Exception {
		return personDao.updatePerson(person);
	}
	
	@Override
	public int deletePerson(int pid) throws Exception {
		return personDao.deletePerson(pid);
	}
	
	@Override
	public int countPerson(List<Person>personList) throws Exception {
		return personDao.countPerson(personList);
	}

}














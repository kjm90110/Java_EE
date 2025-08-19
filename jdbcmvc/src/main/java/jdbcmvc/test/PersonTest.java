package jdbcmvc.test;

import jdbcmvc.service.PersonService;
import jdbcmvc.service.impl.PersonServiceImpl;

public class PersonTest {

	public static void main(String[] args) {
		
		PersonService personService = new PersonServiceImpl();
		
		try {
			// writePerson
//			int result = personService.writePerson(new Person(20,"홍길동", 0));
//			System.out.println(result > 0 ? "등록 성공" : "등록 실패");
//			
//			System.out.println(personService.listPerson());
			
//			int result = personService.updatePerson(new Person(1, "수정", 40));
//			System.out.println(result > 0 ? "수정 완료" : "수정 실패");
			
//			int result = personService.deletePerson(2);
//			System.out.println(result > 0 ? "삭제 성공" : "삭제 실패");
			
//			System.out.println(personService.getPerson(1));
//			
			int personCount = personService.countPerson(personService.listPerson());
			System.out.println("등록된 Person의 수: " + personCount);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

package model;

import java.io.Serializable;

public class Survey implements Serializable {

	private static final long SerializableUID = 23958029358209L;

	private String userName;
	private String personName;
	private String fruit;

	public Survey() {
		// TODO Auto-generated constructor stub
	}

	public Survey(String userName, String personName, String fruit) {
		super();
		this.userName = userName;
		this.personName = personName;
		this.fruit = fruit;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getFruit() {
		return fruit;
	}

	public void setFruit(String fruit) {
		this.fruit = fruit;
	}

	@Override
	public String toString() {
		return "Survey [userName=" + userName + ", personName=" + personName + ", fruit=" + fruit + "]";
	}

}

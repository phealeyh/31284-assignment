package uts.wsd;

import javax.xml.bind.annotation.*;
import java.util.*;
import java.io.Serializable;

/**
 * Methods for single user object
 * All methods are self explanatory
 * */

@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable {
	
	@XmlElement(name = "email")
	private String email;
	@XmlElement(name = "fName")
	private String fName;
	@XmlElement(name = "sName")
	private String sName;
	@XmlElement(name = "password")
	private String password;
	@XmlElement(name = "dob")
	private String dob;
	@XmlElement(name = "bio")
	private String bio;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String email, String fName, String sName, String password,
			String dob, String bio) {
		super();
		this.email = email;
		this.fName = fName;
		this.sName = sName;
		this.password = password;
		this.dob = dob;
		this.bio = bio;
	}
	public User(String email, String fName, String sName, String password) {
		super();
		this.email = email;
		this.fName = fName;
		this.sName = sName;
		this.password = password;
		this.dob = null;
		this.bio = null;
	}	
	public String getName()
	{
		return fName + " " + sName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

}
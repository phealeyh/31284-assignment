package uts.wsd;

import java.io.*;

import javax.xml.bind.*;


/**
 * The back-end of the web application supporting the users.xml file 
 * */
public class UsersApplication implements Serializable {
	
	private String filePath;
	private Users users;
	
	public String getFilePath() {
		return filePath;
	}
	
	/**
	 * Unmarshals users.xml file to object 'users'
	 * */
	public void setFilePath(String filePath) throws JAXBException, IOException {
		this.filePath = filePath;
		// Create the unmarshaller
		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Unmarshaller u = jc.createUnmarshaller();
		// Now unmarshal the object from the file
		FileInputStream fin = new FileInputStream(filePath);
		users = (Users)u.unmarshal(fin); // This loads the "users" object
		fin.close();
	}
	
	/**
	 * Returns object 'users'
	 * */
	public Users getUsers() {
		return users;
	}
	
	/**
	 * Marshals object 'users' to users.xml
	 * */
	public void setUsers(Users users) throws JAXBException, FileNotFoundException {
		this.users = users;
		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Marshaller m = jc.createMarshaller();
		// Make the generated XML look nice
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal( users, System.out); 
		m.marshal( users , new FileOutputStream(filePath));
	}

}

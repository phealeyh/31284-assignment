package uts.wsd;

import java.util.*;
import java.io.*;
import javax.xml.bind.*;

public class TestUsersJAXB implements Serializable {
	
	 public static void main(String[] args) throws Exception {
	  Users users = new Users();
	  users.addUser(new User("ryan@ryanheise.com", "Ryan", "Heise", "blahblah", "11-11-2011", "i like green"));
	  users.addUser(new User("joe@bloggs.com", "Joe", "Bloggs", "foobar", "12-12-2012", "i like yellow"));
	  // Boilerplate code to convert objects to XML...
	  JAXBContext jc = JAXBContext.newInstance(Users.class);
	  Marshaller m = jc.createMarshaller();
	  m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
	  m.marshal(users, System.out);
	 }
	}
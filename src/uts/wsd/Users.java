package uts.wsd;

	import javax.xml.bind.annotation.*;
	import java.util.*;
	import java.io.Serializable;
import java.lang.*;

/**
 * Methods for users object
 * All methods are self explanatory
 * */

	@XmlAccessorType(XmlAccessType.FIELD)
	@XmlRootElement(name = "users", namespace="http://www.uts.edu.au/31284/wsd-users")
	public class Users implements Serializable {
	    /**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		
		@XmlElement(name = "user")
	    private ArrayList<User> list = new ArrayList<User>();
	    
		public ArrayList<User> getList() {
	        return list;
	    }
	    public void addUser(User user) {
	        list.add(user);
	    }
	    public void removeUser(User user) {
	        list.remove(user);
	    }
	    public User login(String email, String password){
	        // For each user in the list...
	        for (User user : list) {
	            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
	                return user; } // Login correct. Return this user.
	        }
	        return null; // Login incorrect. Return null.
	    }
	    
	    /**
	     * returns user if email has already been used to register
	     * return null otherwise
	     * */
	    public User checkRegister(String email) { 
	    	for (User user : list) {
	            if (user.getEmail().equalsIgnoreCase(email)) {
	            	return user; }// Email has been used and matches. Return the user.
//	            else return null;
	    	}
	    	return null; // Email has not been used. Return a null user.
	    }
	    
	    /**
	     * returns user if 'i' matches a stored article's 'name'
	     * */
	    public User getUserbyString(String i)
	    {			
	    	for (User user: list) {
	    		if (user.getName().equalsIgnoreCase(i))
	    		{
	    			//System.out.println("matches name" + user.getName());
	    			return user;

	    		}
	    		}
			//System.out.println("not matches name");
			return null;
	    }
	    
	}
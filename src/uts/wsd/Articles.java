package uts.wsd;

import java.io.*;
import java.util.*;
import javax.xml.bind.annotation.*;

/**
 * Methods for articles object
 * All methods are self explanatory
 * */

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "articles", namespace="http://www.uts.edu.au/31284/wsd-articles")
public class Articles implements Serializable {
	
	@XmlElement(name = "article")
	private ArrayList<Article> list = new ArrayList<Article>();
	 
    public ArrayList<Article> getList() {
        return list;
    }
    public void addArticle(Article article) {
        list.add(article);
    }
    public void removeArticle(Article article) {
        list.remove(article);
    }
    
    /**
     * returns article if 'id' matches a stored article's 'id'
     * */
    public Article getArticlebyID(int id)
    {
    	for (Article article: list) {
    		if (article.getId() == id)
    		{
    			return article;
    		}
    	}
		return null;
    }
    
    public void removeArticleByID(int id) {
    	  list.remove(getArticlebyID(id)); //removes an article by id
    	  }

    
    /**
     * returns article if 'id' matches a stored article's 'id'
     * */
    public Article getArticlebyString(String i)
    {
    	Integer id = Integer.parseInt(i);
    	for (Article article: list) {
    		if (article.getId() == id)
    		{
    			return article;
    		}
    	}
		return null;
    }
}
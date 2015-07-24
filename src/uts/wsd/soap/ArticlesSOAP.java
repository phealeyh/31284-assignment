package uts.wsd.soap;

import java.io.IOException;

import javax.annotation.Resource;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.servlet.ServletContext;
import javax.ws.rs.core.Context;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;

import uts.wsd.*;

@WebService
public class ArticlesSOAP {

	/**
	 * Current application context
	 */
	
	@Context
	private ServletContext application;

	@Resource
	private WebServiceContext context;
	
	/* Method: getArticles()
	 * ---------------------
	 * This method will retrieve a list of articles from the application
	 */
	
	private ArticlesApplication getArticlesApp() throws JAXBException, IOException {	
		synchronized (application) {
			ArticlesApplication articlesApp = (ArticlesApplication) application.getAttribute("articles");
			UsersApplication usersApp = (UsersApplication) application.getAttribute("users");
			if (articlesApp == null) { //no articles found so retrieve it from the application
				articlesApp = new ArticlesApplication();
				articlesApp.setFilePath(application.getRealPath("WEB-INF/articles.xml"));
				usersApp.setFilePath(application.getRealPath("WEB-INF/authors.xml")); 
				application.setAttribute("articles", articlesApp); //set current attribute to the created articles application
			}
				return articlesApp;
			}
		}
	
	@WebMethod
	public Articles getArticles() {
		Articles articles = null;
		ArticlesApplication articlesApp = (ArticlesApplication) application.getAttribute("articles");
		if(articlesApp != null){
			articles = articlesApp.getArticles();
		}
		return articles;
	}
	
	@WebMethod
	public void deleteArticle(int id){
		//retrieve articles application
		ArticlesApplication articlesApp = (ArticlesApplication) application.getAttribute("articles");
		if(articlesApp != null){
			Articles articles = articlesApp.getArticles();
			articles.removeArticleByID(id);
		}
		
	}
	
}
	

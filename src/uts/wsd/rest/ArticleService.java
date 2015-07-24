package uts.wsd.rest;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;

import uts.wsd.*;

@Path("/article")

public class ArticleService {

	@Context
	private ServletContext application;
	
	/* Method: getArticles()
	 * ---------------------
	 * This method retrieves the list of articles from the application
	 */
	
	private Articles getArticles() throws JAXBException, IOException {
		
		synchronized (application) {
			ArticlesApplication articlesApp = (ArticlesApplication) application.getAttribute("articles");
			UsersApplication usersApp = (UsersApplication) application.getAttribute("users");
			if (articlesApp == null) { //no articles found so retrieve it from the application
				articlesApp = new ArticlesApplication();
				articlesApp.setFilePath(application.getRealPath("WEB-INF/articles.xml"));
				usersApp.setFilePath(application.getRealPath("WEB-INF/users.xml")); 
				application.setAttribute("articles", articlesApp); //set current attribute to the created articles application
			}
				return articlesApp.getArticles();
			}
		}
	
	private boolean hasFilters(String category, String startDate,String endDate){
		return category == null && startDate == null && endDate == null;
	}
	
	/* Method: filterArticles()
	 * ---------------------
	 * This method retrieves the list of articles based on either the category, start date or end date.
	 * This will return a list of articles that are filtered.
	 */

	
	@Path("/search")
	@GET
	@Produces(MediaType.APPLICATION_XML)
	public Articles filterArticles(@QueryParam("category") String category,@QueryParam("startDate") String startDate, @QueryParam("endDate") String endDate) throws JAXBException, IOException {
		ArticlesApplication articlesApp = (ArticlesApplication) application.getAttribute("articles");
		if (hasFilters(category,startDate,endDate)) { //no filters exist
			//return the list of articles regardless of the filters given, return all articles.
			return articlesApp.getArticles();
		}
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		Date firstDate = null;//set to null because we want to be able to 
		Date lastDate = null;
		try {
			if (startDate != null) {
				//store start date into first date
				firstDate = formatter.parse(startDate);
			}
			} catch (ParseException e) {
				//error found while trying to parse the date
				firstDate = null;
				e.printStackTrace();
			}
		try {//do same thing here
			if (endDate != null) {
				lastDate = formatter.parse(endDate);
			}
		} catch (ParseException e) {
			// If the date object cannot be parsed then set it to null
			lastDate = null;
			e.printStackTrace();
		}
		Articles filteredArticles = new Articles();
		for (Article article : articlesApp.getArticles().getList()) {//loop through the list of articles
			if(category.equals(article.getCategory())){
				filteredArticles.addArticle(article); //add article based on the category
			}
			Date articleDate;
			try { //check whether the date exists  
				articleDate = formatter.parse(article.getDate());
				if(firstDate != null && articleDate.before(firstDate)){ //start date is there 
					filteredArticles.addArticle(article);
				}
				else if(lastDate != null && articleDate.before(lastDate)){ //start date is there 
					filteredArticles.addArticle(article);
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} //get and parse date into the article
		}
		return filteredArticles;
	}
}

package uts.wsd;

import java.io.*;

import javax.xml.bind.*;

/**
 * The back-end of the web application supporting the articles.xml file 
 * */
public class ArticlesApplication implements Serializable {

	private String filePath;
	private Articles articles;
	
	public String getFilePath() {
		return filePath;
	}
	
	/**
	 * Unmarshals articles.xml file to object 'articles'
	 * */
	public void setFilePath(String filePath) throws JAXBException, IOException {
		this.filePath = filePath;
		// Create the unmarshaller
		JAXBContext jc = JAXBContext.newInstance(Articles.class);
		Unmarshaller u = jc.createUnmarshaller();
		// Now unmarshal the object from the file
		FileInputStream fin = new FileInputStream(filePath);
		articles = (Articles)u.unmarshal(fin); // This loads the "articles" object
		fin.close();
	}
	
	/**
	 * Returns object 'articles'
	 * */
	public Articles getArticles() {
		return articles;
	}
	
	/**
	 * Marshals object 'articles' to articles.xml
	 * */
	public void setArticles(Articles articles) throws JAXBException, FileNotFoundException {
		this.articles = articles;
		JAXBContext jc = JAXBContext.newInstance(Articles.class);
		Marshaller m = jc.createMarshaller();
		// Make the generated XML look nice
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal( articles, System.out); 
		m.marshal( articles , new FileOutputStream(filePath));
	}
	
}

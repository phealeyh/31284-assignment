package uts.wsd;

import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 * Methods for single article object
 * All methods are self explanatory
 * */

@XmlAccessorType(XmlAccessType.FIELD)
public class Article implements Serializable {
	
    @XmlAttribute(name = "id")
	private Integer id;
	@XmlElement(name = "author")
	private String author;
	@XmlElement(name = "date")
	private String date;
	@XmlElement(name = "title")
	private String title;
	@XmlElement(name = "category")
	private String category;
	@XmlElement(name = "sText")
	private String sText;
	@XmlElement(name = "text")
	private String text;
	
	public Article() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Article(Integer id, String author, String date, String title,
			String category, String sText, String text) {
		super();
		this.id = id;
		this.author = author;
		this.date = date;
		this.title = title;
		this.category = category;
		this.sText = sText;
		this.text = text;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getsText() {
		return sText;
	}

	public void setsText(String sText) {
		this.sText = sText;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	

	
}

package uts.wsd;

import java.util.*;
import java.io.*;
import javax.xml.bind.*;

public class TestJAXB implements Serializable {

 public static void main(String[] args) throws Exception {
  Articles articles = new Articles();
  articles.addArticle(new Article(1, "Ryan Heise", "11-11-2011", "blahblah", "cat1", "green", "green is the grass"));
  articles.addArticle(new Article(2, "Joe Bloggs", "12-12-2012", "foobar", "cat2", "yellow", "yellow is the taxi"));
  // Boilerplate code to convert objects to XML...
  JAXBContext jc = JAXBContext.newInstance(Articles.class);
  Marshaller m = jc.createMarshaller();
  m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
  m.marshal(articles, System.out);
 }
}
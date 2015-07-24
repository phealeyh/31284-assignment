package uts.wsd.dom;

import java.io.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.*;

public class ArticlesDOM {
	static Document document;
	public static void main(String argv[]){
		DocumentBuilderFactory factory = DocumentBuilderFactory
		.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();
			document = builder.parse(new File("articles.xml"));
		} catch (Exception e){
			System.err.println("error: " + e);
		}
		if(document!=null){
			scanDOMTree(document);
		}
	}

	private static void scanDOMTree(Node node){
		int type = node.getNodeType();
		switch (type){
		case Node.ELEMENT_NODE:{
			System.out.print("<"+node.getNodeName()+">");
			NamedNodeMap attrs = node.getAttributes();
			for (int i = 0; i < attrs.getLength(); i++){
				Node attr = attrs.item(i);
				System.out.print(" "+attr.getNodeName()+"=\"" +attr.getNodeValue()+ "\"");
			}
			NodeList children =node.getChildNodes();
			if (children != null) {
				int len = children.getLength();
				for (int i = 0; i < len; i++)
					scanDOMTree(children.item(i));
			}
			System.out.println("</"+node.getNodeName()+">");
			break;
		}
		}
	}
}
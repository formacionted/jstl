package com.telefonica.jee.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class HelloWorldTag extends TagSupport {
	
	private static final long serialVersionUID = 1L;
	private String name;

	public int doStartTag() throws JspException {
		try {
			pageContext.getOut().print("Bienvenido a la primera tag personalizada. ");
			if (this.name != null) 
				pageContext.getOut().print("Hola " + this.name + "!");
			
		} catch (IOException e) {
			throw new JspException(e.getMessage());
		}
		return SKIP_BODY;
	}

	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	public void setName(String name) {
		this.name = name;
	}
}
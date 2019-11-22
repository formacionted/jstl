package com.telefonica.jee.model;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public class NamesList implements Serializable{

	private static final long serialVersionUID = 1L;
	
	
	private List<String> names = Arrays.asList(new String[]{"Fulgencio", "Obdulio"});

	
	public NamesList() {
	}

	public List<String> getNames() {
		return names;
	}

	public void setNames(List<String> names) {
		this.names = names;
	}
	
	
}

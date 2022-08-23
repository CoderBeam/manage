package com.term;

import java.io.UnsupportedEncodingException;

public class GBKchar {
	public String GbkChar(String str){
		if(str==null)
			str="";
		try{
			String des = new String(str.getBytes("iso8859-1"),"utf-8");
			return des;
			}
		catch (UnsupportedEncodingException e) {
			e.getStackTrace();
		}
		return str;
	
}}


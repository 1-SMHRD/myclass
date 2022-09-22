package kr.yogiseoMohang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xml.sax.SAXException;

// 인터페이스를 사용하면 제한을줄 수 있다.
// 인터페이스안에 추상메소드를 집어 넣는다. 
public interface Controller {
	public String requestHandler(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException;
	
}

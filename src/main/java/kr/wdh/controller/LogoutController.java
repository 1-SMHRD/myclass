package kr.wdh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//로그 아웃 처리
		HttpSession session = request.getSession();
		session.invalidate(); //무효화 >세션 끊어주기
		
		
		return "redirect:/main.do";
		
	}

}

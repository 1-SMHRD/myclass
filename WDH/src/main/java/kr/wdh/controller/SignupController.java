package kr.wdh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.wdh.dao.MemberVO;

import kr.wdh.dao.WDHMyBatisDAO;

public class SignupController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간

		// 파라메터 수집(memId, memPwd)
		String mem_Id = request.getParameter("up_mem_id");
		String mem_Pw = request.getParameter("up_mem_pw");
		String mem_nick = request.getParameter("mem_nick");
		String mem_phone = request.getParameter("mem_phone");
		MemberVO vo = new MemberVO();

		//객체생성
		vo.setMem_Id(mem_Id);
		vo.setMem_Pw(mem_Pw);
		vo.setMem_nick(mem_nick);
		vo.setMem_phone(mem_phone); 
		
		
		//mybatis와 연결해서  db에 정보 넣어주기
		WDHMyBatisDAO dao=new WDHMyBatisDAO();
		dao.signUp(vo);
		return "main";
	}

}



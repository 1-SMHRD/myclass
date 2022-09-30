package kr.wdh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import kr.wdh.dao.MemberVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class LoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		
		
		//파라메터 수집(memId, memPwd)

		
		
		
		
		String mem_Id= request.getParameter("in_mem_id");
		String mem_Pw= request.getParameter("in_mem_pw");
		MemberVO vo=new MemberVO();
		
		vo.setMem_Id(mem_Id);
		vo.setMem_Pw(mem_Pw);
		WDHMyBatisDAO dao=new WDHMyBatisDAO();
		MemberVO mvo = dao.memberLogin(vo);
		
		if(mvo!=null) {//로그인성공 >> [세션을 만들어 준다]
			request.setAttribute("mvo", mvo);
			HttpSession session = request.getSession();
			// 객체바인딩 > 모든 jsp가 회원인증을 알아야 하기 때문에 
			session.setAttribute("mvo", mvo);
			return "redirect:/main.do";
		}else {
			return "signin";
		}
	
	}
	
}


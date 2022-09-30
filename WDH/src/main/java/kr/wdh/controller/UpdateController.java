package kr.wdh.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.wdh.dao.MemberVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class UpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		WDHMyBatisDAO dao = new WDHMyBatisDAO();
		String mem_Id= request.getParameter("mem_Id");
		String mem_Pw= request.getParameter("mem_Pw");
		String mem_phone= request.getParameter("mem_phone");
		MemberVO vo= new MemberVO();
		vo.setMem_Id(mem_Id);
		vo.setMem_Pw(mem_Pw);
		vo.setMem_phone(mem_phone);
		dao.Update(vo);
		
		return "redirect:/main.do";
	}
	
}

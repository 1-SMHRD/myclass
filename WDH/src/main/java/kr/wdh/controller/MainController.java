package kr.wdh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import kr.wdh.dao.MemberVO;
import kr.wdh.dao.StayVO;
import kr.wdh.dao.TempStayVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class MainController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간
	
		
		WDHMyBatisDAO dao =new WDHMyBatisDAO();
		StayVO stay_vo= null;
//		List<TempStayVO> temp_stay_vo_list = dao.TempstayList_main();
//		
//				
//		request.setAttribute("stay_vo_list", temp_stay_vo_list);
//		
//		
//		MemberVO vo=new MemberVO();
		
		
		
		
		
		
		
	
		return "main.do";
	}
	
}


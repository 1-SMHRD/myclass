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

public class StayController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간
		
		
		WDHMyBatisDAO dao =new WDHMyBatisDAO();
		List<StayVO> list=dao.listStay();
		request.setAttribute("stay_list", list);
	
		

		
		
		
		
		
	
		return "Staylist";
	}
	
}


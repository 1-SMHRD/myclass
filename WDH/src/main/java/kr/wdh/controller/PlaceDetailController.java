package kr.wdh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import kr.wdh.dao.MemberVO;
import kr.wdh.dao.PlaceVO;
import kr.wdh.dao.StayVO;
import kr.wdh.dao.TempStayVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class PlaceDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간
		String place_no = "34";
		PlaceVO vo = new PlaceVO();
		vo.setPlace_no(place_no);
		
		
		WDHMyBatisDAO dao =new WDHMyBatisDAO();
		PlaceVO mvo = dao.getbyplace_no(vo);
		
		
		System.out.println(mvo.toString());
		

		request.setAttribute("mvo", mvo);
		
		
		
		
	
		return "placedetail";
	}
	
}


package kr.wdh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.wdh.dao.MemberVO;
import kr.wdh.dao.PlaceVO;
import kr.wdh.dao.StayVO;
import kr.wdh.dao.TempStayVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class RecommandController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간
		/*
		 * String memNo= request.getParameter("place_addr1");
		 * 
		 * PlaceVO vo = new PlaceVO();
		 * 
		 * System.out.println(vo.toString()); //db에서 placeList 받아오기 WDHMyBatisDAO
		 * dao=new WDHMyBatisDAO();
		 * 
		 * List<PlaceVO> place_list = dao.listPlace();
		 * 
		 * request.setAttribute("place_list", place_list);
		 */

		WDHMyBatisDAO dao=new WDHMyBatisDAO();
		
		List<PlaceVO> rec_place_list = dao.recListPlace();
		
		request.setAttribute("rec_place_list", rec_place_list);
		
		
		

		return "recommand";
	}
	
}


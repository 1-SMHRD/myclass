package kr.wdh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.wdh.dao.MemberVO;
import kr.wdh.dao.PlaceReviewVO;
import kr.wdh.dao.PlaceVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class ReviewWriteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		//		로직 구현 공간
		
		
		HttpSession session= request.getSession(true);   //세션에서 아이디 가져오기
		
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		
		
		String place_no =request.getParameter("place_no");
		String mem_id =mvo.getMem_Id();
		String mem_no =mvo.getMem_no();
		
		String place_review_title =request.getParameter("place_review_title");
		String place_review_content =request.getParameter("place_review_content");
		String place_rating =request.getParameter("place_rating");
		
		
		PlaceReviewVO rvo = new PlaceReviewVO();
		
		rvo.setPlace_no(place_no);
		rvo.setMem_id(mem_id);
		rvo.setMem_no(mem_no);
		rvo.setPlace_review_title(place_review_title);
		rvo.setPlace_review_content(place_review_content);
		rvo.setPlace_rating(place_rating);
		
		WDHMyBatisDAO dao = new WDHMyBatisDAO();
		dao.reviewWrite(rvo);
		
		
		
		
	
		return null;
	}
	
}


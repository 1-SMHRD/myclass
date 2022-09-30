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
import kr.wdh.dao.StayVO;
import kr.wdh.dao.TempStayVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class PlaceDetailController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간
		
		String place_no = request.getParameter("place_no");
		PlaceVO vo = new PlaceVO();
		vo.setPlace_no(place_no);
		
		
		WDHMyBatisDAO dao =new WDHMyBatisDAO();
		PlaceVO mvo = dao.getbyplace_no(vo);
		request.setAttribute("Place_mvo", mvo);
		
	
		
		
//		리뷰 리스트** 결과값이 1개가 아닌 여러개  가져오기~!
		PlaceReviewVO vo2= new PlaceReviewVO();  //place_no 즉 34를  담아줄 그릇 준비
		vo2.setPlace_no(place_no);//vo2 라는 그릇에 3 담아주기
		
		List<PlaceReviewVO> rvo = dao.reviewlist(vo2);   
		//리스트 형식 rvo = vo2를  마이바티스에 보내줘서 돌려 받는 값  이부분이  바티스에서 정보를 받아오는 부분
		
		
		request.setAttribute("PlaceReview", rvo);
	
	
		return "placedetail";
	}
	
}

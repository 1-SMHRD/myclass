package kr.wdh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import kr.wdh.dao.PlaceVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class PlaceController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		로직 구현 공간
		String addr1= request.getParameter("place_addr1");
		addr1 = "광주광역시";
		String addr2= request.getParameter("place_addr2");
		PlaceVO vo = new PlaceVO();
		if(addr1!=null) {
			vo.setPlace_addr_1(addr1);
		}
		if(addr1!=null) {
			vo.setPlace_addr_2(addr2);
		}
		System.out.println(vo.toString());
		//db에서  placeList 받아오기
		WDHMyBatisDAO dao=new WDHMyBatisDAO();
		List<PlaceVO> place_list = null;
		List<PlaceVO> list = null; 
		// 조건없이 전체리스트
//		if((addr1==null)&&(addr2==null)) {
//			place_list = dao.place_allList();
//		}
		//밸류값 받아오면 조건문으로 지정된 지역 정보 가져오기
		
//		if(addr1!=null) {
//			if(addr2==null) {
//				place_list = dao.getbyaddr1_place_List(vo);
//			}else {
//				place_list = dao.getbyaddr2_place_List(vo);
//			}
//				}
		place_list = dao.getbyaddr1_place_List(vo);
		
		
		System.out.println(place_list.toString());
		

		
		
		
		request.setAttribute("place_list", place_list);
		
	
		return "placeList";
	}
	
}


package kr.wdh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.wdh.dao.PlaceVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class RecommandAlgoController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/* String memId= request.getParameter("mem_no"); */
		
		//db에서  placeList 받아오기
	
		WDHMyBatisDAO dao=new WDHMyBatisDAO();
		
		List<PlaceVO> rec_place_list = dao.recListPlace();
		
		// List<BoardVO>----Gson API---> String(JSON)
		Gson g = new Gson();
		String json = g.toJson(rec_place_list);
				
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println(json);
		
		

		
		
		
		
		return null;
	}

}

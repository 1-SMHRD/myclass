package kr.wdh.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.wdh.dao.MemberVO;
import kr.wdh.dao.WDHMyBatisDAO;

public class UpdateFormController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	
		return "update";
	}
	
}



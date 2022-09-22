package kr.yogiseoMohang.frontcontroller;


import java.util.HashMap;

import kr.yogiseoMohang.controller.Controller;
import kr.yogiseoMohang.controller.LoginController;
import kr.yogiseoMohang.controller.LogoutController;
import kr.yogiseoMohang.controller.MainController;
import kr.yogiseoMohang.controller.PlaceController;
import kr.yogiseoMohang.controller.PlaceDetailController;
import kr.yogiseoMohang.controller.PreferenceController;
import kr.yogiseoMohang.controller.RecommandController;
import kr.yogiseoMohang.controller.SignupController;
import kr.yogiseoMohang.controller.StayController;
import kr.yogiseoMohang.controller.StayDatailController;








	public class HandlerMapping{
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();

		mappings.put("/main.do",new MainController());
		mappings.put("/login.do",new LoginController());
		mappings.put("/logout.do",new LogoutController());
		mappings.put("/signup.do",new SignupController());
		mappings.put("/preference.do",new PreferenceController());
		mappings.put("/recommand.do",new RecommandController());
		mappings.put("/place.do",new PlaceController());
		mappings.put("/placedetail.do",new PlaceDetailController());
		mappings.put("/stay.do",new StayController());
		mappings.put("/staydetail.do",new StayDatailController());
		
		
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
	
	
	

	
}

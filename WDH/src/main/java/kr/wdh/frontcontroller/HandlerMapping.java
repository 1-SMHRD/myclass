package kr.wdh.frontcontroller;


import java.util.HashMap;

import kr.wdh.controller.Controller;
import kr.wdh.controller.LoginController;
import kr.wdh.controller.LoginPageController;
import kr.wdh.controller.LogoutController;
import kr.wdh.controller.MainController;
import kr.wdh.controller.MyController;
import kr.wdh.controller.MyFormController;
import kr.wdh.controller.PlaceController;
import kr.wdh.controller.PlaceDetailController;
import kr.wdh.controller.PreferenceController;
import kr.wdh.controller.RecommandAlgoController;
import kr.wdh.controller.RecommandController;
import kr.wdh.controller.ReviewWriteController;
import kr.wdh.controller.SignupController;
import kr.wdh.controller.StayController;
import kr.wdh.controller.StayDatailController;
import kr.wdh.controller.UpdateController;
import kr.wdh.controller.UpdateFormController;








	public class HandlerMapping{
	private HashMap<String, Controller> mappings;
	public HandlerMapping() {
		mappings = new HashMap<String,Controller>();

		mappings.put("/main.do",new MainController());
		mappings.put("/login.do",new LoginController());
		mappings.put("/loginpage.do",new LoginPageController());
		mappings.put("/logout.do",new LogoutController());
		mappings.put("/signup.do",new SignupController());
		mappings.put("/preference.do",new PreferenceController());
		mappings.put("/recommand.do",new RecommandController());
		mappings.put("/place.do",new PlaceController());
		mappings.put("/placedetail.do", new PlaceDetailController());
		mappings.put("/stay.do",new StayController());
		mappings.put("/staydetail.do",new StayDatailController());
		mappings.put("/update.do",new UpdateController());
		mappings.put("/updateform.do",new UpdateFormController());
		mappings.put("/mypageform.do",new MyFormController());
		mappings.put("/my.do",new MyController());
		mappings.put("/reviewWrite.do",new ReviewWriteController());
		mappings.put("/recommandAlgo.do",new RecommandAlgoController());
		
	}
	
	public Controller getController(String key) {
		return mappings.get(key);
	}
	
	
	

	
}

package kr.wdh.frontcontroller;

public class ViewResolver {

	public static String makeView(String view) {
		return "wdh/"+view+".jsp";
	}
}

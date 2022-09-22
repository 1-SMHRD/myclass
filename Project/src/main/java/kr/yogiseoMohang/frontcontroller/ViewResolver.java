package kr.yogiseoMohang.frontcontroller;

public class ViewResolver {

	public static String makeView(String view) {
		return "yogiseoMohang/"+view+".jsp";
	}
}

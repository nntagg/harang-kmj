package bamboo.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class A_Bb_Post_Command implements CommandInterface {
	public String processCommand(HttpServletRequest req, HttpServletResponse resp) {

		String m_id = (String) req.getSession().getAttribute("m_id");
		// 대나무숲 관리자측 리스트 페이지(메인페이지) 에서 글쓰기를 눌렀을 때  
		// 대나무숲 관리자의 글 작성 페이지로 이동.
		
		return "/WEB-INF/bamboo/a_bb_post.jsp";
	}
}

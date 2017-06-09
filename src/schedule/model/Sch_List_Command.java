package schedule.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Sch_List_Command implements CommandInterface 
{
	public String processCommand(HttpServletRequest req, HttpServletResponse resp) 
	{
		
		// 우리 프로젝트에서 왼쪽 GNB상의 학사일정을 누르면!! Session에 저장된 id 받아오고 확인. 
		
		String m_id = (String) req.getSession().getAttribute("m_id");
		
		
		// 관리자면 학사일정 관리자 메인페이지로 이동
		if (m_id.equals("a")) 
		{
			return "WEB-INF/schedule/a_sch_main.jsp";
		} 

		// 학생이면 학사일정 학생측 메인페이지로 이동
		else 
		{
			return "/WEB-INF/schedule/u_sch_main.jsp";
		}
	}
}

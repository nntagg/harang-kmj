package bamboo.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BambooDTO;
import dto.MemberDTO;
import harang.dbcp.DBConnectionMgr;

public class Bb_List_Command implements CommandInterface 
{
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBConnectionMgr pool;
	
	
	
	public Bb_List_Command() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception err) {
			System.out.println("DBCP 연결실패 : " + err);
		}
	}
	
	
	
	
	public String processCommand(HttpServletRequest req, HttpServletResponse resp) 
	{

		req.setAttribute("bblist", bblist(req));
		
		return "/WEB-INF/bamboo/u_bb_list.jsp";
	}
	
	
	public ArrayList bblist(HttpServletRequest req){
		HttpSession session = req.getSession();
		
		MemberDTO mdto = (MemberDTO)session.getAttribute("member");
		String m_id = mdto.getM_id();
		
		//System.out.println("Bb_List_Command에서 Test : " + m_id);
		
		ArrayList list = new ArrayList();
		try {
			con = pool.getConnection();

			String sql;
			String sOption = req.getParameter("sOption");
			String table_search = req.getParameter("table_search");
			
			System.out.println(sOption);
			System.out.println("테이블 서치 : " + table_search);
			
			if(null==table_search){
				
				sql = "select * from harang.tbl_bamboo";
				pstmt = con.prepareStatement(sql);
				//System.out.println(sql);
				}
								
			else {
						
				if(table_search.equals("bbnewlist")){
					
					sql = "SELECT * FROM harang.tbl_bamboo where bb_regdate > (select date_sub(now(), interval 1 day)) order by bb_regdate ";
					pstmt = con.prepareStatement(sql);
				}
				else if(table_search.equals("bbhotlist")){
					
					sql = "select distinct bb.bb_num, bb.m_id, bb_notice, bb_title, bb_content, bb_regdate, bb_count, bb_nickname "
							+ "from tbl_bamboo bb inner join (select bb_num, count(m_id) cnt from tbl_like group by bb_num) li on bb.bb_num = li.bb_num "
							+ "where bb_regdate> (select date_sub(now(), interval 30 day)) order by cnt desc, bb.bb_count desc";
					pstmt = con.prepareStatement(sql);
					
				}
				else{
					
					sql = "SELECT * FROM harang.tbl_bamboo where " +sOption+ " like '%"+table_search+"%'";
					pstmt = con.prepareStatement(sql);
				}
				//System.out.println(sql);
				
			}
			
			rs = pstmt.executeQuery();

			while (rs.next()) {

				BambooDTO bbdto = new BambooDTO();
				bbdto.setBb_num(rs.getString("bb_num"));
				bbdto.setM_id(rs.getString("m_id"));
				bbdto.setBb_notice(rs.getString("bb_notice"));
				bbdto.setBb_title(rs.getString("bb_title"));
				bbdto.setBb_content(rs.getString("bb_content"));
				bbdto.setBb_regdate(rs.getDate("bb_regdate"));
				bbdto.setBb_count(rs.getInt("bb_count"));
				bbdto.setBb_nickname(rs.getString("bb_nickname"));

				list.add(bbdto);
				

			}

		} catch (Exception err) {
			System.out.println("Bb_List_Command에서 오류");
			err.printStackTrace();

		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return list;
	}
	
}

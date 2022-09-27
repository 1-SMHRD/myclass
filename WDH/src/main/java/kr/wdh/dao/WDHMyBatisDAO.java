package kr.wdh.dao;
// MyBatis : Java <--> SQL :분리개발
// 성능개선(프로그램의 처리속도 개선의 목적) : Connection POOL 기법
// SQL Mapping Framework

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class WDHMyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// database연결 >> config.xml과 MyBatis API연결
	// 초기화 블럭
	static {
		try {
		String resource = "kr/wdh/dao/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//회원가입
	public void signUp(MemberVO vo){
		SqlSession session = sqlSessionFactory.openSession();
		session.insert("signUp", vo); // >> 인서트를 메서드 이름으로
		session.commit(); //인서트는 commit 필수임 
		session.close();
	}
	
	// 로그인
		public MemberVO memberLogin(MemberVO vo){
			SqlSession session = sqlSessionFactory.openSession();
			MemberVO mvo = session.selectOne("memberLogin", vo);
			session.close();
			return mvo;
		}
		//place_allList
		public List<PlaceVO> place_allList() {
			SqlSession session = sqlSessionFactory.openSession();
			List<PlaceVO> place_List = session.selectList("place_allList");
			session.close(); // 세션 반납 !반드시 close()해야 오류가 안난다 
			return place_List;
		}
		
		public List<PlaceVO> getbyaddr1_place_List(PlaceVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
			List<PlaceVO> place_List = session.selectList("getbyaddr1_place_List", vo);
			session.close(); // 세션 반납 !반드시 close()해야 오류가 안난다 
			return place_List;
		}
		public List<PlaceVO> getbyaddr2_place_List(PlaceVO vo) {
			SqlSession session = sqlSessionFactory.openSession();
			List<PlaceVO> place_List = session.selectList("getbyaddr2_place_List",vo);
			session.close(); // 세션 반납 !반드시 close()해야 오류가 안난다 
			return place_List;
		}
		public PlaceVO getbyplace_no(PlaceVO vo){
			SqlSession session = sqlSessionFactory.openSession();
			PlaceVO mvo = session.selectOne("getbyplace_no", vo);
			session.close();
			return mvo;
		}
		
		//staydetail
		
		public StayVO getByStay_id(String stay_id) {
			SqlSession session = sqlSessionFactory.openSession();
			StayVO vo =session.selectOne("getByStay_id",stay_id);
			session.close();
			return vo;
		}
		
		//stayList
		
		public List<StayVO> stayList() {
			SqlSession session = sqlSessionFactory.openSession();
			
			List<StayVO> list = session.selectList("stayList");
			session.close(); // 세션 반납 !반드시 close()해야 오류가 안난다 
			return list;
		}
	
	
	//숙소 정보 10개 가져오기(배열) 미완성
//	public List<TempStayVO> TempstayList_main() {
//		SqlSession session = sqlSessionFactory.openSession();
//		List<TempStayVO> stay_vo_list = session.selectList("stayList_main");
//		session.close();
//		return stay_vo_list;
//	}
	
	
	// 1) 전체 리스트 가져오기
//	public List<BoardVO> allList() {
//		SqlSession session = sqlSessionFactory.openSession();
//		// select * from board order by idx desc
//		List<BoardVO> list = session.selectList("allList");
//		session.close(); // 세션 반납 !반드시 close()해야 오류가 안난다 
//		return list;
//	}
	
	// 2) 인서트 기능 가져오기
//	public void boardInsert(BoardVO vo) {
//		// 커넥션 꺼내오기 > 사용하고 있지 않은 커넥션 꺼내오기 
//		SqlSession session = sqlSessionFactory.openSession();
//		session.insert("boardInsert", vo); // >> 인서트를 메서드 이름으로
//		session.commit(); //인서트는 commit 필수임 
//		session.close();
//		
//	}
	
	// 3) 상세보기 가져오기
//	public BoardVO getByIdx(int idx) {
//		// 커넥션 꺼내오기 > 사용하고 있지 않은 커넥션 꺼내오기 
//		SqlSession session = sqlSessionFactory.openSession();
//		BoardVO vo =session.selectOne("getByIdx",idx);
//		session.close();
//		return vo;
//		
//	}
	
	// 4) 카운트 업데이트(조회수 올리기)
//	public void countUpdate(int idx) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.update("countUpdate",idx);
//		session.commit();
//		session.close();
//	}
//	
	// 5) 삭제하기
	
//	public void boardDelete(int idx) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.delete("boardDelete",idx);
//		session.commit();
//		session.close();
//		
//	}
	
	// 6) 수정하기
	
//	public void boardUpdate(BoardVO vo) {
//		SqlSession session = sqlSessionFactory.openSession();
//		session.update("boardUpdate",vo);
//		session.commit();
//		session.close();
//	}
//	
	
	
	
	
}

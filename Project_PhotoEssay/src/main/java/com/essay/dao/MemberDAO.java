package com.essay.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.essay.dto.MemberVO;

//<데이터 베이스에 접근하기 위한 객체>
// 1. 데이터를 VO 객체로 얻어옴
// 2. VO 객체에 저장된 값을 데이터 베이스에 추가

// 데이터 베이스에서 SQL문을 처리하기 위해 하나의 객체로 처리 => 싱글톤 적용
// 싱글톤 적용 방법
// 1. 생성자에 private 추가
// 2. 자신의 클래스 타입으로 정적 필드 생성하고, 자신의 객체 생성
// 3. 정적 메소드 getInstance() 생성하고 자신의 객체 리턴
public class MemberDAO {
	// 필드
	private static MemberDAO instance = new MemberDAO();	
	// 생성자
	private MemberDAO(){
	}	
	// 메소드
	public static MemberDAO getInstance() {
		return instance;
	}
	// 데이터 베이스에 연결하기 위한 커넥션을 얻어오는 메소드
	// => 회원정보를 조회/수정 등을 작업을 위해서 연결을 자주 수행해야 하므로 메소드로 정의
	 Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	
	// 로그인(사용자 인증)시 사용 메소드 - 로그인 아이디/ 비밀번호
	// 데이터 베이스에서 아이디 비번을 가져다가 인증
	public int userCheck(String userid, String pwd) {		
		int result = -1;
		String sql = "select pwd from essay_member where userid=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			
			// 디비로부터 가져온 비번 인증
			// rs.next()에 내용이 있는 경우,
			// 아이디에 해당하는 비번이 동일한지 여부를 판별
			// 디비에서 조회한 결과가 있으면 result = 1; 없으면 result = 0;
			if(rs.next()) {
				System.out.println("pwd" + pwd);
				System.out.println("userid" + userid);
				System.out.println(rs.getString("pwd"));
				
				if(rs.getString("pwd")!=null &&
						rs.getString("pwd").equals(pwd)) {
					result = 1;		// pwd 일치
				} else {
					result = 0;		// pwd 가 다름
				}				
			} else {
				result = -1;		// 디비에 userid가 없음
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) 
				    rs.close();
				if (pstmt != null) 
					pstmt.close();
				if (conn != null) 
					conn.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
			
		}		
		return result;
	}
	
	// 아이디로 회원 정보 가져오는 메소드 (mypage에서도 사용 가능)
	public MemberVO getMember(String userid) {
		String sql = "select * from essay_member where userid=?";
		MemberVO mVo = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			// 디비로부터 회원 정보 획득
			if(rs.next()) {
				mVo = new MemberVO();
				
				mVo.setName(rs.getString("name"));
				mVo.setUserid(rs.getString("userid"));
				mVo.setPwd(rs.getString("pwd"));
				mVo.setPwd(rs.getString("nick"));
				mVo.setEmail(rs.getString("email"));
				//mVo.setPhone(rs.getString("phone"));
				mVo.setAdmin(rs.getInt("admin"));
			}							
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
				pstmt.close();
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		return mVo;
	}
	
	// 데이터베이스에 회원 가입 정보를 insert
	public int insertMember(MemberVO mVo) {
		int result = -1;		
		String sql = "insert into Essay_member values(?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		System.out.println(mVo.getName());
		System.out.println(mVo.getEmail());
		
		try {
			conn = getConnection();					// 데이베이스 연결			
			pstmt = conn.prepareStatement(sql);		// 쿼리 전달
			
			pstmt.setString(1, mVo.getName());		// insert 값 입력
			pstmt.setString(2, mVo.getUserid());
			pstmt.setString(3, mVo.getPwd());
			pstmt.setString(4, mVo.getNick());
			pstmt.setString(5, mVo.getEmail());
			//pstmt.setString(5, mVo.getPhone());
			pstmt.setInt(6, mVo.getAdmin());
			
			result = pstmt.executeUpdate();			// 쿼리 수행
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.getStackTrace();
		} finally {			
			try {
				
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return result;
	}	

	// 데이터베이스에 기저장된 회원 정보를 update
	//public int updateMember(MemberVO mVo) {
		
		
	//}
		
	public int confirmID(String userid) {
		System.out.println("userid : " + userid);
		int result = -1;		
		//String sql = "update member set pwd=?, nick=?, email=?, admin=? where userid=?";
		String sql ="select userid from essay_member where userid=?";
		Connection conn = null;
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		try {
			conn = getConnection();						// 데이베이스 연결
			pstmt = conn.prepareStatement(sql);			// 쿼리 입력
			pstmt.setString(1, userid);
			//pstmt.setString(2, mVo.getNick());
			//pstmt.setString(3, mVo.getEmail());
			//pstmt.setString(3, mVo.getPhone());
			//pstmt.setInt(4, mVo.getAdmin());
			//pstmt.setString(5, mVo.getUserid());
			rs = pstmt.executeQuery();
			//result = pstmt.executeUpdate(); // 쿼리 수행
			if(rs.next()) {
				System.out.println("userid 존재");
				result = 1;
			} else {
				System.out.println("userid 없음");
				result = -1;
			}
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			try {
				if (rs != null)      rs.close();
				if (pstmt != null)   pstmt.close();
				if (conn != null)    conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		}		
		return result;
	}
	//public void updateMember(MemberVO mVo) {
		// TODO Auto-generated method stub
		
	//}
	//public int confirmNICK(String nick) {
		// TODO Auto-generated method stub
		//return 0;
	//}
//}
	public int confirmNICK(String nick) {
		System.out.println("nick : " + nick);
		int result = -1;		
		//String sql = "update member set pwd=?, nick=?, email=?, admin=? where userid=?";
		String sql ="select nick from essay_member where nick=?";
		Connection conn = null;
		PreparedStatement pstmt = null;	
		ResultSet rs = null;
		try {
			conn = getConnection();						// 데이베이스 연결
			pstmt = conn.prepareStatement(sql);			// 쿼리 입력
			//pstmt.setString(1, mVouserid);
			//pstmt.setString(2, mVo.getpwd());
			  pstmt.setString(3, nick);
			//pstmt.setString(4, mVo.getEmail());
			//pstmt.setString(4, mVo.getPhone());
			//pstmt.setInt(5, mVo.getAdmin());
			//pstmt.setString(6, mVo.getname());
			rs = pstmt.executeQuery();
			//result = pstmt.executeUpdate(); // 쿼리 수행
			if(rs.next()) {
				System.out.println("nickname 존재");
				result = 1;
			} else {
				System.out.println("nickname 없음");
				result = -1;
			}
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			try {
				if (rs != null)      rs.close();
				if (pstmt != null)   pstmt.close();
				if (conn != null)    conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		}		
		return result;
	//}
//}
	}
	public void updateMember(MemberVO mVo) {
		 //TODO Auto-generated method stub
	}
}

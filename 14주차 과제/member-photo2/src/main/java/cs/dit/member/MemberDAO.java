package cs.dit.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * 패키지명 : cs.dit.member
 * 파일명 : MemberDAO.java
 * 작성일 : 2025. 4. 16.
 * 작성자 : 김진숙
 * 변경이력 :
 * 프로그램 설명 : 사진게시물 데이터베이스와 연동하고 CRUD가 가능한 메소드 구현
 *
 */
public class MemberDAO {
	
	//DB연동 커넥션 생성
	private Connection getConnection() throws Exception {
		
		//connection pool을 활용한 db연동
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jskim");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	//사진게시물 데이터베이스에 데이터 저장
	public void insert(MemberDTO dto) {
		String sql = "INSERT INTO photo_board(id,name,pwd,photo,title,content,regdate) VALUES(?,?,?,?,?,?,?)";
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);	
		) {
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getPhoto());
			pstmt.setString(5, dto.getTitle());
			pstmt.setString(6, dto.getContent());
			pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//DB에서 사진게시물 목록 조회
	public ArrayList<MemberDTO> list(){
		String sql = "SELECT * FROM photo_board ORDER BY regdate DESC";
		ArrayList<MemberDTO> dtos = new ArrayList<MemberDTO>();
		try(Connection con = getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);					
		) 
		{	//ResultSet에 들어있는 레코드를 추출하여 ArrayList에 추가
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String pwd = rs.getString("pwd");
				String photo = rs.getString("photo");
				String title = rs.getString("title");
				String content = rs.getString("content");
				Timestamp regdate = rs.getTimestamp("regdate");
				MemberDTO dto = new MemberDTO(id, name, pwd, photo, title, content, regdate);
				dtos.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtos;
	}
	
	//updateForm에 출력할 데이터 가져오기
	public MemberDTO get(String id) {
		String sql = "select * from photo_board where id = ?";
		MemberDTO dto=null;
		try (
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		){
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String name = rs.getString("name");
				String pwd = rs.getString("pwd");
				String photo = rs.getString("photo");
				String title = rs.getString("title");
				String content = rs.getString("content");
				Timestamp regdate = rs.getTimestamp("regdate");
				
				dto = new MemberDTO(id, name, pwd, photo, title, content, regdate);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	//사진게시물 수정
	public void update(MemberDTO dto) {
		String sql = "UPDATE photo_board SET NAME=?, PWD=?, photo=?, title=?, content=? WHERE ID=?";
		
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);	
		) {
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getPhoto());
			pstmt.setString(4, dto.getTitle());
			pstmt.setString(5, dto.getContent());
			pstmt.setString(6, dto.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//사진게시물 삭제
	public void delete(String id) {
		String sql = "DELETE FROM photo_board WHERE ID=?";
		
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);	
		) {
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}






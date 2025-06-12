package cs.dit.member;

import java.sql.Timestamp;

/**
 * 패키지명 : cs.dit.member
 * 파일명 : MemberDTO.java
 * 작성일 : 2025. 4. 16.
 * 작성자 : 김진숙
 * 변경이력 :
 * 프로그램 설명 : 사진게시물 데이터를 담는 용기 
 *
 */
public class MemberDTO {
	
	private String id;
	private String name;
	private String pwd;
	private String photo;
	private String title;
	private String content;
	private Timestamp regdate;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public MemberDTO(String id, String name, String pwd, String photo, String title, String content, Timestamp regdate) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.photo = photo;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}
	
	public MemberDTO(String id, String name, String pwd, String photo) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.photo = photo;
	}
	
	public MemberDTO() {}
}

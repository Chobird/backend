-- 사진게시물 테이블 생성 스크립트

-- 기존 테이블이 있다면 삭제
DROP TABLE IF EXISTS photo_board;

-- 사진게시물 테이블 생성
CREATE TABLE photo_board (
    id VARCHAR(50) PRIMARY KEY,          -- 작성자 ID (기본키)
    name VARCHAR(100) NOT NULL,          -- 작성자명
    pwd VARCHAR(100) NOT NULL,           -- 비밀번호
    photo VARCHAR(255),                  -- 사진 파일명
    title VARCHAR(200) NOT NULL,         -- 게시물 제목
    content TEXT,                        -- 게시물 내용
    regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- 등록일시
);

-- 샘플 데이터 삽입
INSERT INTO photo_board (id, name, pwd, photo, title, content, regdate) VALUES 
('user1', '김철수', '1234', '동백꽃.jpg', '아름다운 동백꽃', '겨울에 피는 동백꽃의 아름다운 모습입니다.', NOW()),
('user2', '이영희', '1234', '붉은장미.jpg', '정열의 붉은 장미', '사랑을 상징하는 붉은 장미꽃입니다.', NOW()),
('user3', '박민수', '1234', '매화.jpg', '봄의 전령 매화', '봄이 오는 소식을 알리는 매화꽃입니다.', NOW());

-- 테이블 구조 확인
DESCRIBE photo_board;

-- 데이터 확인
SELECT * FROM photo_board ORDER BY regdate DESC; 
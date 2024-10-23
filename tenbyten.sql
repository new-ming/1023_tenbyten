--  tenbyten DB (스키마)를 만들어라
CREATE DATABASE tenbyten;  
-- 확인
show databases;

-- estore DB를 사용하겠다.
USE tenbyten;

-- member table이 있다면 삭제해라 
DROP TABLE IF EXISTS member;

-- member 테이블을 ~~이런이런 조건(데이터 타입)으로 만들어라
CREATE TABLE member (
  user_no INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(10),
  userid VARCHAR(10),
  pwd VARCHAR(10),
  email VARCHAR(20),
  phone CHAR(13),
  birth DATE,
  
  admin TINYINT DEFAULT 0 -- 0: 사용자, 1: 관리자

);

-- 테이블 확인
show tables;

-- insert문    
-- 1 레코드 삽입
INSERT INTO member (username, userid, pwd, email, phone, birth, admin)
VALUES ('유비', 'yoobi', '1234', 'gmd@naver.com', '010-1111-2222',19900101, 0);

-- 2 레코드 삽입
INSERT INTO member (username, userid, pwd, email, phone, birth, admin)
VALUES ('관우', 'guanyu', '1234', 'ha12@naver.com', '010-2222-8888', 20000101,0);

-- 3 레코드 삽입
INSERT INTO member (username, userid, pwd, email, phone, birth, admin)
VALUES ('장비', 'jangbi', '1234', 'youn1004@naver.com', '010-3333-6666', 20100101, 1);

-- 4 레코드 삽입
INSERT INTO member (username, userid, pwd, email, phone, birth, admin)
VALUES ('손오공', 'ogong', '1234', 'youn1004@naver.com', '010-4444-9999', 20200101, 0);

commit; -- 영구 저장

select *from member;  

delete from member where user_no=10;


-- member table이 있다면 삭제해라 
DROP TABLE IF EXISTS serviceBoard;


CREATE TABLE serviceBoard (
    board_no INT AUTO_INCREMENT PRIMARY KEY,  -- 프라이머리 키
    user_no INT NOT NULL,                     -- 연결키
    title VARCHAR(255) NOT NULL,              -- 제목 (문자열)
    content TEXT NOT NULL,                    -- 내용 (대량의 문자열)
    email VARCHAR(100),                       -- 이메일 (문자열)
    phone VARCHAR(20),                        -- 전화번호 (문자열)
    servicetype VARCHAR(50),                         -- 타입 (문자열)
    writeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 입력일 (현재 시간 자동 입력)
    imgUrl1 VARCHAR(255),                     -- 이미지 URL 1 (문자열)
    imgUrl2 VARCHAR(255),                      -- 이미지 URL 2 (문자열)
	state VARCHAR(20),
    
    CONSTRAINT fk_member_user_no FOREIGN KEY (user_no) REFERENCES member(user_no) 
    ON DELETE CASCADE                         -- 외래 키 설정, 회원 삭제 시 연관된 상담 내역도 삭제
);

-- 테이블 확인
show tables;


-- insert문    
INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1,imgUrl2,state)
VALUES (1, "카메라에 문제가 있어요","카메라가 작동을 하지 않아요. 환불해주세요","gmd@naver.com", "010-1111-2222","교환/환불","camera.jpg","camera2.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1,imgUrl2 ,state)
VALUES (2, "카메라에 문제가 있어요","카메라가 작동을 하지 않아요. 환불해주세요","gmd@naver.com", "010-1111-2222","교환/환불","camera.jpg","camera2.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1,imgUrl2 ,state)
VALUES (3, "카메라에 문제가 있어요","카메라가 작동을 하지 않아요. 환불해주세요","gmd@naver.com", "010-1111-2222","교환/환불","camera.jpg","camera2.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1,imgUrl2 ,state)
VALUES (4, "카메라에 문제가 있어요","카메라가 작동을 하지 않아요. 환불해주세요","gmd@naver.com", "010-1111-2222","교환/환불","camera.jpg","camera2.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1,imgUrl2 ,state)
VALUES (4, "카메라에 문제가 있어요","카메라가 작동을 하지 않아요. 환불해주세요","gmd@naver.com", "010-1111-2222","교환/환불","camera.jpg","camera2.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1 ,state)
VALUES (1, "화장품이 아직 오지 않았어요","화장품을 주문한지 오래되었는데 아직도 배송이 안되었어요","gmd@naver.com", "010-1111-1111","배송문의","cosmetic.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1 ,state)
VALUES (1, "선물 포장을 추가하고 싶어요","선물용으로 구입하는데 따로 선물포장이 가능한가요?","gmd@naver.com", "010-2222-2222","상품문의","choco.jpg","답변대기");

INSERT INTO serviceBoard (user_no, title, content, email, phone,servicetype,imgUrl1,state)
VALUES (2, "선물 포장을 추가하고 싶어요","선물용으로 구입하는데 따로 선물포장이 가능한가요?","gmd@naver.com", "010-2222-2222","상품문의","choco.jpg","답변대기");

commit; -- 영구 저장

select *from serviceBoard;  
delete from serviceBoard where board_no=18;

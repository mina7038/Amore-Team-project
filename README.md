# Spring Boot-Thymeleaf 팀 프로젝트 - 아모레 퍼시픽
<div align="center">
    <img width="740" height="123" alt="login-logo" src="https://github.com/user-attachments/assets/b23c86d9-03d6-4db5-995b-d7154104173e" />
</div>

## 목차

- [개요](https://github.com/mina7038/CPGN-project#-개요)
- [기술 스택](https://github.com/mina7038/CPGN-project#-기술-스택)
- [프로젝트 설계](https://github.com/mina7038/CPGN-project#-프로젝트-설계)
- [주요 기능](https://github.com/mina7038/CPGN-project#-주요-기능)
- [기능 구현](https://github.com/mina7038/CPGN-project#-기능-구현)

## **🚩 개요**

- **프로젝트 목표**
    - **Spring Boot + Thymeleaf** 기반의 풀스택 웹 애플리케이션 개발
    - 사용자 중심의 쇼핑 경험을 위해 회원가입, 로그인, 장바구니, 결제, 리뷰 등 전반적인 커머스 기능 구현
- **진행 기간** : 2025.05.19 ~ 2025.05.25 (1주일)

## **🛠️ 기술 스택**

- Language: `Java (17)`, `JavaScript (ES6)`
- Framework: `Spring Boot (3.x)`, `Thymeleaf`, `Spring Data JPA`
- Database: `MySQL (8.0)`
- Server: `AWS EC2`, `Git`, `Jenkiens`
- Tool: `IntelliJ IDEA`, `Git`
- API: `Kakao OAuth (카카오 로그인)`, `KakaoPay`

## **📝 프로젝트 설계**

- 요구사항 명세서

    <img width="970" height="418" alt="image" src="https://github.com/user-attachments/assets/3e10dae8-e917-4c61-be1d-b3df32eeeea4" />

- ERD
    
    <img width="1325" height="1075" alt="erd" src="https://github.com/user-attachments/assets/98e883c7-9928-40b5-bf03-c957583cc9c6" />


## **✨ 주요 기능**

### 1️⃣ Kakao 로그인

- **Kakao OAuth**
    - Kakao OAuth를 통해 사용자가 카카오 계정으로 간편하고 안전하게 로그인할 수 있습니다.

<img width="380" height="947" alt="ceed82d6-babe-4bc7-b45e-56d28cf829fc" src="https://github.com/user-attachments/assets/c722f11c-166f-4df0-9524-b7e7e4c34b26" />
<img width="380" height="944" alt="e2fad92f-76f9-48ff-8ff8-95e8037092db" src="https://github.com/user-attachments/assets/a2011574-636e-4f0e-8a98-402657c44b7a" />

### 2️⃣ Kakao Pay 결제

- **Kakao Pay** **API**
    - KakaoPay API를 연동하여 카드, 계좌이체, 간편결제 등 다양한 결제 수단으로 쉽고 안전하게 결제할 수 있습니다.

<img width="380" height="480" alt="image 1" src="https://github.com/user-attachments/assets/639d9443-628b-4977-8c6f-389e2d709c05" />

## **🎬 기능 구현**

### ✔ 회원가입/로그인

- **약관 동의**
    - 약관 동의 후, 아이디 중복 확인 및 비밀번호 설정 단계 진행.
- **아이디 중복 체크**
    - 회원가입 시 입력한 아이디가 기존 사용자 데이터베이스에 존재하는지 확인.
    - 중복 시 경고 메시지를 보여주고, 다른 아이디 입력을 유도.
- **비밀번호 일치 확인**
    - 비밀번호와 비밀번호 확인(Confirm Password) 입력값을 비교.
    - 불일치 시 오류 메시지를 출력하여 재입력 요구.
  
![ap-user](https://github.com/user-attachments/assets/83be4883-b171-4b2f-848a-abd6791abf30)

### ✔ 상품/장바구니/결제

- **상품**: 상품 목록, 상세 페이지 구현.
- **장바구니**: 상품 담기, 수량 변경, 선택/전체 결제 기능 제공.
- **결제**: **TossPayments API**를 연동해 카드·계좌이체 등 다양한 결제 수단 지원, 결제 성공/실패 시 주문 상태 자동 업데이트.

![ap-goods](https://github.com/user-attachments/assets/347b129c-cce6-488a-8be6-b25b747d892e)


### ✔ 리뷰 작성

- **구매자 한정**: 실제 구매한 사용자만 리뷰 작성 가능.
- **수정·삭제**: 작성한 리뷰는 수정 및 삭제 가능.
- **리뷰 표시**: 상품 상세 페이지에 리뷰와 평점 표시.

![ap-review](https://github.com/user-attachments/assets/304bce0e-9e6d-4f0e-b9cf-6bfa1dd18975)
![ap-goods-review](https://github.com/user-attachments/assets/c3c4e6a0-45cf-415c-8d94-51f32ec8b5a1)



### ✔ 공지사항 등록/수정/삭제

- **등록**: 관리자 권한으로 새로운 공지 작성.
- **수정**: 기존 공지 내용 업데이트.
- **삭제**: 불필요한 공지 제거.

![ap-notice](https://github.com/user-attachments/assets/5e744a5b-35d3-45fb-b3bf-b56d9eba84e4)


### ✔ Q&A 등록/수정

- **등록**: 사용자가 질문 작성.
- **수정**: 사용자가 질문 수정.

![ap-qna](https://github.com/user-attachments/assets/2ed0a72f-a8d1-49c0-9700-c91b02f808b8)
  

### ✔ 관리자 **Q&A** 답변 등록/삭제

- **등록**: 관리자가 사용자 질문에 대한 답변 작성.
- **삭제**: 불필요하거나 잘못된 답변 삭제.

![ap-qna-ans](https://github.com/user-attachments/assets/c82e8758-42e2-487e-a7d2-dd6fc85542c5)


### ✔ **관리자 대시보드**

- 회원 수, 상품 수, 주문 수, 리뷰 수 등 주요 데이터를 한눈에 확인할 수 있는 요약 패널 제공
- 좌측 사이드바로 공지사항, 회원, 상품, 주문, 리뷰, Q&A, 채팅,  기능을 직관적으로 탐색 가능

![ap-admin](https://github.com/user-attachments/assets/1d7cd8ce-6e9e-43f3-a226-fe3f3cc615d7)

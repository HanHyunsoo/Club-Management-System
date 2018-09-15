# SKHU 단체(소모임 & 동아리) 활성 웹 서비스
### 3주 / 의사소통 / 주석

## Database Prototype
![DB](./img/skhu_club_db.png)

## TODO
* model 관계 설정 및 확인 (현재 Notice, Ad는 없음)
* 승래 - devise custom
* 진경 - Apply_Forms & Apply_Contents
* 현수 - Clubs & Club_Members & Options
* 결, 다은 - Front Prototype

## CRUD
* **C: Create**
* **R: Read**
* **U: Update**
* **D: Delete**

## Front-End
* 로그인 & 회원가입
* 회원 정보 수정 (RU View)
* 각 단체의 소개 (RU View)
* 지원 양식 (RU View) - 단체마다 다른 양식
* 현재 지원 가능 단체 모아보기 (R View)
* Notice & Ad (CRU View)
* 각 단체 회원 명단 현황 (R View)
* 각 단체 지원자 현황 (R View)
* Options Table (U View)
* 전체 회원 목록 (R View)
* 단체 등록 (C View)

## Back-End (기능 단위)
* 로그인, 회원가입, 로그아웃, 회원정보수정 기능
* 현재 지원 가능 단체 모아보기 R
* 각 단체의 Notice 게시판의 CRUD
* 통합 Ad 게시판의 CRUD
* 각 단체의 회원 명단 RD(Club Admin)        * 완성(현수)
* 각 단체의 소개 U (Club Admin)
* 각 단체의 지원 양식 U (Club Admin)        * 완성(진경)
* 각 단체의 지원자 조회 R (Club Admin)
* 각 단체의 Options Table U (Club Admin)
* 전체 회원 목록 R (Super Admin)            * 완성(현수)
* 단체 CD (Super Admin)                     * 완성(현수)

## Author
* 김승래
    * devise 커스텀완료
    * 회원정보수정 작업중
* 함진경
    * 지원 양식 작성, 수정 완료
    * 지원하기 하는 중~
* 박결
* 한현수
    * seed에 어드민 추가
    * 단체 CD(사이트 관리자만 가능) 완성
    * 각 단체의 회원 명단록 RD(단체에 속해있는 일반 유저(p태그), 해당 단체 관리자 또는 사이트 관리자(a태그)) 완성
    * 전체 회원 목록 R 완성
* 홍다은

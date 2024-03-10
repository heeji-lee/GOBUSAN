>## 프로젝트 소개 📝
>관광객들을 위한 <b>부산의 축제, 테마, 관광지를 소개</b>하는 웹사이트입니다.
></br>부산의 아름다운 관광지를 한눈에 보기 쉽게 정리하여 여행에 어려움이 없도록 해보세요!

<table>
  <tr>
   <th>
    Backend 이희지
   </th>
  </tr>
  <tr>
    <td align="center">
        <img src="https://avatars.githubusercontent.com/u/73567158?v=4" width=150px alt="이희지"> 
        <br/>
    </td>
  </tr>
  <tr>
    <td align="center" class="희지">
        <a href="https://github.com/heeji-lee"><img alt="github-link" height="25" src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=GitHub&logoColor=white"/></a>
   </td>
  </tr>
</table>

># 프로젝트 기술 스택 💻
>## ✔️Frontend
>[![stackticon](https://firebasestorage.googleapis.com/v0/b/stackticon-81399.appspot.com/o/images%2F1709997184068?alt=media&token=b9ea7d04-e918-44c9-893e-507a65ac5469)](https://github.com/msdio/stackticon)
>## ✔️Backend
>[![stackticon](https://firebasestorage.googleapis.com/v0/b/stackticon-81399.appspot.com/o/images%2F1710073029534?alt=media&token=3bc4d79e-20d0-464f-9789-e09ff17aefc3)](https://github.com/msdio/stackticon)
>## ✔️Database
>[![stackticon](https://firebasestorage.googleapis.com/v0/b/stackticon-81399.appspot.com/o/images%2F1710073062871?alt=media&token=77694200-4254-4315-be82-41a991959d94)](https://github.com/msdio/stackticon)

>## ERD 구조
><img src="https://github.com/heeji-lee/GOBUSAN/assets/73567158/23560dac-0127-422e-a4e0-9af879c1d300"></br>
>b_member - 회원정보</br>
>b_festival, b_freview - 축제, 축제 리뷰</br>
>b_theme, b_treview - 테마, 테마 리뷰</br>
>b_attraction, b_areview - 관광지, 관광지 리뷰</br>
>b_notice - 공지사항</br>
>b_question - 문의사항

># 주요 기능
>## 요약
><table>
  <tr>
   <th>
    공통
   </th>
   <th>
    사용자
   </th>
   <th >
    관리자
   </th>
   </tr>
  <tr>
   <td align="left" width="300px" class="공통">
    - 회원가입, 로그인</br>
    - 축제, 테마, 관광지 목록 및 상세 조회</br>
    - 공지사항 확인
   </td>
   <td align="left" width="300px" class="사용자">
    - 리뷰작성</br>
    - 문의하기
   </td>
   <td align="left" width="300px" class="관리자">
    - 축제/테마/관광지 카테고리 관리</br>
    - 공지사항 관리</br>
    - 문의사항 관리
   </td>
  </tr>
</table>

## [ 공통 기능 ]

### 회원가입, 로그인
- 사용자는 아이디, 비밀번호, 성별, 주소, 전화번호, 이메일을 이용하여 회원가입할 수 있습니다.
- 회원가입 시 사용한 아이디와 비밀번호를 이용하여 로그인할 수 있습니다.
### 축제, 테마, 관광지 목록 및 상세 조회
- 축제/테마/관광지 카테고리 별 목록을 조회할 수 있습니다.
- 상세 정보를 조회할 수 있습니다. 상세 정보에는 일정과 교통정보 또는 소개글이 있습니다.
### 공지사항 확인
- 공지사항 목록 및 상세 정보을 확인할 수 있습니다.

## [ 사용자 기능 ]

### 리뷰작성
- 사용자는 축제, 테마, 관광지에 리뷰를 작성할 수 있습니다.
### 문의하기
- 사용자는 잘못된 정보 혹은 오류를 문의할 수 있습니다.

## [ 관리자 기능 ]

### 축제/테마/관광지 카테고리 관리
- 축제, 테마, 관광지를 등록할 수 있습니다.(사진은 1장만 등록할 수 있습니다.)
- 전체 목록을 조회할 수 있고, 하나의 정보도 조회할 수 있습니다.
- 등록한 정보를 수정, 삭제할 수 있습니다.
### 공지사항 관리
- 공지사항을 등록하고 관리할 수 있습니다.
### 문의사항 관리
- 사용자의 문의사항을 관리할 수 있습니다.

# API 명세

| Domain      | URL                                                                        | Http Method                 | description       | 접근 권한 |
|:------------|:---------------------------------------------------------------------------|:----------------------------|:------------------|:------|
| **Auth**    | /memeber/join                                                              | `POST`                      | 사용자 회원가입           | -     |
|             | /member/login                                                              | `GET`                       | 사용자/관리자 로그인       | -     |
|             | /member/update                                                             | `PUT`                       | 사용자 회원정보 수정       | USER     |
|             | /member/delete                                                             | `GET`                       | 사용자 회원탈퇴           | USER     |
| **Admin**   | /festival/admin_insert                                                     | `POST`                      | 관리자 축제 등록   | ADMIN     |
|             | /festival/admin_list                                                       | `GET`                       | 관리자 축제 목록      | ADMIN     |
|             | /festival/admin_update                                                     | `POST`                      | 관리자 축제 수정          | ADMIN     |
|             | /theme/admin_insert                                                        | `POST`                      | 관리자 테마 등록   | ADMIN     |
|             | /theme/admin_list                                                          | `GET`                       | 관리자 테마 목록      | ADMIN     |
|             | /theme/admin_update                                                        | `POST`                      | 관리자 테마 수정          | ADMIN     |
|             | /attraction/admin_insert                                                   | `POST`                      | 관리자 관광지 등록   | ADMIN     |
|             | /attraction/admin_list                                                     | `GET`                       | 관리자 관광지 목록      | ADMIN     |
|             | /attraction/admin_update                                                   | `POST`                      | 관리자 관광지 수정          | ADMIN     |
| **Festival**| /festival/list                                                             | `GET`                       | 축제 목록 조회          | -     |
|             | /festival/view                                                             | `GET`                       | 축제 상세 조회       | -     |
| **Theme**   | /theme/list                                                                | `GET`                       | 테마 목록 조회          | -     |
|             | /theme/view                                                                | `GET`                       | 테마 상세 조회       | -     |
| **Attraction**| /attraction/list                                                         | `GET`                       | 관광지 목록 조회          | -     |
|             | /attraction/view                                                           | `GET`                       | 관광지 상세 조회       | -     |
| **Review**  | /freview/reviewInsert                                                      | `POST`                      | 축제 리뷰 작성          | USER     |
|             | /treview/reviewInsert                                                      | `POST`                      | 테마 리뷰 작성       | USER     |
|             | /areview/reviewInsert                                                      | `POST`                      | 관광지 리뷰 작성       | USER     |
| **Notice**  | /notice/list                                                               | `GET`                       | 공지사항 목록          | -     |
| **Quesetion**| /quesetion/insert                                                         | `POST`                      | 문의사항 작성          | USER     |

## 데모
|회원가입|로그인|회원정보|
|:--------:|:-------:|:-------:|
|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/a3df2f28-62b5-4076-8d6f-87edccba3842)|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/54cb3086-91df-4dfd-8ea9-09ff9e2668e6)|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/ce2e1ce0-02f3-4b56-9efa-cff1e9e51840)|
|**축제**|**테마**|**관광지**|
|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/a4128e91-0cb1-495a-9e00-677e786f2ed4)|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/dac6706c-3c13-45db-8ae3-232596d806bf)|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/8cfa2bf7-7ce5-402c-b85c-a09bb5340a07)|
|**리뷰**|**공지사항**|**문의사항**|
|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/f8a2b1b3-6a71-407a-afd0-4a149f858e6d)|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/97e6cb84-b7e6-43a5-847c-158a4ddcf98a)|![image](https://github.com/heeji-lee/GOBUSAN/assets/73567158/c0d72a66-5463-4221-95c8-4e300d27d6dd)|

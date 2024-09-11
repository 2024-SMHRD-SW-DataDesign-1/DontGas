# :pig:<span style="color:green">**WITHPAPA** </span>
## :pig: [Don't Gas] (팀명 : Don't Gas :dash:)
![001](https://github.com/user-attachments/assets/cb62fd3a-c8c0-4ef2-bf8b-e1dac5bc26f7)


### :open_file_folder: 서비스 소개
- 서비스명 : <b>[Don't Gas] </b>
- 서비스 설명 : <b>돈사 악취 모니터링 및 예측 서비스</b>
  <br>
### :calendar: 개발 기간 
<b> 2024.08.01 ~ 2024.09.10 (40일)


### :wrench: 기술 스택
#### ✔️Frond-end

![VisualStudioCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)
<img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
<img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
<img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
![Miro](https://img.shields.io/badge/Miro-050038?style=for-the-badge&logo=Miro&logoColor=white)
<img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">


#### ✔️Back-end
<img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
<img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=green">
<img src="https://img.shields.io/badge/Spring Boot-6DB33F?style=for-the-badge&logo=Spring Boot&logoColor=yellow">
<img src="https://img.shields.io/badge/Spring Security-6DB33F?style=for-the-badge&logo=springsecurity&logoColor=white">
<img src="https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white">

 

#### :file_folder: DataBase
<img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">

#### :space_invader: Machine Learning
<img src="https://img.shields.io/badge/ONNX-#005CED?style=for-the-badge&logo=onnx&logoColor=white">
<img src="https://img.shields.io/badge/scikitlearn-F7931E?style=for-the-badge&logo=scikitlearn&logoColor=white">

#### :paperclip: etc
<img src="https://img.shields.io/badge/Google Gemini-8E75B2?style=for-the-badge&logo=googlegemini&logoColor=white">
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
<img src="https://img.shields.io/badge/chart.js-FF6384?style=for-the-badge&logo=chartdotjs&logoColor=white">



### :pig::dash: 주요 기능
- 헤더 - 돈사 개요 보기 : 악취 레벨이 매우 나쁨, 나쁨인 돈사 수 / 센서 미연결된 돈사 수 표시 ▶ 즉각적인 관리가 가능하도록 함
- 악취 레벨 아이콘 정렬 : 악취 심각도에 따라 매우 나쁨 - 매우 좋음 순, 매우 좋음 - 매우 나쁨 순으로 조정 가능 ▶ 당장 관리가 필요한 돈사 확인 가능
  </br>
  ![(필수)형동팀_Don't Gas_돈사리스트화면](https://github.com/user-attachments/assets/f8a88cf0-246f-4b4e-adf6-b236f5256a25)
- 악취 모니터링 기능 : 센서를 통해 감지된 악취 데이터를 기준 수치를 따라 표정 이모티콘과 텍스트로 시각화
- 날씨 데이터 표시 기능 : OpenWeatherMap을 통해 수집한 날씨 데이터를 실시간으로 기온, 습도, 풍향, 풍속, 날씨 순으로 시각화
   </br>
  ![(필수)형동팀_Don't Gas_돈사별 정보 화면(info)](https://github.com/user-attachments/assets/d8946353-6969-4298-b0c4-d6c9234bd5fd)

- 악취 요소 추이 그래프 : 돈사 악취 요소(황화수소, 암모니아, 메탄)을 꺾은 선 그래프로 확인 가능 (+ 달력 : Litepicker 라이브러리를 통해 날짜 선택)
- 내일 악취 예측 그래프 : 돈사 악취 과거 데이터와 OpenWeatherMap API를 활용해 받은 날씨 데이터를 기반으로 내일의 악취를 예측하는 그래프 표시
  </br>
  ![(필수)형동팀_Don't Gas_돈사별 정보 화면(info) 악취 그래프](https://github.com/user-attachments/assets/8a6e9de6-f8c3-4120-be6c-d900dfe82d58)

- 악취 데이터 리포트 자동생성 및 엑셀 다운로드 : 악취 수치 테이블을 기반으로 분석 리포트를 자동생성해주고, 엑셀로 다운받을 수 있는 기능
   </br>
  ![리포트 다운로드_모달창 (그래프 및 분석)](https://github.com/user-attachments/assets/eb413079-7a76-48df-975f-ec95219a0a54)
- 악취 수치 데이터 엑셀 다운로드 : 악취 수치 테이블의 수치 데이터를 엑셀로 다운로드 받을 수 있게 해주는 기능
   </br>
  ![리포트 다운로드_모달창 (수치)](https://github.com/user-attachments/assets/44bb641c-b423-4f24-86f4-071bd406eaa6)

  

### :key: 주요 기술
- OpenweatherMap API 활용 : 돈사 지역별 날씨 데이터 수집, 실시간 날씨 데이터 화면 구현
- Google Gemini API 활용 : 악취 데이터 리포트 자동생성 기능 시 활용 
- chart.js : 악취 요소 추이 그래프, 내일의 악취 예측 그래프 등 시각화
- Security Spring : 타겟 사용자가 돈사 관리 공무원으로 설정되어있어 보안이 중요하기 때문에 Security Spring 환경에서 작업




### :notebook_with_decorative_cover: 서비스 흐름도
![형동팀_Don't Gas_서비스흐름도](https://github.com/user-attachments/assets/f7ae0628-86f6-4c5c-b5cb-639b86d846e2)


### :notebook_with_decorative_cover: 시스템 아키텍처

![014](https://github.com/user-attachments/assets/bb45a7d1-dc68-49d7-b4d8-d4051a6eab25)


### :pushpin: ER 다이어그램 및 유스케이스 다이어그램


![013](https://github.com/user-attachments/assets/a12fcdf6-2115-4dd7-958b-dd5926b9bee5)





### :sparkles: 화면 구성

- 로그인 화면
  

![형동팀_Don't Gas_로그인화면](https://github.com/user-attachments/assets/7aa2c94b-4fcb-4ae2-8ec9-9e6aca8a62f0)

![형동팀_Don't Gas_로그인화면(다크모드)](https://github.com/user-attachments/assets/bb8f8622-523f-4686-a444-a000341ab596)



- 돈사 리스트 화면

![(필수)형동팀_Don't Gas_돈사리스트화면](https://github.com/user-attachments/assets/eb559422-e054-462b-9a39-6700cfe427e4)

![형동팀_Don't Gas_돈사리스트화면(다크모드)](https://github.com/user-attachments/assets/f5e315bd-98c4-4908-ace0-3c40a2e8354c)




- 돈사별 정보 화면

![(필수)형동팀_Don't Gas_돈사별 정보 화면(info)](https://github.com/user-attachments/assets/2c8da2ce-a41f-4538-85b8-dadc9668b6e3)




- 악취 요소 추이 그래프 화면
  
![(필수)형동팀_Don't Gas_돈사별 정보 화면(info) 악취 그래프](https://github.com/user-attachments/assets/a2f0ddf5-c326-4ffc-b581-f3517b00c3a4)

![형동팀_Don't Gas_돈사별 정보 화면(info) 악취 그래프(다크모드)](https://github.com/user-attachments/assets/6b39033f-efa3-4150-ad89-adb9cdeba434)


- 악취 예측 및 리포트 그래프 다운로드 모달창
  
![리포트 다운로드_모달창 (수치)](https://github.com/user-attachments/assets/f4faa66e-5638-4ff8-b043-0cf992bb2d92)

![리포트 다운로드_모달창 (그래프 및 분석)](https://github.com/user-attachments/assets/80c4792d-055d-4687-a9fa-d14a23dc59d5)




### :computer: 팀원 소개


|이름    |역할          |
|--------|--------------|
|김형동(Back-End)|팀장, Back-End 총괄 : Security Login 구현, 더미데이터 자동 생성 서버 구현,계정정보 DB 연동|
|곽세진(PM, Front-End)| Project Manager, PPT 자료 및 PT, Front-End 돈사 리스트화면 및 돈사별 정보 화면 css, ui 그래픽|
|이준서(Front-End, Back-End, M/L)|Front-End 총괄 :  DB 연동하여 데이터를 화면에 표시되도록 구현, Back-End & M/L : 악취 예측 모델 구축|


### :dart: 트러블 슈팅


|분야    |오류 내용               |오류 해결                                |
|-------------|-----------------------|-----------------------------------------|
|Back-End|List<SearchResult> 타입의 변수 result의 값을 Controller에서 View로 전달할 때 View에서 결과값 미출력|jstl 내 for each 태그의 items 속성값이 Collection(List or Map) 타입임을 확인 후 List 타입의 변수 result로 변경하여 해결|
|Front-End|닫는 div 태그 누락으로 상세 검색창 내 지도 이미지, 유형 아이콘 혼재되는 상황 발생|닫는 div 태그 삽입하여 해결|


### :books: 참고문헌
- [국감자료] 충남 전국 두 번째로 축산 악취 민원 많다, 발췌, 2023.10.18
- [기사] 구미시 고아읍 문성리 일대 '7천여 세대 아파트 주민들'...돼지 분뇨 악취에 밤잠 설쳐 중 경북도 관계자 인터뷰 발췌, 경북도 신문, 2024.08.28
- 2023 축산환경 조사 결과, 2024.04.24 돼지와 사람 기사 발췌
- 양돈업, 분뇨·환경 민원이 가장 어렵다, 한국농어민신문, 2023.01.03 발췌
- "냄새 난다" 잇단 민원에 돈사 농장주 극단 선택.. 규제 지나쳐, kbc 뉴스, 2023.08.14 발췌
- 돼지 축사 분뇨처리시설 수리하던 농장주 숨져, kbc 뉴스, 2023.01.20 발췌
- [한 장의 사진] 어느새 1년 달라진 것은 없다, 돼지와 사람 기사 발췌 2024.07.23





















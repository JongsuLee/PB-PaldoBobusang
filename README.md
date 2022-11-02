<div align="center">

![logo](/readme/logo.png "logo")

</div>

## 1. 프로젝트 소개
제철 농산물 및 최근 가격 동향 정보 제공 플랫폼

## 2. 팀원 소개 및 담당 역할 or 기능
- 이종수 : :earth_asia: Map 페이지에서 .svg 파일을 이용한 지도 및 :art: CSS 구현
- 이동찬 : :leaves: Spring JPA 백엔드 및 MySQL DB 구현
- 김현수 : :bookmark_tabs: List 페이지 및 Modal 기능과 Details 페이지 구현 (상세정보, :chart_with_upwards_trend: 가격 차트)

## 3. Information Architecture
![Information Architecture](/readme/information_architecture.png "Information Architecture")

## 4. 도메인 용어
품목 : 각 제철 농산물 (ex. 사과, 배추, 등)


품종 : 해당 품목의 종류 (ex. 아오리 사과 / 홍로 사과 / 양광 사과 / 부사 사과)


## 5. 테이블 구조도
![Table Architecture](/readme/table_architecture.png "Table Architecture")

## 6. 서비스 아키텍처
![Service Architecture](/readme/service_architecture.png "Service Architecture")

## 7. 개발 및 실행 환경
- <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white"/> Spring Boot
- <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white"/> MySQL
- <img src="https://img.shields.io/badge/Next.js-000000?style=for-the-badge&logo=next.js&logoColor=white"/> Next.js

## 8. RestAPI Document

[https://documenter.getpostman.com/view/23095082/2s7ZLhnWb8](https://documenter.getpostman.com/view/23095082/2s7ZLhnWb8)

## 9. 컨벤션 or 진행 간 규칙
  # Git
- git을 기능별로 나누고, 구현한 사람을 기준으로 branch를 생성
- git에 pull 할 시에 --rebase 옵션 사용
- 각자 개인 branch에 push 하고 pull request를 통해 상위 branch에 동기화한다.

![Github Branches](/readme/github_branches.png "Github Branches")

## 10. 느낀점
- 김현수 : 초반에 팀원들이 기본 틀을 닦아주어 빠르게 적응할 수 있어서 팀원들한테 감사했습니다. 또 여러 문제들을 서로 도와가며 해결하는 과정이 어려웠지만 그만큼 느낀 점도 많은 프로젝트였습니다. 넘나 어려운 것...
- 이동찬 : 의견이 엇갈려도 서로 이해해주는 팀원들과 작업할수 있어서 너무 좋았습니다. 코딩한시간이랑 DB에 저장할 데이터 조사하는 시간이랑 비슷하게 쓴거같습니다...:sob: 그래도 프로젝트 하면서 많이 배웠고 뜻깊은 시간이었습니다.

| ![db query](/readme/db_query.png "db query") | 
|:--:| 
| *엑셀 (구글 스프레드시트) 수식과 씨름했던 흔적...* |

- 이종수 : 팀원들에게 정확한 DB와 비전을 갖고있다는 말로 팀원들을 모았지만, 사실 중간에 DB가 틀어지면서 팀원들이 많은 발품을 팔게 되었습니다;;; 세상일이 뜻하는 대로 되지 않더라구요;;; 프로젝트 시작하기 2주전부터 잠을 줄여가면서 하얗게 불태웠더니, 속이 후련합니다;;; 대부분의 기능들을 완성했지만, 아직 부족한 부분들이 많이 남아서 프로젝트 발표가 끝난 이후에도 지속적으로 개발하도록 하겠습니다. 팀원분들께 다시 한번 고맙고 죄송하다고 전하고 싶습니다ㅠㅠ

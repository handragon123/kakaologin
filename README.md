dump 는 mysql에서 사용한 데이터테이블의 모임이다.

기존 팀원들과의 프로젝트에서 카카오톡으로 로그인하는 기능을 구현해보았다.

카카오톡 api를 가지고와서 로그인하는과정인다
1. 카카오 로그인 요청
2. 인가 코드받기
3. get 으로 요청후 계정 로그인
4. 사용자 인증 앱 설정
5. 토큰을 받아 post 토큰 발급
6. 사용자 로그인 처리

저는 카카오톡로그인시 로그인한 사람의 카카오톡 이름을 화면에 띄어봤다.
그후 카카오톡 로그인이 된경우는 이미 카카오톡자체에서 인증을 걸쳤기때문에 로그인시 로그인된 화면으로 전환시켜주었다.
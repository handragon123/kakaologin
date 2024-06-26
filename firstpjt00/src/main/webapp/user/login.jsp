<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JSP 게시판 웹 사이트</title>
<link rel="icon" href="../resources/images/favicon.png" type="image/x-icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css?v=<%=System.currentTimeMillis()%>" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css?v=<%=System.currentTimeMillis()%>" />
</head>
<body>
<%@ include file="../common/menu.jsp" %>
<main id="container">
<div class="col-lg-4">
    <div class="jumbotron" style="padding-top: 20px;">
        <form method="post" action="loginProc.do" onsubmit="return validateForm()">
            <h2>로그인</h2>
            <hr>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="user_id" id="user_id" maxlength="20"
                       value="<%= request.getAttribute("userId") != null ? request.getAttribute("userId") : "" %>">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="비밀번호" name="user_password" id="user_password" maxlength="20">
            </div>
            <input type="submit" class="btn btn-primary form-control" value="로그인">
        </form>
    </div>
</div>

<%
    // errorMsg가 존재하면 alert로 띄움
    String errorMsg = (String) request.getAttribute("errorMsg");
    if (errorMsg != null) {
%>
    <script>
        alert("<%= errorMsg %>");
    </script>
<%
    }
%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script>
function validateForm() {
    var userId = document.getElementById("user_id").value;
    var userPassword = document.getElementById("user_password").value;
    
    if (userId.trim() === "") {
        alert("아이디를 입력하세요.");
        return false; // 폼 제출을 막습니다.
    }
    
    if (userPassword.trim() === "") {
        alert("비밀번호를 입력하세요.");
        return false; // 폼 제출을 막습니다.
    }
    
    return true; // 폼이 제출됩니다.
}
</script>
<h2>카카오톡 로그인</h2>
        <form method="post" action="kakaoProc.do" onsubmit="return KakaoLogin()">
<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)"><img src="../resources/images/kakao_login_large_narrow.png"/>
          <button>카카오 로그인</button>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
</form>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('96d00a299147b74ef18240ec1671b95b');

function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
              var kakao_id = response.kakao_account.profile.nickname;
              // Use form submission to send the nickname to main.jsp
              var form = document.createElement('form');
              form.method = 'post';
              form.action = 'kakaoProc.do';
              var input = document.createElement('input');
              input.type = 'hidden';
              input.name = 'kakao_id';
              input.value = kakao_id;
              form.appendChild(input);
              document.body.appendChild(form);
              form.submit();
          },
          fail: function (error) {
              alert(JSON.stringify(error));
          },
        });
      },
      fail: function (error) {
        console.log(error);
      },
    });
  }

function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
          console.log(response);
        },
        fail: function (error) {
          console.log(error);
        },
      });
      Kakao.Auth.setAccessToken(undefined);
    }
  }  
</script>

</main>
</body>
</html>

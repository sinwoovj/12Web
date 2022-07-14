<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/login_style.css"/>
<title>Login</title>
</head>
<body>
	<nav class="navbar navbar-default"> <!-- 네비게이션 -->
		<div class="navbar-header"> 	<!-- 네비게이션 상단 부분 -->
			<!-- 네비게이션 상단 박스 영역 -->
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<!-- 이 삼줄 버튼은 화면이 좁아지면 우측에 나타난다 -->
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<!-- 상단 바에 제목이 나타나고 클릭하면 main 페이지로 이동한다 -->
			<a class="navbar-brand" href="main.jsp">12 게시판 웹 사이트</a>
		</div>
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="event.jsp">일정표</a></li>
				<li><a href="bulletinboard.jsp">게시판</a></li>
			</ul>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<!-- 드랍다운 아이템 영역 -->	
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<!-- 로그인 양식 -->
	<div class="main">
    <!--헤더 부분-->
    <header>
      <h2>로그인 페이지</h2>
    </header>
    <!--로그인 부분-->
    <form method="post" action="loginAction.jsp">
    <section class="login_wrap">
        <div class="login_id_wrap">
            <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
        </div>
        <div class="login_pw_wrap">
            <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
        </div>
        <div class="login_btn_wrap">
            <input id="login_btn" style="font-size: 15px;" type="submit" class="btn btn-primary form-control" value="로그인">        
        </div>
    </section>
    </form>
    <!--회원가입 부분-->
    <section class="find_signup_wrap">
        <!--<span id="signup">
            <a href="./sign_up.html" target="_blank">아이디찾기</a>
        </span>
        <span id="signup">
            <a href="./sign_up.html" target="_blank">비밀번호찾기</a>
        </span> 디자인 볼 때 이쁘라고 넣어봤습니다-->
        <span id="signup">
            <a href="./sign_up.html" target="_blank">회원가입</a>
        </span>
    </section>
    </div>

	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
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
<style>
		body{
			text-align:center;
			background-image:url('img/edc.jpg');
			background-repeat:no-repeat;
			background-size:cover;
			background-attachment:scroll;
		}
		h1{
			margin: 270px 250px auto;
			font-weight: bold;
			margin-top:250px;
			font-size:50px;
			color:#fff;
            font-style: normal;
            text-shadow: 1px black;
            background-color: #000;
            display : inline-block;
            
		}
  </style>
<title>Busan Eco-Delta-City</title>
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
  <!-- 이부분에 본문 작성 -->
	<h1>부산 에코델타시티에 오신 것을 환영합니다!</h1> 
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>

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
    <title>event</title>
	<style>
		button{
			border: none;
			display: inline-block;
			padding: 5px 5px;
			border-radius: 1px;
			cursor: pointer;	
		}
		.bx-prev{
			font-size: 15px;
		}
		.calendarTable{
			text-align: center;
			margin: 0px 0px 0px 160px;
			float: left;
			box-sizing: border-box;
		}
		.calendarTable caption{
			margin-bottom: 10px;
			font-size: 30px;
			font-weight: bold;
		}
		.calendarTable td{
			padding: 15px;
			text-align: left;
			vertical-align: top;
		}
		.calendarTable td a{
			display: inline-block;
			width: 88px;
			text-overflow: ellipsis;
			overflow: hidden;
			color: black;
			text-decoration: none;
		}
		.calendarTable td .cal_day.before {
		    color: #aaa;
			text-align: left;
		}
		.calendarTableWrap .cal_work {
			display: inline-block;
			width: 88px;
			text-overflow: ellipsis;
			overflow: hidden;
			word-wrap: break-word;
		}
		thead{
			background-color: gainsboro;
		}
	</style>
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
    <div class="calendarWrap">
        <form id="searchFrm" name="searchFrm" class="form-search" method="post" action="/woman/whevents">
        <input type="hidden" id="monthPrevNext" name="monthPrevNext"/>
        <div class="calendarTit">
            <a href="#" class="bx-prev"><img src="./left_.png" style="width:10px; height:10px"></a>
            <span class="cellInDv cellInDvSearch">
                <span class="cellInDvSearchCell srchOption">
                    <select id="selcBoardSrchCtg61" name="srchYear" class="selectForm selectDate">
                                <option value="2019" >2019</option>
                                <option value="2020" >2020</option>
                                <option value="2021" >2021</option>
                                <option value="2022" selected="selected">2022</option>
                                <option value="2023" >2023</option>
                                <option value="2024" >2024</option>
                                <option value="2025" >2025</option>
                                <option value="2026" >2026</option>
                                <option value="2027" >2027</option>
                                </select>
								<a>년</a>
                </span>
                <span class="cellInDvSearchCell srchOption">
                    <select id="selcBoardSrchCtg62" name="srchMonth" class="selectForm selectDate">
                        <option value="01" >01</option>
                        <option value="02" >02</option>
                        <option value="03" >03</option>
                        <option value="04" >04</option>
                        <option value="05" >05</option>
                        <option value="06" >06</option>
                        <option value="07" selected="selected">07</option>
                        <option value="08" >08</option>
                        <option value="09" >09</option>
                        <option value="10" >10</option>
                        <option value="11" >11</option>
                        <option value="12" >12</option>
                        </select>
						<a>월</a>
                </span>
                <span class="cellInDvSearchCell srchOption">
                    <button type="submit" class="button white medium">검색</button>
                </span>
            </span>
            <a href="#" class="bx-next"><a><img src="./right_.png" style="width: 10px; height:10px;"></a></a>
        </div>
        </form>
        <div class="calendarTableWrap">
            <div class="srcoll-table">
                <div>	
    <div class="calendarTableWrap">
		<div class="srcoll-table">
			<div>	
		<table class="calendarTable">
			<caption>행사일정 캘린더</caption>
			<colgroup>
				<col style="width:10%; height: 100px;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
				<col style="width:10%;" />
			</colgroup>
			<thead>
				<tr>
					<th class="sun" scope="col" style="color: red;">일</th>
					<th scope="col">월</th>
					<th scope="col">화</th>
					<th scope="col">수</th>
					<th scope="col">목</th>
					<th scope="col">금</th>
					<th scope="col" class="sat" style="color: dodgerblue;">토</th>
				</tr>
			</thead>
			<tbody>
				<!-- 날짜 변수 Set -->
					<tr>
					<td>
					<!-- 이전달 달력 -->
							<a scope="row" href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							26<!-- 다음달 달력 -->
							</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							27<!-- 다음달 달력 -->
							</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							28<!-- 다음달 달력 -->
							</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							29<!-- 다음달 달력 -->
							</a>
						</td>
					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							30<!-- 다음달 달력 -->
							</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								01</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work">[소회의실] 2022년 델타 시티 주거자 정기회의 </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sat" style="cursor: default; text-decoration: none;">
								02</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1516898?srchYear=2022&srchMonth=07" class="cal_work"> 이웃 친목 다짐데이 </a>
									</div>
								</td>

					</tr>
						<tr>
					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sun" style="cursor: default; text-decoration: none;">
								03</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								04</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1516898?srchYear=2022&srchMonth=07" class="cal_work"> 이웃 중고물품 나눔의 날 </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								05</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1516898?srchYear=2022&srchMonth=07" class="cal_work"> [소회의실] 친환경 교육</a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								06</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1516898?srchYear=2022&srchMonth=07" class="cal_work">옥상 태양광 정기점검 </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								07</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1516898?srchYear=2022&srchMonth=07" class="cal_work">나무 심기 </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								08</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
							
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sat" style="cursor: default; text-decoration: none;">
								09</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
			
								</td>

					</tr>
						<tr>
					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sun" style="cursor: default; text-decoration: none;">
								10</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								11</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								12</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
							
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								13</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day todayon" style="cursor: default; text-decoration: none;">
								14</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"> </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								15</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sat" style="cursor: default; text-decoration: none;">
								16</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1521634?srchYear=2022&srchMonth=07" class="cal_work">[소회의실] 다문화가족 자녀 대상 집단상담</a>
									</div>
								</div>
								</td>

					</tr>
						<tr>
					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sun" style="cursor: default; text-decoration: none;">
								17</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								18</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1533158?srchYear=2022&srchMonth=07" class="cal_work">수질 수량 검사</a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								19</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1522561?srchYear=2022&srchMonth=07" class="cal_work">[소회의실] 에코델타 영화관람 </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								20</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								21</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								22</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sat" style="cursor: default; text-decoration: none;">
								23</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1521635?srchYear=2022&srchMonth=07" class="cal_work">스마트 시티 창립 기념일</a>
									</div>
								</div>
								</td>

					</tr>
						<tr>
					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sun" style="cursor: default; text-decoration: none;">
								24</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								25</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1531385?srchYear=2022&srchMonth=07" class="cal_work">[소회의실] 친환경 에코백 만들기 날</a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								26</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="" class="cal_work"></a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								27</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1529989?srchYear=2022&srchMonth=07" class="cal_work">델타시티 건물 건의</a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								28</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1531715?srchYear=2022&srchMonth=07" class="cal_work">[소회의실] 제4회 테마별 델타시티특강 </a>
									</div>
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day" style="cursor: default; text-decoration: none;">
								29</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sat" style="cursor: default; text-decoration: none;">
								30</a>
							<div class="td_scrollX">
								<div class="cal_mid">
										<span class="icoCircle"></span><a href="/woman/whevents/1521636?srchYear=2022&srchMonth=07" class="cal_work">정수시스템이 열일 한 지하수 분수쇼 </a>
									</div>
								</div>
								</td>

					</tr>
						<tr>
					<!-- 날짜 변수 Set -->
					<td>
					<!-- 현재달 달력 -->
							<a href="#" class="cal_day sun" style="cursor: default; text-decoration: none;">
								31</a>
							<div class="td_scrollX">
								</div>
								</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							<!-- 다음달 달력 -->
							1</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							<!-- 다음달 달력 -->
							2</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							<!-- 다음달 달력 -->
							3</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							<!-- 다음달 달력 -->
							4</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							<!-- 다음달 달력 -->
							5</a>
						</td>

					<!-- 날짜 변수 Set -->
					<td>
					<!-- 이전달 달력 -->
							<a href="#" class="cal_day before" style="cursor: default; text-decoration: none;">
							<!-- 다음달 달력 -->
							6</a>
						</td>

					</tr>
					</tbody>
		</table>
			</div>
		</div>		
	</div>

    
</body>
</html>
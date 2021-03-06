<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 모바일용웹 -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
 
<meta name="mobile-web-app-capable" content="yes">


<title>Sns</title>
<!-- import 시작 -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link
	href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"
	rel="stylesheet">
<script
	src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<!-- import 끝 -->

<style>
body {
	position: relative;
	margin: 0 auto;
	width: 100%;
	height: 100%;
	max-width: 600px;
}

#subMenu {
	width: 90%;
	height: 50px;
	margin: 0 auto;
}

#newBoardBtn {
	width: 20%;
}

#searchBox {
	float: right;
	width: 50%;
	text-align: right;
}

#container {
	position: relative;
	margin: 0 auto;
	width: 100%;
	height: 100%;
}

.adminArea {
	position: relative;
	color: white;
	width: 90%;
	height: 100px;
	margin: 0 auto;
	border: 5px solid #F06161;
	border-radius: 10px 10px 0 0;
	background-color: #F06161;
	color: white;
}

.permission {
	float: left;
	width: 20%;
}

.chkView {
	float: left;
	width: 80%;
	text-align: right;
}

.blind {
	position: absolute;
	bottom: 0;
	right: 0;
	width: 100%;
	text-align: right;
	width: 100%;
}

.contentArea {
	position: relative;
	width: 90%;
	height: auto;
	min-height: 300px;
	background-color: #D5D5D5;
	border-top: 2px solid #428bca;
	border-radius: 4px;
	margin: 0 auto;
	margin-bottom: 10px;
}

.contentNum {
	float: left;
	position: relative;
	width: 20%;
	height: 35px;
	text-align: center;
	padding-top: 8px;
	background-color: #428bca;
	margin: 0;
	color: white;
}

.title {
	float: left;
	position: relative;
	width: 67%;
	height: 35px;
	padding-top: 8px;
	background-color: #428bca;
	margin: 0;
	color: white;
	font-weight: bold;
}

.shareArea {
	float: left;
	position: relative;
	width: 13%;
	height: 35px;
	background-color: #428bca;
}

.shareBtn {
	width: 90%;
	height: 90%;
	color: white;
	border: 0px;
	background-color: #428bca;
}

.content {
	position: relative;
	width: 100%;
	height: auto;
	min-height: 200px;
	background-color: white;
	margin-top: 35px;
	padding: 8px;
	box-shadow: 0px 7px 10px 0 silver inset;
}

.contentPic {
	position: relative;
	margin: 10px auto;
	width: 50%;
	height: auto;
}

.comment {
	position: relative;
	padding: 7px;
	width: 100%;
	height: auto;
	min-height: 60px;
	font-size: 0.8em;
}

.showComment {
	position: relative;
	width: 100%;
	margin-top: 5px;
	padding: 5px;
	border: 0px;
	text-align: right;
	color: #888;
	padding: 5px;
}

.showComment:hover {
	position: relative;
	width: 100%;
	margin-top: 5px;
	padding: 5px;
	border: 0px;
	text-align: right;
	text-decoration: underline;
	color: #888;
	padding: 5px;
}

.addComment {
	width: 100%;
	height: 20px;
}

.commentText {
	float: left;
	width: 88%;
	height: 20px;
}

.commProfile {
	float:left;
	width:15%;
}

.commTxt {
	float:left;
	width:65%;
	
}

.commDate {
	float:left;
	width:20%;
	font-size:2px;
	text-align:right;
	color:#888;
}

.commentList {
	position: relative;
	width: 100%;
	height: 30px;
	font-size: 0.9em;
	margin-top: 20px;
	padding-left: 10px;
	color: black;
}

.picUpBtn {
	float: left;
	width: 10%;
	height: 20px;
	color: gray;
	margin-left: 5px;
}

.clear {
	both: clear;
}

img {
	width: 100%;
	height: auto;
}
</style>
<script>
	$(function() {
		$(".commentList").hide();

		$("#showBtn1").click(function() {
			$(".commentList").show();
		});

		function chkVal(event) {
			console.log(event);
		}

		$(".chkBox").change(function(){
		$('#chk').prop('checked',true);
			
		})
	})
</script>
</head>
<body>
	<div id="topInc">
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>


			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Cambus</a></li>

					<li><a href="#" style="color: white;">글쓰기</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</ul>
			</div>
		</div>
		</nav>

	</div>
	<div id="subMenu">
		<button type="button" id="newBoardBtn" class="btn btn-primary">글쓰기</button>
		<input type="text" id="searchBox" class="form-control"
			placeholder="검색">
	</div>
	<div id="container">
		<div class="adminArea">
			<div class="permission">Admin</div>
			<div class="chkView">
				<input type="checkbox" data-toggle="toggle" class="chkBox"	onclick="chkVal(event);" id="hi" value="yes">
				 <input type="hidden" value=""		name="boardSeq" />
			</div>
			<div class="blind">
				<button class="btn btn-warning">Blind</button>
			</div>

		</div>
		<div class="contentArea">
			<div class="contentNum">#444</div>
			<div class="title">대신 전해주나요 ?</div>
			<div class="shareArea">
				<button class="shareBtn glyphicon glyphicon-share-alt">
					<!-- 이미지넣기 -->
				</button>
			</div>
			<div class="clear"></div>
			<div class="content">
				<div class="contentPic">
					<img src="./images/ad1.JPG" />
				</div>
				안녕하세요

			</div>

			<div class="comment">
				<div class="addComment">
					<input type="text" class="commentText form-control" />
					<button class="glyphicon glyphicon-camera picUpBtn"></button>
				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user commProfile"></div>
					<div class="commTxt">안녕</div>
					<div class="commDate">2017-03-15 12:00:25</div>



				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕 나느 방그루 까꿍

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕하세요 댓글2입니다.

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>

				<button class="showComment" id="showBtn1">댓글 28개</button>
			</div>

		</div>

		<div class="contentArea">
			<div class="contentNum">#443</div>
			<div class="title">쌍용 교육센터 일원 인가요?</div>
			<div class="shareArea">
				<button class="shareBtn glyphicon glyphicon-share-alt">
					<!-- 이미지넣기 -->
				</button>
			</div>
			<div class="clear"></div>
			<div class="content">안녕하세요</div>

			<div class="comment">
				<div class="addComment">
					<input type="text" class="commentText form-control" />
					<button class="glyphicon glyphicon-camera picUpBtn"></button>
				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕 나느 방그루 까꿍

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕하세요 댓글2입니다.

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>

				<button class="showComment">댓글 30개</button>
			</div>

		</div>



		<div class="contentArea">
			<div class="contentNum">#442</div>
			<div class="title">쌍용 교육센터 일원 인가요?</div>
			<div class="shareArea">
				<button class="shareBtn glyphicon glyphicon-share-alt">
					<!-- 이미지넣기 -->
				</button>
			</div>
			<div class="clear"></div>
			<div class="content">안녕하세요</div>

			<div class="comment">
				<div class="addComment">
					<input type="text" class="commentText form-control" />
					<button class="glyphicon glyphicon-camera picUpBtn"></button>
				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕 나느 방그루 까꿍

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕하세요 댓글2입니다.

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>

				<button class="showComment">댓글 30개</button>
			</div>

		</div>



		<div class="contentArea">
			<div class="contentNum">#441</div>
			<div class="title">쌍용 교육센터 일원 인가요?</div>
			<div class="shareArea">
				<button class="shareBtn glyphicon glyphicon-share-alt">
					<!-- 이미지넣기 -->
				</button>
			</div>
			<div class="clear"></div>
			<div class="content">안녕하세요</div>

			<div class="comment">
				<div class="addComment">
					<input type="text" class="commentText form-control" />
					<button class="glyphicon glyphicon-camera picUpBtn"></button>
				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕 나느 방그루 까꿍

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕하세요 댓글2입니다.

				</div>
				<div class="commentList">
					<div class="glyphicon glyphicon-user"></div>
					안녕

				</div>

				<button class="showComment">댓글 30개</button>
			</div>

		</div>





	</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% int num = 9; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/main.css">
<title>Insert title here</title>
<style type="text/css">
#AllWrap{background: #f1f1f1;}
header {display:flex; align-items:center;justify-content: space-around;width:100%;padding:10px 0;}
.main__logo{font-size:24px; font-weight: bold;}
header nav ul{display:flex; align-items:center;justify-content: center;gap: 10px;}
</style>
</head>
<body>
<div id="AllWrap">
	<header>
		<h1 class="main__logo"><a href="./index.jsp">로고</a></h1>
		<nav>
			<ul>
				<li><a href="javascript:;">메뉴1</a></li>
				<li><a href="javascript:;">메뉴2</a></li>
				<li><a href="javascript:;">메뉴3</a></li>
			</ul>
		</nav>
	</header>
	<form action="./result/result.jsp" method="POST">
		<p>이름 : </p> <input type="text" name="name" />
		<input type="submit" value="전송" />
	</form>
</div>
</body>
</html>
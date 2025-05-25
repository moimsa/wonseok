<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/main.css">
<title>If문 보내기</title>
</head>
<body>
	<form mothod="post" action="ifreq.jsp">
		이름: <input name="name" />
		<p>
			좋아하는 색깔: <select name="color">
				<option value="red">빨강</option>
				<option value="blue">파랑</option>
				<option value="yellow">노랑</option>
				<option value="ect">기타</option>
			</select>
		</p>
		<input type="submit" value="보내기" />
	</form>
</body>
</html>
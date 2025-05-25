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
	<form method="post" action="ifreq.jsp" class="myForm">
		이름: <input name="name" class="name_inp" />
		<p>
			좋아하는 색깔: <select name="color">
				<option value="red">빨강</option>
				<option value="blue">파랑</option>
				<option value="yellow">노랑</option>
				<option value="ect">기타</option>
			</select>
		</p>
		<input type="submit" class="submit_btn" value="보내기" />
	</form>
</body>
<script>

const form = document.querySelector('.myForm');
const nameInp = document.querySelector('.name_inp');

form.addEventListener("submit", function(e) {
    if (nameInp.value.trim() === "") {
        alert("이름을 입력하세요.");
        e.preventDefault(); // 폼 제출(페이지 이동) 막기
    }
});

</script>
</html>
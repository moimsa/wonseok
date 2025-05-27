<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/member.css">
<title>자바빈을 통한 회원가입</title>
</head>
<body>
	<div class="wrap">
		<table class="join_talbe">
			<form name="regForm" method="post" action="registerProc.jsp" >
				<tr>
					<td colspan="3">
						<h1 class="title">회원가입</h1>
					</td>
				</tr>
				<tr>
					<td>
						아이디
					</td>
					<td>
						<input name="id" size="15" />
					</td>
					<td>
						아이디를 적어주세요.
					</td>
				</tr>
				<tr>
					<td>
						비밀번호
					</td>
					<td>
						<input name="password" type="password" size="15" />
					</td>
					<td>
						비밀번호를 적어주세요.
					</td>
				</tr>
				<tr>
					<td>
						이름
					</td>
					<td>
						<input name="name" size="15" />
					</td>
					<td>
						이름을 적어주세요.
					</td>
				</tr>
				<tr>
					<td>
						생년월일
					</td>
					<td>
						<input name="birthday" size="15" />
					</td>
					<td>
						생년월일을 적어주세요.
					</td>
				</tr>
				<tr>
					<td>
						이메일
					</td>
					<td>
						<input name="email" size="20" />
					</td>
					<td>
						이메일을 적어주세요.
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						<input type="button" value="회원가입" onclick="inputCheck();" /> &nbsp;
						<input type="reset" value="다시쓰기" />
					</td>
				</tr>
			</form>
		</table>
	</div>
</body>
</html>
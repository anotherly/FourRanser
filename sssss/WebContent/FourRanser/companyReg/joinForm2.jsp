<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
.sch{
width:100px;
height:30px;
border-radius:15px;
}
</style>
</head>
<body>
<form action="joinReg.jsp" method="post">
	<table border=1 style="render">
		<tr>
			<td>id</td>
			<td>
			<input type="text" name="id" size="10" maxlength="8" />
			<input type="button" name="sch" class="sch" value="ID중복확인" />
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="radio" name="gender" checked="checked" value="male"/>남
			    <input type="radio" name="gender" value="female" />여
			    </td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
				<input type="checkbox" name="hobby" value="read" checked="checked"/>독서
				<input type="checkbox" name="hobby" value="game" checked="checked"/>게임
				<input type="checkbox" name="hobby" value="fish"/>낚시
			</td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>email</td>
			<td>
			<input type="text" name="email1" />@
			<select name="email2">
			<option value="naver.com">네이버</option>
			<option value="daum.net">다음</option>
			<option value="nate.com">네이트</option>
			<option value="gmail.com" selected="selected">지메일</option>
						
			
			</select>
			
			
			</td>
		</tr>
		
		<tr>
			<td>남기실 말</td>
			<td><textarea rows="5" cols="30" name="content">선생님은 귀여워요</textarea></td>
		</tr>
		<tr>
			
			<td colspan="2" align="center">
			<input type="submit" value="가입" class="sch"/>
			<input type="reset" value="초기화 "  class="sch" />
			</td>
		</tr>
		
		
	</table>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.sch{
	width:100px;
	height:30px;
	border-radius:15px; 
}

</style>
</head>
<body>
<form action="joinReg.jsp" method="post">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="id" size="10" maxlength="8" />
			<input type="button" name="sch" class="sch" value="id중복확인"/>
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="pw" />pw확인
			<input type="password" name="pwConfirm" /></td>
		</tr>
		<tr>
			<td>성명</td>
			<td><input type="text" name="comName" /></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="birth" />
				<input type="radio" name="gender" checked="checked" value="m"/>남
				<input type="radio" name="gender"  value="f"/>여
			</td>
		</tr>
		<tr>
			<td>회사명</td>
			<td><input type="text" name="nameCompany" /></td>
		</tr>
		<tr>
			<td>대표자명</td>
			<td><input type="text" name="nameCEO" /></td>
			</tr>
			<tr>
			<td>사업자등록번호</td>
			<td><input type="text" name="comRegNum1" />-
			<input type="text" name="comRegNum2" />-
			<input type="text" name="comRegNum3" /></td>
		</tr>
		<tr>
			<td>주요사업내용</td>
			<td><textarea rows="5" cols="60" name="businessContents"/>300자 이내로 써 주세요</textarea></td>
		</tr>
		<tr>
			<td>담당자명</td>
			<td><input type="text" name="damdangja" /></td>
			<!-- <td>
			<input type="checkbox" name="hobby" value="read"/>독서
			<input type="checkbox" name="hobby" value="game" checked="checked"/>게임
			<input type="checkbox" name="hobby" value="fish" checked="checked"/>낚시
			</td> -->
		</tr>
		<tr>
			<td>담당자 연락처</td>
			<td><select name="damRegNum1">
					<option value="010" selected="selected">010</option>
					<option value="011">011</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>-
			<input type="text" name="damRegNum2" />-
			<input type="text" name="damRegNum3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>연락처(대표전화)</td>
			<td><input type="text" name="tel1" />-
			<input type="text" name="tel2" />-
			<input type="text" name="tel3" /></td>
			<!-- <td><input type="file" name="ff" /></td> -->
		</tr>
		<tr>
			<td>회사주소</td>
			<td>
				<select name="comAddress1">
					<option value="서울">서울</option>
					<option value="인천">인천</option>
					<option value="부산">부산</option>
					<option value="대구">대구</option>
					<option value="대전">대전</option>
					<option value="광주">광주</option>
					<option value="울산">울산</option>
					<option value="경기">경기</option>
					<option value="충남">충남</option>
					<option value="충북">충북</option>
					<option value="강원">강원</option>
					<option value="경북">경북</option>
					<option value="경남">경남</option>
					<option value="전북">전북</option>
					<option value="전남">전남</option>
					<option value="제주">제주</option>
				</select><input type="text" name="comAddress2">
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name= "email1">@
				<select name="email2">
					<option value="naver.com">네이버</option>
					<option value="gmail.com" selected="selected">구글</option>
					<option value="daum.net" >다음</option>
					<option value="yahoo.co.kr">야후</option>
				</select></td>
		</tr>
		<tr>
			<td>회사 홈페이지</td>
			<td>http://<input type="text" name="comHomepage"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			</td>
		</tr>
	</table>
</form>
</body>
</html>
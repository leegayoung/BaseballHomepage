<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-16">
<title>Insert title here</title>
</head>
<body>
<h2>회원가입</h2>
<form action="joinFormProc.jsp" method="post">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="pw" ><br>
선호하는 야구구단
<select name="club">
    <option value="navy">두산</option>
    <option value="redOrange">SK</option>
    <option value="orange">한화</option>
    <option value="red">KIA</option>
    <option value="redBlack">LG</option>
    <option value="pink">롯데</option>
    <option value="white">넥센</option>
    <option value="black">KT</option>
    <option value="darkblue">NC</option>
    <option value="blue">삼성</option>
  </select>
<input type="submit" value="회원가입">
</form>


</body>
</html>
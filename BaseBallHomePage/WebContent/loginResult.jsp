<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String str = request.getParameter("result");

	if(str.equals("no")){
		out.println("존재하지않는 회원입니다.");
	}else{
		out.println("아이디 혹은 비밀번호가 틀렸습니다.");
	}
%>

<meta http-equiv = 'refresh' content='5; url=Main.jsp'>
</body>
</html>
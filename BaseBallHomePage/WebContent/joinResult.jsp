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

	if(str.equals("ok")){
		out.println("회원가입에 성공하셨습니다.");
	}else{
		out.println("일시적인 오류로 회원가입에 실패했습니다. 잠시후 다시 시도 해주세요.");
	}
%>

<meta http-equiv = 'refresh' content='5; url=Main.jsp'>
</body>
</html>
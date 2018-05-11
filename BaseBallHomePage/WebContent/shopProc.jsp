<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="org.apache.tomcat.jni.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
display: inline-block;
}

</style>
</head>
<body>
<%


BufferedReader reader1 = null;
BufferedReader reader2 = null;
try{
	String filePath1 = application.getRealPath("/WEB-INF/orangeItem.txt");
	String filePath2 = application.getRealPath("/WEB-INF/orangeWon.txt");
	String team = "orange";
	
	//out.println(filePath);
	
	reader1 = new BufferedReader(new FileReader(filePath1));
	reader2 = new BufferedReader(new FileReader(filePath2));
	
	for(int i=0;i<12;i++)
	{
		String str1 = reader1.readLine();
		String str2 = reader2.readLine();
%>
	<div style="width: 300px; height: 150px;">
		<a href ="order.jsp?TEAM=<%=team%>&NUMBER=<%=i+1%>"><img src="img/orange<%=i+1%>.jpg" width="200px" border="1"></a>
		<p><%=str1 %></p>
		<p><%=str2 %></p>
	</div>
	
<%
	}
	
}catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}



%>
</body>
</html>
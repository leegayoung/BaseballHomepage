<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	String team = request.getParameter("TEAM"); 
	int number = Integer.parseInt(request.getParameter("NUMBER"));
%>


<%

BufferedReader reader1 = null;
BufferedReader reader2 = null;
try{
	String filePath1 = application.getRealPath("/WEB-INF/"+team+"Item.txt");
	String filePath2 = application.getRealPath("/WEB-INF/"+team+"Won.txt");
	String item="";
	String won="";
	
	
	//out.println(filePath);
	
	reader1 = new BufferedReader(new FileReader(filePath1));
	reader2 = new BufferedReader(new FileReader(filePath2));
	for(int i=0;i<number;i++)
	{
		item = reader1.readLine();
		won = reader2.readLine();
	}
	%>
	<img src="img/<%=team%><%=number%>.jpg" width="200px" border="1">
	<p><%=item %></p>
	<p><%=won %></p>
	<%
	}
	catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}
%>

</body>
</html>
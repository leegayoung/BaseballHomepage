<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 

request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String club = request.getParameter("club");
String filename = id+".txt";
String result;

PrintWriter writer = null;

try{
	String filePath = application.getRealPath("/WEB-INF/user/"+filename);
	out.println(filePath);
	writer= new PrintWriter(filePath);
	
	writer.printf("%s%n",id);
	writer.printf("%s%n",pw);
	writer.printf("%s%n",club);
	
	//out.println("<font color=red><b>게시물</b></font>이 저장되었습니다.");
	
	writer.flush();
	result = "ok";
	
	
	
	
}catch(Exception e){
	out.println("오류발생");
	result = "fali";
}

response.sendRedirect("joinResult.jsp?result="+result);


%>